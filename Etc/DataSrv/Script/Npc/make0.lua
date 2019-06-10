require "./DataSrv/Script/sysDef"

function chat_message4(  index,  makeItem,  needItem,  reqLevel ) {
	
	nRet = self->askYesNo( "�Q�n�s�@ " .. makeItem .. " �A���������������ơC O limite de n�vel ?" .. reqLevel .. "e por favor, certifique-se de que n�o vai usar um item que est?sendo aperfei�oado como material. O que voc?acha? Voc?quer um?\r\n\r\n#b" .. needItem );
	if ( nRet == 0 ) self->say( "���W�S�����������ƩΪ̷����ܡH�����U�A�i�H��U�ӫ���M�䥲�������ơA����`��������A�^�ӧ�ڡC" );
	else {
		if ( index == 1 ) ret = inventory->exchange( -20000, 1082007, -1, 4011001, -1, 1082005, 1 );
		else if ( index == 2 ) ret = inventory->exchange( -25000, 1082007, -1, 4011005, -2, 1082006, 1 );
		else if ( index == 3 ) ret = inventory->exchange( -30000, 1082008, -1, 4021006, -3, 1082035, 1 );
		else if ( index == 4 ) ret = inventory->exchange( -40000, 1082008, -1, 4021008, -1, 1082036, 1 );
		else if ( index == 5 ) ret = inventory->exchange( -45000, 1082023, -1, 4011003, -4, 1082024, 1 );
		else if ( index == 6 ) ret = inventory->exchange( -50000, 1082023, -1, 4021008, -2, 1082025, 1 );
		else if ( index == 7 ) ret = inventory->exchange( -55000, 1082009, -1, 4011002, -5, 1082010, 1 );
		else if ( index == 8 ) ret = inventory->exchange( -60000, 1082009, -1, 4011006, -4, 1082011, 1 );
		else if ( index == 9 ) ret = inventory->exchange( -70000, 1082059, -1, 4011002, -3, 4021005, -5, 1082060, 1 );
		else if ( index == 10 ) ret = inventory->exchange( -80000, 1082059, -1, 4021007, -2, 4021008, -2, 1082061, 1 );

		if ( ret != 0 ) self->say( "Por favor, verifique com cuidado se voc?tem todos os itens de que precisa, e se seu invent�rio de equip. est?cheio ou n�o." );
		else self->say( "���ߡI�������~�G" .. makeItem .. ". Voc?n�o acha que eu sou t�o bom quanto o Sr. Trov�o? Voc?vai ficar mais que feliz com o que eu fiz aqui." );
	}
}

function chat_message5(  index,  makeItem,  needItem,  needNumber,  itemNumber ) {
	
	nRetNum = self->askNumber( "Com #b" .. needNumber .. " " .. needItem .. "#k, eu posso criar" .. itemNumber .. " " .. makeItem .. ". Fique feliz, pois essa ?por minha conta. O que voc?acha? Quantos voc?quer?", 0, 0, 100 );
	nNeedNum = nRetNum * needNumber;
	nAllNum = nRetNum * itemNumber;
	nRetBuy = self->askYesNo( "Voc?quer fazer #b" .. makeItem .. "#k " .. nRetNum .. "vezes? Eu vou precisar de  #r" .. nNeedNum .. " " .. needItem .. "#k ent�o." );
	if ( nRetBuy == 0 ) self->say( "���W�S�����������ƩΪ̷����ܡH�����U�A�i�H��U�ӫ���M�䥲�������ơA����`��������A�^�ӧ�ڡC" );
	else {
		if ( index == 1 ) ret = inventory->exchange( 0, 4000003, -nNeedNum, 4003001, nAllNum );
		else if ( index == 2 ) ret = inventory->exchange( 0, 4000018, -nNeedNum, 4003001, nAllNum );
		else if ( index == 3 ) ret = inventory->exchange( 0, 4011001, -nNeedNum, 4011000, -nNeedNum, 4003000, nAllNum );
		if ( ret != 0 ) self->say( "Por favor, verifique com cuidado se voc?tem todos os itens de que precisa, e se seu invent�rio de etc. est?cheio ou n�o." );
		else self->say( "���ߡI Pegue!" .. nAllNum .. " " .. makeItem .. ". Voc?n�o acha que eu sou t�o bom quanto o Sr. Trov�o? Voc?vai ficar mais que feliz com o que eu fiz aqui." );
	}
}

-- refining ores of minerals, jewels and items at Perion.
function s_refine_perion2() {
	nRet1 = self->askYesNo( "Eu sou o aprendiz do Sr. Trov�o. Ele est?ficando muito velho e n�o ?mais o que era... haha! Ah, que droga! Por favor, n�o v?contar a ele que eu disse isso... bem... eu posso fazer v�rios itens especificamente projetados para os guerreiros, ent�o, o que voc?acha? Quer deixar eu fazer?" );
	if ( nRet1 == 0 ) self->say( "*Suspiro*... Meu chefe com certeza vai me falar um monte se eu n�o fizer as coisas direitinho hoje ... Ah, bem... que droga!" );
	else {
		v1 = self->askMenu( "Certo! A taxa de servi�o ser?razo�vel, ent�o n�o se preocupe. O que voc?quer fazer?\r\n#b#L0# Fazer uma luva#l\r\n#L1# Aperfei�oar uma luva#l\r\n#L2# Criar materiais#l" );;
		if ( v1 == 0 ) {
			v2 = self->askMenu( "Eu sou o melhor criador de luvas dessa cidade!! Agora... que tipo de luva voc?quer que eu fa�a?\r\n#L0##b #t1082003##k (���ŭ���: 10, guerreiro)#l\r\n#L1##b #t1082000##k(���ŭ���: 15, guerreiro)#l\r\n#L2##b #t1082004##k(���ŭ���: 20, guerreiro)#l\r\n#L3##b #t1082001##k(���ŭ���: 25, guerreiro)#l\r\n#L4##b #t1082007##k(���ŭ���: 30, guerreiro)#l\r\n#L5##b #t1082008##k(���ŭ���: 35, guerreiro)#l\r\n#L6##b #t1082023##k(���ŭ���: 40, guerreiro)#l\r\n#L7##b #t1082009##k(���ŭ���: 50, guerreiro)#l\r\n#L8##b #t1082059##k(���ŭ���: 60, guerreiro)#l" );
			if ( v2 == 0 ) chat_message3( 1, "#t1082003#", "#v4000021# 15 #t4000021#\r\n#v4011001# #t4011001# \r\n#v4031138# 1.000 ����", 10 );
			else if ( v2 == 1 ) chat_message3( 2, "#t1082000#", "#v4011001# 2 #t4011001# \r\n#v4031138# 2.000 ����", 15 );
			else if ( v2 == 2 ) chat_message3( 3, "#t1082004#", "#v4000021# 40 #t4000021# \r\n#v4011000# 2 #t4011000# \r\n#v4031138# 5.000 ����", 20 );
			else if ( v2 == 3 ) chat_message3( 4, "#t1082001#", "#v4011001# 2 #t4011001# \r\n#v4031138# 10.000 ����", 25 );
			else if ( v2 == 4 ) chat_message3( 5, "#t1082007#", "#v4011000# 3 #t4011000# \r\n#v4011001# 2 #t4011001# \r\n#v4003000# 15 #t4003000# \r\n#v4031138# 20.000 ����", 30 );
			else if ( v2 == 5 ) chat_message3( 6, "#t1082008#", "#v4000021# 30 #t4000021# \r\n#v4011001#  4 #t4011001# \r\n#v4003000# 30 #t4003000# \r\n#v4031138# 30.000 ����", 35 );
			else if ( v2 == 6 ) chat_message3( 7, "#t1082023#", "#v4000021# 50 #t4000021# \r\n#v4011001# 5 #t4011001# \r\n#v4003000# 40 #t4003000# \r\n#v4031138# 40.000 ����", 40 );
			else if ( v2 == 7 ) chat_message3( 8, "#t1082009#", "#v4011001# 3 #t4011001# \r\n#v4021007# 2 #t4021007# \r\n#v4000030# 30 #t4000030# \r\n#v4003000# 45 #t4003000# \r\n#v4031138# 50.000 ����", 50 );
			else if ( v2 == 8 ) chat_message3( 9, "#t1082059#", "#v4011007# #t4011007# \r\n#v4011000# 8 #t4011000# \r\n#v4011006# 2 #t4011006# \r\n#v4000030# 50 #t4000030# \r\n#v4003000# 50 #t4003000# \r\n#v4031138# 70.000 ����", 60 );
		}
		else if ( v1 == 1 ) {
			self->say( "Ent�o, voc?quer aperfei�oar a luva? Ok, ent�o. Mas vou te dar um conselho: Todos os itens que ser�o usados para o aperfei�oamento ir�o desaparecer, e se voc?usar um item que j?tenha sido #raperfei�oado#k com um pergaminho, o efeito ir?desaparecer quando aperfei�oado. Leve isso em considera��o quando for tomar a decis�o, certo?" );
			v2 = self->askMenu( "Ent�o~~ que tipo de luva voc?quer aperfei�oar e criar?\r\n#L0##b #t1082005##k(���ŭ���: 30, guerreiro)#l\r\n#L1##b #t1082006##k(���ŭ���: 30, guerreiro)#l\r\n#L2##b #t1082035##k(���ŭ���: 35, guerreiro)#l\r\n#L3##b #t1082036##k(���ŭ���: 35, guerreiro)#l\r\n#L4##b #t1082024##k(���ŭ���: 40, guerreiro)#l\r\n#L5##b #t1082025##k(���ŭ���: 40, guerreiro)#l\r\n#L6##b #t1082010##k(���ŭ���: 50, guerreiro)#l\r\n#L7##b #t1082011##k(���ŭ���: 50, guerreiro)#l\r\n#L8##b #t1082060##k(���ŭ���: 60, guerreiro)#l\r\n#L9##b #t1082061##k(���ŭ���: 60, guerreiro)#l" );
			if ( v2 == 0 ) chat_message4( 1, "#t1082005#", "#v1082007# #t1082007# \r\n#v4011001# #t4011001# \r\n#v4031138# 20.000 ����", 30 );
			else if ( v2 == 1 ) chat_message4( 2, "#t1082006#", "#v1082007# #t1082007# \r\n#v4011005# 2 #t4011005# \r\n#v4031138# 25.000 ����", 30 );
			else if ( v2 == 2 ) chat_message4( 3, "#t1082035#", "#v1082008# #t1082008# \r\n#v4021006# 3 #t4021006# \r\n#v4031138# 30.000 ����", 35 );
			else if ( v2 == 3 ) chat_message4( 4, "#t1082036#", "#v1082008# #t1082008# \r\n#v4021008# #t4021008# \r\n#v4031138# 40.000 ����", 35 );
			else if ( v2 == 4 ) chat_message4( 5, "#t1082024#", "#v1082023# #t1082023# \r\n#v4011003# 4 #t4011003# \r\n#v4031138# 45.000 ����", 40 );
			else if ( v2 == 5 ) chat_message4( 6, "#t1082025#", "#v1082023# #t1082023# \r\n#v4021008# 2 #t4021008# \r\n#v4031138# 50.000 ����", 40 );
			else if ( v2 == 6 ) chat_message4( 7, "#t1082010#", "#v1082009# #t1082009# \r\n#v4011002# 5 #t4011002# \r\n#v4031138# 55.000 ����", 50 );
			else if ( v2 == 7 ) chat_message4( 8, "#t1082011#", "#v1082009# #t1082009# \r\n#v4011006# 4 #t4011006# \r\n#v4031138# 60.000 ����", 50 );
			else if ( v2 == 8 ) chat_message4( 9, "#t1082060#", "#v1082059# #t1082059# \r\n#v4011002# 3 #t4011002# \r\n#v4021005# 5 #t4021005# \r\n#v4031138# 70.000 ����", 60 );
			else if ( v2 == 9 ) chat_message4( 10, "#t1082061#", "#v1082059# #t1082059# \r\n#v4021007# 2 #t4021007# \r\n#v4021008# 2 #t4021008# \r\n#v4031138# 80.000 ����", 60 );
		}
		else if ( v1 == 2 ) {
			v2 = self->askMenu( "Ent�o, voc?quer criar alguns materiais, certo? Ok... Que tipos de materiais voc?quer criar?\r\n#L0##bCriar #t4003001# com #t4000003##k#l\r\n#L1##bCriar #t4003001# com #t4000018##k#l\r\n#L2##bCriar #t4003000##k#l" );
			if ( v2 == 0 ) chat_message5( 1, "#t4003001#(s)", "#t4000003#es", 10, 1 );
			else if ( v2 == 1 ) chat_message5( 2, "#t4003001#(s)", "#t4000018#", 5, 1 );
			else if ( v2 == 2 ) chat_message5( 3, "#t4003000#", "#t4011001#(s) e #t4011000#(s) cada", 1, 15 );
		}
	}
}

function chat_message6(  index,  makeItem,  needItem,  reqLevel ) {
	
	nRet = self->askYesNo( "�Q�n�s�@ " .. makeItem .. " �A���������������ơC�������~�A�٥����F�쵥��" .. reqLevel .. "���C�H�U�O�s�@���~�����ƲM��G\r\n\r\n#b" .. needItem );
	if ( nRet == 0 ) self->say( "���W�S�����������ƩΪ̷����ܡH�����U�A�i�H��U�ӫ���M�䥲�������ơA����`��������A�^�ӧ�ڡC" );
	else {
		-- Making a claw
		if ( index == 1 ) ret = inventory->exchange( -2000, 4011001, -1, 4000021, -20, 4003000, -5, 1472001, 1 );
		else if ( index == 2 ) ret = inventory->exchange( -3000, 4011000, -2, 4011001, -1, 4000021, -30, 4003000, -10, 1472004, 1 );
		else if ( index == 3 ) ret = inventory->exchange( -15000, 4011000, -3, 4011001, -2, 4000021, -50, 4003000, -20, 1472008, 1 );
		else if ( index == 4 ) ret = inventory->exchange( -30000, 4011000, -4, 4011001, -3, 4000021, -80, 4003000, -25, 1472011, 1 );
		else if ( index == 5 ) ret = inventory->exchange( -40000, 4011000, -3, 4011001, -4, 4000021, -100, 4003000, -30, 1472014, 1 );
		else if ( index == 6 ) ret = inventory->exchange( -50000, 4011000, -4, 4011001, -5, 4000030, -40, 4003000, -35, 1472018, 1 );
		-- Making a glove
		else if ( index == 100 ) ret = inventory->exchange( -1000, 4000021, -15, 1082002, 1 );
		else if ( index == 101 ) ret = inventory->exchange( -7000, 4000021, -30, 4000018, -20, 1082029, 1 );
		else if ( index == 102 ) ret = inventory->exchange( -7000, 4000021, -30, 4000015, -20, 1082030, 1 );
		else if ( index == 103 ) ret = inventory->exchange( -7000, 4000021, -30, 4000020, -20, 1082031, 1 );
		else if ( index == 104 ) ret = inventory->exchange( -10000, 4011000, -2, 4000021, -40, 1082032, 1 );
		else if ( index == 105 ) ret = inventory->exchange( -15000, 4011000, -2, 4011001, -1, 4000021, -10, 1082037, 1 );
		else if ( index == 106 ) ret = inventory->exchange( -25000, 4011001, -2, 4000021, -50, 4003000, -10, 1082042, 1 );
		else if ( index == 107 ) ret = inventory->exchange( -30000, 4011001, -3, 4011000, -1, 4000021, -60, 4003000, -15, 1082046, 1 );
		else if ( index == 108 ) ret = inventory->exchange( -40000, 4000021, -80, 4021000, -3, 4000014, -200, 4003000, -30, 1082075, 1 );
		else if ( index == 109 ) ret = inventory->exchange( -50000, 4021005, -3, 4021008, -1, 4000030, -40, 4003000, -30, 1082065, 1 );
		else if ( index == 110 ) ret = inventory->exchange( -70000, 4011007, -1, 4011000, -8, 4021007, -1, 4000030, -50, 4003000, -50, 1082092, 1 );

		if ( ret != 0 ) self->say( "�ݨӧA���W�S�����������ƩΪ̪����A�]���i��O�A���I�]�Ŷ��w�g���F�C" );
		else self->say( "����!�������~�G" .. makeItem .. "�C�ݬݥ��̬O���O�D�`�����R�H�p�G�٦��ݭn�A�i�H�A�^�ӧ�ڡI" );
	}
}

function chat_message7(  index,  makeItem,  needItem ) {
	
	nRet = self->askYesNo( "�Q�n�ɯŬ�" .. makeItem .. "�A�A���������������ơC�A�������A�нT�O�z�ϥΪ��O�����ɯŹL�����~�A�_�h�i��|�ɭP�ɯť��ѡC�H�U�O�s�@���~�����ƲM��G\r\n\r\n#b" .. needItem );
	if ( nRet == 0 ) self->say( "���W�S�����������ƩΪ̷����ܡH�����U�A�i�H��U�ӫ���M�䥲�������ơA����`��������A�^�ӧ�ڡC" );
	else {
		-- Upgrading a claw
		if ( index == 1 ) ret = inventory->exchange( -1000, 1472001, -1, 4011002, -1, 1472002, 1 );
		else if ( index == 2 ) ret = inventory->exchange( -2000 , 1472001, -1, 4011006, -1, 1472003, 1 );
		else if ( index == 3 ) ret = inventory->exchange( -3000 , 1472004, -1, 4011001, -2, 1472005, 1 );
		else if ( index == 4 ) ret = inventory->exchange( -5000 , 1472004, -1, 4011003, -2, 1472006, 1 );
		else if ( index == 5 ) ret = inventory->exchange( -5000 , 1472000, -1, 4011001, -3, 4000021, -20, 4003001, -30, 1472007, 1 );
		else if ( index == 6 ) ret = inventory->exchange( -10000 , 1472008, -1, 4011002, -3, 1472009, 1 );
		else if ( index == 7 ) ret = inventory->exchange( -15000 , 1472008, -1, 4011003, -3, 1472010, 1 );
		else if ( index == 8 ) ret = inventory->exchange( -20000 , 1472011, -1, 4011004, -4, 1472012, 1 );
		else if ( index == 9 ) ret = inventory->exchange( -25000 , 1472011, -1, 4021008, -1, 1472013, 1 );
		-- Upgrading a glove
		else if ( index == 100 ) ret = inventory->exchange( -5000, 1082032, -1, 4011002, -1, 1082033, 1 );
		else if ( index == 101 ) ret = inventory->exchange( -7000, 1082032, -1, 4021004, -1, 1082034, 1 );
		else if ( index == 102 ) ret = inventory->exchange( -10000, 1082037, -1, 4011002, -2, 1082038, 1 );
		else if ( index == 103 ) ret = inventory->exchange( -12000, 1082037, -1, 4021004, -2, 1082039, 1 );
		else if ( index == 104 ) ret = inventory->exchange( -15000, 1082042, -1, 4011004, -2, 1082043, 1 );
		else if ( index == 105 ) ret = inventory->exchange( -20000, 1082042, -1, 4011006, -1, 1082044, 1 );
		else if ( index == 106 ) ret = inventory->exchange( -22000, 1082046, -1, 4011005, -3, 1082047, 1 );
		else if ( index == 107 ) ret = inventory->exchange( -25000, 1082046, -1, 4011006, -2, 1082045, 1 );
		else if ( index == 108 ) ret = inventory->exchange( -45000, 1082075, -1, 4011006, -4, 1082076, 1 );
		else if ( index == 109 ) ret = inventory->exchange( -50000, 1082075, -1, 4021008, -2, 1082074, 1 );
		else if ( index == 110 ) ret = inventory->exchange( -55000, 1082065, -1, 4021000, -5, 1082067, 1 );
		else if ( index == 111 ) ret = inventory->exchange( -60000, 1082065, -1, 4011006, -2, 4021008, -1, 1082066, 1 );
		else if ( index == 112 ) ret = inventory->exchange( -70000, 1082092, -1, 4011001, -7, 4000014, -200, 1082093, 1 );
		else if ( index == 113 ) ret = inventory->exchange( -80000, 1082092, -1, 4011006, -7, 4000027, -150, 1082094, 1 );

		if ( ret != 0 ) self->say( "�ݨӧA���W�S�����������ƩΪ̪����A�]���i��O�A���I�]�Ŷ��w�g���F�C" );
		else self->say( "���ߡI�������~�G" .. makeItem .. "�C�ݬݥ��̬O���O�D�`�����R�H�p�G�٦��ݭn�A�i�H�A�^�ӧ�ڡI" );
	}
}

function chat_message8(  index,  makeItem,  needItem,  itemOption ) {
	
	nRet = self->askYesNo( "�Q�n�ɯŬ�" .. makeItem .. "�A�A���������������ơC�o�ӼW�j�L���D���ƤF#r" .. itemOption .. "#k���ݩʡC�A�������A�нT�O�z�ϥΪ��O�����ɯŹL�����~�A�_�h�i��|�ɭP�ɯť��ѡC�H�U�O�s�@���~�����ƲM��G\r\n\r\n#b" .. needItem );
	if ( nRet == 0 ) self->say( "���W�S�����������ƩΪ̷����ܡH�����U�A�i�H��U�ӫ���M�䥲�������ơA����`��������A�^�ӧ�ڡC" );
	else {
		if ( index == 1 ) ret = inventory->exchange( -30000 , 1472014, -1, 4021000, -5, 1472015, 1 );
		else if ( index == 2 ) ret = inventory->exchange( -30000 , 1472014, -1, 4011003, -5, 1472016, 1 );
		else if ( index == 3 ) ret = inventory->exchange( -35000 , 1472014, -1, 4021008, -2, 1472017, 1 );
		else if ( index == 4 ) ret = inventory->exchange( -40000 , 1472018, -1, 4021000, -6, 1472019, 1 );
		else if ( index == 5 ) ret = inventory->exchange( -40000 , 1472018, -1, 4021005, -6, 1472020, 1 );

		if ( ret != 0 ) self->say( "�ݨӧA���W�S�����������ƩΪ̪����A�]���i��O�A���I�]�Ŷ��w�g���F�C" );
		else self->say( "���ߡI�������~�G" .. makeItem .. "�C�ݬݥ��̬O���O�D�`�����R�H�p�G�٦��ݭn�A�i�H�A�^�ӧ�ڡI" );
	}
}

function chat_message9(  index,  makeItem,  needItem,  needNumber,  itemNumber ) {
	
	nRetNum = self->askNumber( "�C#b" .. needNumber .. "��" .. needItem .. "#k�i�H�s�@" .. itemNumber .. "��" .. makeItem .. "�C�A�i�H�ۥѨM�w�n�s�@�h�֭ӡA�Aı�o�O�A�A�Q�n�@���s�@�X�ӡH", 0, 0, 100 );
	nNeedNum = nRetNum * needNumber;
	nAllNum = nRetNum * itemNumber;
	nRetBuy = self->askYesNo( "�Q�n�s�@ ".. nRetNum .."��#b" .. makeItem .. "�H�o�N�ݭn#r" .. nNeedNum .. "��" .. needItem .. "#k�ӻs�@�C" );
	if ( nRetBuy == 0 ) self->say( "���W�S�����������ƩΪ̷����ܡH�����U�A�i�H��U�ӫ���M�䥲�������ơA����`��������A�^�ӧ�ڡC" );
	else {
		if ( index == 1 ) ret = inventory->exchange( 0, 4000003, -nNeedNum, 4003001, nAllNum );
		else if ( index == 2 ) ret = inventory->exchange( 0, 4000018, -nNeedNum, 4003001, nAllNum );
		else if ( index == 3 ) ret = inventory->exchange( 0, 4011001, -nNeedNum, 4011000, -nNeedNum, 4003000, nAllNum );
		if ( ret != 0 ) self->say(  "�ݨӧA���W�S�����������ƩΪ̪����A�]���i��O�A���I�]�Ŷ��w�g���F�C" );
		else self->say( "���ߡI�s�@�F" .. nAllNum .. "��" .. makeItem .. "�C�ݬݥ��̬O���O�D�`�����R�H�p�G�٦��ݭn�A�i�H�A�^�ӧ�ڡI" );
	}
}

--creating and upgrading items at kerning city
function s_refine_kerning() {
	nRet1 = self->askYesNo( "�A���W������#t4000021#�ܡH�ڥi�H���z�s�@�������˳ơA�p�G�A���������ƶq����...��F�A�d�U�O�i�D�O�H�ڦb�o�̪��ͷN�C�p��A�Q�n�i��洫�ܡH" );
	if ( nRet1 == 0 ) self->say( "�u���ܡH��ڨӻ��@�I���L�ҿסA���O�A�u�����|�ᮬ�ܡH�p�G�A���ܥD�N�A�H�ɥi�H�^�ӧ�ڡC" );
	else {
		v1 = self->askMenu( "�b�ڳo�̤@�����O�γ��O�X�z���A�o�I�A���ξ�ߡA����A�A�Q�n�s�@����O�H\r\n#b#L0# �s�@���M#l\r\n#L1# �s�@��M#l\r\n#L2# �ɯŮ��M#l\r\n#L3# �ɯŤ�M#l\r\n#L4# �s�@����#l" );;
		if ( v1 == 0 ) {
			v2 = self->askMenu( "�Q�s�@���M�H���M���s��ӻ��O�D�`���n���A���O�ä��O�@��H���i�H�o���ۦp�C�A�Q�n���ڻs�@���@�خ��M�O�H\r\n#L0##b #t1472001##k(���ŭ���: 15 ��)#l\r\n#L1##b #t1472004##k(���ŭ���: 20 ��)#l\r\n#L2##b #t1472008##k(���ŭ���: 30 ��)#l\r\n#L3##b #t1472011##k(���ŭ���: 35 ��)#l\r\n#L4##b #t1472014##k(���ŭ���: 40 ��)#l\r\n#L5##b #t1472018##k(���ŭ���: 50 ��)#l" );
			if ( v2 == 0 ) chat_message6( 1, "#t1472001#", "#v4011001# #t4011001# \r\n#v4000021# 20 #t4000021# \r\n#v4003000# 5 #t4003000# \r\n#v4031138# 2000 ����", 15 );
			else if ( v2 == 1 ) chat_message6( 2, "#t1472004#", "#v4011000# 2 #t4011000# \r\n#v4011001# #t4011001# \r\n#v4000021# 30 #t4000021# \r\n#v4003000# 10 #t4003000# \r\n#v4031138# 3000 ����", 20 );
			else if ( v2 == 2 ) chat_message6( 3, "#t1472008#", "#v4011000# 3 #t4011000# \r\n#v4011001# 2 #t4011001# \r\n#v4000021# 50 #t4000021# \r\n#v4003000# 20 #t4003000# \r\n#v4031138# 15000 ����", 30 );
			else if ( v2 == 3 ) chat_message6( 4, "#t1472011#", "#v4011000# 4 #t4011000# \r\n#v4011001# 3 #t4011001# \r\n#v4000021# 80#t4000021# \r\n#v4003000# 25 #t4003000# \r\n#v4031138# 30000 ����", 35 );
			else if ( v2 == 4 ) chat_message6( 5, "#t1472014#", "#v4011000# 3 #t4011000# \r\n#v4011001# 4 #t4011001# \r\n#v4000021# 100 #t4000021# \r\n#v4003000# 30 #t4003000# \r\n#v4031138# 40000 ����", 40 );
			else if ( v2 == 5 ) chat_message6( 6, "#t1472018#", "#v4011000# 4 #t4011000# \r\n#v4011001# 5 #t4011001# \r\n#v4000030# 40 #t4000030# \r\n#v4003000# 35 #t4003000# \r\n#v4031138# 50000 ����", 50 );
		}
		else if ( v1 == 1 ) {
			v2 = self->askMenu( "��M...�o�̦��n�X�ؿ�ܡA���@�ӬO�A���w���O�H\r\n#L0##b #t1082002##k(���ŭ���: 10 ��)#l\r\n#L1##b #t1082029##k(���ŭ���: 15 ��)#l\r\n#L2##b #t1082030##k(���ŭ���: 15 ��)#l\r\n#L3##b #t1082031##k(���ŭ���: 15 ��)#l\r\n#L4##b #t1082032##k(���ŭ���: 20 ��)#l\r\n#L5##b #t1082037##k(���ŭ���: 25 ��)#l\r\n#L6##b #t1082042##k(���ŭ���: 30 ��)#l\r\n#L7##b #t1082046##k(���ŭ���: 35 ��)#l\r\n#L8##b #t1082075##k(���ŭ���: 40 ��)#l\r\n#L9##b #t1082065##k(���ŭ���: 50 ��)#l\r\n#L10##b #t1082092##k(���ŭ���: 60 ��)#l" );
			if ( v2 == 0 ) chat_message6( 100, "#t1082002#", "#v4000021# 15 #t4000021# \r\n#v4031138# 1.000 ����", 10 );
			else if ( v2 == 1 ) chat_message6( 101, "#t1082029#", "#v4000021# 30 #t4000021# \r\n#v4000018# 20 #t4000018# \r\n#v4031138# 7.000 ����", 15 );
			else if ( v2 == 2 ) chat_message6( 102, "#t1082030#", "#v4000021# 30 #t4000021# \r\n#v4000015# 20 #t4000015# \r\n#v4031138# 7.000 ����", 15 );
			else if ( v2 == 3 ) chat_message6( 103, "#t1082031#", "#v4000021# 30 #t4000021# \r\n#v4000020# 20 #t4000020# \r\n#v4031138# 7.000 ����", 15 );
			else if ( v2 == 4 ) chat_message6( 104, "#t1082032#", "#v4011000# 2 #t4011000# \r\n#v4000021# 40 #t4000021# \r\n#v4031138# 10.000 ����", 20 );
			else if ( v2 == 5 ) chat_message6( 105, "#t1082037#", "#v4011000# 2 #t4011000# \r\n#v4011001# #t4011001# \r\n#v4000021# 10 #t4000021# \r\n#v4031138# 15.000 ����", 25 );
			else if ( v2 == 6 ) chat_message6( 106, "#t1082042#", "#v4011001# 2 #t4011001# \r\n#v4000021# 50 #t4000021# \r\n#v4003000# 10 #t4003000# \r\n#v4031138# 25.000 ����", 30 );
			else if ( v2 == 7 ) chat_message6( 107, "#t1082046#", "#v4011001# 3 #t4011001# \r\n#v4011000# #t4011000# \r\n#v4000021# 60 #t4000021# \r\n#v4003000# 15 #t4003000# \r\n#v4031138# 30.000 ����", 35 );
			else if ( v2 == 8 ) chat_message6( 108, "#t1082075#", "#v4021000# 3 #t4021000# \r\n#v4000014# 200 #t4000014# \r\n#v4000021# 80 #t4000021# \r\n#v4003000# 30 #t4003000# \r\n#v4031138# 40.000 ����", 40 );
			else if ( v2 == 9 ) chat_message6( 109, "#t1082065#", "#v4021005# 3 #t4021005# \r\n#v4021008# #t4021008# \r\n#v4000030# 40 #t4000030# \r\n#v4003000# 30 #t4003000# \r\n#v4031138# 50.000 ����", 50 );
			else if ( v2 == 10 ) chat_message6( 110, "#t1082092#", "#v4011007# #t4011007# \r\n#v4011000# 8 #t4011000# \r\n#v4021007# #t4021007# \r\n#v4000030# 50 #t4000030# \r\n#v4003000# 50 #t4003000# \r\n#v4031138# 70.000 ����", 60 );
		}
		else if ( v1 == 2 ) {
			self->say( "�A�Q�n�ɯŮ��M�ܡH�o�����˧ڡA�����٬O�n�����A�@�I�A�Ҧ��Ω�ɯŪ��D�㳣�|�Q���Ӭp�ɡA�ӥB�p�G�ϥΪ��D��w�g�Q�ɯŤF�A���N�L�k�Ω��L�ɯťγ~�C" );
			v2 = self->askMenu( "�ڴ��ѤF�U�ؿ�ܡA�A�Q�n�ɯŬ����@�ӡH\r\n#L0##b #t1472002##k(���ŭ���: 15 ��)#l\r\n#L1##b #t1472003##k(���ŭ���: 15 ��)#l\r\n#L2##b #t1472005##k(���ŭ���: 20 ��)#k#l\r\n#L3##b #t1472006##k(���ŭ���: 20 ��)#l\r\n#L4##b #t1472007##k(���ŭ���: 25 ��)#l\r\n#L5##b #t1472009##k(���ŭ���: 30 ��)#l\r\n#L6##b #t1472010##k(���ŭ���: 30 ��)#l\r\n#L7##b #t1472012##k(���ŭ���: 35 ��)#l\r\n#L8##b #t1472013##k(���ŭ���: 35 ��)#l\r\n#L9##b #t1472015##k(���ŭ���: 40 ��)#l\r\n#L10##b #t1472016##k(���ŭ���: 40 ��)#l\r\n#L11##b #t1472017##k(���ŭ���: 40 ��)#l\r\n#L12##b #t1472019##k(���ŭ���: 50 ��)#l\r\n#L13##b #t4021005# ���M#k(���ŭ���: 50 ��)#l" );
			if ( v2 == 0 ) chat_message7( 1, "#t1472002#", "#v1472001# #t1472001# \r\n#v4011002# #t4011002# \r\n#v4031138# 1.000 ����" );
			else if ( v2 == 1 ) chat_message7( 2, "#t1472003#", "#v1472001# #t1472001# \r\n#v4011006# #t4011006# \r\n#v4031138# 2.000 ����" );
			else if ( v2 == 2 ) chat_message7( 3, "#t1472005#", "#v1472004# #t1472004# \r\n#v4011001# 2 #t4011001# \r\n#v4031138# 3.000 ����" );
			else if ( v2 == 3 ) chat_message7( 4, "#t1472006#", "#v1472004# #t1472004# \r\n#v4011003# 2 #t4011003# \r\n#v4031138# 5.000 ����" );
			else if ( v2 == 4 ) chat_message7( 5, "#t1472007#", "#v1472000# #t1472000# \r\n#v4011001# 3 #t4011001# \r\n#v4000021# 20 #t4000021# \r\n#v4003001# 30 #t4003001# \r\n#v4031138# 5.000 ����" );
			else if ( v2 == 5 ) chat_message7( 6, "#t1472009#", "#v1472008# #t1472008# \r\n#v4011002# 3 #t4011002# \r\n#v4031138# 10.000 ����" );
			else if ( v2 == 6 ) chat_message7( 7, "#t1472010#", "#v1472008# #t1472008# \r\n#v4011003# 3 #t4011003# \r\n#v4031138# 15.000 ����" );
			else if ( v2 == 7 ) chat_message7( 8, "#t1472012#", "#v1472011# #t1472011# \r\n#v4011004# 4 #t4011004# \r\n#v4031138# 20.000 ����" );
			else if ( v2 == 8 ) chat_message7( 9, "#t1472013#", "#v1472011# #t1472011# \r\n#v4021008# #t4021008# \r\n#v4031138# 25.000 ����" );
			else if ( v2 == 9 ) chat_message8( 1, "#t1472015#", "#v1472014# #t1472014# \r\n#v4021000# 5 #t4021000# \r\n#v4031138# 30.000 ����", "DEX +2" );
			else if ( v2 == 10 ) chat_message8( 2, "#t1472016#", "#v1472014# #t1472014# \r\n#v4011003# 5 #t4011003# \r\n#v4031138# 30.000 ����", "LUK +2" );
			else if ( v2 == 11 ) chat_message8( 3, "#t1472017#", "#v1472014# #t1472014# \r\n#v4021008# 2 #t4021008# \r\n#v4031138# 35.000 ����", "LUK +3" );
			else if ( v2 == 12 ) chat_message8( 4, "#t1472019#", "#v1472018# #t1472018# \r\n#v4021000# 6 #t4021000# \r\n#v4031138# 40.000 ����", "DEX +3" );
			else if ( v2 == 13 ) chat_message8( 5, "#t1472020#", "#v1472018# #t1472018# \r\n#v4021005# 6 #t4021005# \r\n#v4031138# 40.000 ����", "LUK +3" );
		}
		else if ( v1 == 3 ) {
			self->say( "�A�Q�n�ɯŤ�M�ܡH�o�����˧ڡA�����٬O�n�����A�@�I�A�Ҧ��Ω�ɯŪ��D�㳣�|�Q���Ӭp�ɡA�ӥB�p�G�ϥΪ��D��w�g�Q�ɯŤF�A���N�L�k�Ω��L�ɯťγ~�C" );
			v2 = self->askMenu( "�ҥH���@�ؤ�M�A�Q�n�ɯ���o�O�H\r\n#L0##b #t1082033##k(���ŭ���: 20 ��)#l\r\n#L1##b #t1082034##k(���ŭ���: 20 ��)#l\r\n#L2##b #t1082038##k(���ŭ���: 25 ��)#l\r\n#L3##b #t1082039##k(���ŭ���: 25 ��)#l\r\n#L4##b #t1082043##k(���ŭ���: 30 ��)#l\r\n#L5##b #t1082044##k(���ŭ���: 30 ��)#l\r\n#L6##b #t1082047##k(���ŭ���: 35 ��)#l\r\n#L7##b #t1082045##k(���ŭ���: 35 ��)#l\r\n#L8##b #t1082076##k(���ŭ���: 40 ��)#l\r\n#L9##b #t1082074##k(���ŭ���: 40 ��)#l\r\n#L10##b #t1082067##k(���ŭ���: 50 ��)#l\r\n#L11##b #t1082066##k(���ŭ���: 50 ��)#l\r\n#L12##b #t1082093##k(���ŭ���: 60 ��)#l\r\n#L13##b #t1082094##k(���ŭ���: 60 ��)#l" );
			if ( v2 == 0 ) chat_message7( 100, "#t1082033#", "#v1082032# #t1082032# \r\n#v4011002# #t4011002# \r\n#v4031138# 5.000 ����" );
			else if ( v2 == 1 ) chat_message7( 101, "#t1082034#", "#v1082032# #t1082032# \r\n#v4021004# #t4021004# \r\n#v4031138# 7.000 ����" );
			else if ( v2 == 2 ) chat_message7( 102, "#t1082038#", "#v1082037# #t1082037# \r\n#v4011002# 2 #t4011002# \r\n#v4031138# 10.000 ����" );
			else if ( v2 == 3 ) chat_message7( 103, "#t1082039#", "#v1082037# #t1082037# \r\n#v4021004# 2 #t4021004# \r\n#v4031138# 12.000 ����" );
			else if ( v2 == 4 ) chat_message7( 104, "#t1082043#", "#v1082042# #t1082042# \r\n#v4011004# 2 #t4011004# \r\n#v4031138# 15.000 ����" );
			else if ( v2 == 5 ) chat_message7( 105, "#t1082044#", "#v1082042# #t1082042# \r\n#v4011006# #t4011006# \r\n#v4031138# 20.000 ����" );
			else if ( v2 == 6 ) chat_message7( 106, "#t1082047#", "#v1082046# #t1082046# \r\n#v4011005# 3 #t4011005# \r\n#v4031138# 22.000 ����" );
			else if ( v2 == 7 ) chat_message7( 107, "#t1082045#", "#v1082046# #t1082046# \r\n#v4011006# 2 #t4011006# \r\n#v4031138# 25.000 ����" );
			else if ( v2 == 8 ) chat_message7( 108, "#t1082076#", "#v1082075# #t1082075# \r\n#v4011006# 4 #t4011006# \r\n#v4031138# 45.000 ����" );
			else if ( v2 == 9 ) chat_message7( 109, "#t1082074#", "#v1082075# #t1082075# \r\n#v4021008# 2 #t4021008# \r\n#v4031138# 50.000 ����" );
			else if ( v2 == 10 ) chat_message7( 110, "#t1082067#", "#v1082065# #t1082065# \r\n#v4021000# 5 #t4021000# \r\n#v4031138# 55.000 ����" );
			else if ( v2 == 11 ) chat_message7( 111, "#t1082066#", "#v1082065# #t1082065# \r\n#v4011006# 2 #t4011006# \r\n#v4021008# #t4021008# \r\n#v4031138# 60.000 ����" );
			else if ( v2 == 12 ) chat_message7( 112, "#t1082093#", "#v1082092# #t1082092# \r\n#v4011001# 7 #t4011001# \r\n#v4000014# 200 #t4000014# \r\n#v4031138# 70.000 ����" );
			else if ( v2 == 13 ) chat_message7( 113, "#t1082094#", "#v1082092# #t1082092# \r\n#v4011006# 7 #t4011006# \r\n#v4000027# 150 #t4000027# \r\n#v4031138# 80.000 ����" );
		}
		else if ( v1 == 4 ) {
			v2 = self->askMenu( "�s�@���ơH�S���D�A�o�譱�ڤ]�ܦb��C\r\n#L0##b ��#t4000003#�s�@#t4003001##k#l\r\n#L1##b ��#t4000018#�s�@#t4003001##k#l\r\n#L2##b �s�@#t4003000# #k#l" );
			if ( v2 == 0 ) chat_message9( 1, "#t4003001#", "#t4000003#", 10, 1 );
			else if ( v2 == 1 ) chat_message9( 2, "#t4003001#", "#t4000018#", 5, 1 );
			else if ( v2 == 2 ) chat_message9( 3, "#t4003000#", "#t4011001#�P#t4011000#", 1, 15 );
		}
	}
}
