require "./DataSrv/Script/sysDef"

fieldSet = FieldSet.get("Party2");
if(fieldSet) 
{
    ret = fieldSet->enter(userID);
   if (ret == 1)
        self->say("�n�D�Ԫ��㫰101�ն����ȡA��a�ۤv�@�ӤH�O���i�઺�A�ҥH�Х��[�J�����A�P�ڽ͸ܡC");
    else if (ret == 2)
        self->say("�ж����P�ڽ͸ܡC");
    else if (ret == 3 or ret == 4)
        self->say("���i�檱�㫰101�ն����ȡA�z������H�Ʀܤ�#r5�H#k�A���Ŭɩ�#r36��50��#k�����A�åB�Ѷ����P�ڥ�͡I");
    else if (ret == 5)
        self->say("�w�g������ثe���b�D�Բն����ȡA�Ч��W�D�Ύ͵��ݥ��b�i�檺������C");
}