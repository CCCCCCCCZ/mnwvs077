require "./DataSrv/Script/sysDef"

----Henesys VIP plastic surgery
function s_face_henesys1() {
  teye = ( target->getFace() / 100 ) % 10 * 100;
	if ( target->getGender() == 0 ) 
	{
	  changeFace1 = 20000 + teye;
	  changeFace2 = 20001 + teye;
	  changeFace3 = 20002 + teye;
	  changeFace4 = 20003 + teye;
	  changeFace5 = 20004 + teye;
	  changeFace6 = 20005 + teye;
	  changeFace7 = 20006 + teye;
	  changeFace8 = 20007 + teye;
 	  changeFace9 = 20008 + teye;
    changeFace10 = 20012 + teye;
    changeFace11 = 20014 + teye;
	  mFace = self->askAvatar( "�H�U�O�ڭ̴��Ѫ��y���d�ҡA�p�G�A����a#b#t5152001##k�A���A�N�i�H�i���N�åB�󴫦��A���w���˦��C", 5152001, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
	}
	else if ( target->getGender() == 1 ) 
	{
	  changeFace1 = 21000 + teye;
	  changeFace2 = 21001 + teye;
	  changeFace3 = 21002 + teye;
	  changeFace4 = 21003 + teye;
	  changeFace5 = 21004 + teye;
	  changeFace6 = 21005 + teye;
	  changeFace7 = 21006 + teye;
	  changeFace8 = 21007 + teye;
    changeFace9 = 21008 + teye;
	  changeFace10 = 21012 + teye;
	  changeFace11 = 21014 + teye;
	  mFace = self->askAvatar( "�H�U�O�ڭ̴��Ѫ��y���d�ҡA�p�G�A����a#b#t5152001##k�A���A�N�i�H�i���N�åB�󴫦��A���w���˦��C", 5152001, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
	}
	
	if ( mFace == 1 ) self->say( "�D�`�n�A��N�i��o�D�`���Q�C�A�i�H��o��ݬݧA�s���y���C���ˡA�D�`�ι�a�H�ڴN���D�I�p�G�A�ٷQ�i���Τ�N�A�ЦA�ӧ�ڡI" );
	else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
	else if ( mFace == -3 ) self->say( "Hum... Parece que temos um problema aqui no hospital, e sinto que n�o posso continuar o procedimento imediatamente. Por favor, volte depois." );
	else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
}

----Henesys regular plastic surgery
function s_face_henesys2() {
	nRet = self->askYesNo( "�w����{�A�ڬO�o�̪������͡A�p�G�A��#b#t5152000##k�A�N�i�H���A�i���Τ�N�A�p��A�Q�n�i��㫬�ܡH" );
	if ( nRet == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����A�A�i�H�A�^�ӧ�ڡC" );
	else if ( nRet == 1 ) {
    teye = ( target->getFace() / 100 ) % 10 * 100;
		if ( target->getGender() == 0 ) 
		{
  	  changeFace1 = 20000 + teye;
  	  changeFace2 = 20001 + teye;
  	  changeFace3 = 20002 + teye;
  	  changeFace4 = 20003 + teye;
  	  changeFace5 = 20004 + teye;
  	  changeFace6 = 20005 + teye;
  	  changeFace7 = 20006 + teye;
  	  changeFace8 = 20007 + teye;
	  	changeFace9 = 20008 + teye;
	  	changeFace10 = 20012 + teye;
	  	changeFace11 = 20014 + teye;
		  mFace = self->makeRandAvatar( 5152000, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}
		else if ( target->getGender() == 1 ) 
		{
  	  changeFace1 = 21000 + teye;
  	  changeFace2 = 21001 + teye;
  	  changeFace3 = 21002 + teye;
  	  changeFace4 = 21003 + teye;
  	  changeFace5 = 21004 + teye;
  	  changeFace6 = 21005 + teye;
  	  changeFace7 = 21006 + teye;
  	  changeFace8 = 21007 + teye;
	  	changeFace9 = 21008 + teye;
	  	changeFace10 = 21012 + teye;
	  	changeFace11 = 21014 + teye;
		  mFace = self->makeRandAvatar( 5152000, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}

		if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
		else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico deste lugar. Desculpa dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
		else if ( mFace == -3 ) self->say( "Desculpe, mas h?um problema aqui no hospital e temo que tenha que parar a cirurgia imediatamente. Por favor, volte depois." );
		else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
	}
}

----Orbis VIP plastic surgery
function s_face_orbis1() {
  teye = ( target->getFace() / 100 ) % 10 * 100;
	if ( target->getGender() == 0 ) 
	{
	  changeFace1 = 20000 + teye;
	  changeFace2 = 20001 + teye;
	  changeFace3 = 20002 + teye;
	  changeFace4 = 20003 + teye;
	  changeFace5 = 20004 + teye;
	  changeFace6 = 20005 + teye;
	  changeFace7 = 20006 + teye;
	  changeFace8 = 20007 + teye;
    changeFace9 = 20008 + teye;
	  changeFace10 = 20012 + teye;
	  changeFace11 = 20014 + teye;
    mFace = self->askAvatar( "�w��A�w��C��{�b���y���P�칽�¤F�ܡH�S���Y�A�u�n�A��#b#t5152005##k�A�ڴN�i�H���A�i���N�åB��y���H�U�A�ҳ��w���y���A�p��H�ݭn�i���N�ܡH", 5152005, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
  }
	else if ( target->getGender() == 1 )	{
	  changeFace1 = 21000 + teye;
	  changeFace2 = 21001 + teye;
	  changeFace3 = 21002 + teye;
	  changeFace4 = 21003 + teye;
	  changeFace5 = 21004 + teye;
	  changeFace6 = 21005 + teye;
	  changeFace7 = 21006 + teye;
	  changeFace8 = 21007 + teye;
    changeFace9 = 21008 + teye;
    changeFace10 = 21012 + teye;
    changeFace11 = 21014 + teye;
	  mFace = self->askAvatar( "�w��A�w��C��{�b���y���P�칽�¤F�ܡH�S���Y�A�u�n�A��#b#t5152005##k�A�ڴN�i�H���A�i���N�åB��y���H�U�A�ҳ��w���y���A�p��H�ݭn�i���N�ܡH", 5152005, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
	}
	
	if ( mFace == 1 ) self->say( "�D�`�n�A��N�i��o�D�`���Q�C�A�i�H��o��ݬݧA�s���y���C���ˡA�D�`�ι�a�H�ڴN���D�I�p�G�A�ٷQ�i���Τ�N�A�ЦA�ӧ�ڡI" );
	else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
	else if ( mFace == -3 ) self->say( "Hum... Parece que temos um problema aqui no hospital e sinto que n�o posso continuar o procedimento imediatamente. Por favor, volte depois." );
	else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
}

----Orbis regular plastic surgery
function s_face_orbis2() {
	nRet = self->askYesNo( "�w����{�A�ڬO�o�̪������͡A�p�G�A��#b#t5152004##k�A�N�i�H���A�i���Τ�N�A�p��A�Q�n�i��㫬�ܡH" );
	if ( nRet == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����A�A�i�H�A�^�ӧ�ڡC");
	else if ( nRet == 1 ) {
    teye = ( target->getFace() / 100 ) % 10 * 100;
		if ( target->getGender() == 0 ) 
		{
  	  changeFace1 = 20000 + teye;
  	  changeFace2 = 20001 + teye;
  	  changeFace3 = 20002 + teye;
  	  changeFace4 = 20003 + teye;
  	  changeFace5 = 20004 + teye;
  	  changeFace6 = 20005 + teye;
  	  changeFace7 = 20006 + teye;
  	  changeFace8 = 20007 + teye;
      changeFace9 = 20008 + teye;
	  	changeFace10 = 20012 + teye;
	  	changeFace11 = 20014 + teye;
		  mFace = self->makeRandAvatar( 5152004, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}
		else if ( target->getGender() == 1 ) 
		{
  	  changeFace1 = 21000 + teye;
  	  changeFace2 = 21001 + teye;
  	  changeFace3 = 21002 + teye;
  	  changeFace4 = 21003 + teye;
  	  changeFace5 = 21004 + teye;
  	  changeFace6 = 21005 + teye;
  	  changeFace7 = 21006 + teye;
  	  changeFace8 = 21007 + teye;
	  	changeFace9 = 21008 + teye;
	  	changeFace10 = 21012 + teye;
	  	changeFace11 = 21014 + teye;
		  mFace = self->makeRandAvatar( 5152004, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}

		if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
		else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe-me dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
		else if ( mFace == -3 ) self->say( "Hum... Parece que temos um problema aqui no hospital e sinto que n�o posso continuar o procedimento imediatamente. Por favor, volte depois." );
		else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
	}
}

----Ludibrium VIP plastic surgery
function s_face_ludi1() {
  teye = ( target->getFace() / 100 ) % 10 * 100;
	if ( target->getGender() == 0 ) 
	{
	  changeFace1 = 20000 + teye;
	  changeFace2 = 20001 + teye;
	  changeFace3 = 20002 + teye;
	  changeFace4 = 20003 + teye;
	  changeFace5 = 20004 + teye;
	  changeFace6 = 20005 + teye;
	  changeFace7 = 20006 + teye;
	  changeFace8 = 20007 + teye;
  	  changeFace9 = 20008 + teye;
  	  changeFace10 = 20012 + teye;
	  changeFace11 = 20014 + teye;
    mFace = self->askAvatar( "�H�U�O�ڭ̴��Ѫ��y���d�ҡA�p�G�A����a#b#t5152007##k�A���A�N�i�H�i���N�åB�󴫦��A���w���˦��C", 5152007, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
  }
	else if ( target->getGender() == 1 )	{
	  changeFace1 = 21000 + teye;
	  changeFace2 = 21001 + teye;
	  changeFace3 = 21002 + teye;
	  changeFace4 = 21003 + teye;
	  changeFace5 = 21004 + teye;
	  changeFace6 = 21005 + teye;
	  changeFace7 = 21006 + teye;
	  changeFace8 = 21007 + teye;
	  changeFace9 = 21008 + teye;
	  changeFace10 = 21012 + teye;
	  changeFace11 = 21014 + teye;
	  mFace = self->askAvatar( "�H�U�O�ڭ̴��Ѫ��y���d�ҡA�p�G�A����a#b#t5152007##k�A���A�N�i�H�i���N�åB�󴫦��A���w���˦��C", 5152007, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
	}
	
	if ( mFace == 1 ) self->say( "�D�`�n�A��N�i��o�D�`���Q�C�A�i�H��o��ݬݧA�s���y���C���ˡA�D�`�ι�a�H�ڴN���D�I�p�G�A�ٷQ�i���Τ�N�A�ЦA�ӧ�ڡI" );
	else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe-me dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
	else if ( mFace == -3 ) self->say( "Hum... Parece que temos um problema aqui no hospital e sinto que n�o posso continuar o procedimento imediatamente. Por favor, volte depois." );
	else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
}

----Ludibrium regular plastic surgery
function s_face_ludi2() {
	nRet = self->askYesNo( "�w����{�A�ڬO�o�̪������͡A�p�G�A��#b#t5152006##k�A�N�i�H���A�i���Τ�N�A�p��A�Q�n�i��㫬�ܡH" );
	if ( nRet == 0 ) self->say( "���A�Ҽ{�M���H��A�^�ӧ�ڡC");
	else if ( nRet == 1 ) {
    teye = ( target->getFace() / 100 ) % 10 * 100;
		if ( target->getGender() == 0 ) 
		{
  	  changeFace1 = 20000 + teye;
  	  changeFace2 = 20001 + teye;
  	  changeFace3 = 20002 + teye;
  	  changeFace4 = 20003 + teye;
  	  changeFace5 = 20004 + teye;
  	  changeFace6 = 20005 + teye;
  	  changeFace7 = 20006 + teye;
  	  changeFace8 = 20007 + teye;
      changeFace9 = 20008 + teye;
      changeFace10 = 20012 + teye;
	  	changeFace11 = 20014 + teye;
		  mFace = self->makeRandAvatar( 5152006, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}
		else if ( target->getGender() == 1 ) 
		{
  	  changeFace1 = 21000 + teye;
  	  changeFace2 = 21001 + teye;
  	  changeFace3 = 21002 + teye;
  	  changeFace4 = 21003 + teye;
  	  changeFace5 = 21004 + teye;
  	  changeFace6 = 21005 + teye;
  	  changeFace7 = 21006 + teye;
  	  changeFace8 = 21007 + teye;
	  	changeFace9 = 21008 + teye;
	  	changeFace10 = 21012 + teye;
	  	changeFace11 = 21014 + teye;
		  mFace = self->makeRandAvatar( 5152006, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}


		if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
		else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
		else if ( mFace == -3 ) self->say( "Desculpe pela inconveni�ncia, mas parece que temos um problema aqui no hospital e sinto que n�o posso continuar o procedimento imediatamente. Por favor, volte depois." );
		else if ( mFace == 0 or mFace == -2 ) self->say( "�藍�_�A�p�G�S����a�|���d�A�ڴN�L�k���A�A�ȡC" );
	}
}
--****** Wedding : Plastic Surgery - Dr. 90212 - VIP			18
function s_face_wedding1() {
 
		teye = ( target->getFace() / 100 ) % 10 * 100;

		if ( target->getGender() == 0 ) 	{

			  changeFace1 = 20018 + teye;
			  changeFace2 = 20019 + teye;

			  changeFace3 = 20000 + teye;
			  changeFace4 = 20001 + teye;
			  changeFace5 = 20003 + teye;
			  changeFace6 = 20004 + teye;
			  changeFace7 = 20005 + teye;
			  changeFace8 = 20006 + teye;
			  changeFace9 = 20007 + teye;  
			  changeFace10 = 20008 + teye;  

			  mFace = self->askAvatar( "���A���w���y���ܡH�p�G�A����a#b#t5152022##k�A�ڴN�i�H���A�i���N�åB��Φ��A�ҹڴK�H�D���ˤl�I", 5152022, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10);
		}
		else if ( target->getGender() == 1 ) {

			  changeFace1 = 21018 + teye;
			  changeFace2 = 21019 + teye;

			  changeFace3 = 21001 + teye;
			  changeFace4 = 21002 + teye;
			  changeFace5 = 21003 + teye;
			  changeFace6 = 21004 + teye;
			  changeFace7 = 21005 + teye;
			  changeFace8 = 21006 + teye;
			  changeFace9 = 21007 + teye;
			  changeFace10 = 21012 + teye;
	
			 mFace = self->askAvatar( "���A���w���y���ܡH�p�G�A����a#b#t5152022##k�A�ڴN�i�H���A�i���N�åB��Φ��A�ҹڴK�H�D���ˤl�I", 5152022, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10);
		}
	
		if ( mFace == 1 ) self->say( "��N�i��o�D�`���Q�A�A���~���{�b�ܱo��H�e�n�ݦh�F�I�A�ٺ��N�ܡH�p�G�H���٦��ݭn�A�ȡA�i�H�A�ӧ�ڡI" );
		else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe-me dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
		else if ( mFace == -3 ) self->say( "Hum... Parece que temos um problema aqui no hospital e sinto que n�o posso continuar o procedimento imediatamente. Por favor, volte depois." );
		else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );

}


--****** Wedding : Script: Plastic Surgery - Intern Shakihands - REG	19
function s_face_wedding2() {

		nRet = self->askYesNo( "�Q�n�i���Τ�N�ܡH�u�n�A��#b#t5152021##k�A�ڭ̰��W�N�i�H�}�l�I" );

		if ( nRet == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����A�A�i�H�A�^�ӧ�ڡC" );
		else if ( nRet == 1 ) {
			teye = ( target->getFace() / 100 ) % 10 * 100;
			if ( target->getGender() == 0 ) 	{
			  changeFace1 = 20018 + teye;
			  changeFace2 = 20019 + teye;

			  changeFace3 = 20000 + teye;
			  changeFace4 = 20001 + teye;
			  changeFace5 = 20003 + teye;
			  changeFace6 = 20004 + teye;
			  changeFace7 = 20005 + teye;
			  changeFace8 = 20006 + teye;
			  changeFace9 = 20007 + teye;  
			  changeFace10 = 20008 + teye;  

		  mFace = self->makeRandAvatar( 5152021, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10 );
		}
		else if ( target->getGender() == 1 ) {
			  changeFace1 = 21018 + teye;
			  changeFace2 = 21019 + teye;

			  changeFace3 = 21001 + teye;
			  changeFace4 = 21002 + teye;
			  changeFace5 = 21003 + teye;
			  changeFace6 = 21004 + teye;
			  changeFace7 = 21005 + teye;
			  changeFace8 = 21006 + teye;
			  changeFace9 = 21007 + teye;
			  changeFace10 = 21012 + teye;

		  mFace = self->makeRandAvatar( 5152021, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10 );
		}

		if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
		else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe-me dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
		else if ( mFace == -3 ) self->say( "Desculpe, mas h?um problema aqui no hospital e temo que tenha que parar a cirurgia imediatamente. Por favor, volte depois." );
		else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
	}
}

function s_lens_henesys1()
{
  nRet = self->askMenu( "�١A�A�n�A��ۤv���~�������N�ܡH�p�G�A����a#b#t5152010##k�Ϊ�#b#t5152013##k�A�ڴN�i�H���ѧA��ΪA�����A�i�H�ܧ󴫲������C��A�p��H�ݭn���@�تA�ȩO�H\r\n#b#L0# �ܧ󲴷����� (�ϥΤ@���Ψ�)#l\r\n#L1# �ܧ󲴷����� (�ϥ�VIP��Ψ�)#l" ); 
  if ( nRet == 0 )
  {
    nRet1 = self->askYesNo( "�Q�n�i��y���󴫶ܡH�p�G�A����a#b#t5152010##k�ڴN�i�H���A#b�H��#k�󴫳y���A���ˡA�n�i���N�ܡH" );
    if ( nRet1 == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����p�G�M�w�n�i���N�A�ЦA�^�ӧ�ڡC" );
    else if ( nRet1 == 1 ) 
    {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 400;
      changeEye4 = tface + 500;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

			mFace = self->makeRandAvatar( 5152010, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
			else if ( mFace == -3 ) self->say( "Desculpe-me, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
    }
  } else if ( nRet == 1 )
  {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 400;
      changeEye4 = tface + 500;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

  	  mFace = self->askAvatar( "�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152013, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
  }
}

function s_lens_orbis1()
{
  nRet = self->askMenu( "�١A�A�n�A��ۤv���~�������N�ܡH�p�G�A����a#b#t5152011##k�Ϊ�#b#t5150104##k�A�ڴN�i�H���ѧA��ΪA�����A�i�H�ܧ󴫲������C��A�p��H�ݭn���@�تA�ȩO�H\r\n#b#L0# �ܧ󲴷����� (�ϥΤ@���Ψ�)#l\r\n#L1# �ܧ󲴷����� (�ϥ�VIP��Ψ�)#l" );
  if ( nRet == 0 )
  {
    nRet1 = self->askYesNo( "�Q�n�i��y���󴫶ܡH�p�G�A����a#b#t5152011##k�ڴN�i�H���A#b�H��#k�󴫳y���A���ˡA�n�i���N�ܡH" );
    if ( nRet1 == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����p�G�M�w�n�i���N�A�ЦA�^�ӧ�ڡI" );
    else if ( nRet1 == 1 ) 
    {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 200;
      changeEye4 = tface + 400;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

			mFace = self->makeRandAvatar( 5152011, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�D�`�n�A��N�i��o�D�`���Q�C�A�i�H��o��ݬݧA�s���y���C���ˡA�D�`�ι�a�H�ڴN���D�I�p�G�A�ٷQ�i���Τ�N�A�ЦA�ӧ�ڡI" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
    }
	} 
	else if ( nRet == 1 )
  {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 200;
      changeEye4 = tface + 400;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

  	  mFace = self->askAvatar( "�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152014, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�D�`�n�A��N�i��o�D�`���Q�C�A�i�H��o��ݬݧA�s���y���C���ˡA�D�`�ι�a�H�ڴN���D�I�p�G�A�ٷQ�i���Τ�N�A�ЦA�ӧ�ڡI" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
  }
}

function s_lens_ludi1()
{
  nRet = self->askMenu( "�A�n�A�w��Ө�ѪŤ�����Τ�N���ߡI�p�G��ۤv���~�����N�A�b�o�̱N�i�H�i��㫬�A�ȡC�p�G�A��#b#t5152012##k�Ϊ�#b#t5152015##k�A�ڴN�i�H���A�i���N�åB�N�A��e���A���w���ˤl�A���ˡA�ݭn���@�تA�ȩO�H\r\n#b#L0# ��� (�ϥΤ@���Ψ�)#l\r\n#L1# ��� (�ϥΰ��ž�Ψ�)#l" );
  if ( nRet == 0 )
  {
    nRet1 = self->askYesNo( "�Q�n�i��y���󴫶ܡH�p�G�A����a#b#t5152012##k�ڴN�i�H���A#b�H��#k�󴫳y���A���ˡA�n�i���N�ܡH" );
    if ( nRet1 == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����p�G�M�w�n�i���N�A�ЦA�^�ӧ�ڡI" );
    else if ( nRet1 == 1 ) 
    {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 300;
      changeEye4 = tface + 400;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

			mFace = self->makeRandAvatar( 5152012, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc? Desculpe." );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
    }
	} 
	else if ( nRet == 1 )
  {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 300;
      changeEye4 = tface + 400;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

  	  mFace = self->askAvatar( "�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152015, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc? Desculpe." );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
 }
}

function s_lens_wedding1()	{
  nRet = self->askMenu( "��...�w����{�C�p�G��ۤv���~�����N�A�b�o�̱N�i�H�i��㫬�A�ȡC�p�G�A��#b#t5152025##k�Ϊ�#b#t5152026##k�A�ڴN�i�H���A�i���N�åB�N�A��e���A���w���ˤl�A���ˡA�ݭn���@�تA�ȩO�H\r\n#b#L0# ��� (�ϥΤ@���Ψ�)#l\r\n#L1# ��� (�ϥΰ��ž�Ψ�)#l" );
  if ( nRet == 0 )
  {
    nRet1 = self->askYesNo( "�Q�n�i��y���󴫶ܡH�p�G�A����a#b#t5152025##k�ڴN�i�H���A#b�H��#k�󴫳y���A���ˡA�n�i���N�ܡH" );
    if ( nRet1 == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����p�G�M�w�n�i���N�A�ЦA�^�ӧ�ڡI" );
    else if ( nRet1 == 1 ) 
    {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 300;
      changeEye4 = tface + 400;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

			mFace = self->makeRandAvatar( 5152025, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc? Desculpe." );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
    }
	} 
	else if ( nRet == 1 )
  {
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
      changeEye1 = tface;
      changeEye2 = tface + 100;
      changeEye3 = tface + 300;
      changeEye4 = tface + 400;
      changeEye5 = tface + 600;
      changeEye6 = tface + 700;

  	  mFace = self->askAvatar( "�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152026, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6 );

			if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc? Desculpe." );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
 }
}

----NLC VIP plastic surgery
function s_NLC_FaceVip() {
  teye = ( target->getFace() / 100 ) % 10 * 100;
	if ( target->getGender() == 0 )  {
	  --changeFace1 = 20023 + teye;
	  changeFace2 = 20012 + teye;
	  changeFace3 = 20000 + teye;
	  changeFace4 = 20001 + teye;
	  changeFace5 = 20002 + teye;
	  changeFace6 = 20003 + teye;
	  changeFace7 = 20004 + teye;
	  changeFace8 = 20005 + teye;
	  changeFace9 = 20006 + teye;
	  changeFace10 = 20008 + teye;
    	
	  mFace = self->askAvatar( "�H�U�O�ڭ̴��Ѫ��y���d�ҡA�p�G�A����a#b#t5152034##k�A���A�N�i�H�i���N�åB�󴫦��A���w���˦��C", 5152034, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10 );
	}
	else if ( target->getGender() == 1 ) 	{
	  --changeFace1 = 21022 + teye;
	  changeFace2 = 21016 + teye;
	  changeFace3 = 21001 + teye;
	  changeFace4 = 21002 + teye;
	  changeFace5 = 21003 + teye;
	  changeFace6 = 21004 + teye;
	  changeFace7 = 21005 + teye;
	  changeFace8 = 21006 + teye;
	  changeFace9 = 21008 + teye;
    changeFace10 = 21012 + teye;
	  
	  mFace = self->askAvatar( "�H�U�O�ڭ̴��Ѫ��y���d�ҡA�p�G�A����a#b#t5152034##k�A���A�N�i�H�i���N�åB�󴫦��A���w���˦��C", 5152034, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10 );
	}
	
	if ( mFace == 1 ) self->say( "�D�`�n�A��N�i��o�D�`���Q�C�A�i�H��o��ݬݧA�s���y���C���ˡA�D�`�ι�a�H�ڴN���D�I�p�G�A�ٷQ�i���Τ�N�A�ЦA�ӧ�ڡI" );
	else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico para este lugar... Desculpe dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
	else if ( mFace == -3 ) self->say( "Hum... Parece que temos um problema aqui no hospital e sinto que n�o posso continuar o procedimento imediatamente. Por favor, volte depois." );
	else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
}

----NLC regular plastic surgery
function s_NLC_FaceExp() {
	nRet = self->askYesNo( "�w����{�A�ڬO�o�̪������͡A�p�G�A��#b#t5152033##k�A�N�i�H���A�i���Τ�N�A�p��A�Q�n�i��㫬�ܡH" );
	if ( nRet == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����A�A�i�H�A�^�ӧ�ڡC" );
	else if ( nRet == 1 ) {
    teye = ( target->getFace() / 100 ) % 10 * 100;
		if ( target->getGender() == 0 ) {
		
	  	  changeFace1 = 20023 + teye;
		  --changeFace2 = 20012 + teye;
		  changeFace3 = 20000 + teye;
		  changeFace4 = 20001 + teye;
		  changeFace5 = 20002 + teye;
		  changeFace6 = 20003 + teye;
		  changeFace7 = 20004 + teye;
		  changeFace8 = 20005 + teye;
		  changeFace9 = 20006 + teye;
		  changeFace10 = 20008 + teye;
		  
		  mFace = self->makeRandAvatar( 5152033, changeFace1, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10 );
		}
		else if ( target->getGender() == 1 ) {
		  
		  changeFace1 = 21022 + teye;
		  --/changeFace2 = 21016 + teye;
		  changeFace3 = 21001 + teye;
		  changeFace4 = 21002 + teye;
		  changeFace5 = 21003 + teye;
		  changeFace6 = 21004 + teye;
		  changeFace7 = 21005 + teye;
		  changeFace8 = 21006 + teye;
		  changeFace9 = 21008 + teye;
	      changeFace10 = 21012 + teye;
	  
		  mFace = self->makeRandAvatar( 5152033, changeFace1, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10);
		}

		if ( mFace == 1 ) self->say( "�����F�I���ˡH���M���O�D�`�����A���O���M�D�`���A�X�A��a�H�p�G�A���¤F�o�ӳy���A�i�H�A�^�ӧ�ڡI" );
		else if ( mFace == -1 ) self->say( "Hum... Parece que voc?n�o tem o cupom espec�fico deste lugar. Desculpa dizer isso, mas, sem o cupom, nada de cirurgia pl�stica para voc?" );
		else if ( mFace == -3 ) self->say( "Desculpe, mas h?um problema aqui no hospital e temo que tenha que parar a cirurgia neste minuto. Por favor, volte depois." );
		else if ( mFace == 0 or mFace == -2 ) self->say( "��...�ݭn���|���d�~����i���Τ�N�C" );
	}
}

function s_NLC_LensVip(){

	  tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
	  
	  changeEye1 = tface;
	  changeEye2 = tface + 100;
	  changeEye3 = tface + 200;
	  changeEye4 = tface + 300;
	  changeEye5 = tface + 400;
	  changeEye6 = tface + 500;
	  changeEye7 = tface + 600;
	  changeEye8 = tface + 700;

  	  mFace = self->askAvatar( "�w����{�A�ڭ̴��ѤF�h�ؤ��P���y����ΪA�ȡC�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152036, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6, changeEye7, changeEye8 );

	if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
	else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
	else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
	else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
 
}

function s_NLC_LensExp(){

    nRet1 = self->askYesNo( "�A�n�A�w����{�C�Q�n�i��y���󴫶ܡH�p�G�A����a#b#t5152035##k�ڴN�i�H���A#b�H��#k�󴫳y���A���ˡA�n�i���N�ܡH" );
    if ( nRet1 == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����p�G�M�w�n�i���N�A�ЦA�^�ӧ�ڡC" );
    else if ( nRet1 == 1 )     {
	
      tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
	  
      changeEye1 = tface;
	  changeEye2 = tface + 100;
	  changeEye3 = tface + 200;
	  changeEye4 = tface + 300;
	  changeEye5 = tface + 400;
	  changeEye6 = tface + 500;
	  changeEye7 = tface + 600;
	  changeEye8 = tface + 700;

		mFace = self->makeRandAvatar( 5152035, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6, changeEye7, changeEye8 );

		if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
		else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
		else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
		else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
    }
  
}

--���� ��� ��??�ܰ�
function s_face_mureung1() {

	nRet = self->askMenu( "�w��Ө�Z����Τ�N���ߡIı�o�ۤv���y�������l�ޤH�ܡH�u�n�A��#b#t5152028##k�Ϊ�#b#t5152041##k�A�ڴN�i�H���A�i���N�åB�N�A��e���A���w���ˤl�A���ˡA�ݭn���@�تA�ȩO�H\r\n#b#L0# ���y�� (�ϥΰ��ž�Υd)#l\r\n#L1# �󴫲����C�� (�ϥΰ��ž�Υd)#l" );
  if ( nRet == 0 )  {
		teye = ( target->getFace() / 100 ) % 10 * 100;
		if ( target->getGender() == 0 ) 
		{
			changeFace1 = 20010 + teye;
			changeFace2 = 20000 + teye;
			changeFace3 = 20002 + teye;
			changeFace4 = 20004 + teye;
			changeFace5 = 20005 + teye;
			changeFace6 = 20006 + teye;
			changeFace7 = 20007 + teye;
			changeFace8 = 20012 + teye;
			changeFace9 = 20009 + teye;

			mFace = self->askAvatar( "�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152028, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9 );
		}
		else if ( target->getGender() == 1 ) 
		{
			changeFace1 = 21011 + teye;
			changeFace2 = 21000 + teye;
			changeFace3 = 21002 + teye;
			changeFace4 = 21003 + teye;
			changeFace5 = 21005 + teye;
			changeFace6 = 21006 + teye;
			changeFace7 = 21008 + teye;
			changeFace8 = 21012 + teye;
			changeFace9 = 21009 + teye;		
			mFace = self->askAvatar( "�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152028, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9 );
		}

		if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
		else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
		else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
		else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
  }
	
	if ( nRet == 1 )  {
		tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
		changeEye1 = tface;
		changeEye2 = tface + 100;
		changeEye3 = tface + 200;
		changeEye4 = tface + 300;
		changeEye5 = tface + 400;
		changeEye6 = tface + 500;
		changeEye7 = tface + 600;
		changeEye8 = tface + 700;
		mFace = self->askAvatar( "�u�n�A����a���ŷ|���d�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���G", 5152041, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6, changeEye7, changeEye8 );
		if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
		else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
		else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
		else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
	}
}

----���� �Ϲ� ��??�ܰ�
function s_face_mureung2() {
	nRet = self->askMenu( "�w����{�A�ڬO�o�̪������͡A�u�n�A����a#b#t5152027##k�Ϊ�#b#t5152042##k�ڴN�i�H���A�i���ΪA�ȡC\r\n#b#L0# ���y�� (�ϥΤ@���Υd)#l\r\n#L1# �󴫲����C�� (�ϥΤ@���Υd)#l" );
  if ( nRet == 0 ) 	{
		nRet1 = self->askYesNo( "�Q�n�i��y���󴫶ܡH�p�G�A����a#b#t5152027##k�ڴN�i�H���A#b�H��#k�󴫳y���A���ˡA�n�i���N�ܡH" );
		if ( nRet1 == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����p�G�M�w�n�i���N�A�ЦA�^�ӧ�ڡC");
		else if ( nRet1 == 1 ) {
			teye = ( target->getFace() / 100 ) % 10 * 100;
			if ( target->getGender() == 0 ) 
			{
				changeFace1 = 20009 + teye;
				changeFace2 = 20000 + teye;
				changeFace3 = 20002 + teye;
				changeFace4 = 20004 + teye;
				changeFace5 = 20005 + teye;
				changeFace6 = 20006 + teye;
				changeFace7 = 20007 + teye;
				changeFace8 = 20012 + teye;
			
				mFace = self->makeRandAvatar( 5152027, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8 );
			}
			else if ( target->getGender() == 1 ) 
			{
				changeFace1 = 21009 + teye;
				changeFace2 = 21000 + teye;
				changeFace3 = 21002 + teye;
				changeFace4 = 21003 + teye;
				changeFace5 = 21005 + teye;
				changeFace6 = 21006 + teye;
				changeFace7 = 21008 + teye;
				changeFace8 = 21012 + teye;
			
				mFace = self->makeRandAvatar( 5152027, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8 );
			}
				
			if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
		}
	}
	
	if ( nRet == 1 ) {	
		nRet1 = self->askYesNo( "�Q�n�i��y���󴫶ܡH�p�G�A����a#b#t5152042##k�ڴN�i�H���A#b�H��#k�󴫳y���A���ˡA�n�i���N�ܡH" );
    if ( nRet1 == 0 ) self->say( "�S���Y...���O���A�Ҽ{�M����p�G�M�w�n�i���N�A�ЦA�^�ӧ�ڡC" );
    else if ( nRet1 == 1 ) {
			tface = target->getFace() - ( target->getFace() / 100 ) % 10 * 100;
			changeEye1 = tface;
			changeEye2 = tface + 100;
			changeEye3 = tface + 200;
			changeEye4 = tface + 300;
			changeEye5 = tface + 400;
			changeEye6 = tface + 500;
			changeEye7 = tface + 600;
			changeEye8 = tface + 700;

			mFace = self->makeRandAvatar( 5152042, changeEye1, changeEye2, changeEye3, changeEye4, changeEye5, changeEye6, changeEye7, changeEye8 );

			if ( mFace == 1 ) self->say( "�����F�I���ˡA���o�ӷs���y���ٺ��N�a�H�èS���o��t��a�I" );
			else if ( mFace == -1 ) self->say( "Desculpe, mas acho que agora voc?n�o tem o cupom de nossas lentes de contato. Sem o cupom, sinto muito, mas n�o posso fazer isso para voc?" );
			else if ( mFace == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de fazer lentes de contato n�o est?funcionando agora. Por favor, volte depois. Me desculpe, de verdade!" );
			else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A�ݭn���|���d�~����i���Τ�N�C" );
    }
	}
}
----��� ��� ��??����
function s_face_shouwa1() {
  teye = ( target->getFace() / 100 ) % 10 * 100;
	if ( target->getGender() == 0 ) 
  {
  	changeFace1 = 20002 + teye;
	  changeFace2 = 20003 + teye;
	  changeFace3 = 20004 + teye;
	  changeFace4 = 20007 + teye;
	  changeFace5 = 20008 + teye;
	  changeFace6 = 20009 + teye;
	  changeFace7 = 20010 + teye;
	  changeFace8 = 20011 + teye;
  	changeFace9 = 20013 + teye;
	  changeFace10 = 20016 + teye;
	  changeFace11 = 20017 + teye;
    mFace = self->askAvatar( "�]����Ǫ��i�B�A�ڭ̥i�H�ߧY���A�i���ΡC�u�n�A����a#b#t5152009##k�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���C", 5152009, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
	}
	else if ( target->getGender() == 1 ) 
  {
	  changeFace1 = 21003 + teye;
	  changeFace2 = 21003 + teye;
	  changeFace3 = 21004 + teye;
	  changeFace4 = 21005 + teye;
	  changeFace5 = 21008 + teye;
	  changeFace6 = 21009 + teye;
	  changeFace7 = 21010 + teye;
	  changeFace8 = 21011 + teye;
  	changeFace9 = 21013 + teye;
	  changeFace10 = 21016 + teye;
	  changeFace11 = 21017 + teye;
	  mFace = self->askAvatar( "�]����Ǫ��i�B�A�ڭ̥i�H�ߧY���A�i���ΡC�u�n�A����a#b#t5152009##k�A�A�N�i�H��Φ��H�U�A�ҳ��w�����N���y���C", 5152009, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
	}
	if ( mFace == 1 ) self->say( "��N�w�g�����A�ڥ������o�u���D�`���A�X�A�A�Aı�o�O�H�p�G�A���¤F�o�ӳy���A�ЦA�^�Ӷi��㫬�a�C" );
	else if ( mFace == -1 ) self->say( "I'm afraid you don't have our designated plastic surgery coupon. I'm sorry, but without the coupon, there's no plastic surgery for you." );
	else if ( mFace == -3 ) self->say( "I'm afraid we have a problem here at the hospital and I can't go on with the procedure right this minute. Please come back later." );
	else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A���O�A������a�|���d�~����i���N�C" );
}

----��� �Ϲ� ��??����
function s_face_shouwa2() {
	nRet = self->askYesNo( "�p�G�A�ϥΤ@�몺��η|���d�A����A���~���N�|#b�H������#k�A�]�N�O���@���a�B��...�o�ˤ@�ӧA�ٷQ�ϥ�#b#t5152008##k�Ӷi���N�ܡH" );
	if ( nRet == 0 ) self->say( "���A�ѡA�A�i�H�A�h�h�Ҽ{�A���A���n�M�w�H��A�i�H�A�^�ӧ�ڡC" );
	else if ( nRet == 1 ) {
    teye = ( target->getFace() / 100 ) % 10 * 100;
		if ( target->getGender() == 0 ) 
	  {
  	  changeFace1 = 20002 + teye;
			changeFace2 = 20003 + teye;
			changeFace3 = 20004 + teye;
			changeFace4 = 20007 + teye;
			changeFace5 = 20008 + teye;
			changeFace6 = 20009 + teye;
			changeFace7 = 20010 + teye;
			changeFace8 = 20011 + teye;
  	  changeFace9 = 20013 + teye;	
	  	changeFace10 = 20016 + teye;
			changeFace11 = 20017 + teye;
      mFace = self->makeRandAvatar( 5152008, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}
		else if ( target->getGender() == 1 ) 
    {
			changeFace1 = 21003 + teye;
			changeFace2 = 21003 + teye;
			changeFace3 = 21004 + teye;
			changeFace4 = 21005 + teye;
			changeFace5 = 21008 + teye;
			changeFace6 = 21009 + teye;
			changeFace7 = 21010 + teye;
			changeFace8 = 21011 + teye;
			changeFace9 = 21013 + teye;
			changeFace10 = 21016 + teye;
			changeFace11 = 21017 + teye;
			mFace = self->makeRandAvatar( 5152008, changeFace1, changeFace2, changeFace3, changeFace4, changeFace5, changeFace6, changeFace7, changeFace8, changeFace9, changeFace10, changeFace11 );
		}
		if ( mFace == 1 ) self->say( "��N�w�g�����A�ݰ_���٤����a�H�p�G�A���¤F�o�ӳy���A�ЦA�^�Ӷi��㫬�a�C" );
		else if ( mFace == -1 ) self->say( "I'm afraid you don't have our designated regular plastic surgery coupon. I'm sorry, but without the regular coupon, there's no plastic surgery for you." );
		else if ( mFace == -3 ) self->say( "I'm afraid we have a problem here at the hospital and I can't go on with the procedure right this minute. Please come back later." );
		else if ( mFace == 0 or mFace == -2 ) self->say( "�D�`��p�A���O�A������a�|���d�~����i���N�C" );
	}
 }
