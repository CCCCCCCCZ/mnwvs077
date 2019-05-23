require "./DataSrv/Script/sysDef"

math.randomseed(os.time())

quest = FieldSet.get("Party1")
fieldID = self->field()->getID()
field = self->field()

desc_stage2 = "�١A�w��Ө�ĤG���d�C�z�|�ݨ�b�ڮ��䦳�Ʊ�÷�l�A�Ч�X3�ӥ��T��÷�l�åB���b�W���A�A�������P�ڥ�͡A�p�G���ƥ��T�A�N��i�J�U�@���d�C�`�N�A���o�ӧC�i�ण�|�Q�p��C"
desc_stage3 = "�١A�w��Ө�ĤT���d�C�z�|�ݨ�b�ڮ��䦳�ƭӤ��A�Ч�X3�ӥ��T�����åB���b�W���A�A�������P�ڥ�͡A�p�G���ƥ��T�A�N��i�J�U�@���d�C�`�N�A�����Ӿa����t�i�ण�|�Q�p��C"
desc_stage4 = "�١A�w��Ө�ĥ|���d�C�z�|�ݨ�b�ڮ��䦳�ƭӤ��A�Ч�X3�ӥ��T�����åB���b�W���A�A�������P�ڥ�͡A�p�G���ƥ��T�A�N��i�J�U�@���d�C�`�N�A�����Ӿa����t�i�ण�|�Q�p��C"
desc_stage5 = "���o�A�w��Ө�̫�@���C�Цb�a�Ϥ���X�W�ź���F�C���Ѧa�Ϥ����Ҧ��Ǫ��A����#b�q����#k�åB�浹�ڡC��z��o�F#b�q����#k�A�вΤ@�浹�����A�åѶ����浹�ڡC�Фp�ߡA�|�P���Ǫ��ݏ������M�ܼ��x�A���o��[�j�j�A�аȥ��p�ߡC���z�n�B�I\r\n��z�����F�Ҧ������ȡA�Ч�ڻ�����y�C"

function makeAnswer(numCount, answerCount) 
    rndSeq = randomSeq(1, numCount)
    ret = ""
    for k, v in pairs(rndSeq) do
        if(v > answerCount) then
            ret = ret .. '0'
        else
            ret = ret .. '1'
        end
    end
    return ret
end

function areaCheck(areaCount, answerCount)
    ret = ""
    areaCount = areaCount - 1
    count = 0
    for i = 0, areaCount do
        inArea = field->countUserInArea(i)
        count = count + inArea
        ret = ret .. inArea
    end
    if(count ~= answerCount) then return 0 end
    return ret
end

function stageCleared()
    field->effectScreen( "quest/party/clear" )
    field->effectSound( "Party1/Clear" )
    field->effectObject( "gate" )
    field->enablePortal( "next00", 1)
end

function party1_personal()
    charKey = userID .. "_"
    prob = quest->getVar(charKey)
    if(prob == "clear") then self->say("�е��ݨ�L�H�����C") return end
    q = prob
    if(q == "") then q = random(1, 7) end
    desc = ""
    ans = ""
    if(tonumber(q) == 1) then desc = "�b�������@�ɸ̡A#r�C�h�n�@��ɡA�̧C�����żƦr�O�h�֡H#k�C�Ч⥿�T�������ӡC"; ans = 10
    elseif(tonumber(q) == 2) then desc = "�b�������@�ɸ̡A#r�C�h�n�@��ɡA�̧C���O�q�Ʀr�O�h�֡H#k�C�Ч⥿�T�������ӡC"; ans = 35
    elseif(tonumber(q) == 3) then desc = "�b�������@�ɸ̡A#r�k�v�n�i��@��ɡA�̧C�����O�Ʀr�O�h�֡H#k�C�Ч⥿�T�������ӡC"; ans = 25
    elseif(tonumber(q) == 4) then desc = "�b�������@�ɸ̡A#r�}�b��n�@��ɡA�̧C���ӱ��Ʀr�O�h�֡H#k�C�Ч⥿�T�������ӡC" ans = 25
    elseif(tonumber(q) == 5) then desc = "�b�������@�ɸ̡A#r�n�i��G��ɡA�̧C�����żƦr�O�h�֡H#k�C�Ч⥿�T�������ӡC" ans = 30
    elseif(tonumber(q) == 6) then desc = "�b�������@�ɸ̡A#r�k�v�n�i��@��ɡA�̧C�����żƦr�O�h�֡H#k�C�Ч⥿�T�������ӡC" ans = 8 
    end

    if(prob == "") then
        quest->setVar( charKey, q )
        self->say("�w��Ө�Ĥ@���d�A���U�ӧڷ|�߰ݨC�Ӳխ��@�D���D�A�ШC�ӤH�����s���Ǩæ�������A�ƶq�n�M�کҴ��X�����D�����פ@�˦h�A�M���#b����#k�����L�ӡC�ǳƦn�������D�F�ܡH")
        self->say(desc)
        return
    end

    if(inventory->itemCount(4001007) == ans) then
        if(inventory->exchange(0, 4001007, -ans, 4001008, 1) ~= 0) then
            self->say("�нT�{�z���I�]�٦��������Ŷ��C")
            return
        end
        quest->setVar(charKey, "clear")
        self->say("�ƶq���T�I���ڲ{�b�N��#b�q����#k���z�I�Х浹����������C")
    else
        self->say("�ܩ�p�A�o���O���T�����סI�ƶq�n�M�کҴ��X�����D�����פ@�˦h�C�Юھڰ��D���o���T�ƶq������C")
        self->say(desc) 
    end
end

function party1_stage1()
    stage = quest->getVar("stage")
    ansCount = quest->getUserCount() - 1

    if(stage == "") then
        self->say("�١C�w��Ө�Ĥ@���d�A�ݬݳo�̪��|�P�A�R�����s���ǡA�z�̥����P�ߨ�O���ѳo���s���ǡA�o���s���Ƿ|����#b����#k�C���F�������~�A�C�Ӳխ��m���ӻP�ڽ͸ܡA�ڷ|���L�̤@��²�檺���D�A�L�̥�����������D���פ@�˼ƶq��#b����#k�A���ۧڴN�|���L��#b�q����#k�A��Ҧ����խ��m������F#b�q����#k�A�����浹�����A�åB�Ѷ����A���P�ڽ͸ܡA�N�i�H�����o�����d�A�ɶ������A�Чⴤ�ɶ��A���z�̦n�B�C")
        quest->setVar("stage", "1")
        return
    end

    if(stage ~= "1") then self->say("�ǰe���w�g�}�ҡA�Х[�ָ}�B�e���U�@�����d�I") return end
    if(inventory->itemCount(4001008) < ansCount) then 
        self->say("�ܩ�p�A�z�Ҧ������q���Ҽƶq�����C�������q���Ҽƶq�O����������խ����ƶq�A�]�N�O " .. ansCount .. " �i�~�i�H�������d�C�бz���խ��ɧֱo�X���D�����סA�����P���׼ƶq�@�˦h��#b����#k�A�M��N#b�q����#k�浹�z�C")
    else
        if(inventory->exchange(0, 4001008, -ansCount) ~= 0) then return end
        stageCleared()
        quest->incExpAll(100)
        quest->setVar( "stage", "2" )
    end
end

function party1_stage2()
    if(quest->getVar("stage") ~= "2") then return end
    question = quest->getVar("stage2_q")
    if(question == "") then
        self->say(desc_stage2)
        question = makeAnswer(4, quest->getUserCount())
        quest->setVar("stage2_q", question)
        return
    end
    answer = areaCheck(4, 3)
    if(answer == 0) then
        self->say("�нT�O���������a�w�g�b÷�l�W�C" .. makeAnswer(6, 3))
    elseif(question ~= answer) then
        field->effectScreen("quest/party/wrong_kor")
        field->effectSound("Party1/Failed")
    else
        stageCleared()
        quest->incExpAll(200)
        quest->setVar( "stage", "3" )
    end
end

function party1_stage3()
    if(quest->getVar("stage") ~= "3") then return end
    question = quest->getVar("stage3_q")
    if(question == "") then
        self->say(desc_stage3)
        question = makeAnswer(5, quest->getUserCount())
        quest->setVar("stage3_q", question)
        return
    end
    answer = areaCheck(5, 3)
    if(answer == 0) then
        self->say("�нT�O���������a�w�g�b���W�C")
    elseif(question ~= answer) then
        field->effectScreen("quest/party/wrong_kor")
        field->effectSound("Party1/Failed")
    else
        stageCleared()
        quest->incExpAll(400)
        quest->setVar( "stage", "4" )
    end
end

function party1_stage4()
    if(quest->getVar("stage") ~= "4") then return end
    question = quest->getVar("stage4_q")
    if(question == "") then
        self->say(desc_stage4)
        question = makeAnswer(6, quest->getUserCount())
        quest->setVar("stage4_q", question)
        return
    end
    answer = areaCheck(6, 2)
    if(answer == 0) then
        self->say("�нT�O���������a�w�g�b÷�l�W�C")
    elseif(question ~= answer) then
        field->effectScreen("quest/party/wrong_kor")
        field->effectSound("Party1/Failed")
    else
        stageCleared()
        quest->incExpAll(800)
        quest->setVar( "stage", "5" )
    end
end

function party1_stage5()
    if(quest->getVar("stage") ~= "5") then return end
    count = inventory->itemCount(4001008, 10)
    if(count ~= 10) then
        self->say(desc_stage5)
    else
        inventory->exchange(0, 4001008, -count)
        stageCleared()
        quest->incExpAll(1500)
        quest->setVar( "stage", "5" )
        self->say("�o�O�i�H�q���̫᪺���y���d���ǰe���C�̭����Ǫ��z�@�w�໴�P���ѡA�Цb�ɶ�����ɶq�����ѩǪ��A�z�]�i�H���~�N���}�C�̫�A�٬O���߱z�I�A���F...")
    end
end

function party1_help()
    if ( fieldID == 103000801 ) then self->say(desc_stage2)
    elseif ( fieldID == 103000802 ) then self->say(desc_stage3)
    elseif ( fieldID == 103000803 ) then self->say(desc_stage4) 
    elseif ( fieldID == 103000804 ) then self->say(desc_stage5) 
    end
end

function party1_reward()
    rnum = random( 0, 39 ) 
    nNewItemID = 0 
    nNewItemNum = 0 
    if ( rnum == 0 )  then
        nNewItemID = 2000004 
        nNewItemNum = 5 
    elseif ( rnum == 1 )  then
        nNewItemID = 2000001 
        nNewItemNum = 100 
    elseif ( rnum == 2 )  then
        nNewItemID = 2000002 
        nNewItemNum = 70 
    elseif ( rnum == 3 )  then
        nNewItemID = 2000003 
        nNewItemNum = 100 
    elseif ( rnum == 4 )  then
        nNewItemID = 2000006 
        nNewItemNum = 50 
    elseif ( rnum == 5 )  then
        nNewItemID = 2022000 
        nNewItemNum = 15 
    elseif ( rnum == 6 )  then
        nNewItemID = 2022003 
        nNewItemNum = 15 
    elseif ( rnum == 7 )  then
        nNewItemID = 2040002 
        nNewItemNum = 1 
    elseif ( rnum == 8 )  then
        nNewItemID = 2040402 
        nNewItemNum = 1 
    elseif ( rnum == 9 )  then
        nNewItemID = 2040502 
        nNewItemNum = 1 
    elseif ( rnum == 10 )  then
        nNewItemID = 2040505 
        nNewItemNum = 1 
    elseif ( rnum == 11 )  then
        nNewItemID = 2040602 
        nNewItemNum = 1 
    elseif ( rnum == 12 )  then
        nNewItemID = 2040802 
        nNewItemNum = 1 
    elseif ( rnum == 13 )  then
        nNewItemID = 4003000 
        nNewItemNum = 30 
    elseif ( rnum == 14 )  then
        nNewItemID = 4010000 
        nNewItemNum = 8 
    elseif ( rnum == 15 )  then
        nNewItemID = 4010001 
        nNewItemNum = 8 
    elseif ( rnum == 16 )  then
        nNewItemID = 4010002 
        nNewItemNum = 8 
    elseif ( rnum == 17 )  then
        nNewItemID = 4010003 
        nNewItemNum = 8 
    elseif ( rnum == 18 )  then
        nNewItemID = 4010004 
        nNewItemNum = 8 
    elseif ( rnum == 19 )  then
        nNewItemID = 4010005 
        nNewItemNum = 8 
    elseif ( rnum == 20 )  then
        nNewItemID = 4010006 
        nNewItemNum = 5 
    elseif ( rnum == 21 )  then
        nNewItemID = 4020000 
        nNewItemNum = 8 
    elseif ( rnum == 22 )  then
        nNewItemID = 4020001 
        nNewItemNum = 8 
    elseif ( rnum == 23 )  then
        nNewItemID = 4020002 
        nNewItemNum = 8 
    elseif ( rnum == 24 )  then
        nNewItemID = 4020003 
        nNewItemNum = 8 
    elseif ( rnum == 25 )  then
        nNewItemID = 4020004 
        nNewItemNum = 8 
    elseif ( rnum == 26 )  then
        nNewItemID = 4020005 
        nNewItemNum = 8 
    elseif ( rnum == 27 )  then
        nNewItemID = 4020006 
        nNewItemNum = 8 
    elseif ( rnum == 28 )  then
        nNewItemID = 4020007 
        nNewItemNum = 3 
    elseif ( rnum == 29 )  then
        nNewItemID = 4020008 
        nNewItemNum = 3 
    elseif ( rnum == 30 )  then
        nNewItemID = 1032002 
        nNewItemNum = 1 
    elseif ( rnum == 31 )  then
        nNewItemID = 1032004 
        nNewItemNum = 1 
    elseif ( rnum == 32 )  then
        nNewItemID = 1032005 
        nNewItemNum = 1 
    elseif ( rnum == 33 )  then
        nNewItemID = 1032006 
        nNewItemNum = 1 
    elseif ( rnum == 34 )  then
        nNewItemID = 1032007 
        nNewItemNum = 1 
    elseif ( rnum == 35 )  then
        nNewItemID = 1032009 
        nNewItemNum = 1 
    elseif ( rnum == 36 )  then
        nNewItemID = 1032010 
        nNewItemNum = 1 
    elseif ( rnum == 37 )  then
        nNewItemID = 1002026 
        nNewItemNum = 1 
    elseif ( rnum == 38 )  then
        nNewItemID = 1002089 
        nNewItemNum = 1 
    elseif ( rnum == 39 )  then
        nNewItemID = 1002090 
        nNewItemNum = 1 
    end
    if(inventory->exchange(0, nNewItemID, nNewItemNum) ~= 0) then
        self->say("�нT�O�z���I�]�٦����������Ŷ��C")
    else
        target->transferField(103000805, "")
    end
    return
end

if(quest->getVar("stage") == "clear") then party1_reward() return end
if(target->isPartyBoss() == 1) then
    if(fieldID == 103000800) then
        party1_stage1()
    elseif(fieldID == 103000801) then
        party1_stage2()
    elseif(fieldID == 103000802) then
        party1_stage3()
    elseif(fieldID == 103000803) then
        party1_stage4()
    elseif(fieldID == 103000804) then
        party1_stage5()
    end
else
    if(fieldID == 103000800) then
        party1_personal()
    else party1_help() end
end