
require "./DataSrv/Script/sysDef"
require "./DataSrv/Script/Npc/job_3rd"

nJob = target->getJob();
if((nJob == 510 or nJob == 520) and target->getLevel() >= 70)
{
    qrVal = qr->get(7500);
    if(qrVal == "")
    {
        if(self->askYesNo("��...�A�Q�n�z�L�ĤT����¾������[�j�j�����s�ܡH�����A�ڥ����������ߡI�]���ܤ֤H������A�o�����C�ڽT��i�H���A�ܱo�󬰱j�j�A���O�b�����e�ڥ���������A�A�åB�T�{�A�O�_�㦳���C�ܦh�H�n�٦ۤv�֦��O�q�P���z�A���o�ܤ֤H����q�L����C�A�ǳƦn�i�����F�ܡH") == 1)
        {
            self->sayNext("�D�`�n�C�b�o�Ӵ��礤����Ӧҹ���I�G�O�q�P���z�C�������譱���D�ԧڷ|�C�C�������Ať�C�O�o�H������#b#p1090000##k�ܡH�h��L�A�L�|���A���ȫ��ܡA�N���ȧ����åB��#b#t4031057##k�a�^�ӵ��ڡC");
            self->sayNext("����ߴ��譱���D�Է|�b�A������O�����~�|�}�l�C#b#t4031057##k�O�A�q�L�D�Ԫ��ҩ��C#b#p1090000##k�|�t�d�ʷ��o�ӬD�ԡC�o���|���A�ҷQ������e���A���ڹ�A����ܰ��A���A�n�B�C");
            qr->setState(7500, 1, "s");
        }
        else
            self->say("�O�ܡA�ݰ_�ӧA�٨S�ǳƦn�C���¤@�鵥�A�ǳƦn�ɡA�H�ɥi�H�ӧ�ڱ����D�ԡC");
    }
    else if(qrVal == "s" or qrVal == "p1") { self->say("�A�٨S�a��#b#t4031057##k�ܡH�o�O�ҩ��A��O�����n����A�S���q�L���窺�H�O�L�k��o��j�j���O�q��...");}
    else if(qrVal == "p2")
        job3rdMissionFinalStage1(target->getJob(), "#p1090000#");
    else if(qrVal == "end1" or qrVal == "end2")
        job3rdMissionFinalStage2(target->getJob(), "���s");
}