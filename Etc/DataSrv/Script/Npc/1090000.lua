require "./DataSrv/Script/sysDef"
require "./DataSrv/Script/Npc/job_3rd"

nJob = target->getJob();
if(nJob == 0) --1st job advancement
{
    if(target->getLevel() >= 10)
    {
        if(self->askYesNo("�ݨӧA���R�����ѽ�P���A�A�Q����#r���s#k�ܡH") == 1)
        {
            self->sayNext("�o�O�̫᪺���|�A�@���M�w�F�N�û��L�k���ܤF�C");
            if(self->askYesNo("�A�T�w�u���Q����#r���s#k�H") == 1)
            {
                target->setJob(500);
                target->incSP(1 + (target->getLevel() - 10) * 3);
                inventory->exchange(0, 1492000, 1);
                inventory->exchange(0, 1482000, 1);
                inventory->exchange(0, 2330000, 1);
                self->say("�Ʊ�A�b���Ӫ����s�D���W������Q�A���֧A�I");
            }
            else
                self->say("���A�Q�M�����n�M�w��A�P�ڽ͸ܧa�I");
        }
        else
            self->say("���������...");
    }
    else
        self->say("�ڥi�H�ݥX�A�����A���ثe�A�ٻݦh�[�V�O�A���¤@��~���i�ন��#r���s#k�C");
}
else if(math.floor(nJob / 10) == 50) --2nd job advancement
{
    if(target->getLevel() < 30)
        self->say("�������s����L���٦n�ܡH����H�A�Q�n������j�j�����s�H��...�ثe�ݰ_�ӧA�|������榨��#r����#k�Ϊ�#r�j��#k�C");
    else
    {
        if(self->askMenu("���Q�����ܶܡH\r\n#L1##b�Q���D���s�O����#l") == 1)
        {
            if(qr->getState(2191) == 2 or qr->getState(2192) == 2)
            {
                nItemID = 4031856;
                jobIndex = 1;
                if(qr->getState(2192) == 2)
                {
                    jobIndex = 2;
                    nItemID = 4031857;
                }

                jobName = { "����", "�j��" };
                jobCode = { 510, 520 };
                self->sayNext("�G�M���X�کҮơA�A�G�u���Q�q�L����F�I�ڵo�{�A�b�շҳ��Ҫ����ⷥ�����Z�O��u�F�`�I�N�p��쪺���w�A�ڴN���A��¾��#b" ..jobName[jobIndex] .. "#k�a�I");
                
                target->setJob(jobCode[jobIndex]);
                target->incSP(1);
                target->incMHP(random(300, 350));
                target->incMMP(random(150, 200));
                inventory->incSlotCount(4, 4);
                inventory->exchange(0, nItemID, -15);
                
                self->sayNext("���q�{�b�}�l�A�N�O#b" ..jobName[jobIndex] .. "�F#k�C�û����n����i����s�ϩR���}�B...�`���@�ѡA���ٷ|���A�ܱo��[�j�j���I");
                self->sayNext("���ڴ��ɤF�A���̤jHP�PMP�A�������~�ڦ����A�@��#b�ޯ��I��(SP)#k�A���}#b�ޯ����#k��T�{�ݬݧa�I�A�i�H���I�ưt����G��ޯ�W�A���L�k�@�}�l�N�����]���A�]�����ǧޯ�ݭn��e�m�ޯ઺���Ŵ��ɨ�Y�Ӷ��q��~��ǲߡC");
                self->sayNext(jobName[jobIndex] .. "�����n�ܱo�ܱj�I���Y�N�ۨ����O�q�o���b�z�̨��W�A�o�ä��O���T����k�C�N�ۤv�Ҿ֦����O�q�Φb���T���Ʊ��W�A�o�O���ܱo��j�󬰭��n�����D�C�n�F�I�۫H�A���_�ۧڭ׽m�A�L���[�N�|�A�P�ڬۨ����A�ڴ��ݨ��Ѫ���ӡC");
            }
            else
            {
                nItemID = 0;
                nSkillID = 0;
                nFieldID = 0;
                if(qr->getState(2191) == 1) 
                {
                    --9001006
                    nItemID = 4031856;
                    nSkillID = 5001001;
                    nFieldID = 108000502 + random(0, 1);
                }
                else if(qr->getState(2192) == 1)
                {
                    --9001005
                    nItemID = 4031857;
                    nSkillID = 5001003;
                    nFieldID = 108000500 + random(0, 1);
                }
    
                if(nItemID != 0)
                {
                    self->sayNext("�ӡI���ڨӱN���e���շҪ����ҧa�I���ڦA�����A�@���A�ЧA���˥X�{�b���̪����s������A�`��#b#t" .. nItemID .. "#15��#k�C�X�{�b�շҳ��Ҫ����s�����O�g�L�S��V�m�A����D�`�ӱ��A�]���n��~�p�����I�C");
                    self->sayNext("���F�o�����V�m�A�X�{�b���̪������̥u���#s" .. nSkillID .. "#�ӧ����I�t�~��A�i�J�շҳ��ҫ�A�|�N�A�Ҿ֦���#t" .. nItemID .. "#���Ʀ^���A�]�N�O�q�s���s�}�l�I");
                    nCount = inventory->itemCount(nItemID);
                    inventory->exchange(0, nItemID, -nCount);
                    target->transferField(nFieldID, "");
                }
                else
                    self->say("�Х���ܨ䤤�@�Ӯ��s����I");
            }
        }
    }
}
else if((nJob == 510 or nJob == 520) and target->getLevel() >= 70) --3rd job advancement
    job3rdMissionStart(2020013, "���W���~�}��");