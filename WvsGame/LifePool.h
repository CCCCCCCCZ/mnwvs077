#pragma once
#include <map>
#include "Npc.h"
#include "Mob.h"
#include <atomic>
#include <mutex>
#include "..\WvsLib\Wz\WzResMan.hpp"

struct AttackInfo;
struct MobSummonItem;
struct FieldRect;
class User;
class Field;
class Controller;
class InPacket;
class SkillEntry;
class Drop;

class LifePool
{
	const static int MAX_WINDOW_VIEW_X = 1280, 
		MAX_WINDOW_VIEW_Y = 1024, 
		MAX_MOB_GEN = 40,
		REGEN_PERIOD = 2500; //If the monster is killed, how long it should be re-generated

	struct MobGen
	{
		Mob mob;
		int nRegenAfter = 0, nRegenInterval = 0, nMobCount = 0;
	};

	std::recursive_mutex m_lifePoolMutex;
	std::atomic<int> atomicObjectCounter = 0x1000;

	//�b�o�Ӧa�Ϥ��Ҧ��i�઺NPC����
	std::vector<Npc> m_lNpc;

	//�b�o�Ӧa�Ϥ��Ҧ��i�઺�Ǫ�����
	std::vector<MobGen*> m_aMobGen;

	//�b�o�Ӧa�Ϥ��u�����ͥX���Ǫ�, key�OObject ID
	std::map<int, Mob*> m_mMob;

	//�b�o�Ӧa�Ϥ��u�����ͥX��Npc, key�OObject ID
	std::map<int, Npc*> m_mNpc;

	/* �a�Ϥ��������a�����v�������A�ϥ�std::map ���������A�Ы� Max Heap �P Min Heap
	   Key�O ����ƶq Value : Controller�O�N����̪��������
	   User�����O�smap��iterator �H�K�i��ֳt�R�� [ std::map��iterator���|�]���e�������s�W�R���ӵL�� ]
	*/
	std::multimap<int, Controller*> m_hCtrl;

	/*
	��a�Ϥ��L���󪱮a�i�@��Controller�A�N�Ҧ��Ǫ������v��浹Null Controller�A��K�޲z
	*/
	Controller* m_pCtrlNull;

	//����User�����쪺m_hCtrl iterator
	std::map<int, decltype(m_hCtrl)::iterator> m_mController;

	//�]�w����b�a�Ϥ������ݩ�
	void SetFieldObjAttribute(FieldObj* pFieldObj, WZ::Node& dataNode);

	//���즳�����ݩ�
	int m_nMobCapacityMin, m_nMobCapacityMax, m_aInitMobGenCount = 0, m_nSubMobCount = -1, m_nMobDamagedByMobState = 0;

	bool m_bMobGenEnable = true;

	Field* m_pField;

	void OnMobPacket(User* pUser, int nType, InPacket* iPacket);
	void OnNpcPacket(User* pUser, int nType, InPacket* iPacket);
public:
	LifePool();
	~LifePool();

	void SetMaxMobCapacity(int max);
	int GetMaxMobCapacity() const;
	void LoadNpcData(WZ::Node& dataNode);
	void LoadMobData(WZ::Node& dataNode);
	Npc* CreateNpc(int nTemplateID, int nX, int nY, int nFh);
	Npc* CreateNpc(const Npc&);
	void TryCreateMob(bool bReset);

	void CreateMob(int nTemplateID, int nX, int nY, int nFh, int bNoDropPriority, int nType, unsigned int dwOption, int bLeft, int nMobType, Controller* pOwner);
	void CreateMob(const Mob&, int nX, int nY, int nFh, int bNoDropPriority, int nType, unsigned int dwOption, int bLeft, int nMobType, Controller* pOwner);
	void RemoveNpc(Npc *pNpc);
	void RemoveMob(Mob* pMob);
	void RemoveAllMob(bool bExceptMobDamagedByMob);
	void Reset();
	int GetMobCount() const;

	void Init(Field* pField, int nFieldID);
	void OnEnter(User* pUser);

	void InsertController(User* pUser);
	void RemoveController(User* pUser);
	void UpdateCtrlHeap(Controller* pController);
	bool GiveUpMobController(Controller* pController);
	bool OnMobSummonItemUseRequest(int nX, int nY, MobSummonItem* pInfo, bool bNoDropPriority);
	std::vector<Mob*> FindAffectedMobInRect(FieldRect& rc, Mob* pExcept);

	void RedistributeLife();
	void Update();
	void OnPacket(User* pUser, int nType, InPacket* iPacket);
	void OnUserAttack(User *pUser, const SkillEntry *pSkill, AttackInfo *pInfo);
	void EncodeAttackInfo(User * pUser, AttackInfo *pInfo, OutPacket *oPacket);
	std::recursive_mutex& GetLock();
	Npc* GetNpc(int nFieldObjID);
	Mob* GetMob(int nFieldObjID);
	void UpdateMobSplit(User* pUser);
};

