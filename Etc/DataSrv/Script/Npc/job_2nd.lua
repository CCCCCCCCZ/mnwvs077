
require "./DataSrv/Script/sysDef"

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
            self->sayNext("��...�o�T��O�Ӧ�#b�~��#k���H��...�ҥH�A�O�ӳo�̱����D�ԨåB���⦨���k�v�G�઺�_�I�ͶܡH�n�A���ڷ|��A���гo�ӥ��Ȫ��Ʊ��A�O�Ӿ�ߡA�o�èS���o��x���C");
            self->sayNext("���ȶ}�l��ڷ|��A�e�i�@�����æa�ϡC�A�|�b����ݨ�U�ر`�����Ǫ��C���M�ݏ��ӻP�A�b�~�Y�Ҩ��쪺�Ǫ��D�`�ۦ��A���L�̨ä������ۦP�C�L�̨ä��|���ɧA���g��Ȥ]���|���A�j�j���˳ƪ��~�C");
            self->sayNext("���O�b�̭��A�i�H�ǥѥ��ѩǪ��`����@�إs��#b�¦�]�l#k���D��A�o�O�@�إѯS����襴�y�����~�C����#r30#k��#b�¦�]�l#k�åB�i���̭����Щx�A�p���@�ӧA�N�i�H�q�L����C");
            if(self->askYesNo("�@���A�i�J�̭����D�������ȧ_�h�m�L�k���}�C�Y���������A�N�|�Q�����g��ȡA�ҥH�̦n�p���ԷV�@�I�C�ҥH�A�T�w�n�i�h�F�ܡH") != 1)
                return;
            self->say("�n�A���ڴN��A�e�i�h�A���A�n�B�C");
        }
        target->transferField(108000200 + random(0, 2), "");
    }
    else
        self->say("�b�������礧�e������o#b�~��#k���P�N...")    
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
        self->say("��...�A�T�w�������ƶq��#b�¦�]�l�ܡH�t�~�A�нT�O��L��즳�������Ŷ��i�H�s��#b#t4031012##k�C");
        return;
    }
    inventory->exchange(0, 4031009, -1);
    target->transferField(101020000, "");
}