#include "Center.h"
#include <functional>
#include <thread>

#include "..\WvsLib\Net\InPacket.h"
#include "..\WvsLib\Net\OutPacket.h"
#include "..\WvsLib\Net\PacketFlags\LoginPacketFlags.hpp"
#include "..\WvsLib\Net\PacketFlags\CenterPacketFlags.hpp"
#include "..\WvsLib\DateTime\GameDateTime.h"
#include "..\WvsLib\Common\ServerConstants.hpp"
#include "..\WvsLib\Logger\WvsLogger.h"
#include "WvsLogin.h"
#include "LoginEntry.h"

Center::Center(asio::io_service& serverService)
	: SocketBase(serverService, true)
{
}

Center::~Center()
{
}

void Center::SetCenterIndex(int idx)
{
	nCenterIndex = idx;
}

void Center::OnConnected()
{
	WvsLogger::LogRaw(WvsLogger::LEVEL_INFO, "[WvsLogin][Center::OnConnect]���\�s�u��Center Server�I\n");

	//�VCenter Server�o�eHand Shake�ʥ]
	OutPacket oPacket;
	oPacket.Encode2(LoginSendPacketFlag::Center_RegisterCenterRequest);

	//WvsLogin��ServerType��SVR_LOGIN
	oPacket.Encode1(ServerConstants::ServerType::SRV_LOGIN);

	SendPacket(&oPacket); 
	OnWaitingPacket();
}

void Center::OnPacket(InPacket *iPacket)
{
	WvsLogger::LogRaw("[WvsLogin][Center::OnPacket]�ʥ]�����G");
	iPacket->Print();
	int nType = (unsigned short)iPacket->Decode2();
	switch (nType)
	{
	case CenterSendPacketFlag::RegisterCenterAck:
	{
		auto result = iPacket->Decode1();
		if (!result)
		{
			WvsLogger::LogRaw(WvsLogger::LEVEL_ERROR, "[WvsLogin][RegisterCenterAck][���~]Center Server�ڵ���eLocalServer�s���A�{���Y�N�פ�C\n");
			exit(0);
		}
		WvsLogger::LogRaw(WvsLogger::LEVEL_INFO, "[WvsLogin][RegisterCenterAck]Center Server �{�ҧ����A�P�@�ɦ��A���s�u���\�إߡC\n");
		OnUpdateWorldInfo(iPacket);
		break;
	}
	case CenterSendPacketFlag::CenterStatChanged:
		OnUpdateChannelInfo(iPacket);
		break;
	case CenterSendPacketFlag::CharacterListResponse:
		OnCharacterListResponse(iPacket);
		break;
	case CenterSendPacketFlag::GameServerInfoResponse:
		OnGameServerInfoResponse(iPacket);
		break;
	case CenterSendPacketFlag::CreateCharacterResult:
		OnCreateCharacterResult(iPacket);
		break;
	case CenterSendPacketFlag::LoginAuthResult:
		OnLoginAuthResult(iPacket);
		break;
	}
}

void Center::OnClosed()
{
}

void Center::OnUpdateChannelInfo(InPacket * iPacket)
{
	m_WorldInfo.nGameCount = iPacket->Decode2();
	memset(m_WorldInfo.m_aChannelStatus, 0, sizeof(int) * ServerConstants::kMaxChannelCount);
	for (int i = 0; i < m_WorldInfo.nGameCount; ++i)
		m_WorldInfo.m_aChannelStatus[(iPacket->Decode1())] = 1;
}

void Center::OnUpdateWorldInfo(InPacket *iPacket)
{
	m_WorldInfo.nWorldID = iPacket->Decode1();
	m_WorldInfo.nEventType = iPacket->Decode1();
	m_WorldInfo.strWorldDesc = iPacket->DecodeStr();
	m_WorldInfo.strEventDesc = iPacket->DecodeStr();
	WvsLogger::LogRaw(WvsLogger::LEVEL_INFO, "[WvsLogin][Center::OnUpdateWorld]�C�����A���@�ɸ�T��s�C\n");
}

void Center::OnConnectFailed()
{
	WvsLogger::LogRaw(WvsLogger::LEVEL_ERROR, "[WvsShop][Center::OnConnect]�L�k�s�u��Center Server�A�i��O�A�ȩ|���ҰʩΪ̽T�{�s�u��T�C\n");
	OnDisconnect();
}

void Center::OnCharacterListResponse(InPacket *iPacket)
{
	unsigned int nLoginSocketID = iPacket->Decode4();
	auto pSocket = WvsBase::GetInstance<WvsLogin>()->GetSocket(nLoginSocketID);
	OutPacket oPacket;
	oPacket.Encode2(LoginSendPacketFlag::Client_ClientSelectWorldResult);
	oPacket.Encode1(0);
	oPacket.Encode4(1000000);

	WvsLogger::LogRaw("[WvsLogin][Center::OnCharacterListResponse]���a�֦�����M��ʥ] : ");
	iPacket->Print();
	WvsLogger::LogRaw("\n");

	oPacket.EncodeBuffer(iPacket->GetPacket() + 6, iPacket->GetPacketSize() - 6);

	oPacket.Encode2(0x03);
	oPacket.Encode4(6); //char slots
	oPacket.Encode4(8); //char slots
	oPacket.Encode4(8); //char slots
	oPacket.Encode8(0);
	pSocket->SendPacket(&oPacket);
}

void Center::OnGameServerInfoResponse(InPacket *iPacket)
{
	unsigned int nLoginSocketID = iPacket->Decode4();
	auto pEntry = WvsBase::GetInstance<WvsLogin>()->GetLoginEntryByLoginSocketSN(nLoginSocketID);
	auto pSocket = WvsBase::GetInstance<WvsLogin>()->GetSocket(nLoginSocketID);
	if (!pEntry || !pSocket)
		return;
	pEntry->nLoginState = LoginState::LS_Stage_MigratedIn;

	//Auth
	if (!iPacket->Decode1())
	{
		pEntry->nLoginState = LoginState::LS_Stage_SelectWorld;
		pSocket->GetSocket().close();
		return;
	}
	OutPacket oPacket;
	oPacket.Encode2(LoginSendPacketFlag::Client_ClientSelectCharacterResult);
	oPacket.EncodeBuffer(
		iPacket->GetPacket() + iPacket->GetReadCount(), 
		iPacket->GetPacketSize() - iPacket->GetReadCount());
	pSocket->SendPacket(&oPacket);
}

void Center::OnCreateCharacterResult(InPacket * iPacket)
{
	unsigned int nLoginSocketID = iPacket->Decode4();
	auto pSocket = WvsBase::GetInstance<WvsLogin>()->GetSocket(nLoginSocketID);
	OutPacket oPacket;
	oPacket.Encode2((short)LoginSendPacketFlag::Client_ClientCreateCharacterResult);
	oPacket.EncodeBuffer(iPacket->GetPacket() + 6, iPacket->GetPacketSize() - 6);
	pSocket->SendPacket(&oPacket);
}

void Center::OnLoginAuthResult(InPacket * iPacket)
{
	int nType = iPacket->Decode1();
	int nAccountID = iPacket->Decode4();
	switch (nType)
	{
		case LoginAuthResult::res_LoginAuth_RefreshLoginState:
		case LoginAuthResult::res_LoginAuth_UnRegisterMigratinon:
		{
			if (nType == LoginAuthResult::res_LoginAuth_UnRegisterMigratinon ||
				!iPacket->Decode1())
				WvsBase::GetInstance<WvsLogin>()->RemoveLoginEntryByAccountID(nAccountID);
		}
	}
}

void Center::OnNotifyCenterDisconnected(SocketBase * pSocket)
{
	WvsLogger::LogRaw("[WvsLogin][Center]�PCenter Server���_�s�u�C\n");
}
