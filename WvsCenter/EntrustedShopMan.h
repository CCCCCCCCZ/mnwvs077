#pragma once
#include <set>
#include <mutex>

class LocalServer;

class EntrustedShopMan
{
	EntrustedShopMan();
	~EntrustedShopMan();

	std::set<int> m_sEmployer;
	std::recursive_mutex m_mtxLock;

public:
	enum EntrustedShopRequest
	{
		req_EShop_OpenCheck = 0x00,
		req_EShop_RegisterShop = 0x01,
		req_EShop_UnRegisterShop = 0x02,
	};

	enum EntrustedShopCheckResult
	{
		res_EShop_OpenCheck_Failed = 0x05,
		res_EShop_OpenCheck_Valid = 0x06
	};


	static EntrustedShopMan* GetInstance();
	void CheckEntrustedShopOpenPossible(LocalServer *pSrv, int nCharacterID, long long int liCashItemSN);
	void CreateEntrustedShop(LocalServer *pSrv, int nCharacterID, int SlotCount, long long int liCashItemSN);
	void RemoveEntrustedShop(LocalServer *pSrv, int nCharacterID);
};
