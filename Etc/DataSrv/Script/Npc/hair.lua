require "./DataSrv/Script/sysDef"

-- Henesys VIP hair salon 
function s_hair_henesys1() {
-- 	selectHair = self->askMenu( "�A�n�A�ڬONat�lia, a chefe deste sal�o de beleza�p�G�A���W��#b#t5150001##k, #b#t5151001##k��#b#t5420002##k, deixe-me cuidar do seu penteado. Escolha o que quer.\r\n#b#L0# �󴫾v�� (�ϥΰ��Ŭ��v��)#l\r\n#L1# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L2# Mudar o estilo  (Cupom de s�cio VIP)#l" ); 
	selectHair = self->askMenu( "�w��Ө�}�b������v���A�u�n�A����a#b#t5150001##k�Ϊ�#b#t5151001##k�ڴN�i�H���A�󴫧A���w���y���C�п�ܧA�ݭn���A�ȡG\r\n#b#L0# �󴫾v�� (�ϥΰ��Ŭ��v��)#l\r\n#L1# �󴫾v�� (�ϥΰ��ŷ|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30480 + tHair; 
			
 			changeHair5 = 30310 + tHair; 
 			changeHair6 = 30330 + tHair; 
 			changeHair7 = 30060 + tHair; 
 			changeHair8 = 30150 + tHair; 
 			changeHair9 = 30410 + tHair; 
 			changeHair10 = 30210 + tHair; 
 			changeHair11 = 30140 + tHair; 
 			changeHair12 = 30120 + tHair; 
 			changeHair13 = 30200 + tHair; 
			
 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150001##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5150001, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31050 + tHair; 
 			changeHair2 = 31040 + tHair; 
 			changeHair3 = 31000 + tHair; 
 			changeHair4 = 31700 + tHair; 
			
 			changeHair5 = 31150 + tHair; 
 			changeHair6 = 31310 + tHair; 
 			changeHair7 = 31300 + tHair; 
 			changeHair8 = 31160 + tHair; 
 			changeHair9 = 31100 + tHair; 
 			changeHair10 = 31410 + tHair; 
 			changeHair11 = 31030 + tHair; 
 			changeHair12 = 31080 + tHair; 
 			changeHair13 = 31070 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150001##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5150001, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 		} 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A���D�A����a�һݪ��|���d�A�_�h�ڵL�k���A�󴫳y���C" ); 
 	} 
 	else if ( selectHair == 1 ) { 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		changeHair1 = eHair; 
 		changeHair2 = eHair + 1; 
 		changeHair4 = eHair + 2; 
 		changeHair6 = eHair + 4; 
 		changeHair3 = eHair + 6; 
 		changeHair5 = eHair + 7; 

 		mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5105100#k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5151001, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A���D�A����a�һݪ��|���d�A�_�h�ڵL�k���A�󴫳y���C" ); 
 	} 
--[[
 	else if ( selectHair == 2 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30480 + tHair; 
			
 			changeHair5 = 30310 + tHair; 
 			changeHair6 = 30330 + tHair; 
 			changeHair7 = 30060 + tHair; 
 			changeHair8 = 30150 + tHair; 
 			changeHair9 = 30410 + tHair; 
 			changeHair10 = 30210 + tHair; 
 			changeHair11 = 30140 + tHair; 
 			changeHair12 = 30120 + tHair; 
 			changeHair13 = 30200 + tHair; 
			
 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420002##k eu mudarei isso para voc? Com este cupom, voc?tem o poder de mudar o estilo do seu cabelo para algo novo, sempre que quiser, por UM M�S! Agora, escolha um estilo que goste.", 5420002, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31050 + tHair; 
 			changeHair2 = 31040 + tHair; 
 			changeHair3 = 31000 + tHair; 
 			changeHair4 = 31700 + tHair; 
			
 			changeHair5 = 31150 + tHair; 
 			changeHair6 = 31310 + tHair; 
 			changeHair7 = 31300 + tHair; 
 			changeHair8 = 31160 + tHair; 
 			changeHair9 = 31100 + tHair; 
 			changeHair10 = 31410 + tHair; 
 			changeHair11 = 31030 + tHair; 
 			changeHair12 = 31080 + tHair; 
 			changeHair13 = 31070 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420002##k eu mudarei isso para voc? Com este cupom, voc?tem o poder de mudar o estilo do seu cabelo para algo novo, sempre que quiser, por UM M�S! Agora, escolha um estilo que goste.", 5420002, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 		} 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A���D�A����a�һݪ��|���d�A�_�h�ڵL�k���A�󴫳y���C" ); 
 	} 
 ]]--
 } 

-- Henesys EXP hair salon 
function s_hair_henesys2() {
 	selectHair = self->askMenu( "�A�n�A�ڬO�o�̪��U��A�u�n�A����a#b#t5150000##k��#b#t5151000##k�A�N�i�H#b�H���󴫳y��#k�C\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L2# �󴫾v�� (�ϥΤ@��|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		nRet1 = self->askYesNo( "�ѩ���٥u�O�ӾǮ{�A�ϥΤ@���ڥu�����A#b�H���󴫳y��#k�C�������Ӿ�ߡA�ڷQ�ڤ]�O�D�`���m���I�A�T�w�n�ϥ�#b#t5150000##k�ӧ󴫳y���ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�S���Y...���ڷQ�A�u����߹L�Y�F�A�ڹ�ڦۤv����O�O�D�`���۫H���I"); 
 		else if ( nRet1 == 1 ) { 
 			tHair = target->getHair() % 10; 
 			if ( target->getGender() == 0 ) { 
 				changeHair1 = 30000 + tHair;
				changeHair2 = 30020 + tHair;
				changeHair3 = 30030 + tHair;
				changeHair4 = 30060 + tHair;
				changeHair5 = 30120 + tHair;
				changeHair6 = 30140 + tHair;
				changeHair7 = 30150 + tHair;
				changeHair8 = 30200 + tHair;
				changeHair9 = 30210 + tHair;
				changeHair10 = 30310 + tHair;
				changeHair11 = 30330 + tHair;
				changeHair12 = 30410 + tHair;
								
 				mHair = self->makeRandAvatar( 5150000, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 			} 
 			else if ( target->getGender() == 1 ) { 
 				changeHair1 = 31000 + tHair;
				changeHair2 = 31030 + tHair;
				changeHair3 = 31040 + tHair;
				changeHair4 = 31050 + tHair;
				changeHair5 = 31080 + tHair;
				changeHair6 = 31070 + tHair;
				changeHair7 = 31100 + tHair;
				changeHair8 = 31150 + tHair;
				changeHair9 = 31160 + tHair;
				changeHair10 = 31300 + tHair;
				changeHair11 = 31310 + tHair;
				changeHair12 = 31410 + tHair;
				
 				mHair = self->makeRandAvatar( 5150000, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 			} 
 			if ( mHair == 1 ) self->say( "���ˡH�O���O�D�`�ΰڡH�p�G�A�ٻݭn�󴫳y���A�H�ɳ��i�H�^��o�̨ӡC" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 		} 
 	} 
	
 	else if ( selectHair == 2 ) { 
 		nRet1 = self->askYesNo( "�ϥΤ@�몺�|���d�A�ڥu�����A#b�H���󴫾v��#k�A�A�T�w�n�ϥ�#b#t5151000##k�ӧ󴫳y���ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�S���Y...���ڷQ�A�u����߹L�Y�F�A�ڹ�ڦۤv����O�O�D�`���۫H���I"); 
 		else if ( nRet1 == 1 ) { 
 			cHair = target->getHair(); 
 			eHair = cHair - ( cHair % 10 ); 

 			changeHair1 = eHair; 
 			changeHair2 = eHair + 1; 
 			changeHair4 = eHair + 2; 
 			changeHair6 = eHair + 4; 
 			changeHair3 = eHair + 6; 
 			changeHair5 = eHair + 7; 

 			mHair = self->makeRandAvatar( 5151000, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 			if ( mHair == 1 ) self->say( "�����F�I�A�i�H��o�䪺��l�ݬݷs���v���C���ˡA�ٺ⺡�N��a�H�����A�p�G���ݭn�٥i�H�ӧ�ڡC" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso tingir seu cabelo sem ele. Me desculpe." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A������a�|���d�ڤ~�����A�󴫳y���C" ); 
 		} 
 	} 
 } 

-- Kerning City VIP hair salon 
function s_hair_kerning1() {
-- 	selectHair = self->askMenu( "�w��Ө�Z���������v���A�u�n�A����a#b#t5150003##k, #b#t5151003##k��#b#t5420003##k�ڴN�i�H���A�󴫳y���C����A�ݭn����A�ȶܡH\r\n#b#L0# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L1# �󴫾v���C�� (�ϥΰ��ŷ|���d)#l\r\n#L2# �󴫾v�� (�ϥ�VIP�|���d ��#r�x���Ȩѹw��#b��)#l" ); 
	selectHair = self->askMenu( "�w��Ө�Z���������v���A�u�n�A����a#b#t5150003##k�Ϊ�#b#t5151003##k�ڴN�i�H���A�󴫳y���C����A�ݭn����A�ȶܡH\r\n#b#L0# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L1# �󴫾v���C�� (�ϥΰ��ŷ|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30780 + tHair; 
			
 			changeHair5 = 30130 + tHair; 
 			changeHair6 = 30350 + tHair; 
 			changeHair7 = 30190 + tHair; 
 			changeHair8 = 30110 + tHair; 
 			changeHair9 = 30180 + tHair; 
 			changeHair10 = 30050 + tHair; 
 			changeHair11 = 30040 + tHair; 
 			changeHair12 = 30160 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150003##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5150003, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31050 + tHair; 
 			changeHair2 = 31040 + tHair; 
 			changeHair3 = 31000 + tHair; 
 			changeHair4 = 31760 + tHair; 
			
 			changeHair5 = 31060 + tHair; 
 			changeHair6 = 31090 + tHair; 
 			changeHair7 = 31330 + tHair; 
 			changeHair8 = 31020 + tHair; 
 			changeHair9 = 31130 + tHair; 
 			changeHair10 = 31120 + tHair; 
 			changeHair11 = 31140 + tHair; 
 			changeHair12 = 31010 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150003##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5150003, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 		} 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Desculpe, colega." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Volte mais tarde." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 	else if ( selectHair == 1 ) { 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		changeHair1 = eHair; 
 		changeHair2 = eHair + 2; 
 		changeHair4 = eHair + 3; 
 		changeHair3 = eHair + 7; 
 		changeHair5 = eHair + 5; 

 		mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5151003##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5151003, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5 ); 

 		if ( mHair == 1 ) self->say( "���ˡH�O���O�D�`�ΰڡH�p�G�A�ٻݭn�󴫳y���A�H�ɳ��i�H�^��o�̨ӡC" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso tingir seu cabelo sem ele. Desculpe, colega." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa tingir seu cabelo neste momento. Volte mais tarde." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
--[[
 	else if ( selectHair == 2 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30780 + tHair; 
			
 			changeHair5 = 30130 + tHair; 
 			changeHair6 = 30350 + tHair; 
 			changeHair7 = 30190 + tHair; 
 			changeHair8 = 30110 + tHair; 
 			changeHair9 = 30180 + tHair; 
 			changeHair10 = 30050 + tHair; 
 			changeHair11 = 30040 + tHair; 
 			changeHair12 = 30160 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420003##k�ڴN�i�H���A��v����y���̷s���˦��A�ӥB�O�Ҥ@�w�|���A�D�`���N���I", 5420003, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31050 + tHair; 
 			changeHair2 = 31040 + tHair; 
 			changeHair3 = 31000 + tHair; 
 			changeHair4 = 31760 + tHair; 
			
 			changeHair5 = 31060 + tHair; 
 			changeHair6 = 31090 + tHair; 
 			changeHair7 = 31330 + tHair; 
 			changeHair8 = 31020 + tHair; 
 			changeHair9 = 31130 + tHair; 
 			changeHair10 = 31120 + tHair; 
 			changeHair11 = 31140 + tHair; 
 			changeHair12 = 31010 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420003##k�ڴN�i�H���A��v����y���̷s���˦��A�ӥB�O�Ҥ@�w�|���A�D�`���N���I", 5420003, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 		} 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Desculpe, colega." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Volte mais tarde." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 ]]--
 } 



-- Kerning City EXP hair salon 
function s_hair_kerning2() {
-- 	selectHair = self->askMenu( "�w����{�A�ڬO�o�̪��U��A�u�n�A����a#b#t5150011##k. #b#t5150002##k��#b#t5151002##k�N�i�H���A���y���C\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L2# Pintar seu cabelo(cupom REG)#l" ); 
	selectHair = self->askMenu( "�w����{�A�ڬO�o�̪��U��A�u�n�A����a#b#t5150002##k��#b#t5151002##k�N�i�H���A���y���C\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L2# �󴫾v�� (�ϥΤ@��|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		--nRet1 = self->askYesNo( "Se usar o cupom EXP, seu cabelo vai mudar ALEATORIAMENTE com a chance de ganhar um novo estilo experimental criado por mim. Vai usar #b#t5150002##k�ӧ󴫳y���ܡH" ); 
		nRet1 = self->askYesNo( "�ѩ���٥u�O�ӾǮ{�A�ϥΤ@���ڥu�����A#b�H���󴫳y��#k�C�������Ӿ�ߡA�ڷQ�ڤ]�O�D�`���m���I�A�T�w�n�ϥ�#b#t5150002##k�ӧ󴫳y���ܡH" );
 		if ( nRet1 == 0 ) self->say( "�S���D...���A���ݭn���ɭԥi�H�^�ӧ�ڡC"); 
 		else if ( nRet1 == 1 ) { 
 			tHair = target->getHair() % 10; 
 			if ( target->getGender() == 0 ) { 
--[[
 				changeHair1 = 30520 + tHair; 
 				changeHair2 = 30620 + tHair; 
 				changeHair3 = 30770 + tHair; 
				
 				changeHair4 = 30130 + tHair; 
 				changeHair5 = 30350 + tHair; 
 				changeHair6 = 30190 + tHair; 
 				changeHair7 = 30110 + tHair; 
 				changeHair8 = 30180 + tHair; 
 				changeHair9 = 30050 + tHair; 
 				changeHair10 = 30040 + tHair; 
 				changeHair11 = 30160 + tHair; 
 				changeHair12 = 30550 + tHair; 
								
 				mHair = self->makeRandAvatar( 5150002, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 ]]--
				changeHair1 = 30000 + tHair;
				changeHair2 = 30020 + tHair;
				changeHair3 = 30030 + tHair;
				changeHair4 = 30040 + tHair;
				changeHair5 = 30050 + tHair;
				changeHair6 = 30110 + tHair;
				changeHair7 = 30130 + tHair;
				changeHair8 = 30160 + tHair;
				changeHair9 = 30180 + tHair;
				changeHair10 = 30190 + tHair;
				changeHair11 = 30350 + tHair;
				changeHair12 = 30610 + tHair;
				changeHair13 = 30440 + tHair;
				changeHair14 = 30400 + tHair;	
				
				mHair = self->makeRandAvatar( 5150002, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13, changeHair14 );
 			} 
 			else if ( target->getGender() == 1 ) { 
--[[
 				changeHair1 = 31520 + tHair; 
 				changeHair2 = 31620 + tHair; 
 				changeHair3 = 31750 + tHair; 
				
 				changeHair4 = 31060 + tHair; 
 				changeHair5 = 31090 + tHair; 
 				changeHair6 = 31330 + tHair; 
 				changeHair7 = 31020 + tHair; 
 				changeHair8 = 31130 + tHair; 
 				changeHair9 = 31120 + tHair; 
 				changeHair10 = 31140 + tHair; 
 				changeHair11 = 31010 + tHair;	 
 				changeHair12 = 31440 + tHair;		--Black Ravishing Raven			 

 				mHair = self->makeRandAvatar( 5150011, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 ]]--
				changeHair1 = 31000 + tHair;
				changeHair2 = 31010 + tHair;
				changeHair3 = 31020 + tHair;
				changeHair4 = 31040 + tHair;
				changeHair5 = 31050 + tHair;
				changeHair6 = 31060 + tHair;
				changeHair7 = 31090 + tHair;
				changeHair8 = 31120 + tHair;
				changeHair9 = 31130 + tHair;
				changeHair10 = 31140 + tHair;
				changeHair11 = 31330 + tHair;
				changeHair12 = 31700 + tHair;
				changeHair13 = 31620 + tHair;
				changeHair14 = 31610 + tHair;
				
				mHair = self->makeRandAvatar( 5150002, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13, changeHair14 );
 			} 
 			if ( mHair == 1 ) self->say( "���ˡH�o�ӳy���D�`�ι�a�I�{�b�A�]�O�ɩ|���a�F�C�p�G�ٷQ�󴫳y���A�w��A�ץ��{�C" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Tem certeza de que tem o cupom certo? Desculpe, mas nada de corte de cabelo sem ele." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Volte mais tarde." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 		} 
 	} 
	
 	else if ( selectHair == 2 ) { 
 		nRet1 = self->askYesNo( "�ϥΤ@�몺�|���d�A�ڥu�����A#b�H���󴫾v��#k�A�A�T�w�n�ϥ�#b#t5151002##k�Ӷi��V�v�ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�S���D...���A���ݭn���ɭԥi�H�^�ӧ�ڡC"); 
 		else if ( nRet1 == 1 ) { 
 			cHair = target->getHair(); 
 			eHair = cHair - ( cHair % 10 ); 

 			changeHair1 = eHair; 
 			changeHair2 = eHair + 2; 
 			changeHair4 = eHair + 3; 
 			changeHair3 = eHair + 7; 
 			changeHair5 = eHair + 5; 

 			if ( target->getGender() == 0 ) mHair = self->makeRandAvatar( 5151002, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5 ); 
 			else if ( target->getGender() == 1 ) mHair = self->makeRandAvatar( 5151002, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5 ); 

 			if ( mHair == 1 ) self->say( "���ˡH�o�ӳy���D�`�ι�a�I�{�b�A�]�O�ɩ|���a�F�C�p�G�ٷQ�󴫳y���A�w��A�ץ��{�C" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Tem certeza de que tem o cupom certo? Desculpe, mas nada de corte de cabelo sem ele." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa tingir seu cabelo neste momento. Volte mais tarde." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A������a�|���d�ڤ~�����A�󴫳y���C" ); 
 		} 
 	} 
 } 

-- Orbis VIP hair salon 
function s_hair_orbis1() {
-- 	selectHair = self->askMenu( "�١I�ڬO#p2010001#�p�G�A���W��#b#t5150005##k, #b#t5151005##k��#b#t5420004##k���ڥi�H���A���Y�v�ܧ󦨧A�ҳ��w���v���˦��C\r\n#b#L0# �󴫾v�� (�ϥΰ��Ŭ��v��)#l\r\n#L1# �󴫾v���C�� (�ϥΰ��ŷ|���d)#l\r\n#L2# Usar #t5154000##l\r\n#L3# Mudar estilo (cupom de membro VIP)#l" ); 
	selectHair = self->askMenu( "�١I�ڬO#p2010001#�p�G�A���W��#b#t5150005##k��#b#t5151005##k�A�ڴN�i�H���A���Y�v�ܧ󦨧A�ҳ��w���v���˦��C\r\n#b#L0# �󴫾v�� (�ϥΰ��Ŭ��v��)#l\r\n#L1# �󴫾v���C�� (�ϥΰ��ŷ|���d)#l\r\n#L2# �ϥ�#t5154000##l\r\n" ); 
 	if ( selectHair == 0 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30490 + tHair; 
			
 			changeHair5 = 30230 + tHair; 
 			changeHair6 = 30260 + tHair; 
 			changeHair7 = 30280 + tHair; 
 			changeHair8 = 30240 + tHair; 
 			changeHair9 = 30290 + tHair; 
 			changeHair10 = 30270 + tHair; 
 			changeHair11 = 30340 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C���ݨ�A�ҳ��w���y���ܡH�u�n�A��#b#t5150005##k�N�i�H��y����令�A�ҳ��w���˦��I", 5150005, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31040 + tHair; 
 			changeHair2 = 31000 + tHair; 
 			changeHair3 = 31670 + tHair; 
			
 			changeHair4 = 31250 + tHair; 
 			changeHair5 = 31220 + tHair; 
 			changeHair6 = 31260 + tHair; 
 			changeHair7 = 31240 + tHair; 
 			changeHair8 = 31110 + tHair; 
 			changeHair9 = 31270 + tHair; 
 			changeHair10 = 31030 + tHair; 
 			changeHair11 = 31230 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C���ݨ�A�ҳ��w���y���ܡH�u�n�A��#b#t5150005##k�N�i�H��y����令�A�ҳ��w���˦��I", 5150005, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		} 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 	else if ( selectHair == 1 ) { 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		changeHair1 = eHair; 
 		changeHair2 = eHair + 1; 
 		changeHair3 = eHair + 7; 
 		changeHair4 = eHair + 3; 
 		changeHair5 = eHair + 4; 
 		changeHair6 = eHair + 5; 

 		mHair = self->askAvatar( "�H�U�O�V�v�������w���C���ݨ�A�ҳ��w���y���ܡH�u�n�A��#b#t5151005##k�N�i�H��y����令�A�ҳ��w���˦��I", 5151005, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C��ڪ��޳N�ٺ��N�a�H�p�G�٦��ݭn�A�H��аȥ��^�ӧ�ڡC" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso tingir seu cabelo sem ele. Me desculpe." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa tingir seu cabelo neste momento. Por favor, volte depois." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A���������ŷ|���d�~�i�H�󴫦��A���w���y���C" ); 
 	} 
 	else if ( selectHair == 2 ) { 
 		cHair = target->getHair(); 
 		if ( cHair == 31240 or cHair == 31241 or cHair == 31242 or cHair == 31243 or cHair == 31244 or cHair == 31245 or cHair == 31246 or cHair == 31247 ) self->say( "�]���ڥu�O�ӾǮ{�A�٦b�ǲ߷��A�ثe�ٵL�k���A���Y�v�˦��i��V��C" ); 
 		else { 
 			nRet1 = self->askYesNo( "����a#b#t5154000##k�ܡH�ڥi�H���A���Y�v#b�H���i��V��#k�I�T�w�n�ϥ�#b#t5154000##k�i��V�v�H" ); 
 			if ( nRet1 == 0 ) self->say( "�n��...���A���n�M�w�H��A�^�ӧ�ڧa�C" ); 
 			else { 
 				tHair = target->getHair() % 10; 
 				changeHair = 31240 + tHair; 
 				mHair = self->makeRandAvatar( 5154000, changeHair ); 

 				if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 				else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 				else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 				else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 			} 
 		} 
 	} 
--[[
 	else if ( selectHair == 3 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30490 + tHair; 
			
 			changeHair5 = 30230 + tHair; 
 			changeHair6 = 30260 + tHair; 
 			changeHair7 = 30280 + tHair; 
 			changeHair8 = 30240 + tHair; 
 			changeHair9 = 30290 + tHair; 
 			changeHair10 = 30270 + tHair; 
 			changeHair11 = 30340 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C���ݨ�A�ҳ��w���y���ܡH�u�n�A��#b#t5420004##k eu mudarei isso para voc? Com este cupom, voc?tem o poder de mudar o estilo do seu cabelo para algo novo, sempre que quiser, por UM M�S! Agora, escolha um estilo que goste.", 5420004, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31040 + tHair; 
 			changeHair2 = 31000 + tHair; 
 			changeHair3 = 31670 + tHair; 
			
 			changeHair4 = 31250 + tHair; 
 			changeHair5 = 31220 + tHair; 
 			changeHair6 = 31260 + tHair; 
 			changeHair7 = 31240 + tHair; 
 			changeHair8 = 31110 + tHair; 
 			changeHair9 = 31270 + tHair; 
 			changeHair10 = 31030 + tHair; 
 			changeHair11 = 31230 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C���ݨ�A�ҳ��w���y���ܡH�u�n�A��#b#t5420004##k eu mudarei isso para voc? Com este cupom, voc?tem o poder de mudar o estilo do seu cabelo para algo novo, sempre que quiser, por UM M�S! Agora, escolha um estilo que goste.", 5420004, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		} 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 ]]--
 } 

-- Orbis EXP hair salon 
function s_hair_orbis2() {
-- 		selectHair = self->askMenu( "�A�n�A�ڬO#p2012007#�A�ثe�O�o�̪��Ǯ{�A�A����a#b#t5150013##k��#b#t5151004##k�ܡH�p�G�����ܧڥi�H���A�󴫳̮ɩ|���y���A�аݻݭn����A�ȩO�H\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L2# �󴫾v�� (�ϥΤ@��|���d)#l" ); 
		selectHair = self->askMenu( "�A�n�A�ڬO#p2012007#�A�ثe�O�o�̪��Ǯ{�A�A����a#b#t5150004##k��#b#t5151004##k�ܡH�p�G�����ܧڥi�H���A�󴫳̮ɩ|���y���A�аݻݭn����A�ȩO�H\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L2# �󴫾v�� (�ϥΤ@��|���d)#l" ); 
 	if ( selectHair == 0 ) { 
-- 		nRet1 = self->askYesNo( "Se usar o cupom EXP, seu cabelo vai mudar aleatoriamente, com a chance de ganhar um novo estilo experimental que nunca viu antes. Ainda quer usar #b#t5150013##k�i��V�v�H" ); 
		nRet1 = self->askYesNo( "�ѩ���٥u�O�ӾǮ{�A�ϥΤ@���ثe�u��i��#b�H����#k�y���A�ӥB�p�G�ᮬ�A�ڤ]�S��k�h�ٷ|���d�C�A�T�w�n�ϥ�#b#t5150004##k�i��V�v�H" ); 
 		if ( nRet1 == 0 ) self->say( "�S���Y...���ڷQ�A�u����߹L�Y�F�A�ڹ�ڦۤv����O�O�D�`���۫H���I"); 
 		else if ( nRet1 == 1 ) { 
 			tHair = target->getHair() % 10; 
 			if ( target->getGender() == 0 ) { 
--[[
 				changeHair1 = 30530 + tHair; 
 				changeHair2 = 30630 + tHair; 
 				changeHair3 = 30760 + tHair; 
				
 				changeHair4 = 30230 + tHair; 
 				changeHair5 = 30260 + tHair; 
 				changeHair6 = 30280 + tHair; 
 				changeHair7 = 30240 + tHair; 
 				changeHair8 = 30290 + tHair; 
 				changeHair9 = 30270 + tHair; 
 				changeHair10 = 30340 + tHair; 
 				changeHair11 = 30370 + tHair; 
				
 				mHair = self->makeRandAvatar( 5150013,changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 ]]--
				changeHair1 = 30000 + tHair;
				changeHair2 = 30020 + tHair;
				changeHair3 = 30030 + tHair;
				changeHair4 = 30230 + tHair;
				changeHair5 = 30240 + tHair;
				changeHair6 = 30260 + tHair;
				changeHair7 = 30270 + tHair;
				changeHair8 = 30280 + tHair;
				changeHair9 = 30290 + tHair;
				changeHair10 = 30340 + tHair;
				changeHair11 = 30610 + tHair;
				changeHair12 = 30440 + tHair;
				changeHair13 = 30400 + tHair;
				
				mHair = self->makeRandAvatar( 5150004, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 );
 			} 
 			else if ( target->getGender() == 1 ) { 
--[[
 				changeHair1 = 31530 + tHair; 
 				changeHair2 = 31630 + tHair; 
 				changeHair3 = 31710 + tHair; 
				
 				changeHair4 = 31250 + tHair; 
 				changeHair5 = 31220 + tHair; 
 				changeHair6 = 31260 + tHair; 
 				changeHair7 = 31240 + tHair; 
 				changeHair8 = 31110 + tHair; 
 				changeHair9 = 31270 + tHair; 
 				changeHair10 = 31030 + tHair; 
 				changeHair11 = 31230 + tHair; 
 				changeHair12 = 31650 + tHair;	--Black Dashing Damsel 
 				changeHair13 = 31320 + tHair; 

 				mHair = self->makeRandAvatar( 5150013, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 ]]--
				changeHair1 = 31000 + tHair;
				changeHair2 = 31030 + tHair;
				changeHair3 = 31040 + tHair;
				changeHair4 = 31110 + tHair;
				changeHair5 = 31220 + tHair;
				changeHair6 = 31230 + tHair;
				changeHair7 = 31240 + tHair;
				changeHair8 = 31250 + tHair;
				changeHair9 = 31260 + tHair;
				changeHair10 = 31270 + tHair;
				changeHair11 = 31320 + tHair;
				changeHair12 = 31700 + tHair;
				changeHair13 = 31620 + tHair;
				changeHair14 = 31610 + tHair;
				
				mHair = self->makeRandAvatar( 5150004, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13, changeHair14 );
 			} 
 			if ( mHair == 1 ) self->say( "�����F�A�A�i�H����l�ݬݷs���y��...�p��H�ٺ⺡�N�a�I�p�G�٦��ݭn���ܥi�H�A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo. ?uma pena, mas n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 		} 
 	} 
	
 	else if ( selectHair == 2 ) { 
 		nRet1 = self->askYesNo( "�ϥΤ@�몺�|���d�A�ڥu�����A#b�H���󴫾v��#k�A�A�T�w�n�ϥ�#b#t5151004##k�ӧ󴫳y���ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�S���Y...���ڷQ�A�u����߹L�Y�F�A�ڹ�ڦۤv����O�O�D�`���۫H���I"); 
 		else if ( nRet1 == 1 ) { 
 			cHair = target->getHair(); 
 			eHair = cHair - ( cHair % 10 ); 

 			changeHair1 = eHair; 
 			changeHair2 = eHair + 1; 
 			changeHair3 = eHair + 7; 
 			changeHair4 = eHair + 3; 
 			changeHair5 = eHair + 4; 
 			changeHair6 = eHair + 5; 

 			mHair = self->makeRandAvatar( 5151004, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 			if ( mHair == 1 ) self->say( "�����F�I�A�i�H��o�䪺��l�ݬݷs���v���C���ˡA�ٺ⺡�N��a�H�����A�p�G���ݭn�٥i�H�ӧ�ڡC" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso tingir seu cabelo sem ele. Me desculpe." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa tingir seu cabelo neste momento. Por favor, volte depois." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 		} 
 	} 
 } 

-- Ludibrium VIP Hair-Salon    
function s_hair_ludi1() {
 	selectHair = self->askMenu( "�w..�� �w..��, �w..��Ө쪱�㫰���v���A�A����a#b#t5150007##k��#b#t5151007##k�ܡH�p�G�A���o�Ƿ|���d�A���ڥi�H���A�󴫤@�ӷ|���A�D�`���N���y��...\r\n#b#L0# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L1# �󴫾v���C�� (�ϥΰ��ŷ|���d)#l\r\n#L2# �󴫾v�� (�ϥ�VIP�|���d ��#r�x���Ȩѹw��#b��)#l" ); 
 	if ( selectHair == 0 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30660 + tHair; 
			
 			changeHair5 = 30250 + tHair; 
 			changeHair6 = 30190 + tHair; 
 			changeHair7 = 30150 + tHair; 
 			changeHair8 = 30050 + tHair; 
 			changeHair9 = 30280 + tHair; 
 			changeHair10 = 30240 + tHair; 
 			changeHair11 = 30300 + tHair; 
 			changeHair12 = 30160 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150007##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5150007, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31040 + tHair; 
 			changeHair2 = 31000 + tHair; 
 			changeHair3 = 31550 + tHair; 
			
 			changeHair4 = 31150 + tHair; 
 			changeHair5 = 31280 + tHair; 
 			changeHair6 = 31160 + tHair; 
 			changeHair7 = 31120 + tHair; 
 			changeHair8 = 31290 + tHair; 
 			changeHair9 = 31270 + tHair; 
 			changeHair10 = 31030 + tHair; 
 			changeHair11 = 31230 + tHair; 
 			changeHair12 = 31010 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150007##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��!", 5150007, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 		} 
 				if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 				else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 				else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 				else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 	else if ( selectHair == 1 ) { 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		changeHair1 = eHair; 
 		changeHair2 = eHair + 2; 
 		changeHair4 = eHair + 3; 
 		changeHair6 = eHair + 4; 
 		changeHair3 = eHair + 7; 
 		changeHair5 = eHair + 5; 

 		mHair = self->askAvatar( "�H�U�O�V�v�������w���C�u�n�A����a#b#t5151007##k�A�ڴN�i�H���A���Y�v�V���A���w���C��I", 5151007, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 				if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 				else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 				else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 				else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 	else if ( selectHair == 2 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30030 + tHair; 
 			changeHair2 = 30020 + tHair; 
 			changeHair3 = 30000 + tHair; 
 			changeHair4 = 30660 + tHair; 
			
 			changeHair5 = 30250 + tHair; 
 			changeHair6 = 30190 + tHair; 
 			changeHair7 = 30150 + tHair; 
 			changeHair8 = 30050 + tHair; 
 			changeHair9 = 30280 + tHair; 
 			changeHair10 = 30240 + tHair; 
 			changeHair11 = 30300 + tHair; 
 			changeHair12 = 30160 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420005##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5420005, {changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12} ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31040 + tHair; 
 			changeHair2 = 31000 + tHair; 
 			changeHair3 = 31550 + tHair; 
			
 			changeHair4 = 31150 + tHair; 
 			changeHair5 = 31280 + tHair; 
 			changeHair6 = 31160 + tHair; 
 			changeHair7 = 31120 + tHair; 
 			changeHair8 = 31290 + tHair; 
 			changeHair9 = 31270 + tHair; 
 			changeHair10 = 31030 + tHair; 
 			changeHair11 = 31230 + tHair; 
 			changeHair12 = 31010 + tHair; 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420005##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5420005, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 		} 
 				if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 				else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 				else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 				else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 } 

-- Ludibrium EXP Hair-Salon 
function s_hair_ludi2() {
 		selectHair = self->askMenu( "�w��Ө쪱�㫰���v���A�u�n�A����a#b#t5150006##k�Ϊ�#b#t5151006##k�ڴN�i�H���A�󴫳y���C���O�]���ڥثe�٥u�O�ӾǮ{�A�A���y���N#b�H���M�w#k�A�������ӹL��ߡA�ڬ۫H�A�|�D�`���N���C�A�ݭn���@�تA�ȩO�H\r\n#b#L0# �ϥ�#t5150006#�󴫾v��#l\r\n#L2# �ϥ�#t5151006#�󴫾v���C��#l" ); 
 	if ( selectHair == 0 ) { 
 		nRet1 = self->askYesNo( "�ѩ���٥u�O�ӾǮ{�A�ϥΤ@��|����A�u��#b�H����#k�y���C�T�w�n�ϥ�#b#t5151006##k�ӧ󴫳y���ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�����ӹL��ߡA���ާڥu�O�ӾǮ{�A�]���A�ܱo�D�`�ɩ|���C"); 
 		else if ( nRet1 == 1 ) { 
 			tHair = target->getHair() % 10; 
 			if ( target->getGender() == 0 ) { 
 				changeHair1 = 30540 + tHair; 
 				changeHair2 = 30640 + tHair; 
 				changeHair3 = 30680 + tHair; 
				
 				changeHair4 = 30250 + tHair; 
 				changeHair5 = 30190 + tHair; 
 				changeHair6 = 30150 + tHair; 
 				changeHair7 = 30050 + tHair; 
 				changeHair8 = 30280 + tHair; 
 				changeHair9 = 30240 + tHair; 
 				changeHair10 = 30300 + tHair; 
 				changeHair11 = 30160 + tHair; 
 				changeHair12 = 30650 + tHair; 
				
 				mHair = self->makeRandAvatar( 5150006, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12 ); 
 			} 
 			else if ( target->getGender() == 1 ) { 
 				changeHair1 = 31540 + tHair; 
 				changeHair2 = 31640 + tHair; 
 				changeHair3 = 31600 + tHair;	--Tall Bun  
				
 				changeHair4 = 31150 + tHair; 
 				changeHair5 = 31280 + tHair; 
 				changeHair6 = 31160 + tHair; 
 				changeHair7 = 31120 + tHair; 
 				changeHair8 = 31290 + tHair; 
 				changeHair9 = 31270 + tHair; 
 				changeHair10 = 31030 + tHair; 
 				changeHair11 = 31230 + tHair; 
 				changeHair12 = 31010 + tHair; 
 				changeHair13 = 31680 + tHair;	--Black Lovely Ladyhawk 
				
 				mHair = self->makeRandAvatar( 5150006, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 			} 
 			if ( mHair == 1 ) self->say( "�����F�A�A�i�H����l�ݬݷs���y��...�p��H�ٺ⺡�N�a�I�p�G�٦��ݭn���ܥi�H�A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo. ?uma pena, mas n�o posso cortar seu cabelo sem ele. Me desculpe." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Por favor, volte depois." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 		} 
 	} 
	
 	else if ( selectHair == 2 ) { 
 		nRet1 = self->askYesNo( "�ѩ���٥u�O�ӾǮ{�A�ϥΤ@���A�u��#b�H����#k�v��C�T�w�n�ϥ�#b#t5151006##k�ӧ󴫳y���ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�����ӹL��ߡA���ާڥu�O�ӾǮ{�A�]���A�ܱo�D�`�ɩ|���C"); 
 		else if ( nRet1 == 1 ) { 
 			cHair = target->getHair(); 
 			eHair = cHair - ( cHair % 10 ); 

 			changeHair1 = eHair; 
 			changeHair2 = eHair + 2; 
 			changeHair4 = eHair + 3; 
 			changeHair6 = eHair + 4; 
 			changeHair3 = eHair + 7; 
 			changeHair5 = eHair + 5; 

 			mHair = self->makeRandAvatar( 5151006, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 			if ( mHair == 1 ) self->say( "�����F�I�A�i�H��o�䪺��l�ݬݷs���v���C���ˡA�ٺ⺡�N��a�H�����A�p�G���ݭn�٥i�H�ӧ�ڡC" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso tingir seu cabelo sem ele. Me desculpe." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Um pequeno problema aqui no sal�o. N�o acho que possa tingir seu cabelo neste momento. Por favor, volte depois." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 		} 
 	} 
 } 

-- ****** Wedding: Hair Salon - Julius Styleman - VIP Style		15 
function s_hair_wedding1() {

 	selectHair = self->askMenu( "�w����{�I�Q�n�󴫳y���ܡH�u�n�A����a#b#t5150020##k�Ϊ�#b#t5151017##k�ڴN�i�H���A��Φ��A�ҳ��w���ˤl�A�p��A�ݭn����A�ȶܡH\r\n#b#L0# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L1# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L2# �󴫾v�� (�ϥ�VIP�|���d ��#r�x���Ȩѹw��#b��)#l" ); 

 	if ( selectHair == 0 ) {				-- select change hair style 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) {		-- man's  

 			changeHair1 = 30580 + tHair;	 
 			changeHair2 = 30590 + tHair;	 
 			changeHair3 = 30280 + tHair;	 
 			changeHair4 = 30670 + tHair; 
			
 			changeHair5 = 30410 + tHair;	 
 			changeHair6 = 30200 + tHair;	 
 			changeHair7 = 30050 + tHair;	 
 			changeHair8 = 30230 + tHair;	 
 			changeHair9 = 30290 + tHair;	 
 			changeHair10 = 30300 + tHair;	 
 			changeHair11 = 30250 + tHair;	 
		
 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150020##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5150020, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		} 
 		else if ( target->getGender() == 1 ) {	-- woman's 
			
 			changeHair1 = 31580 + tHair;	 
 			changeHair2 = 31590 + tHair;	 
 			changeHair3 = 31310 + tHair;	 
 			changeHair4 = 31200 + tHair;	 

 			changeHair5 = 31150 + tHair;	 
 			changeHair6 = 31160 + tHair;	 
 			changeHair7 = 31020 + tHair;	 
 			changeHair8 = 31260 + tHair;	 
 			changeHair9 = 31230 + tHair;	 
 			changeHair10 = 31220 + tHair;	 
 			changeHair11 = 31110 + tHair;	 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5150020##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5150020, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		}  
 			-- answer about selecting change hair style 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo. N�o posso cortar seu cabelo sem ele. Desculpe, colega." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Volte mais tarde." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 	else if ( selectHair == 1 ) {	-- select change hair color without the sex 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		changeHair1 = eHair;		-- Black 
 		changeHair2 = eHair + 3;	-- Blonde 
 		changeHair3 = eHair + 5;	-- Blue 
 		changeHair4 = eHair + 7;	-- Brown 
 		changeHair5 = eHair + 4;	-- Green 
 		changeHair6 = eHair + 1;	-- Red 
	
 		mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5151017##k�A�ڴN�i�H���A�󴫦��U�C���N�@�اA���w���y��...", 5151017, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 		-- answer about selecting change hair color 
 		if ( mHair == 1 ) self->say( "���ˡH�O���O�D�`�ΰڡH�p�G�A�ٻݭn�󴫳y���A�H�ɳ��i�H�^��o�̨ӡC" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo... Pena, n�o posso tingir seu cabelo sem ele. Desculpe, colega." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa tingir seu cabelo neste momento. Volte mais tarde." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 

 	else if ( selectHair == 2 ) {				-- select change hair style 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) {		-- man's  

 			changeHair1 = 30580 + tHair;	 
 			changeHair2 = 30590 + tHair;	 
 			changeHair3 = 30280 + tHair;	 
 			changeHair4 = 30670 + tHair; 
			
 			changeHair5 = 30410 + tHair;	 
 			changeHair6 = 30200 + tHair;	 
 			changeHair7 = 30050 + tHair;	 
 			changeHair8 = 30230 + tHair;	 
 			changeHair9 = 30290 + tHair;	 
 			changeHair10 = 30300 + tHair;	 
 			changeHair11 = 30250 + tHair;	 
		
 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420000##k�ڴN�i�H���A��v����y���̷s���˦��A�ӥB�O�Ҥ@�w�|���A�D�`���N���I", 5420000, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		} 
 		else if ( target->getGender() == 1 ) {	-- woman's 
			
 			changeHair1 = 31580 + tHair;	 
 			changeHair2 = 31590 + tHair;	 
 			changeHair3 = 31310 + tHair;	 
 			changeHair4 = 31200 + tHair;	 

 			changeHair5 = 31150 + tHair;	 
 			changeHair6 = 31160 + tHair;	 
 			changeHair7 = 31020 + tHair;	 
 			changeHair8 = 31260 + tHair;	 
 			changeHair9 = 31230 + tHair;	 
 			changeHair10 = 31220 + tHair;	 
 			changeHair11 = 31110 + tHair;	 

 			mHair = self->askAvatar( "�o�̬O�̷s�y�����w���C�u�n�A����a#b#t5420000##k�ڴN�i�H���A��v����y���̷s���˦��A�ӥB�O�Ҥ@�w�|���A�D�`���N���I", 5420000, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 		}  
 			-- answer about selecting change hair style 
 		if ( mHair == 1 ) self->say( "�p��ڡH�o�ӳy���D�`������a�H�����C�p�G�H���ٻݭn�@�ӷs���y���A�Шӧ�ڡA�ګO�ҷ|���A�D�`���N���C" ); 
 		else if ( mHair == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom certo. N�o posso cortar seu cabelo sem ele. Desculpe, colega." ); 
 		else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Volte mais tarde." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 	} 
 } 

-- ****** Wedding : Hair Salon - Salon Seamus - EXP Style		16 
function s_hair_wedding2() {

 		selectHair = self->askMenu( "�١A��{�b���y��ı�o���¤F�ܡH�������շs���y���ݬݧa�I�u�n�A���a#b#t5150019##k��#b#t5151016##k�ڴN�i�H���A�ܴ��y���A���˩O�H...#b\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L1# �󴫾v�� (�ϥΤ@��|���d)#l" ); 

 		if ( selectHair == 0 ) {		-- style 
 			nRet1 = self->askYesNo( "�ϥΤ@�몺�|���d�A�ڥu�ണ��#b�H���y����#k���A�ȡA�]���N��A��s���y�������N�A�ڤ]�L�k�h�٥���O�ΡA�p��A�T�w�n�ϥ�#b#t5150019##k�ӧ󴫳y���ܡH" ); 

 			if ( nRet1 == 0 ) self->say( "�S���D...���A���ݭn���ɭԥi�H�^�ӧ�ڡC"); 
			
 			else if ( nRet1 == 1 ) { 
 				tHair = target->getHair() % 10; 

 				if ( target->getGender() == 0 ) { 
 					changeHair1 = 30570 + tHair; 
 					changeHair2 = 30450 + tHair;					 
		
 					changeHair4 = 30410 + tHair;	 
 					changeHair5 = 30200 + tHair;	 
 					changeHair6 = 30050 + tHair;	 
 					changeHair7 = 30230 + tHair;	 
 					changeHair8 = 30290 + tHair;	 
 					changeHair9 = 30300 + tHair;	 
 					changeHair10 = 30250 + tHair;	 
 					changeHair11 = 30690 + tHair;	 
					
 					mHair = self->makeRandAvatar( 5150019, changeHair1, changeHair2, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 				} 
 				else if ( target->getGender() == 1 ) { 
 					changeHair1 = 31570 + tHair; 
 					changeHair2 = 31480 + tHair;						 

 					changeHair4 = 31150 + tHair;	 
 					changeHair5 = 31160 + tHair;	 
 					changeHair6 = 31020 + tHair;	 
 					changeHair7 = 31260 + tHair;	 
 					changeHair8 = 31230 + tHair;	 
 					changeHair9 = 31220 + tHair;	 
 					changeHair10 = 31110 + tHair; 
 					changeHair11 = 31490 + tHair;					 
							
 					mHair = self->makeRandAvatar( 5150019, changeHair1, changeHair2,changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 				} 

 				if ( mHair == 1 ) self->say( "���ˡH�o�ӳy���D�`�ι�a�I�{�b�A�]�O�ɩ|���a�F�C�p�G�ٷQ�󴫳y���A�w��A�ץ��{�C" ); 
 				else if ( mHair == -1 ) self->say( "Hum... Tem certeza de que tem o cupom certo? Desculpe, mas nada de corte de cabelo sem ele." ); 
 				else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Volte mais tarde." ); 
 				else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" ); 
 			} 
 		} 
	
 		else if ( selectHair == 1 ) {		-- color 

 			nRet1 = self->askYesNo( "�p�G�A�ϥ�#b#t5151016##k�A���v���C��|#b�H������#k�C�A���M�Q�n�ϥΤ@��|���d�i��V��ܡH" ); 
 			if ( nRet1 == 0 ) self->say( "�S���D...���A���ݭn���ɭԥi�H�^�ӧ�ڡC"); 
 			else if ( nRet1 == 1 ) { 
 				cHair = target->getHair(); 
 				eHair = cHair - ( cHair % 10 ); 

 				changeHair1 = eHair;		-- Black 
 				changeHair2 = eHair + 3;	-- Blonde 
 				changeHair3 = eHair + 5;	-- Blue 
 				changeHair4 = eHair + 7;	-- Brown 
 				changeHair5 = eHair + 4;	-- Green 
 				changeHair6 = eHair + 1;	-- Red 

 				if ( target->getGender() == 0 ) mHair = self->makeRandAvatar( 5151016, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 
 				else if ( target->getGender() == 1 ) mHair = self->makeRandAvatar( 5151016, changeHair1, changeHair2, changeHair3, changeHair4, changeHair6 ); 

 			if ( mHair == 1 ) self->say( "���ˡH�o�ӳy���D�`�ι�a�I�{�b�A�]�O�ɩ|���a�F�C�p�G�ٷQ�󴫳y���A�w��A�ץ��{�C" ); 
 			else if ( mHair == -1 ) self->say( "Hum... Tem certeza de que tem o cupom certo? Desculpe, mas nada de corte de cabelo sem ele." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa tingir seu cabelo neste momento. Volte mais tarde." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A������a�|���d�ڤ~�����A�󴫳y���C" ); 
 			} 
 		} 
	
 } 


-- ****** Wedding : Hair Salon - Claudia - EXP Style		16 
function s_hair_wedding3() {
	
 	qr = target.questRecord; 
 	val = qr.get( 8861 ); 
	
 	if (val == "end" )  
 		self->say( "Mudei seu cabelo uma vez em troca de servi�os, esporte. Voc?deve obter um cupom Experimental na Loja de Itens se quiser troc?lo novamente."); 

 	else { 
 		nRet1 = self->askYesNo( "Est?#Gpronto:pronta# para fazermos um penteado incr�vel? Eu acho que voc?est? Somente diga a palavra certa e come�aremos!" ); 

 		if ( nRet1 == 0 ) self->say( "T?bem, lhe darei um minuto."); 
		
 		else if ( nRet1 == 1 ) { 
 			self->say( "L?vamos n�s!"); 
			
 			--tHair = target->getHair() % 10; 

 			if ( target->getGender() == 0 ) { 
 				changeHair1 = 30032;	-- Orange Buzz 
 				changeHair4 = 30020;	-- Black Rebel 
 				changeHair5 = 30000;	-- Black Toben 
 				changeHair6 = 30132;	-- Orange Antagonist 
 				changeHair7 = 30192;	-- Orange Bowl Cut 
 				changeHair8 = 30240;	-- Black Monkey 
 				changeHair9 = 30162;	-- Orange Trip Scratch 
 				changeHair10 = 30270;	-- Black w/ Bald Spot 
 				changeHair11 = 30112;	-- Orange Fireball 

 				mHair = self->makeRandAvatarNormal( 4031528, changeHair1, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 			} 
			
 			else if ( target->getGender() == 1 ) { 
 				changeHair1 = 31050;	-- Black Connie 
 				changeHair4 = 31040;	-- Black Edgy 
 				changeHair5 = 31030;	-- Black polly 
 				changeHair6 = 31001;	-- Red Sammy 
 				changeHair7 = 31070;	-- Black Stella 
 				changeHair8 = 31310;	-- Black Carla 
 				changeHair9 = 31091;	-- Red Bridget 
 				changeHair10 = 31250;	-- Black Bowlcut 
 				changeHair11 = 31150;	-- Black Angelica 

 				mHair = self->makeRandAvatarNormal( 4031528, changeHair1,changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11 ); 
 			} 

 			if ( mHair == 1 ) { 
 				self->say( "Nada mau, eu diria... Sabia que os livros que estudei viriam a calhar..." ); 
 				qr.set( 8861, "end" );	 
 			} 
 			else if ( mHair == -1 ) self->say( "Hum... Tem certeza de que tem o cupom gr�tis certo? Desculpe, mas nada de corte de cabelo sem ele." ); 
 			else if ( mHair == -3 ) self->say( "Me desculpe. Parece que temos um problema aqui no sal�o. N�o acho que possa cortar seu cabelo neste momento. Volte mais tarde." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�����W���G�S����a�|����A�]���ڵL�k���A���ܳy���C" );				 
 			} 
 	} 

 } 

-- NLC VIP hair salon 
function s_NLC_HairVip() {
 	selectHair = self->askMenu( "�١A�A�n�A�ڬO�o�̪����u���v�v�A�u�n�A��#b#t5150031##k�B#b#t5151026##k��#b#t5420001##k�ڴN�i�H���A��y���ܧ󦨧A�ҳ��w�����N�y���C\r\n#b#L0# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L1# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L2# �󴫾v�� (�ϥ�VIP�|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
						
 			changeHair2 = 30730 + tHair; 
 			changeHair3 = 30280 + tHair; 
 			changeHair4 = 30220 + tHair; 
			
 			changeHair5 = 30410 + tHair; 
 			changeHair6 = 30200 + tHair; 
 			changeHair7 = 30050 + tHair; 
 			changeHair8 = 30230 + tHair; 
 			changeHair9 = 30160 + tHair; 
 			changeHair10 = 30110 + tHair; 
 			changeHair11 = 30250 + tHair;	 

 			mHair = self->askAvatar( "�ڥi�H��������y�A���y���A�ӥB�A�]�i�H�q�U����ܥ���@�ӧA�ҳ��w���y���A�p��A�n�ϥ�#b#t5150031##k�ӧ󴫳y���ܡH", 5150031, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 		} 
 		else if ( target->getGender() == 1 ) { 
					
 			changeHair2 = 31730 + tHair; 
 			changeHair3 = 31310 + tHair; 
 			changeHair4 = 31470 + tHair; 
			
 			changeHair5 = 31150 + tHair; 
 			changeHair6 = 31160 + tHair; 
 			changeHair7 = 31300 + tHair; 
 			changeHair8 = 31260 + tHair; 
 			changeHair9 = 31220 + tHair; 
 			changeHair10 = 31410 + tHair; 
 			changeHair11 = 31270 + tHair;			 

 			mHair = self->askAvatar( "�ڥi�H��������y�A���y���A�ӥB�A�]�i�H�q�U����ܥ���@�ӧA�ҳ��w���y���A�p��A�n�ϥ�#b#t5150031##k�ӧ󴫳y���ܡH", 5150031, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 		} 
 		if ( mHair == 1 ) self->say( "�D�`�ΡI�Aı�o�O�H²���N�O���N�I���������C�p�G�A�Q�b�󴫳y���A�ЦA��ڻ��I" ); 
 		else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't give you a haircut without it. I'm sorry." ); 
 		else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Please come back later" ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 	else if ( selectHair == 1 ) { 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		changeHair0 = eHair; 
 		changeHair1 = eHair + 1; 
 		changeHair2 = eHair + 2; 
 		changeHair3 = eHair + 3; 
 		changeHair4 = eHair + 4; 
 		changeHair5 = eHair + 5; 
 		changeHair6 = eHair + 6; 
 		changeHair7 = eHair + 7; 

 		mHair = self->askAvatar( "�ڥi�H��������y�A���y���A�ӥB�A�]�i�H�q�U����ܥ���@�ӧA�ҳ��w���y���A�p��A�n�ϥ�#b#t5151026##k�ӧ󴫳y���ܡH", 5151026, changeHair0,changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ,changeHair7 ); 

 		if ( mHair == 1 ) self->say( "�D�`�ΡI�Aı�o�O�H²���N�O���N�I���������C�p�G�A�Q�b�󴫳y���A�ЦA��ڻ��I" ); 
 		else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't dye your hair without it. I'm sorry." ); 
 		else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to dye your hair at this very moment. Please come back later." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 	else if ( selectHair == 2 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
						
 			changeHair2 = 30730 + tHair; 
 			changeHair3 = 30280 + tHair; 
 			changeHair4 = 30220 + tHair; 
			
 			changeHair5 = 30410 + tHair; 
 			changeHair6 = 30200 + tHair; 
 			changeHair7 = 30050 + tHair; 
 			changeHair8 = 30230 + tHair; 
 			changeHair9 = 30160 + tHair; 
 			changeHair10 = 30110 + tHair; 
 			changeHair11 = 30250 + tHair;	 

 			mHair = self->askAvatar( "�ڥi�H��������y�A���y���A�ӥB�A�]�i�H�q�U����ܥ���@�ӧA�ҳ��w���y���A�p��A�n�ϥ�#b#t5420001##k�ӧ󴫳y���ܡH", 5420001, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 		} 
 		else if ( target->getGender() == 1 ) { 
					
 			changeHair2 = 31730 + tHair; 
 			changeHair3 = 31310 + tHair; 
 			changeHair4 = 31470 + tHair; 
			
 			changeHair5 = 31150 + tHair; 
 			changeHair6 = 31160 + tHair; 
 			changeHair7 = 31300 + tHair; 
 			changeHair8 = 31260 + tHair; 
 			changeHair9 = 31220 + tHair; 
 			changeHair10 = 31410 + tHair; 
 			changeHair11 = 31270 + tHair;			 

 			mHair = self->askAvatar( "�ڥi�H��������y�A���y���A�ӥB�A�]�i�H�q�U����ܥ���@�ӧA�ҳ��w���y���A�p��A�n�ϥ�#b#t5420001##k�ӧ󴫳y���ܡH", 5420001, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 		} 
 		if ( mHair == 1 ) self->say( "�D�`�ΡI�Aı�o�O�H²���N�O���N�I���������C�p�G�A�Q�b�󴫳y���A�ЦA��ڻ��I" ); 
 		else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't give you a haircut without it. I'm sorry." ); 
 		else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Please come back later" ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 } 

-- NLC EXP. hair salon 
function s_NLC_HairExp() {
 	selectHair = self->askMenu( "�A�n�A�ڬO�������U�z�A�u�n�A��#b#t5150030##k��#b#t5151025##k�A����ڴN�i�H���A���ѳy���A�ȡC���˩O�H�ݭn����A�ȶܡH\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L1# �󴫾v�� (�ϥΤ@��|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		nRet1 = self->askYesNo( "�p�G�A�ϥΤ@��|���d�A�A���y���N�|#b�H��#k�M�w�A�A�T�w�n�ϥ�#b#t5150030##k�ӧ󴫳y���ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�ڪ��D�F...�A�i�H�A�Ҽ{�@�U�A�p�G�M�w�n�F�A�i�H�A�^�ӧ�ڡC"); 
 		else if ( nRet1 == 1 ) { 
 			tHair = target->getHair() % 10; 
 			if ( target->getGender() == 0 ) { 

 				changeHair1 = 30400 + tHair; 
 				changeHair2 = 30360 + tHair; 
 				changeHair3 = 30440 + tHair; 
				
 				changeHair5 = 30410 + tHair; 
 				changeHair6 = 30200 + tHair; 
 				changeHair7 = 30050 + tHair; 
 				changeHair8 = 30230 + tHair; 
 				changeHair9 = 30160 + tHair; 
 				changeHair10 = 30110 + tHair; 
 				changeHair11 = 30250 + tHair;				 
				
 				mHair = self->makeRandAvatar( 5150030, changeHair1, changeHair2, changeHair3, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 			} 
 			else if ( target->getGender() == 1 ) { 
 				changeHair1 = 31560 + tHair; 
 				changeHair2 = 31720 + tHair; 
 				changeHair3 = 31450 + tHair; 
			
 				changeHair5 = 31150 + tHair; 
 				changeHair6 = 31160 + tHair; 
 				changeHair7 = 31300 + tHair; 
 				changeHair8 = 31260 + tHair; 
 				changeHair9 = 31220 + tHair; 
 				changeHair10 = 31410 + tHair; 
 				changeHair11 = 31270 + tHair;				 

 				mHair = self->makeRandAvatar( 5150030, changeHair1, changeHair2, changeHair3, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11); 
 			} 
 			if ( mHair == 1 ) self->say( "�A�i�H����l�ݬݧA���s�y���C�p��O�H���M���O�D�`�����A���ٺ⤣���a�H�p�G�A�٦��ݭn�A�w��A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't give you a haircut without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 		} 
 	} 

 	else if ( selectHair == 1 ) { 
 		nRet1 = self->askYesNo( "�p�G�A�ϥΤ@��|���d�A�A���y���N�|#b�H��#k�M�w�A�A�T�w�n�ϥ�#b#t5151025##k�ӧ󴫳y���H" ); 
 		if ( nRet1 == 0 ) self->say( "�ڪ��D�F...�A�i�H�A�Ҽ{�@�U�A�p�G�M�w�n�F�A�i�H�A�^�ӧ�ڡC"); 
 		else if ( nRet1 == 1 ) { 
 			cHair = target->getHair(); 
 			eHair = cHair - ( cHair % 10 ); 

 			changeHair0 = eHair; 
 			changeHair1 = eHair + 1; 
 			changeHair2 = eHair + 2; 
 			changeHair3 = eHair + 3; 
 			changeHair4 = eHair + 4; 
 			changeHair5 = eHair + 5; 
 			changeHair6 = eHair + 6; 
 			changeHair7 = eHair + 7; 

 			mHair = self->makeRandAvatar( 5151025, changeHair0,changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7 ); 

 			if ( mHair == 1 ) self->say( "�A�i�H����l�ݬݧA���s�y���C�p��O�H���M���O�D�`�����A���ٺ⤣���a�H�p�G�A�٦��ݭn�A�w��A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't dye your hair without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to dye your hair at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 		} 
 	} 
 } 

-- mureung VIP Hairshop 
function s_hair_mureung1() {
 	selectHair = self->askMenu( "�w��Ө�Z�����v���C�p�G�A���W���a#b#t5150025##k�Ϊ�#b#t5151020##k�A�ڴN�i�H���A��y���ܧ󦨧A�ҳ��w�����N�y���C\r\n#b#L0# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L1# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L2# �󴫾v�� (�ϥ�VIP�|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30600 + tHair; 
 			changeHair2 = 30750 + tHair; 
			
 			changeHair3 = 30250 + tHair; 
 			changeHair4 = 30150 + tHair; 
 			changeHair5 = 30240 + tHair; 
 			changeHair6 = 30350 + tHair; 
 			changeHair7 = 30180 + tHair; 
 			changeHair8 = 30300 + tHair; 
 			changeHair9 = 30270 + tHair; 
 			changeHair10 = 30160 + tHair; 
			
 			mHair = self->askAvatar( "�H�U�O�������Ѫ��y���˥��A�u�n�A��#b#t5150025##k�A�ڴN�i�H���A��令�A�ҳ��w�����N�y���I", 5150025, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31460 + tHair; 
 			changeHair2 = 31040 + tHair; 
 			changeHair3 = 31180 + tHair; 
			
 			changeHair4 = 31310 + tHair; 
 			changeHair5 = 31300 + tHair; 
 			changeHair6 = 31160 + tHair; 
 			changeHair7 = 31030 + tHair; 
 			changeHair8 = 31250 + tHair; 
 			changeHair9 = 31220 + tHair; 
 			changeHair10 = 31230 + tHair; 

 			mHair = self->askAvatar( "�H�U�O�������Ѫ��y���˥��A�u�n�A��#b#t5150025##k�A�ڴN�i�H���A��令�A�ҳ��w�����N�y���I", 5150025, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10 ); 
 		} 
 			if ( mHair == 1 ) self->say( "�A�i�H����l�ݬݧA���s�y���C�p��O�H���M���O�D�`�����A���ٺ⤣���a�H�p�G�A�٦��ݭn�A�w��A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't give you a haircut without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 	else if ( selectHair == 1 ) { 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		changeHair1 = eHair; 
 		changeHair2 = eHair + 1; 
 		changeHair4 = eHair + 3; 
 		changeHair6 = eHair + 6; 
 		changeHair3 = eHair + 7; 
 		changeHair5 = eHair + 5; 

 		mHair = self->askAvatar( "�ڥi�H��������y�A���y���A�ӥB�A�]�i�H�q�U����ܥ���@�ӧA�ҳ��w���y���A�p��A�n�ϥ�#b#t5151020##k�ӧ�令�A�ҳ��w���y���ܡH", 5151020, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 			if ( mHair == 1 ) self->say( "�A�i�H����l�ݬݧA���s�y���C�p��O�H���M���O�D�`�����A���ٺ⤣���a�H�p�G�A�٦��ݭn�A�w��A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't dye your hair without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to dye your hair at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 	else if ( selectHair == 2 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30600 + tHair; 
 			changeHair2 = 30750 + tHair; 
			
 			changeHair3 = 30250 + tHair; 
 			changeHair4 = 30150 + tHair; 
 			changeHair5 = 30240 + tHair; 
 			changeHair6 = 30350 + tHair; 
 			changeHair7 = 30180 + tHair; 
 			changeHair8 = 30300 + tHair; 
 			changeHair9 = 30270 + tHair; 
 			changeHair10 = 30160 + tHair; 
			
 			mHair = self->askAvatar( "�H�U�O�������Ѫ��y���˥��A�u�n�A��#b#t5150025##k�A�ڴN�i�H���A��令�A�ҳ��w�����N�y���I", 5420006, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31460 + tHair; 
 			changeHair2 = 31040 + tHair; 
 			changeHair3 = 31180 + tHair; 
			
 			changeHair4 = 31310 + tHair; 
 			changeHair5 = 31300 + tHair; 
 			changeHair6 = 31160 + tHair; 
 			changeHair7 = 31030 + tHair; 
 			changeHair8 = 31250 + tHair; 
 			changeHair9 = 31220 + tHair; 
 			changeHair10 = 31230 + tHair; 

 			mHair = self->askAvatar( "�H�U�O�������Ѫ��y���˥��A�u�n�A��#b#t5150025##k�A�ڴN�i�H���A��令�A�ҳ��w�����N�y���I", 5420006, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10 ); 
 		} 
 			if ( mHair == 1 ) self->say( "�A�i�H����l�ݬݧA���s�y���C�p��O�H���M���O�D�`�����A���ٺ⤣���a�H�p�G�A�٦��ݭn�A�w��A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't give you a haircut without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 } 

-- mureung EXP Hairshop 
function s_hair_mureung2() {
 	selectHair = self->askMenu( "�A�n�A�ڬO�������U�z�A�u�n�A��#b#t5150024##k�Ϊ�#b#t5151019##k�A����ڴN�i�H���A���ѳy�����A�ȡC�p��O�H\r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L1# �󴫾v�� (�ϥΤ@��|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		nRet1 = self->askYesNo( "�p�G�A�ϥΤ@��|���d�A�A���y���N�|#b�H��#k�M�w�A�A�T�w�n�ϥ�#b#t5150024##k�ӧ󴫳y���H" ); 
 		if ( nRet1 == 0 ) self->say( "�ڪ��D�F...�A�i�H�A�Ҽ{�@�U�A�p�G�M�w�n�F�A�i�H�A�^�ӧ�ڡC"); 
 		else if ( nRet1 == 1 ) { 
 			tHair = target->getHair() % 10; 
 			if ( target->getGender() == 0 ) { 
 				changeHair1 = 30700 + tHair; 
 				changeHair2 = 30720 + tHair; 
 				changeHair3 = 30420 + tHair; 
				
 				changeHair4 = 30250 + tHair; 
 				changeHair5 = 30150 + tHair; 
 				changeHair6 = 30240 + tHair; 
 				changeHair7 = 30350 + tHair; 
 				changeHair8 = 30180 + tHair; 
 				changeHair9 = 30300 + tHair; 
 				changeHair10 = 30270 + tHair; 
 				changeHair11 = 30160 + tHair; 

 				mHair = self->makeRandAvatar( 5150024, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10,changeHair11 ); 
 			} 
 			else if ( target->getGender() == 1 ) { 
 				changeHair1 = 31690 + tHair; 
 				changeHair2 = 31210 + tHair; 
 				changeHair3 = 31170 + tHair; 
				
 				changeHair4 = 31310 + tHair; 
 				changeHair5 = 31300 + tHair; 
 				changeHair6 = 31160 + tHair; 
 				changeHair7 = 31030 + tHair; 
 				changeHair8 = 31250 + tHair; 
 				changeHair9 = 31220 + tHair; 
 				changeHair10 = 31230 + tHair; 

 				mHair = self->makeRandAvatar( 5150024, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10 ); 
 			} 
 			if ( mHair == 1 ) self->say( "�A�i�H����l�ݬݧA���s�y���C�p��O�H���M���O�D�`�����A���ٺ⤣���a�H�p�G�A�٦��ݭn�A�w��A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't give you a haircut without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 		} 
 	} 
 	else if ( selectHair == 1 ) { 
 		nRet1 = self->askYesNo( "�p�G�A�ϥΤ@��|���d�A�A���y���N�|#b�H��#k�M�w�A�A�T�w�n�ϥ�#b#t5151019##k�ӧ󴫳y���H" ); 
 		if ( nRet1 == 0 ) self->say( "�ڪ��D�F...�A�i�H�A�Ҽ{�@�U�A�p�G�M�w�n�F�A�i�H�A�^�ӧ�ڡC"); 
 		else if ( nRet1 == 1 ) { 
 			cHair = target->getHair(); 
 			eHair = cHair - ( cHair % 10 ); 

 			changeHair1 = eHair; 
 			changeHair2 = eHair + 1; 
 			changeHair4 = eHair + 3; 
 			changeHair6 = eHair + 6; 
 			changeHair3 = eHair + 7; 
 			changeHair5 = eHair + 5; 

 			mHair = self->makeRandAvatar( 5151019, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6 ); 

 			if ( mHair == 1 ) self->say( "�A�i�H����l�ݬݧA���s�y���C�p��O�H���M���O�D�`�����A���ٺ⤣���a�H�p�G�A�٦��ݭn�A�w��A�ӧ�ڡI" ); 
 			else if ( mHair == -1 ) self->say( "Hmmm...it looks like you don't have our designated coupon...I'm afraid I can't dye your hair without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. A slight problem here at the hair salon. I don't think I'll be able to dye your hair at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 		} 
 	} 
 } 

-- ��� ��� ?�??? 
function s_hair_shouwa1() {
 	selectHair = self->askMenu( "�w����{�A�ڬO�����������A�u�n�A����a#b#t5150009##k�Ϊ�#b#t5151009##k�A�����ڨӴ��A�󴫦��̷s�ɩ|���y���O�H \r\n#b#L0# �󴫾v�� (�ϥΰ��ŷ|���d)#l\r\n#L1# �󴫾v�� (�ϥΰ��ŷ|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		tHair = target->getHair() % 10; 
 		if ( target->getGender() == 0 ) { 
 			changeHair1 = 30000 + tHair;  
 			changeHair2 = 30120 + tHair; 
 			changeHair3 = 30140 + tHair; 
 			changeHair4 = 30190 + tHair; 
 			changeHair5 = 30210 + tHair; 
 			changeHair6 = 30270 + tHair; 
 			changeHair7 = 30290 + tHair; 
 			changeHair8 = 30360 + tHair; 
 			changeHair9 = 30220 + tHair; 
 			changeHair10 = 30370 + tHair; 
 			changeHair11 = 30400 + tHair; 
 			changeHair12 = 30440 + tHair; 
 			changeHair13 = 30510 + tHair; 


 			mHair = self->askAvatar( "�H�U�O�������Ѫ��̷s�ɩ|�y���˥��A�u�n�A��#b#t5150009##k�A�ڴN�i�H���A��令�A�ҳ��w�����N�y���I ", 5150009, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 		} 
 		else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31030 + tHair; 
 			changeHair2 = 31050 + tHair; 
 			changeHair3 = 31070 + tHair; 
 			changeHair4 = 31100 + tHair; 
 			changeHair5 = 31120 + tHair; 
 			changeHair6 = 31130 + tHair; 
 			changeHair7 = 31250 + tHair; 
 			changeHair8 = 31340 + tHair; 
 			changeHair9 = 31210 + tHair; 
 			changeHair10 = 31350 + tHair; 
 			changeHair11= 31400 + tHair; 
 			changeHair12= 31440 + tHair; 
 			changeHair13= 31520 + tHair; 

 			mHair = self->askAvatar( "�H�U�O�������Ѫ��̷s�ɩ|�y���˥��A�u�n�A��#b#t5150009##k�A�ڴN�i�H���A��令�A�ҳ��w�����N�y���I ", 5150009, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 		} 
 		if ( mHair == 1 ) self->say( "�����F�I����l�ݬݷs���y���a�I�Aı�o�F�H�o�ӧگu���D�`����C�p�G�A��{�b���y�������N�A�i�H�A�^�ӧ�ڡI" ); 
 		else if ( mHair == -1 ) self->say( "Eh? I don't think you have our designated hair salon coupon. I can't give you the haircut without it. " ); 
 		else if ( mHair == -3 ) self->say( "I'm sorry. It looks like we have a problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Come back later." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 	else if ( selectHair == 1 ) { 
 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		if( eHair==30430 or eHair==31430) { 
			 self->say("�A�ثe���v���L�k���C��C"); 
			 return;
 		} 
 		else{ 
 		changeHair1 = eHair; 
 		changeHair2 = eHair + 2; 
 		changeHair4 = eHair + 3; 
 		changeHair3 = eHair + 7; 
 		changeHair5 = eHair + 5; 

 		mHair = self->askAvatar( "�ڥi�H��������y�A���y���A�ӥB�A�]�i�H�q�U����ܥ���@�ӧA�ҳ��w���y���A�p��A�n�ϥ�#b#t5151009##k�ӧ�令�A�ҳ��w���y���ܡH", 5151009, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5 ); 

 		if ( mHair == 1 ) self->say( "�����F�I����l�ݬݷs���y���a�I�Aı�o�F�H�o�ӧگu���D�`����C�p�G�A��{�b���y�������N�A�i�H�A�^�ӧ�ڡI" ); 
 		else if ( mHair == -1 ) self->say( "Eh? I don't think you have our designated hair salon coupon. I can't dye your hair without it." ); 
 		else if ( mHair == -3 ) self->say( "I'm sorry. It looks like we have a problem here at the hair salon. I don't think I'll be able to dye your hair at this very moment. Come back later." ); 
 		else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 	} 
 	} 
 } 

-- ��� �Ϲ� ?�??? 
function s_hair_shouwa2() {
 	selectHair = self->askMenu( "�A�n�A�ڬO�o�̪��U�z�A�p�G�A��#b#t5150008##k�Ϊ�#b#t5151008##k�A�����ڨ����A���y���A��... \r\n#b#L0# �󴫾v�� (�ϥΤ@��|���d)#l\r\n#L1# �󴫾v�� (�ϥΤ@��|���d)#l" ); 
 	if ( selectHair == 0 ) { 
 		nRet1 = self->askYesNo( "�p�G�A�ϥΤ@��|���d�A�A���y���N�|#b�H��#k�M�w�A�A�T�w�n�ϥ�#b#t5150008##k�ӧ󴫧A���v���ܡH" ); 
 		if ( nRet1 == 0 ) self->say( "�ڪ��D�F...���A�Ҽ{�n�F�H��A���a�C"); 
 		else if ( nRet1 == 1 ) { 
 			tHair = target->getHair() % 10; 
 			if ( target->getGender() == 0 ) { 
 			changeHair1 = 30000 + tHair;  
 			changeHair2 = 30120 + tHair; 
 			changeHair3 = 30140 + tHair; 
 			changeHair4 = 30190 + tHair; 
 			changeHair5 = 30210 + tHair; 
 			changeHair6 = 30270 + tHair; 
 			changeHair7 = 30290 + tHair; 
 			changeHair8 = 30360 + tHair; 
 			changeHair9 = 30220 + tHair; 
 			changeHair10 = 30370 + tHair; 
 			changeHair11 = 30400 + tHair; 
 			changeHair12 = 30440 + tHair; 
 			changeHair13 = 30510 + tHair; 


 				mHair = self->makeRandAvatar( 5150008, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair12 ); 
 			} 
 			else if ( target->getGender() == 1 ) { 
 			changeHair1 = 31030 + tHair; 
 			changeHair2 = 31050 + tHair; 
 			changeHair3 = 31070 + tHair; 
 			changeHair4 = 31100 + tHair; 
 			changeHair5 = 31120 + tHair; 
 			changeHair6 = 31130 + tHair; 
 			changeHair7 = 31250 + tHair; 
 			changeHair8 = 31340 + tHair; 
 			changeHair9 = 31210 + tHair; 
 			changeHair10 = 31350 + tHair; 
 			changeHair11= 31400 + tHair; 
 			changeHair12= 31440 + tHair; 
 			changeHair13= 31520 + tHair; 

 				mHair = self->makeRandAvatar( 5150008, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5, changeHair6, changeHair7, changeHair8, changeHair9, changeHair10, changeHair11, changeHair12, changeHair13 ); 
 			} 
 			if ( mHair == 1 ) self->say( "�n�F�A�A�i�H����l�ݬݷs���y���A�p��H�����O�@�ӧU�z���o�쪺�a�H�������A�p�G�٦��ݭn�Ц^�ӧ�ڡC" ); 
 			else if ( mHair == -1 ) self->say( "I'm really sorry, but it looks like you don't have our designated coupon, and I'm afraid I can't give you a haircut without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. We've encountered a slight problem here at the hair salon. I don't think I'll be able to give you a haircut at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 		} 
 	} 
 	else if ( selectHair == 1 ) { 

 		cHair = target->getHair(); 
 		eHair = cHair - ( cHair % 10 ); 

 		if( eHair==30430 or eHair==31430) { 
			 self->say("�A�ثe���v���L�k���C��C"); 
			 return;
 		} 
 		else{ 
 		nRet1 = self->askYesNo( "�p�G�A�ϥΤ@��|���d�A�A���y���N�|#b�H��#k�M�w�A�A�T�w�n�ϥ�#b#t5151008##k�Ӷi��V�v�H" ); 
 		if ( nRet1 == 0 ) self->say( "�ڪ��D�F...���A�Ҽ{�n�F�H��A���a�C"); 
 		else if ( nRet1 == 1 ) { 
			

 			changeHair1 = eHair; 
 			changeHair2 = eHair + 2; 
 			changeHair4 = eHair + 3; 
 			changeHair3 = eHair + 7; 
 			changeHair5 = eHair + 5; 

 			if ( target->getGender() == 0 ) mHair = self->makeRandAvatar( 5151008, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5 ); 
 			else if ( target->getGender() == 1 ) mHair = self->makeRandAvatar( 5151008, changeHair1, changeHair2, changeHair3, changeHair4, changeHair5 ); 

 			if ( mHair == 1 ) self->say( "�n�F�A�A�i�H����l�ݬݷs���y���A�p��H�����O�@�ӧU�z���o�쪺�a�H�������A�p�G�٦��ݭn�Ц^�ӧ�ڡC" ); 
 			else if ( mHair == -1 ) self->say( "I'm really sorry, but it looks like you don't have our designated coupon, and I'm afraid I can't dye your hair without it. I'm sorry." ); 
 			else if ( mHair == -3 ) self->say( "I'm sorry. We've encountered a slight problem here at the hair salon. I don't think I'll be able to dye your hair at this very moment. Please come back later." ); 
 			else if ( mHair == 0 or mHair == -2 ) self->say( "�D�`��p�A�A������a�|���d�~��󴫳y���C" ); 
 			} 
 		} 
 	}		 
 } 
