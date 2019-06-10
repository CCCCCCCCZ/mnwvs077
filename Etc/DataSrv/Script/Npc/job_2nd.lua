require "./DataSrv/Script/sysDef"

--�i�h�����賡��¾�Щx���
function change_warrior()
{
    if(math.floor(target->getJob() / 100) != 1
        or target->getLevel() < 30
        or qr->get(7500) != "s")
    {
        self->say("��C�h¾�~�����쪺�����ӥh�i�h������#b�Z�N�нm#k...");
        return;
    }
    
    if(inventory->itemCount(4031008) >= 1)
    {
        nBlack = inventory->itemCount(4031013);
        if(nBlack > 0)
        {
            self->sayNext("���p�ߦb�̭������F�ܡH�S���Y�A�ڥi�H�A��A�e�^�h�V�m�a�I�A���O�аȥ��p�ߡA�̭����Ǫ��i�����L�̥~���z�p...");
            self->sayNext("�b�����e�A�A���W��#b�¦�]�l#k������X�ӡA���A�i�J�a�ϭ��s�}�l��A�·ЦA���`��#r30#k��#b�¦�]�l#k���ڡC");
            inventory->exchange(0, 4031013, -nBlack);
        }
        else
        {
            self->sayNext("��...�o�T��O�Ӧ�#b�Z�N�нm#k���H��...�ҥH�A�O�ӳo�̱����D�ԨåB���⦨���C�h�G�઺�_�I�̶ܡH�n�A���ڷ|��A���гo�ӥ��Ȫ��Ʊ��A�O�Ӿ�ߡA�o�èS���o��x���C");
            self->sayNext("���ȶ}�l��ڷ|��A�e�i�@�����æa�ϡC�A�|�b����ݨ�U�ر`�����Ǫ��C���M�ݰ_�ӻP�A�b�~�Y�Ҩ��쪺�Ǫ��D�`�ۦ��A���L�̨ä������ۦP�C�L�̨ä��|���ɧA���g��Ȥ]���|���A�j�j���˳ƪ��~�C");
            self->sayNext("���O�b�̭��A�i�H�ǥѥ��ѩǪ��`����@�إs��#b�¦�]�l#k���D��A�o�O�@�إѯS����襴�y�����~�C����#r30#k��#b�¦�]�l#k�åB�i���̭����Щx�A�p���@�ӧA�N�i�H�q�L����C");
            if(self->askYesNo("�@���A�i�J�̭����D�������ȧ_�h���L�k���}�C�Y���������A�N�|�Q�����g��ȡA�ҥH�̦n�p���ԷV�@�I�C�ҥH�A�T�w�n�i�h�F�ܡH") != 1)
                return;
            self->say("�n�A���ڴN��A�e�i�h�A���A�n�B�C");
        }
        target->transferField(108000300 + random(0, 2), "");
    }
    else
        self->say("�b�������礧�e������o#b�Z�N�нm#k���P�N...")    
}

--�]�k�˪L�_����¾�Щx���
function change_magician()
{
    if(math.floor(target->getJob() / 100) != 2 
        or target->getLevel() < 30
        or qr->get(7500) != "s")
    {
        self->say("��k�v¾�~�����쪺�����ӥh�]�k�˪L��#b�~��#k...");
        return;
    }
    
    if(inventory->itemCount(4031009) >= 1)
    {
        nBlack = inventory->itemCount(4031013);
        if(nBlack > 0)
        {
            self->sayNext("���p�ߦb�̭������F�ܡH�S���Y�A�ڥi�H�A��A�e�^�h�V�m�a�I�A���O�аȥ��p�ߡA�̭����Ǫ��i�����L�̥~���z�p...");
            self->sayNext("�b�����e�A�A���W��#b�¦�]�l#k������X�ӡA���A�i�J�a�ϭ��s�}�l��A�·ЦA���`��#r30#k��#b�¦�]�l#k���ڡC");
            inventory->exchange(0, 4031013, -nBlack);
        }
        else
        {
            self->sayNext("��...�o�T��O�Ӧ�#b�~��#k���H��...�ҥH�A�O�ӳo�̱����D�ԨåB���⦨���k�v�G�઺�_�I�̶ܡH�n�A���ڷ|��A���гo�ӥ��Ȫ��Ʊ��A�O�Ӿ�ߡA�o�èS���o��x���C");
            self->sayNext("���ȶ}�l��ڷ|��A�e�i�@�����æa�ϡC�A�|�b����ݨ�U�ر`�����Ǫ��C���M�ݰ_�ӻP�A�b�~�Y�Ҩ��쪺�Ǫ��D�`�ۦ��A���L�̨ä������ۦP�C�L�̨ä��|���ɧA���g��Ȥ]���|���A�j�j���˳ƪ��~�C");
            self->sayNext("���O�b�̭��A�i�H�ǥѥ��ѩǪ��`����@�إs��#b�¦�]�l#k���D��A�o�O�@�إѯS����襴�y�����~�C����#r30#k��#b�¦�]�l#k�åB�i���̭����Щx�A�p���@�ӧA�N�i�H�q�L����C");
            if(self->askYesNo("�@���A�i�J�̭����D�������ȧ_�h���L�k���}�C�Y���������A�N�|�Q�����g��ȡA�ҥH�̦n�p���ԷV�@�I�C�ҥH�A�T�w�n�i�h�F�ܡH") != 1)
                return;
            self->say("�n�A���ڴN��A�e�i�h�A���A�n�B�C");
        }
        target->transferField(108000200 + random(0, 2), "");
    }
    else
        self->say("�b�������礧�e������o#b�~��#k���P�N...")    
}

--�g�c�q�D��¾�Щx���
function change_archer()
{
    if(math.floor(target->getJob() / 100) != 3 
        or target->getLevel() < 30
        or qr->get(7500) != "s")
    {
        self->say("��}�b��¾�~�����쪺�����ӥh�}�b�����#b���R�R#k...");
        return;
    }
    
    if(inventory->itemCount(4031010) >= 1)
    {
        nBlack = inventory->itemCount(4031013);
        if(nBlack > 0)
        {
            self->sayNext("���p�ߦb�̭������F�ܡH�S���Y�A�ڥi�H�A��A�e�^�h�V�m�a�I�A���O�аȥ��p�ߡA�̭����Ǫ��i�����L�̥~���z�p...");
            self->sayNext("�b�����e�A�A���W��#b�¦�]�l#k������X�ӡA���A�i�J�a�ϭ��s�}�l��A�·ЦA���`��#r30#k��#b�¦�]�l#k���ڡC");
            inventory->exchange(0, 4031013, -nBlack);
        }
        else
        {
            self->sayNext("��...�o�T��O�Ӧ�#b���R�R#k���H��...�ҥH�A�O�ӳo�̱����D�ԨåB���⦨���}�b��G�઺�_�I�̶ܡH�n�A���ڷ|��A���гo�ӥ��Ȫ��Ʊ��A�O�Ӿ�ߡA�o�èS���o��x���C");
            self->sayNext("���ȶ}�l��ڷ|��A�e�i�@�����æa�ϡC�A�|�b����ݨ�U�ر`�����Ǫ��C���M�ݰ_�ӻP�A�b�~�Y�Ҩ��쪺�Ǫ��D�`�ۦ��A���L�̨ä������ۦP�C�L�̨ä��|���ɧA���g��Ȥ]���|���A�j�j���˳ƪ��~�C");
            self->sayNext("���O�b�̭��A�i�H�ǥѥ��ѩǪ��`����@�إs��#b�¦�]�l#k���D��A�o�O�@�إѯS����襴�y�����~�C����#r30#k��#b�¦�]�l#k�åB�i���̭����Щx�A�p���@�ӧA�N�i�H�q�L����C");
            if(self->askYesNo("�@���A�i�J�̭����D�������ȧ_�h���L�k���}�C�Y���������A�N�|�Q�����g��ȡA�ҥH�̦n�p���ԷV�@�I�C�ҥH�A�T�w�n�i�h�F�ܡH") != 1)
                return;
            self->say("�n�A���ڴN��A�e�i�h�A���A�n�B�C");
        }
        target->transferField(108000100 + random(0, 2), "");
    }
    else
        self->say("�b�������礧�e������o#b���R�R#k���P�N...")    
}

--�g�c�q�D��¾�Щx���
function change_thief()
{
    if(math.floor(target->getJob() / 100) != 4 
        or target->getLevel() < 30
        or qr->get(7500) != "s")
    {
        self->say("��}�b��¾�~�����쪺�����ӥh�Z��������#b�F�J�|#k...");
        return;
    }
    
    if(inventory->itemCount(4031011) >= 1)
    {
        nBlack = inventory->itemCount(4031013);
        if(nBlack > 0)
        {
            self->sayNext("���p�ߦb�̭������F�ܡH�S���Y�A�ڥi�H�A��A�e�^�h�V�m�a�I�A���O�аȥ��p�ߡA�̭����Ǫ��i�����L�̥~���z�p...");
            self->sayNext("�b�����e�A�A���W��#b�¦�]�l#k������X�ӡA���A�i�J�a�ϭ��s�}�l��A�·ЦA���`��#r30#k��#b�¦�]�l#k���ڡC");
            inventory->exchange(0, 4031013, -nBlack);
        }
        else
        {
            self->sayNext("��...�o�T��O�Ӧ�#b�F�J�|#k���H��...�ҥH�A�O�ӳo�̱����D�ԨåB���⦨���s��G�઺�_�I�̶ܡH�n�A���ڷ|��A���гo�ӥ��Ȫ��Ʊ��A�O�Ӿ�ߡA�o�èS���o��x���C");
            self->sayNext("���ȶ}�l��ڷ|��A�e�i�@�����æa�ϡC�A�|�b����ݨ�U�ر`�����Ǫ��C���M�ݰ_�ӻP�A�b�~�Y�Ҩ��쪺�Ǫ��D�`�ۦ��A���L�̨ä������ۦP�C�L�̨ä��|���ɧA���g��Ȥ]���|���A�j�j���˳ƪ��~�C");
            self->sayNext("���O�b�̭��A�i�H�ǥѥ��ѩǪ��`����@�إs��#b�¦�]�l#k���D��A�o�O�@�إѯS����襴�y�����~�C����#r30#k��#b�¦�]�l#k�åB�i���̭����Щx�A�p���@�ӧA�N�i�H�q�L����C");
            if(self->askYesNo("�@���A�i�J�̭����D�������ȧ_�h���L�k���}�C�Y���������A�N�|�Q�����g��ȡA�ҥH�̦n�p���ԷV�@�I�C�ҥH�A�T�w�n�i�h�F�ܡH") != 1)
                return;
            self->say("�n�A���ڴN��A�e�i�h�A���A�n�B�C");
        }
        target->transferField(108000400 + random(0, 2), "");
    }
    else
        self->say("�b�������礧�e������o#b�F�J�|#k���P�N...")    
}
----------------INSIDE----------------

--�V�m��������¾�Щx���
function inside_warrior()
{
    nBlack = inventory->itemCount(4031013);
    if(nBlack != 30)
    {
        self->say("�٨S�`����#r30#k��#b�¦�]�l#k�ܡH���ȧ������e�O�L�k���}��...");
        return;
    }
    self->sayNext("�z�I�A�`����F#r30#k��#b�¦�]�l#k�I�I�S�Q���A�ӻ��o��e��...�ӼF�`�F�C�n���A�A�w�g�q�L�F�o�Ӧ���A�åB�ڷ|���A#b#t4031012##k�C��L�a�^�h���i�h������#b�Z�N�нm#k�C")
    if(inventory->exchange(0, 4031013, -nBlack, 4031012, 1) != 0)
    {
        self->say("��...�A�T�w�������ƶq��#b�¦�]�l��#k�H�t�~�A�нT�O��L��즳�������Ŷ��i�H�s��#b#t4031012##k�C");
        return;
    }
    inventory->exchange(0, 4031008, -1);
    target->transferField(102020300, "");
}

--�V�m��������¾�Щx���
function inside_magician()
{
    nBlack = inventory->itemCount(4031013);
    if(nBlack != 30)
    {
        self->say("�٨S�`����#r30#k��#b�¦�]�l#k�ܡH���ȧ������e�O�L�k���}��...");
        return;
    }
    self->sayNext("�z�I�A�`����F#r30#k��#b�¦�]�l#k�I�I�S�Q���A�ӻ��o��e��...�ӼF�`�F�C�n���A�A�w�g�q�L�F�o�Ӧ���A�åB�ڷ|���A#b#t4031012##k�C��L�a�^�h���]�k�˪L��#b�~��#k�C")
    if(inventory->exchange(0, 4031013, -nBlack, 4031012, 1) != 0)
    {
        self->say("��...�A�T�w�������ƶq��#b�¦�]�l��#k�H�t�~�A�нT�O��L��즳�������Ŷ��i�H�s��#b#t4031012##k�C");
        return;
    }
    inventory->exchange(0, 4031009, -1);
    target->transferField(101020000, "");
}

--�V�m��������¾�Щx���
function inside_archer()
{
    nBlack = inventory->itemCount(4031013);
    if(nBlack != 30)
    {
        self->say("�٨S�`����#r30#k��#b�¦�]�l#k�ܡH���ȧ������e�O�L�k���}��...");
        return;
    }
    self->sayNext("�z�I�A�`����F#r30#k��#b�¦�]�l#k�I�I�S�Q���A�ӻ��o��e��...�ӼF�`�F�C�n���A�A�w�g�q�L�F�o�Ӧ���A�åB�ڷ|���A#b#t4031012##k�C��L�a�^�h���}�b�����#b���R�R#k�C")
    if(inventory->exchange(0, 4031013, -nBlack, 4031012, 1) != 0)
    {
        self->say("��...�A�T�w�������ƶq��#b�¦�]�l��#k�H�t�~�A�нT�O��L��즳�������Ŷ��i�H�s��#b#t4031012##k�C");
        return;
    }
    inventory->exchange(0, 4031010, -1);
    target->transferField(100000000, "");
}

--�V�m��������¾�Щx���
function inside_thief()
{
    nBlack = inventory->itemCount(4031013);
    if(nBlack != 30)
    {
        self->say("�٨S�`����#r30#k��#b�¦�]�l#k�ܡH���ȧ������e�O�L�k���}��...");
        return;
    }
    self->sayNext("�z�I�A�`����F#r30#k��#b�¦�]�l#k�I�I�S�Q���A�ӻ��o��e��...�ӼF�`�F�C�n���A�A�w�g�q�L�F�o�Ӧ���A�åB�ڷ|���A#b#t4031012##k�C��L�a�^�h���Z��������#b�F�J�|#k�C")
    if(inventory->exchange(0, 4031013, -nBlack, 4031012, 1) != 0)
    {
        self->say("��...�A�T�w�������ƶq��#b�¦�]�l��#k�H�t�~�A�нT�O��L��즳�������Ŷ��i�H�s��#b#t4031012##k�C");
        return;
    }
    inventory->exchange(0, 4031011, -1);
    target->transferField(103000000, "");
}

--�V�m��������¾�Щx���
function inside_pirate()
{
    nItemID = 0;
    if(qr->getState(2191) == 1) 
        nItemID = 4031856;
    else if(qr->getState(2192) == 1)
        nItemID = 4031857;

    nBlack = inventory->itemCount(nItemID);
    if(nBlack != 15)
    {
        self->say("�٨S�`����#r15#k��#b#t" .. nItemID .. "##k�ܡH���ȧ������e�O�L�k���}��...");
        return;
    }
    self->sayNext("����A�w�g��#r15#k��#b#t" .. nItemID .. "##k���`�������աI�ӼF�`�I�o���Ӫ�F�A���֤O��a�I�n��ڭ̨��H�����A�C�C��a�I");
    self->sayNext("�o�Ǥ����J�M�u��b�o�̨ϥΡA���ڧ⥦�̦A���^�h�o�I");

    target->transferField(120000101, "");
}