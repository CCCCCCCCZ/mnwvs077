#pragma once
#include <map>
#include <vector>
#include "..\WvsLib\Memory\ZMemory.h"

struct BackupItem;
struct ExchangeElement;
struct GA_Character;
struct GW_ItemSlotBase;
class OutPacket;

class InventoryManipulator
{
public:
	enum ExchangeResult
	{
		Exchange_Success = 0,
		Exchange_InsufficientMeso = 1,
		Exchange_InsufficientSlotCount = 2,
		Exchange_InsufficientItemCount = 3
	};

	enum ChangeType
	{
		Change_AddToSlot = 0,
		Change_QuantityChanged = 1,
		Change_SlotPOSChanged = 2,
		Change_RemoveFromSlot = 3,
	};

	struct ChangeLog
	{
		ZSharedPtr<GW_ItemSlotBase> pItem;
		int nChange, nTI, nPOS, nPOS2, nNumber;
	};

	InventoryManipulator();
	~InventoryManipulator();

	static void SwapSlot(GA_Character* pCharacterData, std::vector<ChangeLog>& aChangeLog, int nTI, int nPOS1, int nPOS2);
	static bool IsItemExist(GA_Character* pCharacterData, int nTI, int nItemID);

	static bool RawIncMoney(GA_Character* pCharacterData, int nMoney);

	//�NpItem�����[�J���a�I�]
	static bool RawAddItem(GA_Character* pCharacterData, int nTI, ZSharedPtr<GW_ItemSlotBase>& pItem, std::vector<ChangeLog>* aChangeLog, int *nIncRet, std::vector<BackupItem>* paBackupItem = nullptr);

	//���wnItemID, nCount�[�J���a�I�]
	static bool RawAddItem(GA_Character* pCharacterData, int nTI, int nItemID, int nCount, std::vector<ChangeLog>* aChangeLog, int *nIncRet, std::vector<BackupItem>* paBackupItem = nullptr);
	static bool RawRemoveItem(GA_Character* pCharacterData, int nTI, int nPOS, int nCount, std::vector<ChangeLog>* aChangeLog, int *nDecRet, ZSharedPtr<GW_ItemSlotBase> *ppItemRemoved = nullptr, ZSharedPtr<GW_ItemSlotBase> *ppBackupItem = nullptr);
	static bool RawWasteItem(GA_Character* pCharacterData, int nPOS, int nCount, std::vector<ChangeLog>* aChangeLog);
	static bool RawRechargeItem(GA_Character* pCharacterData, int nPOS, std::vector<ChangeLog>* aChangeLog);
	static int RawExchange(GA_Character* pCharacterData, int nMoney, std::vector<ExchangeElement>& aExchange, std::vector<ChangeLog>* aLogAdd, std::vector<ChangeLog>* aLogRemove, std::vector<ChangeLog>* aLogDefault, std::vector<BackupItem>& aBackupItem);

	//Rolling back modified slots when "Exchange" failed.
	static void RestoreBackupItem(GA_Character* pCharacterData, std::vector<BackupItem>& aBackupItem);
	static void RestoreTradingInventory(GA_Character* pCharacterData, std::map<int, int> mBackupItemTrading[6], std::vector<InventoryManipulator::ChangeLog> &aChangeLog);
	static void InsertChangeLog(std::vector<ChangeLog>& aChangeLog, int nChange, int nTI, int nPOS, const ZSharedPtr<GW_ItemSlotBase>& pi, int nPOS2, int nNumber);
	static bool MakeInventoryOperation(OutPacket *oPacket, int bOnExclResult, std::vector<InventoryManipulator::ChangeLog> &aChangeLog);
	static void MakeItemUpgradeEffect(OutPacket *oPacket, int nCharacterID, int nEItemID, int nUItemID, bool bSuccess, bool bCursed, bool bEnchant);
};

