
require "./DataSrv/Script/sysDef"

function start()
    if(qr->getState(questID) ~= 0) then
        return
    end

    count = inventory->itemCount(2010007)
    self->say(count)

    self->sayNext("�١A���ƶܡH��A�ڬOù�ǡA�i�H�ЧA�@�Ǧ��Ϊ����ѡC");
    self->sayNext("�A��������ڷ|�b�o�ܡH�������I\r�ڭt�d�оɨ��ǭ�i�J�������@�ɪ��_�I�̡̭C");
    if(self->askYesNo("�ҥH.....���ڭ̨��I���쪺�a~") == 1) then
        target->incHP(-(target->getHP() / 2))
        if(inventory->itemCount(2010007) == 0) then
            inventory->exchange(0, 2010007, 1)
         end
        self->sayNext("�~��F�ܡH�p�G��q�ܦ�0�A�A�N�|�J��j�·СC�ڵ����|���A�@��#rù�Ǫ�ī�G#k�C�аȥ����U���C�ϥΥ���A�|�ܱo�󦳬��O�C���}�����������ī�G�C��²�檺�A�u�n���@�U��L��#bI#k�N�ॴ�}������C");
        self->sayNext("���H�A�٨S��ڵ��A��ī�G�Y���I�H�Y���A��HP�N�|�W�ɤF�C�бN��q�^�Ш�100%�A�ӧ�ڧa�C")
        qr->setState(questID, 1)
    else
        self->say("�o�i�O��X�_�I���Ĥ@�B�I���A�Q�M���A�P�ڽ͸ܧa�C")
    end
end

function complete()
    if(qr->getState(questID) ~= 1) then
        return
    end

    if(inventory->itemCount(2010007) ~= 0) then
        self->sayNext("���H�A�٨S��ڵ��A��ī�G�Y���I�H�Y���A��HP�N�|�W�ɤF�C�бN��q�^�Ш�100%�A�ӧ�ڧa�C")
        return
    end
    self->sayNext("�O���O��²��H�A�i�H�b�k�������]�w#b����#k�Cť������a�H�C�j�@�q�ɶ��A��q�N�|��_�F�C���M�ܪ�ɶ��A���n�n�B�Ϊ��ܥi�H���U���֪��C")
    self->sayNext("�n�F�I�ڤw�g�ЧA�ܦh�F�A�ӵ��A§���F�C�o�O�@�ǥ��ӯ����U�A�b�������@�ɦs�����@�Ǫ��~�A�Цb��檺�ɭԨϥΥ��̡C");
    self->sayNext("��A�گ�ЧA���N�u���o�ǤF�A���M�ܿ�ѡA���O�ڭ̯u���ӻ��A���F�C�n�n���U�ۤv�a�C\r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0#\r\n#v2010000# 3 #t2010000#\r\n#v2010009# 3 #t2010009#\r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 10 exp");

    target->incEXP(10);
    inventory->exchange(0, 2010000, 3);
    inventory->exchange(0, 2010009, 3);
    qr->setState(questID, 2)
end