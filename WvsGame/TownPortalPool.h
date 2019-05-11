#pragma once
#include <map>
#include <list>
#include "FieldPoint.h"

class TownPortal;

/*
�a�Ϥ��޲z�l�ꪫ (�p�l���)
*/
class TownPortalPool
{
	std::list<FieldPoint> m_aTownPortal;
public:
	TownPortalPool();
	~TownPortalPool();

	void AddTownPortalPos(FieldPoint pos);
};

