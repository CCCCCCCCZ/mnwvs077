
require "./DataSrv/Script/sysDef"

nJob = target->getJob();

if((nJob == 210 or nJob == 220 or nJob == 230) and target->getLevel() >= 70)
{
    qrVal = qr->get(7500);
    if(qrVal == "")
    {
        if(self->askYesNo("�w��C�ڪ��W�r�s��#b#p" .. templateID .. "##k�A�O�k�v�ɪ��̰��t�d�H�A�ɮɨ��N�ڪ��ҾǥH�Ϊ��ѱоɵ��@�ɦU�a���k�v�C�A�ݰ_�Ӥw�g�ǳƦn�����ĤT����¾���D�ԡA����ı�o�A���i�ӹL�۫H�A�ڬݹL�Ӧh�k�v�Өӥh�h�A�b�D�Ԫ��L�{�����ڤj������C�`�Ө����A�A�ǳƦn�����ĤT����¾���D�ԤF�ܡH") == 1)
        {
            qr->setState(7500, 1, "s");
            self->sayNext("�D�`�n�C�b�o�Ӵ��礤����Ӧҹ���I�G�O�q�P���z�C�������譱���D�ԧڷ|�C�C�������Ať�C�O�o�]�k�˪L��#b�~��#k�ܡH�h��L�A�L�|���A���ȫ��ܡA�N���ȧ����åB��#b#t4031057##k�a�^�ӵ��ڡC");
            self->sayNext("����ߴ��譱���D�Է|�b�A������O�����~�|�}�l�C#b#t4031057##k�O�A�q�L�D�Ԫ��ҩ��C#b�~��#k�|�t�d�ʷ��o�ӬD�ԡC�o���|���A�ҷQ������e���A���ڹ�A����ܰ��A���A�n�B�C");
        }
        else
            self->say("�O�ܡA�ݰ_�ӧA�٨S�ǳƦn�C���¤@�鵥�A�ǳƦn�ɡA�H�ɥi�H�ӧ�ڱ����D�ԡC");
    }
    else if(qrVal == "s" or qrVal == "p1") { self->say("�A�٨S�a��#b#t4031057##k�ܡH�o�O�ҩ��A��O�����n����A�S���q�L���窺�H�O�L�k��o��j�j���O�q��...");}
    else if(qrVal == "p2")
    {
        if(inventory->exchange(0, 4031057, -1) == 0)
        {
            qr->setState(7500, 1, "end1");
            self->sayNext("�D�`�n�A�A�����F�Ĥ@���q��������A�ڴN���D�A�쪺��I���U�ӧA���������ĤG���q���ߴ�����C");
            self->sayNext("�o�O�ĤG���q���窺�����C�o�Ӵ���N����A�O�_�����������z�i�H�i��U�@���q����¾�C�b�B�쳷�즳�Ӳצ~�n�����a��s��#b����t�a#k�A���Ӧa��N�s�Ǫ����L�k��F�C�b���䦳�@�ӥ��j�����ۥs��#b���t�����Y#k�A�b����A�����^�m�X�@�ǯS���~�A���۩��۴N�|����A�����z�C");
            self->sayNext("�A�����۹ꪺ�^���C�@�Ӱ��D�C�p�G�A����F�Ҧ������D�A�t�۷|���A#b#t4031058##k�C�N���a�^�ӵ��ڡA�ڴN�|���U�A�i�J�U�@�Ӷ��q�C");
        }
        else
            self->say("�A�T�w���W���a��#b#t4031057##k�ܡH�p�G�S���A�Ц^�h�P#b�~��#k�͸ܡA�ݬݥL�O�_�ٷ|���A���|...");
    }
}