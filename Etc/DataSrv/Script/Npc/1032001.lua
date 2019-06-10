
require "./DataSrv/Script/sysDef"

function magician2ndMissionDone()
{
    jobName = { "���r�Ův", "�B�p�Ův", "���Q" };
    jobCode = { 210, 220, 230 };
    self->sayNext("�A�i�H���w�a�^��o��...�D�`�n�C�{�b�ڪ��D�A������I����²�檺���ȤF�A���U�ӧڭn��A�V�m�o��[�j�j�C���O�b�����e�A�A���T�����P���D����ܡA�ڷ|���A�@�Ǯɶ���ҡA�p�G�A��������D�A�]�i�H���X�C");
    opt = self->askMenu("�p�G�A�w�g�M�w�n�F�A������I��̩��ݪ�[�ڭn�M�w¾�~]�C\r\n#b#L0#�Чi�D�ڦ������r�Ův���Ʊ��C#l\r\n#L1#�Чi�D�ڦ����B�p�Ův���Ʊ��C#l\r\n#L2#�Чi�D�ڦ������Q���Ʊ��C#l\r\n#L3#�ڭn�M�w¾�~�C#l");
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
                self->say("���q�{�b�}�l�A�N�O#b" ..jobName[opt] .. "�F#k�C�û����n����i��k�v�ϩR���}�B...�`���@�ѡA���ٷ|���A�ܱo��[�j�j���I");
            }
            else
                self->say("���A�J�ӫ�ҧ����H��A��ڹ��...");
        }
    }
}

nJob = target->getJob();

if(nJob == 0) --1st job advancement
{
    if(target->getLevel() >= 8)
    {
        if(self->askYesNo("�ݨӧA���R�����ѽ�P���A�A�Q����#r�k�v#k�ܡH") == 1)
        {
            self->sayNext("�o�O�̫᪺���|�A�@���M�w�F�N�û��L�k���ܤF�C");
            if(self->askYesNo("�A�T�w�u���Q����#r�k�v#k�H") == 1)
            {
                target->setJob(200);
                target->incSP(1 + (target->getLevel() - 8) * 3);
                inventory->exchange(0, 1372005, 1);
                self->say("�Ʊ�A�b���Ӫ��k�v�D���W������Q�A���֧A�I");
            }
            else
                self->say("���A�Q�M�����n�M�w��A�P�ڽ͸ܧa�I");
        }
        else
            self->say("���������...");
    }
    else
        self->say("�ڥi�H�ݥX�A�����A���ثe�A�ٻݦh�[�V�O�A���¤@��~���i�ন��#r�k�v#k�C");
}
else if(math.floor(nJob / 10) == 20) --2nd job advancement
{
    if(target->getLevel() < 30)
        self->say("�����k�v����L���٦n�ܡH����H�A�Q�n������j�j���k�v�H��...�ثe�ݰ_�ӧA�|������榨��#r��/�r�Ův#k�B#r�B/�p�]�k�v#k�Ϊ�#r���Q#k�C")
    else
    {
        qrVal = qr->get(7500);
        if(qrVal == "s")
        {
            if(inventory->itemCount(4031012) == 1)
                magician2ndMissionDone();
            else if(inventory->itemCount(4031009) == 0)
            {
                self->say("�ݨӧA��H�ʵ��˥�F��a�I�ڥi�H�A���A�@�����|�A�Ч�H�ʵ��O�ަn�I");
                if(inventory->exchange(0, 4031009, 1) != 0) 
                    self->say("�нT�O�I�]����L�榳���������C");
            }
            else
                self->say("�A�٨S�h��#b�k�v��¾�Щx#k�ܡH�Чⴤ�ɶ���H�ʥ浹�L�ç����L�ҥ�N�����ȦA�^�ӧ�ڡC");
        }
        else if(self->askYesNo("��...�ݨӳo�q�ɶ��A�i�B���D�`���֡A�ݰ_�ӻP���e�۷��P�C��ɧA�ݰ_�ӫD�`���z�p�A�{�b�ڥi�H�V�A�O�ҡA�A�w�g���k�v�Ӧ����ˤl...���Aı�o�O�H�A�Q���Q�n��o��j�j���O�q�H�q�L�@��²�檺����ڴN�����A...�A�ǳƦn�F�ܡH") == 1)
        {
            self->sayNext("�D�`�n...�ݰ_�ӧA�D�`���i��A���ڻݭn�˦۴��լݬݬO���O�u���C�o�Ӧ���ä��|�����A�A���ӯ���q�L���C�����A����o�ʫH�a�b���W�A�O���n�ˤ����F�C");
            if(inventory->exchange(0, 4031009, 1) != 0) 
            {
                qr->setState(7500, 1, "s");
                self->sayNext("�Ч�o�ʫH�浹���#r�]�k�˪L�_��#k��#b�k�v��¾�Щx#k�C�L�b����i����¾�����ɤu�@...��o�ʫH�浹�L�M��L�|��A�a����զa�I�C�ԲӪ������N�ѥL�i�D�A�C");
            }            
            else
                self->say("�нT�O�I�]����L�榳���������C");
        }
        else
            self->say("�ݨӧA�٦��Ʊ��S�������A���A�����åB�Q�n��A�Ӹ�ڻ��a...");
    }
}
else if((nJob == 210 or nJob == 220 or nJob == 230) and target->getLevel() >= 70) --3rd job advancement
{
    qrVal = qr->get(7500);
    if(qrVal == "s")
    {
        qr->setState(7500, 1, "p1");
        self->sayNext("�ڤ@���b���ۧA�C�X�ѫe�ڱq#b#p2020009##k����ť��A���Ʊ��C��...�ڥ���������A����@�C�b�]�k�˪L�Y�B���ӯ��K�q�D�C���F�A�H�~�S���H����i�J�C�p�G�A��쨺�ӳq�D�A�A�|�ݨ�ڪ��t�@�Ӥ����A���ѥL�åB�a�^#b#t4031059##k���ڡC");   
        self->sayNext("�ڪ������D�`�j���C�L�|�B�Φh�دS��ޯ�A�A����1��1���ѥL�C�ӥB���`�H�õL�k�b�̭��ݤӪ����ɶ��A�ҥH�A�����b�����ɶ������ѥL�C�`��...���A�n�B�A�ګܴ��ݧA��#b#t4031059##k�a�^�ӵ��ڡC");
    }
    else if(qrVal == "p1")
    {
        nCount = inventory->itemCount(4031059);
        if(nCount > 0)
        {
            self->sayNext("�z�A�A���ѤF�ڪ������åB�a�ӤF#b#t4031059##k���ڡC�o�ҹ�F�A����O�w�g��ƥi�H�i��ĤT����¾�F�A�p�کҩӿաA�ڷ|���A#b#t4031057##k�A��o�ӱa�^��#b#p2020009##k�A���ۧA�N�i�H�i��ĤG���q���D�ԡA���A�n�B��");
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
            self->say("�٨S��#b#t4031057##k�浹#b#p2020009##k�öi��ĤG�Ӵ���ܡH");
        
    }
}