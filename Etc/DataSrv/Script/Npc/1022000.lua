require "./DataSrv/Script/sysDef"
require "./DataSrv/Script/Npc/job_3rd"

function warrior2ndMissionDone()
{
    jobName = { "�g�Ԥh", "�����M�h", "�j�M�L" };
    jobCode = { 110, 120, 130 };
    self->sayNext("�A�i�H���w�a�^��o��...�D�`�n�C�{�b�ڪ��D�A������I����²�檺���ȤF�A���U�ӧڭn��A�V�m�o��[�j�j�C���O�b�����e�A�A���T�����P���D����ܡA�ڷ|���A�@�Ǯɶ���ҡA�p�G�A��������D�A�]�i�H���X�C");
    opt = self->askMenu("�p�G�A�w�g�M�w�n�F�A������I��̩��ݪ�[�ڭn�M�w¾�~]�C\r\n#b#L0#�Чi�D�ڦ����g�Ԥh���Ʊ��C#l\r\n#L1#�Чi�D�ڦ��������M�h���Ʊ��C#l\r\n#L2#�Чi�D�ڦ����j�M�L���Ʊ��C#l\r\n#L3#�ڭn�M�w¾�~�C#l");
    if(opt == 3)
    {
        opt = self->askMenu("�{�b�A�A�������Q�k�F�ܡH����п�ܧA�n��ު��G��¾�~�G\r\n#b#L1#" .. jobName[1] .. "#l\r\n#L2#" .. jobName[2] .. "#l\r\n#L3#" .. jobName[3] .."#l");
        if(opt >= 1 and opt <= 3)
        {
            if(self->askYesNo("�ҥH�A���ĤG����¾�M�w����#b" .. jobName[opt] .. "#k�ܡH�b�M�w����A�A�]�L�k�Ϯ����s���...�A�u���T�w�ܡH") == 1 and (inventory->exchange(0, 4031012, -1) == 0))
            {
                target->setJob(jobCode[opt]);
                target->incSP(1);
                target->incMHP(random(300, 350));
                target->incMMP(random(150, 200));
                inventory->incSlotCount(4, 4);
                qr->setState(7500, 1, "");
                self->say("���q�{�b�}�l�A�N�O#b" ..jobName[opt] .. "�F#k�C�û����n����i��C�h�ϩR���}�B...�`���@�ѡA���ٷ|���A�ܱo��[�j�j���I");
            }
            else
                self->say("���A�J�ӫ�ҧ����H��A��ڹ��...");
        }
    }
}

nJob = target->getJob();

if(nJob == 0) --1st job advancement
{
    if(target->getLevel() >= 10)
    {
        if(self->askYesNo("�ݨӧA���R�����ѽ�P���A�A�Q����#r�C�h#k�ܡH") == 1)
        {
            self->sayNext("�o�O�̫᪺���|�A�@���M�w�F�N�û��L�k���ܤF�C");
            if(self->askYesNo("�A�T�w�u���Q����#r�C�h#k�H") == 1)
            {
                target->setJob(100);
                target->incSP(1 + (target->getLevel() - 10) * 3);
                inventory->exchange(0, 1402900, 1);
                self->say("�Ʊ�A�b���Ӫ��C�h�D���W������Q�A���֧A�I");
            }
            else
                self->say("���A�Q�M�����n�M�w��A�P�ڽ͸ܧa�I");
        }
        else
            self->say("���������...");
    }
    else
        self->say("�ڥi�H�ݥX�A�����A���ثe�A�ٻݦh�[�V�O�A���¤@��~���i�ন��#r�C�h#k�C");
}
else if(math.floor(nJob / 10) == 10) --2nd job advancement
{
    if(target->getLevel() < 30)
        self->say("�����C�h����L���٦n�ܡH����H�A�Q�n������j�j���C�h�H��...�ثe�ݰ_�ӧA�|������榨��#r�g�Ԥh#k�B#r�����M�h#k�Ϊ�#r�j�M�L#k�C")
    else
    {
        qrVal = qr->get(7500);
        if(qrVal == "s")
        {
            if(inventory->itemCount(4031012) == 1)
                warrior2ndMissionDone();
            else if(inventory->itemCount(4031008) == 0)
            {
                self->say("�ݨӧA��H�ʵ��˥�F��a�I�ڥi�H�A���A�@�����|�A�Ч�H�ʵ��O�ަn�I");
                if(inventory->exchange(0, 4031008, 1) != 0) 
                    self->say("�нT�O�I�]����L�榳���������C");
            }
            else
                self->say("�A�٨S�h��#b�C�h��¾�Щx#k�ܡH�Чⴤ�ɶ���H�ʥ浹�L�ç����L�ҥ�N�����ȦA�^�ӧ�ڡC");
        }
        else if(self->askYesNo("��...�ݨӳo�q�ɶ��A�i�B���D�`���֡A�ݰ_�ӻP���e�۷��P�C��ɧA�ݰ_�ӫD�`���z�p�A�{�b�ڥi�H�V�A�O�ҡA�A�w�g���C�h�Ӧ����ˤl...���Aı�o�O�H�A�Q���Q�n��o��j�j���O�q�H�q�L�@��²�檺����ڴN�����A...�A�ǳƦn�F�ܡH") == 1)
        {
            self->sayNext("�D�`�n...�ݰ_�ӧA�D�`���i��A���ڻݭn�˦۴��լݬݬO���O�u���C�o�Ӧ���ä��|�����A�A���ӯ���q�L���C�����A����o�ʫH�a�b���W�A�O���n�ˤ����F�C");
            if(inventory->exchange(0, 4031008, 1) == 0) 
            {
                qr->setState(7500, 1, "s");
                self->sayNext("�Ч�o�ʫH�浹���#r�i�̤�����J�f#k��#b�C�h��¾�Щx#k�C�L�b����i����¾�����ɤu�@...��o�ʫH�浹�L�M��L�|��A�a����զa�I�C�ԲӪ������N�ѥL�i�D�A�C");
            }            
            else
                self->say("�нT�O�I�]����L�榳���������C");
        }
        else
            self->say("�ݨӧA�٦��Ʊ��S�������A���A�����åB�Q�n��A�Ӹ�ڻ��a...");
    }
}
else if((nJob == 110 or nJob == 120 or nJob == 130) and target->getLevel() >= 70) --3rd job advancement
    job3rdMissionStart(2020008, "�_�ۧ�");