
require "./DataSrv/Script/sysDef"
require "./DataSrv/Script/Npc/job_3rd"

nJob = target->getJob();
if((nJob == 310 or nJob == 320) and target->getLevel() >= 70)
{
    qrVal = qr->get(7500);
    if(qrVal == "")
    {
        if(self->askYesNo("�w��C�ڪ��W�r�s��#b#p" .. templateID .. "##k�A�O�}�b��ɪ��̰��t�d�H�A�ɮɨ��N�ڪ��ҾǥH�Ϊ��ѱоɵ��@�ɦU�a���}�b��C�A�ݰ_�Ӥw�g�ǳƦn�����ĤT����¾���D�ԡA����ı�o�A���i�ӹL�۫H�A�ڬݹL�Ӧh�}�b��Өӥh�h�A�b�D�Ԫ��L�{�����ڤj������C�`�Ө����A�A�ǳƦn�����ĤT����¾���D�ԤF�ܡH") == 1)
        {
            qr->setState(7500, 1, "s");
            self->sayNext("�D�`�n�C�b�o�Ӵ��礤����Ӧҹ���I�G�O�q�P���z�C�������譱���D�ԧڷ|�C�C�������Ať�C�O�o�}�b�����#b���R�R#k�ܡH�h��L�A�L�|���A���ȫ��ܡA�N���ȧ����åB��#b#t4031057##k�a�^�ӵ��ڡC");
            self->sayNext("����ߴ��譱���D�Է|�b�A������O�����~�|�}�l�C#b#t4031057##k�O�A�q�L�D�Ԫ��ҩ��C#b���R�R#k�|�t�d�ʷ��o�ӬD�ԡC�o���|���A�ҷQ������e���A���ڹ�A����ܰ��A���A�n�B�C");
        }
        else
            self->say("�O�ܡA�ݰ_�ӧA�٨S�ǳƦn�C���¤@�鵥�A�ǳƦn�ɡA�H�ɥi�H�ӧ�ڱ����D�ԡC");
    }
    else if(qrVal == "s" or qrVal == "p1") { self->say("�A�٨S�a��#b#t4031057##k�ܡH�o�O�ҩ��A��O�����n����A�S���q�L���窺�H�O�L�k��o��j�j���O�q��...");}
    else if(qrVal == "p2")
        job3rdMissionFinalStage1(target->getJob(), "���R�R");
    else if(qrVal == "end1" or qrVal == "end2")
        job3rdMissionFinalStage2(target->getJob(), "�}�b��");
}