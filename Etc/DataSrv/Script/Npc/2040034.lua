require "./DataSrv/Script/sysDef"

fieldSet = FieldSet.get("Party2")
if(fieldSet) then
    ret = fieldSet->enter(userID)
   if (ret == 1) then
        self->say("�n�D�Ԫ��㫰101�ն����ȡA��a�ۤv�@�ӤH�O���i�઺�A�ҥH�Х��[�J�����A�P�ڽ͸ܡC")
    elseif (ret == 2) then
        self->say("�ж����P�ڽ͸ܡC")
    elseif (ret == 3 or ret == 4) then
        self->say("���i�檱�㫰101�ն����ȡA�z������H�Ʀܤ�#r5�H#k�A���Ŭɩ�#r36��50��#k�����A�åB�Ѷ����P�ڥ�͡I")
    elseif (ret == 5) then
        self->say("�w�g������ثe���b�D�Բն����ȡA�Ч��W�D�Ύ͵��ݥ��b�i�檺������C")
    end
end