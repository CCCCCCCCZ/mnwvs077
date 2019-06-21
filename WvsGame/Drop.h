#pragma once
#include <memory>
#include "FieldObj.h"
#include "FieldPoint.h"
#include "..\WvsLib\Memory\ZMemory.h"

struct GW_ItemSlotBase;
class User;
class Pet;
class Reward;
class DropPoo;

class Drop : public FieldObj
{
	friend class DropPool;
private:
	FieldPoint m_pt1, m_pt2;

	int m_nMoney = 0,
		m_dwDropID = 0,
		m_dwOwnerID = 0,
		m_dwOwnPartyID = 0,
		m_nOwnType = 0,
		m_dwSourceID = 0,
		m_nShowMax = 0,
		m_nPeriod = 0;

	unsigned int m_tCreateTime = 0;

	bool m_bByPet = false, 
		m_bIsMoney = false,
		m_bEverlasting = false,
		m_bConsumeOnPickup = false;

	unsigned short m_usQRKey;

	ZSharedPtr<GW_ItemSlotBase> m_pItem;

public:
	Drop();
	~Drop();

	void MakeEnterFieldPacket(OutPacket *oPacket);
	void MakeEnterFieldPacket(OutPacket *oPacket, int nEnterType, int tDelay);

	void MakeLeaveFieldPacket(OutPacket *oPacket);
	void MakeLeaveFieldPacket(OutPacket *oPacket, int nLeaveType, int nOption, Pet *pPet);

	bool IsShowTo(FieldObj *pUser);
	void Init(unsigned int dwDropID, Reward *reward, unsigned int dwOwnerID, unsigned int dwOwnPartyID, int nOwnType, unsigned int dwSourceID, int x1, int y1, int x2, int y2, int bByPet);
	ZSharedPtr<GW_ItemSlotBase> GetItem();
	int GetDropInfo() const;
	int GetMoney() const;
};

