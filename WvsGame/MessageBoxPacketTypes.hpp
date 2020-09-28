#pragma once
#ifndef EMPLOYEE_FLAG
#define EMPLOYEE_FLAG

#include "..\WvsLib\Net\PacketTypes.hpp"

DEFINE_PACKET_TYPE(MessageBoxSendPacketType)
	REGISTER_TYPE(MessageBox_OnCreateFailed, 189);
	REGISTER_TYPE(MessageBox_OnMakeEnterFieldPacket, 190);
	REGISTER_TYPE(MessageBox_OnMakeLeaveFieldPacket, 191);

//����Opcode Flag���U
END_PACKET_TYPE(MessageBoxSendPacketType)


DEFINE_PACKET_TYPE(MessageBoxRecvPacketType)


//����Opcode Flag���U
END_PACKET_TYPE(MessageBoxRecvPacketType)
#endif