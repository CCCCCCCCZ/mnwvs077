#pragma once
#ifndef NPC_FLAG
#define NPC_FLAG

#include "PacketFlags.hpp"

#define MAKE_NPC_PACKET_FLAG(flagName, value) namespace FlagInstances{ const static NPCPacketFlags flagName {value, #flagName}; } const static int flagName = value

MAKE_FLAG_COLLECTION_BODY(NPCPacketFlags)
//�H�U�}�l���U�ʥ]Opcode Flag

//Flags to Game
MAKE_NPC_PACKET_FLAG(NPC_OnNpcShopItemList, 220);
MAKE_NPC_PACKET_FLAG(NPC_OnNpcShopRequest, 221);

MAKE_NPC_PACKET_FLAG(NPC_OnMakeEnterFieldPacket, 175);
MAKE_NPC_PACKET_FLAG(NPC_OnMakeLeaveFieldPacket, 176);
MAKE_NPC_PACKET_FLAG(NPC_OnNpcChangeController, 177);
MAKE_NPC_PACKET_FLAG(NPC_OnMove, 178);
MAKE_NPC_PACKET_FLAG(NPC_ScriptMessage, 219);  //ScriptMan::OnScriptMessage

												 							
FLAG_COLLECTION_BODY_END
//����Opcode Flag���U

#endif