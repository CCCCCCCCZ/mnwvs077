#include "LifePool.h"
#include "..\WvsLib\Net\InPacket.h"
#include "..\WvsLib\Net\OutPacket.h"
#include "..\WvsLib\Random\Rand32.h"
#include "..\WvsLib\DateTime\GameDateTime.h"
#include "..\WvsLib\Net\PacketFlags\NPCPacketFlags.hpp"
#include "..\WvsLib\Net\PacketFlags\MobPacketFlags.hpp"
#include "..\WvsLib\Net\PacketFlags\UserPacketFlags.hpp"
#include "..\WvsLib\Common\WvsGameConstants.hpp"
#include "..\WvsLib\Logger\WvsLogger.h"

#include "User.h"
#include "MobTemplate.h"
#include "Field.h"
#include "MobStat.h"
#include "Controller.h"
#include "SkillEntry.h"
#include "Drop.h"
#include "AttackInfo.h"
#include "SecondaryStat.h"
#include "NpcTemplate.h"
#include "MobSummonItem.h"
#include "StaticFoothold.h"
#include "WvsPhysicalSpace2D.h"
#include "FieldRect.h"
#include "Employee.h"
#include "MiniRoomBase.h"
#include "SkillInfo.h"
#include "MobSkillEntry.h"
#include "MobSkillLevelData.h"
#include <cmath>

LifePool::LifePool()
	: m_pCtrlNull(AllocObjCtor(Controller)(nullptr))
{
}

LifePool::~LifePool()
{
	for (auto& p : m_mMob)
		FreeObj( p.second );
	for (auto& p : m_mNpc)
		FreeObj( p.second );
	for (auto& p : m_hCtrl)
		FreeObj( p.second );
	FreeObj( m_pCtrlNull );
}

void LifePool::Init(Field* pField, int nFieldID)
{
	m_pField = pField;

	int nSizeX = 1920;
	int nSizeY = 1080; //I dont know
	int nGenSize = (int)(((double)nSizeX * nSizeY) * 0.0000048125f);
	if (nGenSize < 1)
		nGenSize = 1;
	else if (nGenSize >= MAX_MOB_GEN)
		nGenSize = MAX_MOB_GEN;
	m_nMobCapacityMin = nGenSize;
	m_nMobCapacityMax = (int)std::ceil((double)nGenSize * 2.0 * pField->GetMobRate());

	auto& mapWz = stWzResMan->GetWz(Wz::Map)["Map"]
		["Map" + std::to_string(nFieldID / 100000000)]
		[StringUtility::LeftPadding(std::to_string(nFieldID), 9, '0')];

	auto& lifeData = mapWz["life"];
	for (auto& node : lifeData)
	{
		const auto &typeFlag = (std::string)node["type"];
		if (typeFlag == "n")
			LoadNpcData(node);
		else if (typeFlag == "m")
			LoadMobData(node);
	}	

	//�j��ͦ��Ҧ�NPC
	for (auto& npc : m_lNpc)
		CreateNpc(npc);

	TryCreateMob(false);
	//mapWz.ReleaseData();
}

void LifePool::SetFieldObjAttribute(FieldObj* pFieldObj, WZ::Node& dataNode)
{
	try 
	{
		pFieldObj->SetPosX(dataNode["x"]);
		pFieldObj->SetPosY(dataNode["y"]);
		pFieldObj->SetF(dataNode["f"]);
		pFieldObj->SetHide(dataNode["hide"]);
		pFieldObj->SetFh(dataNode["fh"]);
		pFieldObj->SetCy(dataNode["cy"]);
		pFieldObj->SetRx0(dataNode["rx0"]);
		pFieldObj->SetRx1(dataNode["rx1"]);
		pFieldObj->SetTemplateID(atoi(((std::string)dataNode["id"]).c_str()));
	}
	catch (std::exception& e) 
	{
		WvsLogger::LogFormat(WvsLogger::LEVEL_ERROR, "Ū���a�Ϫ���o�Ϳ��~�A�T��:%s\n", e.what());
	}
}

void LifePool::SetMaxMobCapacity(int max)
{
	m_nMobCapacityMax = max;
}

int LifePool::GetMaxMobCapacity() const
{
	return m_nMobCapacityMax;
}

void LifePool::LoadNpcData(WZ::Node& dataNode)
{
	Npc npc;
	SetFieldObjAttribute(&npc, dataNode);
	npc.SetTemplate(NpcTemplate::GetInstance()->GetNpcTemplate(npc.GetTemplateID()));
	m_lNpc.push_back(npc);
}

void LifePool::LoadMobData(WZ::Node& dataNode)
{
	MobGen* pMobGen = AllocObj(MobGen);
	SetFieldObjAttribute(&(pMobGen->mob), dataNode);

	pMobGen->mob.SetMobTemplate(MobTemplate::GetMobTemplate(pMobGen->mob.GetTemplateID()));
	pMobGen->nRegenInterval = (int)dataNode["mobTime"];
	pMobGen->nTeamForMCarnival = dataNode["team"] == WZ::Node() ? -1 : (int)dataNode["team"];
	pMobGen->nRegenAfter = (pMobGen->nRegenInterval == -1 ? 0 : 
		GameDateTime::GetTime() + (pMobGen->nRegenInterval * 1000));
	pMobGen->mob.SetMobGen(pMobGen);
	m_aMobGen.push_back(pMobGen);
}

Npc* LifePool::CreateNpc(int nTemplateID, int nX, int nY, int nFh)
{
	Npc npc;
	npc.SetPosX(nX);
	npc.SetPosY(nY);
	npc.SetFh(nFh);
	npc.SetTemplate(NpcTemplate::GetInstance()->GetNpcTemplate(npc.GetTemplateID()));
	return CreateNpc(npc);
}

Npc* LifePool::CreateNpc(const Npc& npc)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	Npc* newNpc = AllocObj(Npc);
	*newNpc = npc; //Should notice pointer data assignment
	newNpc->SetFieldObjectID(atomicObjectCounter++);
	newNpc->SetField(m_pField);
	m_mNpc.insert({ newNpc->GetFieldObjectID(), newNpc });
	return newNpc;
}

void LifePool::TryCreateMob(bool bReset)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	int tCur = GameDateTime::GetTime();
	if (!m_bMobGenEnable)
		return;

	if (m_aMobGen.size() > 0)
	{
		std::vector<MobGen*> apGen;

		//MC Mob Gen
		for (auto pGen : m_aMCMobGen)
		{
			if (bReset)
				pGen->nRegenAfter = 1000;
			if ((pGen->nRegenAfter && (!pGen->nMobCount || tCur - pGen->nRegenAfter >= 0)))
				apGen.push_back(pGen);
		}

		//Normal Gen
		for (auto pGen : m_aMobGen)
		{
			if (bReset)
				pGen->nRegenAfter = 1000;
			if ((pGen->nRegenAfter && (!pGen->nMobCount || tCur - pGen->nRegenAfter >= 0)))
				apGen.push_back(pGen);
		}

		int nMaxGenCapacity = m_nMobCapacityMax + (int)m_aMCMobGen.size();
		for (int i = 0; i < nMaxGenCapacity - ((int)m_mMob.size()); ++i)
		{
			//Force generate mobGens in apGen, if there is any empty space, then randomly choose one to create.
			auto pMobGen = apGen.size() > 0 ? apGen.back() : 
				m_aMobGen[(int)((unsigned int)Rand32::GetInstance()->Random() % m_aMobGen.size())];

			if (apGen.size())
				apGen.pop_back();

			if (pMobGen->nRegenInterval == 0 ||
				(pMobGen->nRegenAfter && tCur >= pMobGen->nRegenAfter))
			{
				auto& mob = pMobGen->mob;
				CreateMob(mob, mob.GetPosX(), mob.GetPosY(), mob.GetFh(), 0, -2, 0, 0, 0, nullptr);
			}
		}
	}
}

void LifePool::SetMobGenEnable(bool bEnable)
{
	m_bMobGenEnable = bEnable;
}

void LifePool::InsertMCMobGen(MobGen *pGen)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	m_aMCMobGen.push_back(pGen);
}

void LifePool::CreateMob(int nTemplateID, int nX, int nY, int nFh, int bNoDropPriority, int nType, unsigned int dwOption, int bLeft, int nMobType, Controller * pOwner)
{
	Mob mob;
	mob.SetPosX(nX);
	mob.SetPosY(nY);
	mob.SetTemplateID(nTemplateID);
	mob.SetMobTemplate(MobTemplate::GetMobTemplate(mob.GetTemplateID()));

	CreateMob(mob, nX, nY, nFh, bNoDropPriority, nType, dwOption, bLeft, nMobType, pOwner);
}

void LifePool::CreateMob(const Mob& mob, int nX, int nY, int nFh, int bNoDropPriority, int nType, unsigned int dwOption, int bLeft, int nMobType, Controller* pOwner)
{
	Controller* pController = pOwner;
	if (m_hCtrl.size() > 0)
		pController = m_hCtrl.begin()->second;

	if (pController != nullptr 
		&& (pController->GetMobCtrlCount() + pController->GetNpcCtrlCount() - (pController->GetMobCtrlCount() != 0) >= 50)
		&& (nType != -3 || nMobType != 2 || !GiveUpMobController(pController)))
		pController = nullptr;

	if (pController && pController != this->m_pCtrlNull)
	{
		Mob* newMob = AllocObj( Mob );
		*newMob = mob;
		newMob->SetMobStat(AllocObj(MobStat));
		newMob->SetField(m_pField);
		newMob->SetFieldObjectID(atomicObjectCounter++);
		newMob->SetMobGen(mob.GetMobGen());
		newMob->SetSummonType(nType);
		newMob->SetSummonOption(dwOption);
		if (mob.GetMobGen()) 
		{
			++((MobGen*)mob.GetMobGen())->nMobCount;
			((MobGen*)mob.GetMobGen())->nRegenAfter = 0;
		}

		int nMoveAbility = newMob->GetMobTemplate()->m_nMoveAbility;
		newMob->SetHP(1 /*newMob->GetMobTemplate()->m_lnMaxHP*/);
		newMob->SetMP((int)newMob->GetMobTemplate()->m_lnMaxMP);
		newMob->SetMovePosition(nX, nY, bLeft & 1 | 2 * (nMoveAbility == 3 ? 6 : (nMoveAbility == 0 ? 1 : 0) + 1), nFh);
		newMob->SetMoveAction(5); //�Ǫ� = 5 ?
		newMob->GetDamageLog().nFieldID = m_pField->GetFieldID();
		newMob->GetDamageLog().liInitHP = newMob->GetMobTemplate()->m_lnMaxHP;

		OutPacket createMobPacket;
		newMob->MakeEnterFieldPacket(&createMobPacket);
		m_pField->BroadcastPacket(&createMobPacket);

		newMob->SetController(pController);
		newMob->SendChangeControllerPacket(pController->GetUser(), 1);
		pController->AddCtrlMob(newMob);

		//19/05/07 +
		UpdateCtrlHeap(pController);
		m_mMob.insert({ newMob->GetFieldObjectID(), newMob });
	}
}

void LifePool::RemoveNpc(Npc* pNpc)
{
	OutPacket oPacket;
	oPacket.Encode2(NPCSendPacketFlags::NPC_OnMakeLeaveFieldPacket);
	oPacket.Encode4(pNpc->GetFieldObjectID());
	m_pField->BroadcastPacket(&oPacket);
	m_mNpc.erase(pNpc->GetFieldObjectID());
	FreeObj(pNpc);
}

void LifePool::RemoveMob(Mob* pMob)
{
	if (pMob == nullptr)
		return;
	auto pController = pMob->GetController();
	if (pController->GetUser() != nullptr)
	{
		pController->RemoveCtrlMob(pMob);
		pMob->SendReleaseControllPacket(pController->GetUser(), pMob->GetFieldObjectID());
	}
	else
		m_pCtrlNull->RemoveCtrlMob(pMob);
	auto pGen = (MobGen*)pMob->GetMobGen();
	if (pGen && pGen->nRegenInterval)
	{
		--pGen->nMobCount;
		pGen->nRegenAfter = pGen->nRegenInterval == 0 ? REGEN_PERIOD :
			(pGen->nRegenInterval * 300) * (int)(1 + Rand32::GetInstance()->Random() % 16);

		if (pGen->nRegenInterval == -1)
			pGen->nRegenAfter = 0;
	}
	OutPacket oPacket;
	pMob->MakeLeaveFieldPacket(&oPacket);
	m_pField->SplitSendPacket(&oPacket, nullptr);
	m_mMob.erase(pMob->GetFieldObjectID());
	FreeObj( pMob );
}

void LifePool::RemoveAllMob(bool bExceptMobDamagedByMob)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	while (m_mMob.size() > 0)
		if (bExceptMobDamagedByMob && m_mMob.begin()->second->GetMobTemplate()->m_bIsDamagedByMob)
			continue;
		else
			RemoveMob(m_mMob.begin()->second);
}

void LifePool::Reset()
{
	RemoveAllMob(false);
	TryCreateMob(true);

	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	for (auto pGen : m_aMCMobGen)
		FreeObj(pGen);
	m_aMCMobGen.clear();
}

int LifePool::GetMobCount() const
{
	return (int)m_mMob.size();
}

Employee* LifePool::CreateEmployee(int x, int y, int nEmployerID, const std::string &sEmployerName, MiniRoomBase *pMiniRoom, int nFh)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	if (m_mEmployee.find(nEmployerID) != m_mEmployee.end())
		return nullptr;

	auto pEmployee = AllocObj(Employee);
	pEmployee->m_nEmployerID = nEmployerID;
	pEmployee->m_sEmployerName = sEmployerName;
	pEmployee->m_pMiniRoom = pMiniRoom;
	pEmployee->m_nTemplateID = pMiniRoom->GetEmployeeTemplateID();
	pEmployee->SetPosX(x);
	pEmployee->SetPosY(y);
	pEmployee->SetFh(nFh);

	m_mEmployee.insert({ nEmployerID, pEmployee });
	OutPacket oPacket;
	pEmployee->MakeEnterFieldPacket(&oPacket);
	m_pField->BroadcastPacket(&oPacket);

	return pEmployee;
}

void LifePool::RemoveEmployee(int nEmployerID)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	auto findIter = m_mEmployee.find(nEmployerID);
	if (findIter == m_mEmployee.end())
		return;

	OutPacket oPacket;
	findIter->second->MakeLeaveFieldPacket(&oPacket);

	m_mEmployee.erase(findIter);
	m_pField->BroadcastPacket(&oPacket);
}

void LifePool::OnEnter(User *pUser)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	InsertController(pUser);

	for (auto& npc : m_mNpc)
	{
		OutPacket oPacket;
		npc.second->MakeEnterFieldPacket(&oPacket);
		pUser->SendPacket(&oPacket);
		npc.second->SendChangeControllerPacket(pUser);
	}
	for (auto& mob : m_mMob)
	{
		OutPacket oPacket;
		mob.second->MakeEnterFieldPacket(&oPacket);
		pUser->SendPacket(&oPacket);
	}
	for (auto& employee : m_mEmployee)
	{
		OutPacket oPacket;
		employee.second->MakeEnterFieldPacket(&oPacket);
		pUser->SendPacket(&oPacket);
	}
}

void LifePool::InsertController(User* pUser)
{
	Controller* controller = AllocObjCtor(Controller)(pUser) ;
	auto& iter = m_hCtrl.insert({ 0, controller });
	m_mController.insert({ pUser->GetUserID(), iter });
	RedistributeLife();
}

void LifePool::RemoveController(User* pUser)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	if (m_mController.size() == 0)
		return;

	//���pUser������iterator
	auto& iter = m_mController.find(pUser->GetUserID());

	//�ھ�iterator���controller����
	auto pController = iter->second->second;

	//�qhCtrl��������controller
	m_hCtrl.erase(iter->second);

	//�qpUser������iter
	m_mController.erase(iter);

	auto& controlled = pController->GetMobCtrlList();
	for (auto pMob : controlled)
	{
		Controller* pCtrlNew = m_pCtrlNull;
		if (m_hCtrl.size() > 0)
			pCtrlNew = m_hCtrl.begin()->second;
		pMob->SendChangeControllerPacket(pController->GetUser(), 0);
		pMob->SetController(pCtrlNew);
		pCtrlNew->AddCtrlMob(pMob);
		if (pCtrlNew != m_pCtrlNull)
		{
			pMob->SendChangeControllerPacket(pCtrlNew->GetUser(), 1);
			UpdateCtrlHeap(pCtrlNew);
		}
	}

	//�P��
	FreeObj( pController );
}

void LifePool::UpdateCtrlHeap(Controller * pController)
{
	//�ھ�controller��������pUser
	auto pUser = pController->GetUser();

	//���pUser������iterator
	auto& iter = m_mController.find(pUser->GetUserID());


	//�qhCtrl��������controller�A�í��s���J [�s���ƶq��key]
	m_hCtrl.erase(iter->second);
	m_mController[pUser->GetUserID()] = m_hCtrl.insert({ pController->GetTotalControlledCount(), pController });
}

bool LifePool::GiveUpMobController(Controller * pController)
{
	return false;
}

bool LifePool::OnMobSummonItemUseRequest(int nX, int nY, MobSummonItem *pInfo, bool bNoDropPriority)
{
	int pcy = nY;
	auto p = m_pField->GetSpace2D()->GetFootholdUnderneath(nX, nY, &pcy);
	if (!p)
		return false;

	std::vector<int> aSummon;
	for (auto& pr : pInfo->lMob)
		if ((int)Rand32::GetInstance()->Random() % 100 < pr.second)
			aSummon.push_back(pr.first);
	for (auto nID : aSummon)
		CreateMob(nID, nX, pcy, p->GetSN(), bNoDropPriority, pInfo->nType, 0, 0, 0, nullptr);
	return true;
}

void LifePool::MobStatChangeByGuardian(int nTeam, int nSkillID, int nSLV)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	auto pEntry = SkillInfo::GetInstance()->GetMobSkill(nSkillID);
	const MobSkillLevelData* pLevel = nullptr;
	if (!pEntry ||
		!(pLevel = pEntry->GetLevelData(nSLV)))
		return;

	MobGen *pGen = nullptr;
	for (auto& prMob : m_mMob)
	{
		pGen = (MobGen*)prMob.second->GetMobGen();
		if (!pGen || pGen->nTeamForMCarnival != nTeam)
			continue;

		prMob.second->DoSkill_StateChange(
			nSkillID,
			nSLV,
			pLevel,
			0
		);
	}
}

void LifePool::MobStatResetByGuardian(int nTeam, int nSkillID, int nSLV)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	auto pEntry = SkillInfo::GetInstance()->GetMobSkill(nSkillID);
	const MobSkillLevelData* pLevel = nullptr;
	if (!pEntry ||
		!(pLevel = pEntry->GetLevelData(nSLV)))
		return;

	MobGen *pGen = nullptr;
	for (auto& prMob : m_mMob)
	{
		pGen = (MobGen*)prMob.second->GetMobGen();
		if (!pGen || pGen->nTeamForMCarnival != nTeam)
			continue;

		prMob.second->ResetStatChangeSkill(nSkillID);
	}
}

std::vector<Mob*> LifePool::FindAffectedMobInRect(FieldRect& rc, Mob * pExcept)
{
	std::vector<Mob*> aRet;
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	for (auto& prMob : m_mMob)
		if (rc.PtInRect({ prMob.second->GetPosX(), prMob.second->GetPosY() }) &&
			(prMob.second != pExcept))
			aRet.push_back(prMob.second);
	return aRet;
}

void LifePool::RedistributeLife()
{
	Controller* pCtrl = nullptr;
	int nCtrlCount = (int)m_hCtrl.size();
	if (nCtrlCount > 0)
	{
		auto& nonControlled = m_pCtrlNull->GetMobCtrlList();
		//for (auto pMob : nonControlled)
		for(auto iter = nonControlled.begin(); iter != nonControlled.end(); )
		{
			auto pMob = *iter;
			pCtrl = m_hCtrl.begin()->second;

			//����NPC�P�Ǫ��ƶq�`�M�W�L50�A���s�t�m
			if (pCtrl->GetTotalControlledCount() >= 50)
				break;
			pCtrl->AddCtrlMob(pMob);
			pMob->SetController(pCtrl);
			pMob->SendChangeControllerPacket(pCtrl->GetUser(), 1);
			UpdateCtrlHeap(pCtrl);

			m_pCtrlNull->RemoveCtrlMob(pMob);
			iter = nonControlled.begin();
		}
		//NPC

		Controller* minCtrl, *maxCtrl;
		int nMaxNpcCtrl, nMaxMobCtrl, nMinNpcCtrl, nMinMobCtrl;
		//���s�հt�C�ӤH���Ǫ������v
		if (nCtrlCount >= 2) //�ܤ֤@��minCtrl�PmaxCtrl
		{
			while (true) 
			{
				minCtrl = m_hCtrl.begin()->second;
				maxCtrl = m_hCtrl.rbegin()->second;
				nMaxNpcCtrl = maxCtrl->GetNpcCtrlCount();
				nMaxMobCtrl = maxCtrl->GetMobCtrlCount();
				nMinNpcCtrl = minCtrl->GetNpcCtrlCount();
				nMinMobCtrl = minCtrl->GetMobCtrlCount();
				//WvsLogger::LogFormat("Min Ctrl User = %d(%d), Max Ctrl User = %d(%d)\n", minCtrl->GetUser()->GetUserID(), nMinMobCtrl, maxCtrl->GetUser()->GetUserID(), nMaxMobCtrl);
				//�w�g�������Ť��ݭn�A���s�t��
				if ((nMaxNpcCtrl + nMaxMobCtrl - (nMaxMobCtrl != 0) <= (nMinNpcCtrl - (nMinMobCtrl != 0) + nMinMobCtrl + 1))
					|| ((nMaxNpcCtrl + nMaxMobCtrl - (nMaxMobCtrl != 0)) <= 20))
					break;
				//WvsLogger::LogFormat("Unbalanced.\n", minCtrl->GetUser()->GetUserID(), nMinMobCtrl, maxCtrl->GetUser()->GetUserID(), nMaxMobCtrl);
				Mob* pMob = *(maxCtrl->GetMobCtrlList().rbegin());
				maxCtrl->GetMobCtrlList().pop_back();
				pMob->SendChangeControllerPacket(maxCtrl->GetUser(), 0);

				minCtrl->AddCtrlMob(pMob);
				pMob->SetController(minCtrl);
				pMob->SendChangeControllerPacket(minCtrl->GetUser(), 1);
				UpdateCtrlHeap(minCtrl);
				UpdateCtrlHeap(maxCtrl);
			}
		}
	}
}

void LifePool::Update()
{
	int tCur = GameDateTime::GetTime();
	TryCreateMob(false);
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	for (auto& prMob : m_mMob)
		prMob.second->Update(tCur);
}

void LifePool::OnPacket(User * pUser, int nType, InPacket * iPacket)
{
	if (nType >= FlagMin(MobRecvPacketFlag) && nType <= FlagMax(MobRecvPacketFlag))
	{
		OnMobPacket(pUser, nType, iPacket);
	}
	else if (nType == NPCRecvPacketFlags::NPC_OnMoveRequest)
		OnNpcPacket(pUser, nType, iPacket);
}

#include "CalcDamage.h"

void LifePool::OnUserAttack(User * pUser, const SkillEntry * pSkill, AttackInfo * pInfo)
{
	std::lock_guard<std::recursive_mutex> mobLock(m_lifePoolMutex);

	OutPacket attackPacket;
	EncodeAttackInfo(pUser, pInfo, &attackPacket);
	m_pField->SplitSendPacket(&attackPacket, nullptr);

	for (const auto& dmgInfo : pInfo->m_mDmgInfo)
	{
		auto mobIter = m_mMob.find(dmgInfo.first);
		if (mobIter == m_mMob.end())
			continue;
		auto pMob = mobIter->second;
		int aDamage[8] = { 0 };
		int abCritical[8] = { 0 };
		pUser->GetCalcDamage()->PDamage(
			pMob,
			pMob->GetMobStat(),
			pInfo->m_nDamagePerMob,
			pInfo->m_nWeaponItemID,
			pInfo->m_nBulletItemID,
			pInfo->m_nAttackType,
			pInfo->m_nAction,
			false,
			pSkill,
			pInfo->m_nSLV,
			aDamage,
			abCritical,
			0,
			0,
			0
		);
		for (int i = 0; i < 8; ++i)
			WvsLogger::LogFormat("AttackInfo i = [%d], Damage (Srv = %d, Client = %d) Critical ? %d\n",
				i, aDamage[i], 0, abCritical[i]);

		auto& refDmgValues = dmgInfo.second;
		for (const auto& dmgValue : refDmgValues)
		{
			//printf("Monster %d Damaged : %d Total : %d\n", dmgInfo.first, dmgValue, pMob->GetMobTemplate()->m_lnMaxHP);
			pMob->OnMobHit(pUser, dmgValue, pInfo->m_nType);
			if (pMob->GetHP() <= 0)
			{
				pMob->OnMobDead(
					pInfo->m_nX,
					pInfo->m_nY,
					pUser->GetSecondaryStat()->nMesoUp_,
					pUser->GetSecondaryStat()->nMesoUpByItem_
				);
				pMob->GetMobTemplate()->SetMobCountQuestInfo(pUser);
				RemoveMob(pMob);
				break;
			}
		}
	}
}

void LifePool::EncodeAttackInfo(User * pUser, AttackInfo * pInfo, OutPacket * oPacket)
{
	oPacket->Encode2(pInfo->m_nType - UserRecvPacketFlag::User_OnUserAttack_MeleeAttack + UserSendPacketFlag::UserRemote_OnMeleeAttack);
	oPacket->Encode4(pUser->GetUserID());
	oPacket->Encode1(pInfo->m_bAttackInfoFlag);
	if (pInfo->m_nSkillID > 0 || pInfo->m_nType == UserRecvPacketFlag::User_OnUserAttack_MagicAttack)
	{
		oPacket->Encode1(pInfo->m_nSLV);
		oPacket->Encode4(pInfo->m_nSkillID);
	}
	else
		oPacket->Encode1(0);

	oPacket->Encode1(pInfo->m_nDisplay);
	oPacket->Encode1(pInfo->m_nAttackActionType);
	oPacket->Encode1(pInfo->m_nAttackSpeed);

	oPacket->Encode4(pInfo->m_nCsStar);
	for (const auto& dmgInfo : pInfo->m_mDmgInfo)
	{
		oPacket->Encode4(dmgInfo.first);
		oPacket->Encode1(7);
		if (pInfo->m_nSkillID == 4211006)
			oPacket->Encode1((char)dmgInfo.second.size());
		for (const auto& dmgValue : dmgInfo.second)
			oPacket->Encode4((int)dmgValue);
	}

	if (pInfo->m_nType == UserRecvPacketFlag::User_OnUserAttack_ShootAttack)
	{
		oPacket->Encode2(pUser->GetPosX());
		oPacket->Encode2(pUser->GetPosY());
	}
	else if (pInfo->m_nType == UserRecvPacketFlag::User_OnUserAttack_MagicAttack)
		oPacket->Encode4(pInfo->m_tKeyDown);
}

std::recursive_mutex & LifePool::GetLock()
{
	return m_lifePoolMutex;
}

Npc * LifePool::GetNpc(int nFieldObjID)
{
	auto findIter = m_mNpc.find(nFieldObjID);
	if (findIter != m_mNpc.end())
		return findIter->second;
	return nullptr;
}

Mob * LifePool::GetMob(int nFieldObjID)
{
	auto findIter = m_mMob.find(nFieldObjID);
	if (findIter != m_mMob.end())
		return findIter->second;
	return nullptr;
}

void LifePool::UpdateMobSplit(User * pUser)
{
}

void LifePool::OnMobPacket(User * pUser, int nType, InPacket * iPacket)
{
	int dwMobID = iPacket->Decode4();
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);

	auto mobIter = m_mMob.find(dwMobID);
	if (mobIter != m_mMob.end()) {
		switch (nType)
		{
		case MobRecvPacketFlag::Mob_OnMove:
			m_pField->OnMobMove(pUser, mobIter->second, iPacket);
			break;
		}
	}
	else {
		//Release Controller
	}
}

void LifePool::OnNpcPacket(User * pUser, int nType, InPacket * iPacket)
{
	std::lock_guard<std::recursive_mutex> lock(m_lifePoolMutex);
	if (nType == NPCRecvPacketFlags::NPC_OnMoveRequest)
	{
		auto iterNpc = this->m_mNpc.find(iPacket->Decode4());
		if (iterNpc != m_mNpc.end())
		{
			iterNpc->second->OnUpdateLimitedInfo(pUser, iPacket);
		}
	}
}
