require "./DataSrv/Script/sysDef"

fieldSet = FieldSet.get("Party1")
if(fieldSet) then
    ret = fieldSet->enter(userID)
   if (ret == 1) then
        self->say("�n�D�ԶW�ź���F�ն����ȡA��a�ۤv�@�ӤH�O���i�઺�A�ҥH�Х��[�J�����A�P�ڽ͸ܡC")
    elseif (ret == 2) then
        self->say("�ж����P�ڽ͸ܡC")
    elseif (ret == 3 or ret == 4) then
        self->say("���i��W�ź���F�ն����ȡA�z������H�Ʀܤ�#r4�H#k�A���Ŭɩ�#r21��30��#k�����A�åB�Ѷ����P�ڥ�͡I")
    elseif (ret == 5) then
        self->say("�w�g������ثe���b�D�Բն����ȡA�Ч��W�D�Ύ͵��ݥ��b�i�檺������C")
    end
end