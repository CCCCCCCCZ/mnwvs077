require "./DataSrv/Script/sysDef"

ret = self->askMenu("#L0#MC100#l\r\n#L1#MC200#l\r\n#L2#MC300#l\r\n#L3#MC400#l\r\n#L4#MC500#l\r\n");

fieldSet = FieldSet.get("MC100");
if(fieldSet) {
    ret = fieldSet->enter(userID);

::ENTER_RESULT::
    if (ret == 1)
        self->say("�n�D�ԶW�ź���F�ն����ȡA��a�ۤv�@�ӤH�O���i�઺�A�ҥH�Х��[�J�����A�P�ڽ͸ܡC");
    elseif (ret == 2)
        self->say("�ж����P�ڽ͸ܡC");
    elseif (ret == 3 or ret == 4) 
        self->say("���i��W�ź���F�ն����ȡA�z������H�Ʀܤ�#r4�H#k�A���Ŭɩ�#r21��30��#k�����A�åB�Ѷ����P�ڥ�͡I");
    elseif (ret == 5) {
        ret = fieldSet->join(userID);
        if(ret == 5)
            self->say("�w�g������ثe���b�D�Բն����ȡA�Ч��W�D�Ύ͵��ݥ��b�i�檺������C");
        else
            goto ENTER_RESULT;
    }
}