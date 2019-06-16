require "./DataSrv/Script/sysDef"


function party2_takwawayitem() {
	inven = inventory;

	count1 = inven->itemCount( 4001022 );
	if ( count1 > 0 ) inven->exchange( 0, 4001022, -count1 );
	count2 = inven->itemCount( 4001023 );
	if ( count2 > 0 ) inven->exchange( 0, 4001023, -count2 );

	return;
}

--// ?����? : 2040034
function s_party2_enter() {
	if ( target->isPartyBoss() != 1 ) {
		self->say( "�Q�n�i�J�R���M�I�H�ΦU���D�Ԫ��a�ϬD�Բն����ȶܡH���O�n�D�Ԫ��㫰101�ն����ȡA��a�ۤv�@�ӤH�O���i�઺�A�ҥH�Х��[�J�����A�P�ڽ͸ܡC" );
		return;
	}
	setParty = FieldSet.get("Party2");
	if(setParty) 
	{
		inventory->exchange(0, 4001022, -10)
		ret = setParty->enter(userID); 
		if (ret == 1)
			self->say("�Q�n�i�J�R���M�I�H�ΦU���D�Ԫ��a�ϬD�Բն����ȶܡH���O�n�D�Ԫ��㫰101�ն����ȡA��a�ۤv�@�ӤH�O���i�઺�A�ҥH�Х��[�J�����A�P�ڽ͸ܡC");
		else if (ret == 2)
			self->say("�ж����P�ڽ͸ܡC");
		else if (ret == 3 or ret == 4)
			self->say("���i�檱�㫰101�ն����ȡA�z������H�Ʀܤ�#r5�H#k�A���Ŭɩ�#r36��50��#k�����A�åB�Ѷ����P�ڥ�͡I");
		else if (ret == 5)
			self->say("�w�g������ثe���b�D�Բն����ȡA�Ч��W�D�ε��ݶi�檺������C");
		else
			party2_takwawayitem();
	}
}

function party2_help() {
	field = self->getField();
	if ( field->getID() == 922010100 ) self->say( "�w��Ө��1���d�C�b�o�Ӧa�Ϥ��|�B�R���۩Ǫ��A���˳o�ǩǪ��i�H��o#b#t4001022##k�A���M�o�ǩǪ��ݰ_�Ӣ̤��`���A���o�֦���j�j���O�q�A�]���d�U���໴�ġC\r\n�ЧA�̦P�ߨ�O����#b25�i#t4001022##k�A�åB�Τ@�Ѷ����浹�ڡA�@���ƶq���T�A�N�i�H�e���U�@�����d�A���A�̦n�B�I" );
	else if ( field->getID() == 922010200 ) self->say( "�w��Ө��2���d�C�b�o�Ӧa�Ϥ��A�i�H�ݨ�n�X�ӽc�l�A���}�o�ǽc�l�i��|��o#b#t4001022##k�Ϊ̳Q�ǰe�����æa�Ϥ��C�Ш�U�B�`��#b15�i#t4001022##k�A�åB�Ѷ����Τ@�浹�ڡC�Y�ϳQ�ǰe��F���æa�ϡA���M�i�H���|����#t4001022#���c�l�A�p�G�A���}�F���æa�ϱN�L�k�A�צ^�h�A�ҥH�p�G�S����Ҧ���#t4001022#�a�X�ӡA���u�୫�s�}�l���ȡI" );
	else if ( field->getID() == 922010300 ) self->say( "�w��Ө��3���d�C�b�o�Ӧa�Ϥ��R���۩Ǫ��P�c�l�A�p�G�A���ѤF�o�ǩǪ��A���̷|����#b#t4001022##k�A�Ӧp�G�A���}�F�c�l�A�h�|�l��|�����ۦP���~���Ǫ��C�ЧA�̻`���Ҧ���#b#t4001022##k�C���T���ƶq�ڤw�g�i���������A�����̥i�H�����@�_�`����Τ@�浹�����A�åB��浹�ڡA���A�̦n�B�I" );
	else if ( field->getID() == 922010400 ) self->say( "�w��Ө��4���d�C�b�U���A�i�H�o�{���ƭӳq���·t�Ŷ����J�f�A�b���ӪŶ��̭����ۦW��#b#o9300008##k���Ǫ��C�o�ǩǪ��è���·t�����A���H��ı�A�p�G�A�S���J�ӴM��A�ܮe���N�|�������̡C�ЧA�����ѩҦ����Ǫ��A�åB�`��#b6�i#t4001022##k���ڡA�p�G�o�{�`�����ƶq����A�@�w�O�S���J�Ӫ��M��#b#o9300008##k�A�����è���·t�����A�Ч�[�@�ߪ��[��C���A�̦n�B�I" );
	else if ( field->getID() == 922010500 ) self->say( "�w��Ө��5���d�C�b�o�̧A�i�H�ݨ�n�X�ӳq�����æa�Ϫ��J�f�A�ЧA�̫e�����P�����æa�ϻ`��#b24�i#t4001022##k�C�Ъ`�N�G���ǤJ�f�u���S�w¾�~�~����k�i�J�A�Ҧp�䤤�@�ӤJ�f�~��Q�Ǫ�#b#o9300013##k���׵ۡA�u���s��~���i��q�L�A�ӥt�@�ӤJ�f�]�u���k�v¾�~�����F�A�`���A���A�̦n�B�I" );
	else if ( field->getID() == 922010600 ) self->say( "�w��Ө��6���d�C�b�o�̧A�i�H�ݨ�L�ۼƦr���c�l�A�䤤�@�ǽc�l�i�H�q���󰪪��x���A�Ӭ۹諸�A���ǫh�i���A�e�^�_�l�I�C�C�Ч��o�T���c�l�զX�A�åB��F�a�ϳ̳��ݡA���A�̦n�B�F�I" );
	else if ( field->getID() == 922010700 ) self->say( "�w��Ө��7���d�C�b�o�����d�����۲��`�j�j��#b#o9300010##k�A�ЧA�̦P�ߨ�O���ѥ��̡A�åB�`���Ҧ���#b#t4001022##k���ڡC�n�l��X#o9300010#�A�������λ��Z���������˽c�l���񪺩Ǫ��A�~�|�l��X���̡C�o�ǩǪ��D�`�j�j�A�аȥ��p���ԷV�H�K�����ˡI���A�̦n�B�I" );
	else if ( field->getID() == 922010800 ) self->say( "�w��Ө��8���d�C�b���x���̳��ݦ��q���U�@�����d���c�l�A�ЧA�̦b�o�ǽc�l����X5�ӽc�l�Ӳզ����T�����סA�åB���b�o�ǽc�l�W���A���ۥѶ����Ӹ�ڽT�{���׬O�_���T�C�Ъ`�N�A#r���c�l�ӻ��Ϊ̯�������t#k�i�ण�|�Q��J���פ��A�Фp�ߡI" );
	else if ( field->getID() == 922010900 ) self->say( "�w��Ө��9���d�C�o�̬O�̫᪺�D�ԤF�A�ЧA�̧�k�䪺�Ǫ����ˡA���۷|�l��X�i�Ȫ�#b#o9300012##k�C�ЧA�̦P�ߨ�O�⥦���ѡA�åB���^#b#t4001023##k���ڡA�o�˴N�৹����ӥ��ȡA�ӧڴN�i�H�e�A�����}�A�ЧA�̤p�ߡA�o�өǪ��̤��j�j�I���A�̦n�B�I" );
	else if ( field->getID() == 922011000 ) self->say( "���ߧA�̨Ө�F���y���d�I�u�����۫H�A�̯u�����ѤF#b#o9300012##k�I�b�o�Ӧa�Ϥ��A�̥i�H�ݨ��B�R���۽c�l�A�c�l�̭��˵���ߵ��ۧA�̡I�ɶ����h�F�A�������}�c�l�`���_���a�I�p�G�A�B����n�A�����w�ٯ�`������Ȥ������Z���O�I" );
}

function check_stage( st, checkall ) {
	quest = FieldSet.get("Party2");
	stage = quest->getVar( "stage" );
	if ( stage != st ) {
		self->say( "���d�w�g�����A�q���U�@�����d���ǰe���w�g�}�ҡA�Х[��}�B�e���C" );
		return 0;
	}

	field = self->getField();
	if ( checkall == 1 and quest->getUserCount() != field->getUserCount() ) {
		self->say( "�Ҧ�������������b���C" );
		return 0;
	}
	return 1;
}

function area_check( num, user ) {
	field = self->getField();
	count = 0;
	answer = "";
	for i = 1, num  {
		cur = field->countUserInArea( string( i-1 ) );
		count = count + cur;
		answer = answer + string( cur );
	}
	if ( count == user ) return answer;
	return "";
}

--// ���� ���� : 2040036
function party2_stage1() {
	quest = FieldSet.get("Party2");
	stage = quest->getVar( "stage" );
	if ( stage == "" ) {
		quest->setVar( "stage", "1" );
		self->say( "�w��Ө�Ĥ@���d�A�b�o�̧A�i�H�ݨ�|�B�R���۩Ǫ��A�ЧA���ѩҦ����Ǫ��åB����#b25�i#t4001022##k�A�åB�浹�ڡC������i�H���u�X�@�`��#t4001022#�A�åB�Τ@�Ѷ����浹�ڡC�o�ǩǪ����M�ݰ_�ӫD�`���x�A���i���A�w�����٭n��[�j�j�A�аȥ��p�ߡI" );
		return;
	}
	if ( stage != "1" ) {
		self->say( "���ߧA�����F�Ĥ@���q�����d�A�ǰe���w�g�}�ҡA�л���i�J�U�@�����d�C" );
		return;
	}	

	inven = inventory;
	if ( inven->itemCount( 4001022 ) < 25 ) self->say( "�w��Ө�Ĥ@���d�A�b�o�̧A�i�H�ݨ�|�B�R���۩Ǫ��A�ЧA���ѩҦ����Ǫ��åB����#b25�i#t4001022##k�A�åB�浹�ڡC������i�H���u�X�@�`��#t4001022#�A�åB�Τ@�Ѷ����浹�ڡC�o�ǩǪ����M�ݰ_�ӫD�`���x�A���i���A�w�����٭n��[�j�j�A�аȥ��p�ߡI" );
	else {
		if ( inven->exchange( 0, 4001022, -25 ) != 0 ) {
			self->say( "�A���W���G�S��#b25�i#t4001022##k�C�нT�{�ƶq���T��A�P�ڥ�͡I" );
			return;
		}
		field = self->getField();
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		field->enablePortal( "next00", 1 );
		quest->setVar( "stage", "2" );
		quest->incExpAll( 3000, 7010 );
		self->say( "�q���U�@�����d���ǰe���w�g�}�ҡA�л��򩹤U�@�����d���ʡC" );
		return;
	}
}

--// ������ ���� : 2040037
function party2_stage2() {
	if ( check_stage( "2", 1 ) == 0 ) return;

	quest = FieldSet.get("Party2");	

	inven = inventory;
	if ( inven->itemCount( 4001022 ) < 15 ) self->say( "�١I�w��Ө�ĤG���d�C�b�U���A�i�H�ݨ�ƭӽc�l�A���}�o�ǽc�l�i��Q�ǰe�����æa�ϩΪ���o#t4001022#�C�Ч�X#b15�i#t4001022##k�åB�浹�ڡC������̥i�H�@�P�`��#t4001022#�A�åB�Τ@�Ѷ����浹�ڧY�i�A���A�̦n�B�I" );
	else {
		if ( inven->exchange( 0, 4001022, -15 ) != 0 ) {
			self->say( "�A���W���G�S��#b15�i#t4001022#s#k�C�нT�{�ƶq���T��A�P�ڥ�͡I" );
			return;
		}
		field = self->getField();
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		field->enablePortal( "next00", 1 );
		quest->setVar( "stage", "3" );
		quest->incExpAll( 3600, 7010 );
		self->say( "�q���U�@�����d���ǰe���w�g�}�ҡA�л��򩹤U�@�����d���ʡC" );
		return;
	}
}

--// ���ο� ���� : 2040038
function party2_stage3() {
	if ( check_stage( "3", 1 ) == 0 ) return;

	quest = FieldSet.get("Party2");	

	inven = inventory;
	if ( inven->itemCount( 4001022 ) != 32 ) self->say( "�١I�w��Ө�ĤT���d�C�b�o�̧A�i�H�ݨ�|�B�R���۩Ǫ��P�c�l�C�o�ǩǪ��|����#b#t4001022##k�A�N�p�P��L���d�C�p�G�c�l�Q���}�A�]�|�l��X�ۦP���Ǫ��C�o�����d�ݭn�`����#b#t4001022##k�ƶq�O�H�U�D�ت����סG\r\n�а�#r��ߪ̪�l��q ��h �k�v�@��̧C���� �A��h �s��@��̧C����#k�O�h�֡H�л`���P���׬ۦP�ƶq��#b#t4001022##k���ڡC������̥i�H���u�X�@�@�_�`���A�̫�A�Ѷ����浹�ڧY�i�I���A�̦n�B�C" );
	else {
		if ( inven->exchange( 0, 4001022, -32 ) != 0 ) {
			self->say( "�A���W���G�S��#b32�i#t4001022##k�C�нT�{�ƶq���T��A�P�ڥ�͡I" );
			return;
		}
		field = self->getField();
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		field->enablePortal( "next00", 1 );
		quest->setVar( "stage", "4" );
		quest->incExpAll( 4200, 7010 );
		self->say( "�q���U�@�����d���ǰe���w�g�}�ҡA�л��򩹤U�@�����d���ʡC" );
		return;
	}
}

--// ���ο�׸� ���� : 2040039
function party2_stage4() {
	if ( check_stage( "4", 1 ) == 0 ) return;

	quest = FieldSet.get("Party2");

	inven = inventory;
	if ( inven->itemCount( 4001022 ) < 6 ) self->say( "�١A�w��Ө�@�|���d�C�b�U�����ƭӳq���·t�Ŷ����J�f�A�b�̭����õ�#b#o9300008##k�C�o�ǩǪ��|�u�ȥX�{�åB���W�����A�ҥH������ı�C�����ѳo�ǩǪ��B����#b6�i#t4001022##k�C\r\n�аO��A�N���ڻ����A�o�ǩǪ�������ı�A�]�������J�ӨåB�@�ߦa�b�·t���[��A������̥i�H�X�@����#b#t4001022##k�A�åB�Τ@����������A�浹�ڡC���A�̦n�B�F�I" );
	else {
		if ( inven->exchange( 0, 4001022, -6 ) != 0 ) {
			self->say( "�A���W���G�S��#b6�i#t4001022##k�C�нT�{�ƶq���T��A�P�ڥ�͡I" );
			return;
		}
		field = self->getField();
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		field->enablePortal( "next00", 1 );
		quest->setVar( "stage", "5" );
		quest->incExpAll( 4800, 7010 );
		self->say( "�q���U�@�����d���ǰe���w�g�}�ҡA�л��򩹤U�@�����d���ʡC" );
		return;
	}
}

--// �׸� ���� : 2040040
function party2_stage5() {
	if ( check_stage( "5", 1 ) == 0 ) return;

	quest = FieldSet.get("Party2");

	inven = inventory;
	if ( inven->itemCount( 4001022 ) < 24 ) self->say( "�١A�w��Ө�Ĥ����d�I�b�o�Ӧa�Ϥ����X�ӳq����L���æa�Ϫ��J�f�A�ЧA�̨�U�Ӧa�Ϥ��`��#b24�i#t4001022##k�åB�a�^�ӵ��ڡC�Ъ`�N�A���ǤJ�f�u���S�w¾�~�~����i�J�`��#b#t4001022##k�C�Ҧp�䤤�@�ӤJ�f���~�A���W��#b#o9300013##k���Ǫ����׵ۡA�u���s�����{�����̡C�ӥt�@�����A�u���k�v¾�~�~�����F�A�`���A���A�̦n�B�I" );
	else {
		if ( inven->exchange( 0, 4001022, -24 ) != 0 ) {
			self->say( "�A���W���G�S��#b24 #t4001022#s#k�C�нT�{�ƶq���T��A�P�ڥ�͡I" );
			return;
		}
		field = self->getField();
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		field->enablePortal( "next00", 1 );
		quest->setVar( "stage", "7" );
		quest->incExpAll( 5400, 7010 );
		self->say( "�q���U�@�����d���ǰe���w�g�}�ҡA�л��򩹤U�@�����d���ʡC" );
		return;
	}
}

--// ����� ���� : 2040041
function party2_stage6() {
	--qr = target.questRecord;
	val = qr->get( 7011 );
	quest = FieldSet.get("Party2");
	field = self->getField();

	if ( quest->getUserCount() != field->getUserCount() ) {
		self->say( "�нT�O�Ҧ��������b���C" );
		return;
	}

	if ( val == "" ) {
		qr->setState( 7011, 1, "1" );
		self->say( "�١I�w��Ө�Ĥ����d�C�b�o�̧A�i�H�ݨ�L�ۼƦr���c�l�A�䤤�@�ǽc�l�i�H�q���󰪪��x���A�Ӭ۹諸�A���ǫh�i���A�e�^�_�l�I�C�Ч��o�T���c�l�զX�A�åB��F�a�ϳ̳��ݡA���A�̦n�B�F�I\r\n\r\n����H�ݭn�ڴ��ܶܡH�n�a�A����A�аO��G#r1�V3�V3�V2�V2�V1�V3�V3�V3�V1�V2�V3�V1�V1�V1#k" );	
	}
	else if ( val == "1" ) {
		qr->setState( 7011, 1, "e" );
		self->say( "�١I�w��Ө�Ĥ����d�C�b�o�̧A�i�H�ݨ�L�ۼƦr���c�l�A�䤤�@�ǽc�l�i�H�q���󰪪��x���A�Ӭ۹諸�A���ǫh�i���A�e�^�_�l�I�C�Ч��o�T���c�l�զX�A�åB��F�a�ϳ̳��ݡA���A�̦n�B�F�I#k\r\n\r\n����H�ݭn�ڴ��ܶܡH�n�a�A����A�Шc�O�G#r1�V3�V3�V2�V2�V1�V3�V3�V3�V1�V2�V3�V1�V1�V1#k�A�o�O�̫�@�����|�F�I" );	
	}
	else self->say( "�١I�w��Ө�Ĥ����d�C�b�o�̧A�i�H�ݨ�L�ۼƦr���c�l�A�䤤�@�ǽc�l�i�H�q���󰪪��x���A�Ӭ۹諸�A���ǫh�i���A�e�^�_�l�I�C�C�Ч��o�T���c�l�զX�A�åB��F�a�ϳ̳��ݡA���A�̦n�B�F�I#k\r\n\r\n�藍�_�A�̦h�u�ണ�ܨ⦸�I" );	
}

--// ��ī�̺�� ���� : 2040042
function party2_stage7() {
	if ( check_stage( "7", 1 ) == 0 ) return;

	quest = FieldSet.get("Party2");

	inven = inventory;
	if ( inven->itemCount( 4001022 ) < 3 ) self->say( "�w��Ө�ĤC���d�I�b�o�����d���R����#b#o9300010##k�o�Ǳj�j���Ǫ��A�ЧA�����ѳo�ǩǪ��åB�`���Ҧ���#b#t4001022##k�C\r\n�S���ݨ�#o9300010#�ܡH�����ϥλ��Z���������ѤW�����Ǫ��A�åBĲ�o�c�l��N�|�l��X�o�Ǳj�j���Ǫ��C�аȥ��p���ԷV�A�o�ǩǪ��u���D�`�j�j�A�@���p�ߴN�|���˪��I���A�̦n�B�F�I" );
	else {
		if ( inven->exchange( 0, 4001022, -3 ) != 0 ) {
			self->say( "�A���W���G�S��#b3 #t4001022#s#k�C�нT�{�ƶq���T��A�P�ڥ�͡I" );
			return;
		}
		field = self->getField();
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		field->enablePortal( "next00", 1 );
		quest->setVar( "stage", "8" );
		quest->incExpAll( 6600, 7010 );
		self->say( "�q���U�@�����d���ǰe���w�g�}�ҡA�л��򩹤U�@�����d���ʡC" );
		return;
	}
}

function make_area_answer(numCount, answerCount) {
    rndSeq = randomSeq(1, numCount);
    ret = "";
    for k, v in pairs(rndSeq) {
        if(v > answerCount)
            ret = ret .. '0';
        else
            ret = ret .. '1';
    }
    return ret;
}

function area_check(areaCount, answerCount) {
    ret = "";
    areaCount = areaCount - 1;
    count = 0;
    for i = 0, areaCount {
        inArea = field->countUserInArea(i);
        count = count + inArea;
        ret = ret .. inArea;
    }
    if(count != answerCount) 
        return "";
    return ret;
}

--// ��� ���� : 2040043
function party2_stage8() {
	if ( check_stage( "8", 1 ) == 0 ) return;

	quest = FieldSet.get("Party2");
	question = quest->getVar( "ans" );
	if ( question == "" ) {
		quest->setVar( "ans", make_area_answer( 9, 5 ) );
		self->say( "�w��Ө�ĤK���d�C�b�o��A�i�H�ݨ�ƭӽc�l�A�䤤#b5#k�ӽc�l����}�ҳq���U�@�����d���ǰe�I�A�нT�O#b5#k�춤��������b���P���c�l�W�A�åB�Ѷ����ӻP�ڽT�{���סC�Ъ`�N�A�����Ӿa����t�i�ण�|�Q�p��쵪�פ��A���A�̦n�B�I" );
		return;
	}

	field = self->getField();
	answer = area_check( 9, 5 );

	if ( answer == "" ) self->say( "�ڷQ�A�̨èS����X5�ӥ��T���c�l�զX�A�ЦA�h�[���աC�аO��A�����n��5�즨�����O���b���P���c�l�W�A�p�G�����������I�ӻ��A�i�ण�|�Q�p��J���פ��A���A�n�B�I" );
	else if ( question != answer ) {
		field->effectScreen( "quest/party/wrong_kor" );
		field->effectSound( "Party1/Failed" );
	}
	else {
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		field->enablePortal( "next00", 1 );
		quest->setVar( "stage", "9" );
		quest->incExpAll( 7200, 7010 );
	}
}

--// ���̿÷� ���� : 2040043
function party2_stage9() {
	if ( check_stage( "9", 1 ) == 0 ) return;

	quest = FieldSet.get("Party2");

	inven = inventory;
	if ( inven->itemCount( 4001023 ) < 1 ) self->say( "�S�Q��A�̳��M�����F�o�̡I�{�b�A�o�O�̫᪺�D�ԤF�C�ݬݥk�䪺���x�W�A���@���Ǫ��A�бN�L���ˡA���۷|�l��X�i�Ȫ�#b#o9300012##k�C�o�өǪ��D�`���j�j�i�ȡA�����n�ζ������P�ߨ�O�~���i�ॴ�ѥ��I\r\n�A�̪����ȴN�O���ѥ��A�åB���^#b#t4001023##k�ña�ӵ��ڡA�ڴN����N�A�̰e���o�̡A�ڬ۫H�A�̿쪺�쪺�A���A�̦n�B�I" );
	else {
		if ( inven->exchange( 0, 4001023, -1 ) != 0 ) {
			self->say( "�A���W���G�S��#b#t4001022##k�C�нT�{�ƶq���T��A�P�ڥ�͡I" );
			return;
		}
		field = self->getField();
		field->effectScreen( "quest/party/clear" );
		field->effectSound( "Party1/Clear" );
		field->effectObject( "gate" );
		quest->setVar( "stage", "clear" );		
		quest->incExpAll( 8500, 7010 );
		quest->transferAll(922011000, "");
		--setParty = FieldSet( "Party4" );
		--res = setParty.enter( target.nCharacterID, 0 );
		--if ( res == -1 or res == 4 ) self->say( "Tenho motivos para n�o deixar voc?entrar. Por favor, tente mais tarde." );
		--if ( res == 1 ) self->say( "Acho que voc?n�o est?em um grupo. Voc?precisa estar em um grupo para participar desta miss�o." );
		return;
	}
}

--// ����
function party2_reward() {
	self->say( "���ߧA�̧����F�Ҧ����d�I�گu���D�`�تA�A�̡I�b�A�̨ɨ��ӧQ���P�ɡA�ڤ]�Q�e�A�̤@�Ǥp§���@���^���A�b�������e�A�нT�{�A���I�]���٦����������C" );

	inven = inventory;
	if ( inven->slotCount( 2 ) > inven->holdCount( 2 ) and inven->slotCount( 4 ) > inven->holdCount( 4 ) ) {
		rnum = random( 0, 250 );
		nNewItemID = 0;
		nNewItemNum = 0;
		if ( rnum == 0 ) { nNewItemID = 2000004; nNewItemNum = 10; }
		else if ( rnum == 1 ) { nNewItemID = 2000002; nNewItemNum = 100; }
		else if ( rnum == 2 ) { nNewItemID = 2000003; nNewItemNum = 100; }
		else if ( rnum == 3 ) { nNewItemID = 2000006; nNewItemNum = 30; }
		else if ( rnum == 4 ) { nNewItemID = 2022000; nNewItemNum = 30; }
		else if ( rnum == 5 ) { nNewItemID = 2022003; nNewItemNum = 30; }
		else if ( rnum == 6 ) { nNewItemID = 2040002; nNewItemNum = 1; }
		else if ( rnum == 7 ) { nNewItemID = 2040402; nNewItemNum = 1; }
		else if ( rnum == 8 ) { nNewItemID = 2040502; nNewItemNum = 1; }
		else if ( rnum == 9 ) { nNewItemID = 2040505; nNewItemNum = 1; }
		else if ( rnum == 10 ) { nNewItemID = 2040602; nNewItemNum = 1; }
		else if ( rnum == 11 ) { nNewItemID = 2040802; nNewItemNum = 1; }
		else if ( rnum == 12 ) { nNewItemID = 4003000; nNewItemNum = 50; }
		else if ( rnum == 13 ) { nNewItemID = 4010000; nNewItemNum = 15; }
		else if ( rnum == 14 ) { nNewItemID = 4010001; nNewItemNum = 15; }
		else if ( rnum == 15 ) { nNewItemID = 4010002; nNewItemNum = 15; }
		else if ( rnum == 16 ) { nNewItemID = 4010003; nNewItemNum = 15; }
		else if ( rnum == 17 ) { nNewItemID = 4010004; nNewItemNum = 15; }
		else if ( rnum == 18 ) { nNewItemID = 4010005; nNewItemNum = 15; }
		else if ( rnum == 19 ) { nNewItemID = 4010006; nNewItemNum = 10; }
		else if ( rnum == 20 ) { nNewItemID = 4020000; nNewItemNum = 15; }
		else if ( rnum == 21 ) { nNewItemID = 4020001; nNewItemNum = 15; }
		else if ( rnum == 22 ) { nNewItemID = 4020002; nNewItemNum = 15; }
		else if ( rnum == 23 ) { nNewItemID = 4020003; nNewItemNum = 15; }
		else if ( rnum == 24 ) { nNewItemID = 4020004; nNewItemNum = 15; }
		else if ( rnum == 25 ) { nNewItemID = 4020005; nNewItemNum = 15; }
		else if ( rnum == 26 ) { nNewItemID = 4020006; nNewItemNum = 15; }
		else if ( rnum == 27 ) { nNewItemID = 4020007; nNewItemNum = 6; }
		else if ( rnum == 28 ) { nNewItemID = 4020008; nNewItemNum = 6; }
		else if ( rnum == 29 ) { nNewItemID = 1032002; nNewItemNum = 1; }
		else if ( rnum == 30 ) { nNewItemID = 1032011; nNewItemNum = 1; }
		else if ( rnum == 31 ) { nNewItemID = 1032008; nNewItemNum = 1; }
		else if ( rnum == 32 ) { nNewItemID = 1102011; nNewItemNum = 1; }
		else if ( rnum == 33 ) { nNewItemID = 1102012; nNewItemNum = 1; }
		else if ( rnum == 34 ) { nNewItemID = 1102013; nNewItemNum = 1; }
		else if ( rnum == 35 ) { nNewItemID = 1102014; nNewItemNum = 1; }
		else if ( rnum == 36 ) { nNewItemID = 2040803; nNewItemNum = 1; }
		else if ( rnum == 37 ) { nNewItemID = 2070011; nNewItemNum = 1; }
		else if ( rnum == 38 ) { nNewItemID = 2043001; nNewItemNum = 1; }
		else if ( rnum == 39 ) { nNewItemID = 2043101; nNewItemNum = 1; }
		else if ( rnum == 40 ) { nNewItemID = 2043201; nNewItemNum = 1; }
		else if ( rnum == 41 ) { nNewItemID = 2043301; nNewItemNum = 1; }
		else if ( rnum == 42 ) { nNewItemID = 2043701; nNewItemNum = 1; }
		else if ( rnum == 43 ) { nNewItemID = 2043801; nNewItemNum = 1; }
		else if ( rnum == 44 ) { nNewItemID = 2044001; nNewItemNum = 1; }
		else if ( rnum == 45 ) { nNewItemID = 2044101; nNewItemNum = 1; }
		else if ( rnum == 46 ) { nNewItemID = 2044201; nNewItemNum = 1; }
		else if ( rnum == 47 ) { nNewItemID = 2044301; nNewItemNum = 1; }
		else if ( rnum == 48 ) { nNewItemID = 2044401; nNewItemNum = 1; }
		else if ( rnum == 49 ) { nNewItemID = 2044501; nNewItemNum = 1; }
		else if ( rnum == 50 ) { nNewItemID = 2044601; nNewItemNum = 1; }
		else if ( rnum == 51 ) { nNewItemID = 2044701; nNewItemNum = 1; }
		else if ( rnum == 52 ) { nNewItemID = 2000004; nNewItemNum = 15; }
		else if ( rnum == 53 ) { nNewItemID = 2000002; nNewItemNum = 80; }
		else if ( rnum == 54 ) { nNewItemID = 2000003; nNewItemNum = 80; }
		else if ( rnum == 55 ) { nNewItemID = 2000006; nNewItemNum = 25; }
		else if ( rnum == 56 ) { nNewItemID = 2022000; nNewItemNum = 25; }
		else if ( rnum == 57 ) { nNewItemID = 2022003; nNewItemNum = 25; }
		else if ( rnum == 58 ) { nNewItemID = 4003000; nNewItemNum = 55; }
		else if ( rnum == 59 ) { nNewItemID = 4010000; nNewItemNum = 12; }
		else if ( rnum == 60 ) { nNewItemID = 4010001; nNewItemNum = 12; }
		else if ( rnum == 61 ) { nNewItemID = 4010002; nNewItemNum = 12; }
		else if ( rnum == 62 ) { nNewItemID = 4010003; nNewItemNum = 12; }
		else if ( rnum == 63 ) { nNewItemID = 4010004; nNewItemNum = 12; }
		else if ( rnum == 64 ) { nNewItemID = 4010005; nNewItemNum = 12; }
		else if ( rnum == 65 ) { nNewItemID = 4010006; nNewItemNum = 8; }
		else if ( rnum == 66 ) { nNewItemID = 4020000; nNewItemNum = 12; }
		else if ( rnum == 67 ) { nNewItemID = 4020001; nNewItemNum = 12; }
		else if ( rnum == 68 ) { nNewItemID = 4020002; nNewItemNum = 12; }
		else if ( rnum == 69 ) { nNewItemID = 4020003; nNewItemNum = 12; }
		else if ( rnum == 70 ) { nNewItemID = 4020004; nNewItemNum = 12; }
		else if ( rnum == 71 ) { nNewItemID = 4020005; nNewItemNum = 12; }
		else if ( rnum == 72 ) { nNewItemID = 4020006; nNewItemNum = 12; }
		else if ( rnum == 73 ) { nNewItemID = 4020007; nNewItemNum = 4; }
		else if ( rnum == 74 ) { nNewItemID = 4020008; nNewItemNum = 4; }
		else if ( rnum == 75 ) { nNewItemID = 2040001; nNewItemNum = 1; }
		else if ( rnum == 76 ) { nNewItemID = 2040004; nNewItemNum = 1; }
		else if ( rnum == 77 ) { nNewItemID = 2040301; nNewItemNum = 1; }
		else if ( rnum == 78 ) { nNewItemID = 2040401; nNewItemNum = 1; }
		else if ( rnum == 79 ) { nNewItemID = 2040501; nNewItemNum = 1; }
		else if ( rnum == 80 ) { nNewItemID = 2040504; nNewItemNum = 1; }
		else if ( rnum == 81 ) { nNewItemID = 2040601; nNewItemNum = 1; }
		else if ( rnum == 82 ) { nNewItemID = 2040601; nNewItemNum = 1; }
		else if ( rnum == 83 ) { nNewItemID = 2040701; nNewItemNum = 1; }
		else if ( rnum == 84 ) { nNewItemID = 2040704; nNewItemNum = 1; }
		else if ( rnum == 85 ) { nNewItemID = 2040707; nNewItemNum = 1; }
		else if ( rnum == 86 ) { nNewItemID = 2040801; nNewItemNum = 1; }
		else if ( rnum == 87 ) { nNewItemID = 2040901; nNewItemNum = 1; }
		else if ( rnum == 88 ) { nNewItemID = 2041001; nNewItemNum = 1; }
		else if ( rnum == 89 ) { nNewItemID = 2041004; nNewItemNum = 1; }
		else if ( rnum == 90 ) { nNewItemID = 2041007; nNewItemNum = 1; }
		else if ( rnum == 91 ) { nNewItemID = 2041010; nNewItemNum = 1; }
		else if ( rnum == 92 ) { nNewItemID = 2041013; nNewItemNum = 1; }
		else if ( rnum == 93 ) { nNewItemID = 2041016; nNewItemNum = 1; }
		else if ( rnum == 94 ) { nNewItemID = 2041019; nNewItemNum = 1; }
		else if ( rnum == 95 ) { nNewItemID = 2041022; nNewItemNum = 1; }
		else if ( rnum >= 96 and rnum <= 150 ) { nNewItemID = 2000004; nNewItemNum = 10; }
		else if ( rnum >= 151 and rnum <= 200 ) { nNewItemID = 2000002; nNewItemNum = 100; }
		else { nNewItemID = 2000003; nNewItemNum = 100; }

		count1 = inven->itemCount( 4001022 );
		if ( count1 > 0 ) {
			if ( inven->exchange( 0, 4001022, -count1 ) != 0 ) {
				self->say( "�A���W�٦�#t4001022#�ܡH�бN���̥浹�ڡC" );
				return;
			}
		}
		count2 = inven->itemCount( 4001023 );
		if ( count2 > 0 ) {
			if ( inven->exchange( 0, 4001023, -count2 ) != 0 ) {
				self->say( "�A���W�٦�#t4001023#�ܡH�бN���̥浹�ڡC" );
				return;
			}
		}

		ret = inven->exchange( 0, nNewItemID, nNewItemNum );
		if ( ret != 0 ) self->say( "��...�A�T�w�A���I�]�٦��Ѿl���Ŷ��ܡH�p�G�I�]�w���ڴN�L�k���A������y�F..." );
		else {
			--qr = target.questRecord;
			qr->setState( 7010, 1, "1" );
			qr->setState( 7011, 0 );
			target->transferField( 221024500, "" );
		}
	}
	else self->say( "�нT�O�A�����ӻP��L���٦��������Ŷ��A�_�h�ڱN�L�k���A���y�C" );
}

--// ���� - ���� ��?? NPC
function s_party2_play() {
	field = self->getField();
	quest = FieldSet.get("Party2");

	--// ����
	if ( field->getID() == 922011100 ) {
		party2_reward();
		return;
	}

	if ( target->isPartyBoss() != 1 ) party2_help();
	else {
		if ( field->getID() == 922010100 ) party2_stage1();
		else if ( field->getID() == 922010200 ) party2_stage2();
		else if ( field->getID() == 922010300 ) party2_stage3();
		else if ( field->getID() == 922010400 ) party2_stage4();
		else if ( field->getID() == 922010500 ) party2_stage5();
		else if ( field->getID() == 922010600 ) party2_stage6();
		else if ( field->getID() == 922010700 ) party2_stage7();
		else if ( field->getID() == 922010800 ) party2_stage8();
		else if ( field->getID() == 922010900 ) party2_stage9();
		else if ( field->getID() == 922011000 ) party2_help();
	}
}

--// ���� �ش��� - ��������ִ� NPC
function s_party2_out() {
	--qr = target.questRecord;
	field = self->getField();

	if ( field->getID() == 922010000 ) {
		inven = inventory;
		count1 = inven->itemCount( 4001022 );
		if ( count1 > 0 ) {
			if ( inven->exchange( 0, 4001022, -count1 ) != 0 ) {
				self->say( "�A���W�٦�#t4001022#�ܡH�бN���̥浹�ڡC" );
				return;
			}
		}
		count2 = inven->itemCount( 4001023 );
		if ( count2 > 0 ) {
			if ( inven->exchange( 0, 4001023, -count2 ) != 0 ) {
				self->say( "�A���W�٦�#t4001023#�ܡH�бN���̥浹�ڡC" );
				return;
			}
		}
		qr->setState( 7011, 0 );
		target->transferField( 221024500, "" );
	}
	else {
		--// �� ������������ ��������� ������
		nRet = self->askYesNo( "�A�T�w�n���}�o�̶ܡH�@�����}��N�������s�ӹL�A�A�T�w�ܡH");
		if ( nRet == 0 ) self->say( "�ک��դF�A�ЧA�~��[�o�C" );
		else {
			qr->setState( 7011, 0 );
			target->transferField( 922010000, "" );
		}
	}
}
