require "./DataSrv/Script/sysDef"
require "./DataSrv/Script/Npc/job_4th"

nJob = target->getJob();
if((nJob != 311 and nJob != 321) or target->getLevel() < 120)
{
    self->say("������Ʊ��ܡH");
    return;
}

if(qr->getState(6924) == 2)
{
    ret = self->askMenu("�ݨӧA�w�g�ǳƦn�����u�����}�b��F�C\r\n�A�Q�n�i��ĥ|����¾�ܡH#b\r\n#L0#�ڷQ�i��ĥ|����¾#l\r\n#L1#���ڦb�Q�Q#l");
    if(ret == 1)
        self->sayNext("���S������n�S�ݪ��C���A�M�w�n����A�Ӹ�ڥ�͡C�p�G�A�u���ǳƦn�F�A�ڷ|���A�i��ĥ|����¾���C");
    else
        changeJob4(nJob, 2280003);
}
else
    self->say("�A�٨S���|�వ�n�ǳơA���A�ǳƦn�F�A�A�ӧ�ڧa�C");