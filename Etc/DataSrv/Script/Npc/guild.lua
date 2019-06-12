
require "./DataSrv/Script/sysDef"

function s_guild_mark() {
    isGuildMaster = target->isGuildMaster();
    if(isGuildMaster == 1)
    {
        nRet = self->askMenu("�z�n�A�аݦ�����ڥi�H�������ܡH#b\r\n#L0#�]�w���|����#l\r\n#L1#�������|����#l");
        if(nRet == 0)
        {
            if(self->askYesNo("�]�w���|�����ݭn#b500�U����#k�A�A�T�w�n�~��ܡH") == 1)
            {       
                if(target->isGuildMarkExist() == 1)
                    self->say("�A�����|�w�g�]�w�F�����A�Х�������A���s�]�w�C");
                else
                    target->setGuildMark();
            }
            else
                self->say("���A�Q�n�H��A�ӻP�ڹ�ͧa�C");
        }
        else if(nRet == 1)
        {
            if(self->askYesNo("�������|�����ݭn#b100�U����#k�A�A�T�w�n�~��ܡH") == 1)
            {       
                if(target->isGuildMarkExist() == 0)
                    self->say("�A�����|�èS���]�w�����A�L�k�i�沾���C");
                else
                    target->removeGuildMark();
            }
            else
                self->say("���A�Q�n�H��A�ӻP�ڹ�ͧa�C");
        }
    }
    else
        self->say("�����|�|�����������v���i�H�޲z���|�����C");
}

function s_guild_proc() {
    isGuildMaster = target->isGuildMaster();
    isGuildMember = target->isGuildMember();
    nCountMax = target->getGuildCountMax();

    if(isGuildMaster == 1)
        nRet = self->askMenu("�گ����z���򦣡H\r\n#b#L1#�Ѵ����|#l\r\n#L2#�X�R���|�H��(�W���G100)#l#k");
    else
        nRet = self->askMenu("�گ����z���򦣡H\r\n#b#L0#�إߤ��|#l\r\n#L3#�����������|���Ʊ�#l#k");
        
    if(nRet == 0)
    {
        if(isGuildMember == 1)
        {
            self->say("�z�w�g�[�J���|�C");
            return;
        }
        if(self->askYesNo("�n�O���|���O�άO#b150�U����#k�A�z�T�w�n�إߤ@�ӷs���|�ܡH") == 1)
            target->createNewGuild();
        else
            self->say("���A�J�ӫ�ҫ�A�ӧ�ڧa�C");
    }
    else if(nRet == 1 and isGuildMember)
    {
        if(self->askYesNo("���|�@���Ѵ���N�L�k�_��A�]���|�h�٩Ҧ������L���O�ΥB�����l�[#b20�U����#k����O�A���|����o��#b���|�I��(GP)#k�]�|���Ʈ����C�A�T�w�n�~��ܡH") == 1)
            target->removeGuild();
        else
            self->say("���A�J�ӫ�ҫ�A�ӧ�ڧa�C");
    }
    else if(nRet == 2 and isGuildMaster)
    {
        nCountMax = target->getGuildCountMax(); 
        if(nCountMax > 95) self->say("�z�����|�H�Ƥw�F�W���A�L�k�A�i���X�R�C");
        else
        {
            self->sayNext("ı�o���|�H�ƤW�������F�ܡH�ڥi�H���A�X�R���|���̤j�W���H�ơA��M�A�ݭn�@���B�~������O�C");
            nRequiredMeso = 500;
            if ( nCountMax <= 10 ) nRequiredMeso = 50; 
            else if ( nCountMax <= 15 ) nRequiredMeso = 150; 
            else if ( nCountMax <= 20 ) nRequiredMeso = 250; 
            else if ( nCountMax <= 25 ) nRequiredMeso = 350; 
            else if ( nCountMax <= 30 ) nRequiredMeso = 450; 
            else if ( nCountMax <= 35 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 40 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 45 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 50 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 55 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 60 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 65 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 70 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 75 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 80 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 85 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 90 ) nRequiredMeso = 500; 
            else if ( nCountMax <= 95 ) nRequiredMeso = 500; 
            if(self->askYesNo("�Q�n�⤽�|�H�ƤW���X�R��" .. (nCountMax + 5) .. "�H�A�����n��I����O:#b" .. nRequiredMeso .. "�U����#k�A�z�T�w�n�~��ܡH") == 1)
                target->incGuildCountMax(5, nRequiredMeso * 10000);
            else
                self->say("���A�Q�n�H��A�ӧ�ڽ͸ܧa�C");
        }
    }
}