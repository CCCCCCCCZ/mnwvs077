
require "./DataSrv/Script/sysDef"

--Final Stage Phase 1
function job3rdMissionFinalStage1(jobCode, npcName)
{
    if(inventory->exchange(0, 4031057, -1) == 0)
    {
        qr->setState(7500, 1, "end1");
        self->sayNext("�D�`�n�A�A�����F�Ĥ@���q��������A�ڴN���D�A�쪺��I���U�ӧA���������ĤG���q���ߴ�����C");
        self->sayNext("�o�O�ĤG���q���窺�����C�o�Ӵ���N����A�O�_�����������z�i�H�i��U�@���q����¾�C�b�B�쳷�즳�Ӳצ~�n�����a��s��#b����t�a#k�A���Ӧa��N�s�Ǫ����L�k��F�C�b���䦳�@�ӥ��j�����ۥs��#b���t�����Y#k�A�b����A�����^�m�X�@�ǯS���~�A���۩��۴N�|����A�����z�C");
        self->sayNext("�A�����۹ꪺ�^���C�@�Ӱ��D�C�p�G�A����F�Ҧ������D�A�t�۷|���A#b#t4031058##k�C�N���a�^�ӵ��ڡA�ڴN�|���U�A�i�J�U�@�Ӷ��q�C");
    }
    else
        self->say("�A�T�w���W���a��#b#t4031057##k�ܡH�p�G�S���A�Ц^�h�P#b" .. npcName .. "#k�͸ܡA�ݬݥL�O�_�ٷ|���A���|...");
}

--Final Stage Phase 2
function job3rdMissionFinalStage2(jobCode, jobTypeName)
{
    if(qrVal == "end2" or inventory->itemCount(4031058) > 0)
    {
        self->sayNext("�D�`�n�A�A�����F�ĤG���q�ߴ�����C�ڥ������A�ڹ�A���Үi�{�X���z�D�`�ܨءC�b�i�J�U�@�Ӷ��q���e�A�A�������ⶵ��浹�ڡC");
        if(self->askYesNo("�n���I�{�b�A�A�Y�N������[�j�j��" .. jobTypeName .."�A�b�����e�A�нT�O�A��#b�ޯ��I��#k�w�g�����ϥΧ����C�A������70���H�e��o���Ҧ��ޯ��I�Ƴ��ϥΧ����~�i�H�i��ĤT����¾�C�ѩ�A�w�g�b�ĤG����¾�ɰ��X�F��ܡA�o���N���|����L�D���ѧA��ܡC�A�{�b�N�Q�n�i����¾�ܡH") == 1)
        {
            if(qrVal != "end2" and inventory->exchange(0, 4031058, -1) != 0)
                self->say("�A�T�w���W�u�����a��#b#t4031058##k�ܡH");
            else
                changeJob3rd(target->getJob());
        }
        else
            self->say("���A�{�u��ҧ����H��A�ӻP�ڹ�ܧa�I");
    }
    else
        self->say("�Хh#b����t�a#k���#b���t����#k�åB�^���Ҧ����D��a�^#b#t4031058##k���ڡC");
}

function job3rdMissionStart(npcFrom, aroundName)
{
    qrVal = qr->get(7500);
    if(qrVal == "s")
    {
        qr->setState(7500, 1, "p1");
        self->sayNext("�ڤ@���b���ۧA�C�X�ѫe�ڱq#b#p" .. npcFrom .. "##k����ť��A���Ʊ��C��...�ڥ���������A����@�C�b" .. aroundName .. "�Y�B���ӯ��K�q�D�C���F�A�H�~�S���H����i�J�C�p�G�A��쨺�ӳq�D�A�A�|�ݨ�ڪ��t�@�Ӥ����A���ѥL�åB�a�^#b#t4031059##k���ڡC");   
        self->sayNext("�ڪ������D�`�j���C�L�|�B�Φh�دS��ޯ�A�A����1��1���ѥL�C�ӥB���`�H�õL�k�b�̭��ݤӪ����ɶ��A�ҥH�A�����b�����ɶ������ѥL�C�`��...���A�n�B�A�ګܴ��ݧA��#b#t4031059##k�a�^�ӵ��ڡC");
    }
    else if(qrVal == "p1")
    {
        nCount = inventory->itemCount(4031059);
        if(nCount > 0)
        {
            self->sayNext("�z�A�A���ѤF�ڪ������åB�a�ӤF#b#t4031059##k���ڡC�o�ҹ�F�A����O�w�g��ƥi�H�i��ĤT����¾�F�A�p�کҩӿաA�ڷ|���A#b#t4031057##k�A��o�ӱa�^��#b#p" .. npcFrom .. "##k�A���ۧA�N�i�H�i��ĤG���q���D�ԡA���A�n�B��");
            if(inventory->exchange( 0, 4031059, -1, 4031057, 1) == 0)
                qr->setState(7500, 1, "p2");
            else
                self->say("�A�T�w�u�����a��#b#t4031059##k�ܡH�Ϊ̧A���I�]�S���������Ŷ��i�H�s��#b#t4031057##k�C");
        }
        else
            self->say("�A�٨S��쯵�K�q�D�åB���ѧڪ������ܡH�л�����q�D�åB���ѥL�ña�^#b#t4031059##k���ڡC");
    }
    else if(qrVal == "p2")
    {
        if(inventory->itemCount(4031057) == 0)
        {
            self->say("�A��#b#t4031057##k���˥�F�ܡH�o�O�̫�@�����|�F�A�Фp�߫O�ޡC");
            if(inventory->exchange(0, 4031057, 1) != 0)
                self->say("�нT�O�I�]�����������I");
        }
        else
            self->say("�٨S��#b#t4031057##k�浹#b#p" .. npcFrom .. "##k�öi��ĤG�Ӵ���ܡH");
    }
}

function changeJob3rd(jobCode)
{
    qr->setState(7500, 1, "end2");
    nPSP = (target->getLevel() - 70) * 3;
    if(target->getSP(0) > nPSP)
        self->say("�A���G�٦��Ѿl��#b�ޯ��I��#k�|���ϥΧ����I�Ч�Ѿl���ޯ��I�ƨϥΧ�����A�ӻP�ڹ�ܡC");
    else
    {
        qr->setState(7500, 2, "");
        target->setJob(jobCode + 1);
        target->incAP(5);
        target->incSP(1);
        self->say("(��M�P����O�q�ܱo��[�j�j�F...)");
    }
}