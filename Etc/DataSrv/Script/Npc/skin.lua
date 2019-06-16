require "./DataSrv/Script/sysDef"

--// Henesys Skin-care
function s_skin_henesys1() {
	self->sayNext( "�w����{�A�Q�n�󴫧A���ֽ��C������ۤv�ݰ_�ӧ󰷱d�ܡH�S���D�A�u�n�A����a#b#t5153000##k�A�ڴN�i�H���A��ֽ��C�⴫���A�ҳ��w���˦��I" );

	mHair = self->askAvatar( "��ܧA�ҳ��w���ֽ��C��A���ۧڭ̰��W�N�i�H�i���N�G", 5153000, 0, 1, 2, 3, 4 );
	
	if ( mHair == 1 ) self->say( "���ˡH�s������D�`�A�X�A��a�I�p�G�ٻݭn�A�ȡA�w��A�^�ӧ�ڡC" );
	else if ( mHair == -1 ) self->say( "Hum... voc?n�o tem o cupom de tratamento de pele que precisa para receber o tratamento. Desculpe, mas n�o podemos fazer." );
	else if ( mHair == -3 ) self->say( "Me desculpe. Parece que nossa m�quina de tratamento de pele n�o est?funcionando no momento. Por favor, volte mais tarde." );
	else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�S����a�@���|���d�A�ڵL�k���A�A�ȡC" );
}

--// Orbis Skin-care
function s_skin_orbis1() {
	self->sayNext( "�w����{�A�Q�n�󴫧A���ֽ��C������ۤv�ݰ_�ӧ󰷱d�ܡH�S���D�A�u�n�A����a#b#t5153001##k�A�ڴN�i�H���A��ֽ��C�⴫���A�ҳ��w���˦��I" );

	mHair = self->askAvatar( "��ܧA�ҳ��w���ֽ��C��A���ۧڭ̰��W�N�i�H�i���N�G", 5153001, 0, 1, 2, 3, 4 );
	
	if ( mHair == 1 ) self->say( "���ˡH�s������D�`�A�X�A��a�I�p�G�ٻݭn�A�ȡA�w��A�^�ӧ�ڡC" );
	else if ( mHair == -1 ) self->say( "Parece que voc?n�o tem o cupom que precisa para receber o tratamento. Sinto muito, mas parece que n�o poderemos fazer." );
	else if ( mHair == -3 ) self->say( "Parece que nossa m�quina de tratamento de pele n�o est?funcionando no momento. Por favor, volte daqui a pouquinho." );
	else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�S����a�@���|���d�A�ڵL�k���A�A�ȡC" );
}

--// Ludibrium Skin-care
function s_skin_ludi1() {
	self->sayNext( "�w����{�A�Q�n�󴫧A���ֽ��C������ۤv�ݰ_�ӧ󰷱d�ܡH�S���D�A�u�n�A����a#b#t5153002##k�A�ڴN�i�H���A��ֽ��C�⴫���A�ҳ��w���˦��I" );

	mHair = self->askAvatar( "��ܧA�ҳ��w���ֽ��C��A���ۧڭ̰��W�N�i�H�i���N�G", 5153002, 0, 1, 2, 3, 4 );
	
	if ( mHair == 1 ) self->say( "���ˡH�s������D�`�A�X�A��a�I�p�G�ٻݭn�A�ȡA�w��A�^�ӧ�ڡC" );
	else if ( mHair == -1 ) self->say( "Humm... Acho que voc?n�o tem nosso cupom de tratamento de pele no momento. Sem o cupom, desculpe, n�o poderei fazer." );
	else if ( mHair == -3 ) self->say( "Desculpe, mas parece que nossa m�quina de tratamento de pele n�o est?funcionando no momento. Por favor, volte mais tarde. Me desculpe, de verdade!" );
	else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�S����a�@���|���d�A�ڵL�k���A�A�ȡC" );
}

--// NLC Skin-care
function s_NLC_Skin() {
	self->sayNext( "�w����{�A�Q�n�󴫧A���ֽ��C������ۤv�ݰ_�ӧ󰷱d�ܡH�S���D�A�u�n�A����a#b#t5153009##k�A�ڴN�i�H���A��ֽ��C�⴫���A�ҳ��w���˦��I" );

	mHair = self->askAvatar( "��ܧA�ҳ��w���ֽ��C��A���ۧڭ̰��W�N�i�H�i���N�G", 5153009, 0, 1, 2, 3, 4 );
	
	if ( mHair == 1 ) self->say( "���ˡH�s������D�`�A�X�A��a�I�p�G�ٻݭn�A�ȡA�w��A�^�ӧ�ڡC" );
	else if ( mHair == -1 ) self->say( "Hum... voc?n�o tem o cupom de tratamento de pele que precisa para receber o tratamento. Desculpe, mas n�o podemos fazer." );
	else if ( mHair == -3 ) self->say( "Me desculpe. Parece que nossa m�quina de tratamento de pele n�o est?funcionando no momento. Por favor, volte mais tarde." );
	else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�S����a�@���|���d�A�ڵL�k���A�A�ȡC" );
}


--//���� ??�ΰ��� ��
function s_skin_mureung1() {
	self->sayNext( "�w����{�A�Q�n�󴫧A���ֽ��C������ۤv�ݰ_�ӧ󰷱d�ܡH�S���D�A�u�n�A����a#b#t5153006##k�A�ڴN�i�H���A��ֽ��C�⴫���A�ҳ��w���˦��I" );

	mHair = self->askAvatar( "��ܧA�ҳ��w���ֽ��C��A���ۧڭ̰��W�N�i�H�i���N�G", 5153006, 0, 1, 2, 3, 4 );
	
	if ( mHair == 1 ) self->say( "���ˡH�s������D�`�A�X�A��a�I�p�G�ٻݭn�A�ȡA�w��A�^�ӧ�ڡC" );
	else if ( mHair == -1 ) self->say( "Hum... voc?n�o tem o cupom de tratamento de pele que precisa para receber o tratamento. Desculpe, mas n�o podemos fazer." );
	else if ( mHair == -3 ) self->say( "Me desculpe. Parece que nossa m�quina de tratamento de pele n�o est?funcionando no momento. Por favor, volte mais tarde." );
	else if ( mHair == 0 or mHair == -2 ) self->say( "�藍�_�A�A�S����a�@���|���d�A�ڵL�k���A�A�ȡC" );
}
