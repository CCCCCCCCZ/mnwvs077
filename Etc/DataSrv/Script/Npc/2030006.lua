
require "./DataSrv/Script/sysDef"

function wizQuestion(index)
{
    ::INCORRECT_ANSWER::
    if(errorReport == 1)
    {
        self->say("�ܿ�ѡA�A�����F�A�������s�}�l�C");
        return;
    }
    errorReport = 1;

    if(index == 1)
    {
        ans = self->askMenu("���D�@�G�q�������@�}�l�A�J�쪺�Ĥ@��NPC�O�֡H#b\r\n#L0# #p2000##l\r\n#L1# #p1010100##l\r\n#L2# #p2101##l\r\n#L3# #p2001##l\r\n#L4# #p2102##l");
        if(ans != 2) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�G�G�U�C���A�b�����q�L�k���쪺�Ǫ��O���@�ӡH#b\r\n#L0# #o100101##l\r\n#L1# #o1210102##l\r\n#L2# #o130101##l\r\n#L3# #o1210100##l\r\n#L4# #o120100##l");
        if(ans != 3) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�T�G�}�b��������ȽШD�ڭ̮����򪫫~���o�A�Ӫv�n�o���f�H#b\r\n#L0# �����Ĥ� #l\r\n#L1# #t4031654# #l\r\n#L2# #t2002011#  #l\r\n#L3# #t2002015# #l\r\n#L4# #t4031006##l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�|�G�������U�C�ī~���A�����ī~�P�ĪG�O�����T�������Y���H#b\r\n#L0# #t2050003# - �Ѱ��Ҧ����`���A#l\r\n#L1# #t2020014# - MP 3000 �^�_#l\r\n#L2# #t2020004# - HP 400 �^�_#l\r\n#L3# #t2020000# - MP 200 �^�_#l\r\n#L4# #t2000003# - MP 100 �^�_#l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D���G�U�C���A�b���h�Q�Ȯq�L�k���쪺�Ǫ��O���@�ӡH#b\r\n#L0# #o2110200##l\r\n#L1# #o2230100##l\r\n#L2# #o5130100##l\r\n#L3# #o2230101##l\r\n#L4# #o3000000##l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
    }
    else if(index == 2)
    {
        ans = self->askMenu("���D�@�G�U�C���A�b��Ǵ��q�������k�p�����S�����H���O�֡H#b\r\n#L0# �֯S���h #l\r\n#L1# #p2010000##l\r\n#L2# #p2020003##l\r\n#L3# #p2030002##l\r\n#L4# #p2030001##l");
        if(ans != 0) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�G�G�U�C���A������N���¾ԼC���ݭn�����ƬO����H#b\r\n#L0# #t4003002##l\r\n#L1# #t4021009##l\r\n#L2# #t4001006##l\r\n#L3# #t4003003##l\r\n#L4# #t4001005##l");
        if(ans != 3) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�T�G�U�C���A�b���h�Q�Ȯq���Z�������L�k���쪺NPC�O�֡H#b\r\n#L0# #p1052002##l\r\n#L1# #p1052102##l\r\n#L2# #p1052012##l\r\n#L3# #p1052100##l\r\n#L4# #p1040000##l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�|�G�U�C���A���թǪ��P���˥��ү�o�쪺�ԧQ�~���k�X���O���@�ӡH#b\r\n#L0# #o3230200# - #t4000059##l\r\n#L1# #o4230105# - ���H�᪺���l#l\r\n#L2# #o6130101# - #t4000040##l\r\n#L3# #o6130103# - #t4000050##l\r\n#L4# #o3210800# - #t4000029##l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D���G�U�C���A�|�����Ǫ��O���@�ӡH#b\r\n#L0# #o5130104##l\r\n#L1# #o4230105##l\r\n#L2# #o4230103##l\r\n#L3# #o4130101##l\r\n#L4# #o5300100##l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
    }
    else if(index == 3)
    {
        ans = self->askMenu("���D�@�G�b���h�Q�Ȯq���}�b����ݤ�����NPC�O�֡H\r\n#b#L0# #p1012101##l\r\n#L1# #p1002001##l\r\n#L2# #p1010100##l\r\n#L3# #p1012100##l\r\n#L4# #p1012102##l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�G�G���������A�q����1�쵥��2�ݭn�h�ָg��ȡH#b\r\n#L0# 10#l\r\n#L1# 15#l\r\n#L2# 20#l\r\n#L3# 25#l\r\n#L4# 30#l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�T�G�H�U�n�D���ų̰������ȬO�H#b\r\n#L0# ���N���¾ԼC #l\r\n#L1# �u�çL�|�J���M�� #l\r\n#L2# �M��j�N���� #l\r\n#L3# �ȳʹ��S�M�·t���� #l\r\n#L4# �����k�����p���� #l");
        if(ans != 3) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�|�G�U�C���A����¾�~���O2�त�X�{��¾�~�H#b\r\n#L0# �g�Ԥh#l\r\n#L1# �B�p�Ův#l\r\n#L2# ���Q#l\r\n#L3# �]�ɤh#l\r\n#L4# �y�H#l");
        if(ans != 3) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D���G�U�C���A�i�H���ư��檺���ȬO�H#b\r\n#L0# ���U�׮R#l\r\n#L1# ���yۣۣ�_��#l\r\n#L2# �ײz�������a#l\r\n#L3# ��Ū������c#l\r\n#L4# ���Ѫ�����#l");
        if(ans != 3) { goto INCORRECT_ANSWER; }
    }
    else if(index == 4)
    {
        ans = self->askMenu("���D�@�G�U�C���A���թǪ��P���˥��ү�o�쪺�ԧQ�~�k�X���O���@�ӡH#b\r\n#L0# #o3210100# - �Ϊνv�a#l\r\n#L1# #o2300100# - #t4000042##l\r\n#L2# #o1210100# - ���_��#l\r\n#L3# #o4230100# - �s����#l\r\n#L4# #o2230101# - ۣۣ�U��#l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�G�G�U�C���A�b���h�Q�Ȯq���i�h�����L�k���쪺NPC�O�֡H#b\r\n#L0# #p1021100##l\r\n#L1# #p1022100##l\r\n#L2# #p1022002##l\r\n#L3# #p1022003##l\r\n#L4# #p1032002##l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�T�G�b�Z���������A���a�X�����֦~���Ǵ������ˬO�֡H#b\r\n#L0# #p1012005##l\r\n#L1# #p1012002##l\r\n#L2# #p12000##l\r\n#L3# #p20000##l\r\n#L4# #p1012003##l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�|�G���F2��Ӧ���30�Ӷ¯]����¾�Щx�A�q�L���رo�줰��H#b\r\n#L0# #t4031012##l\r\n#L1# #t4031057##l\r\n#L2# #t4031058##l\r\n#L3# ���Ѫ����˫H#l\r\n#L4# �_�I�a����#l");
        if(ans != 0) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D���G�ھڤ��P¾�~����1����¾��������A���T�B�������O���@�ӡH#b\r\n#L0# �C�h - �O�q 30+#l\r\n#L1# �k�v - ���O 25+#l\r\n#L2# �}�b�� - �ӱ� 25+#l\r\n#L3# �s�� - �ӱ� 20+#l\r\n#L4# �s�� - �O�q 20+#l");
        if(ans != 2) { goto INCORRECT_ANSWER; }
    }
    else if(index == 5)
    {
        ans = self->askMenu("���D�@�G�Q�Ǫ������ɯS�O�����`���A�S���Q���T�������O���@�ӡH\r\n#b#L0# �·t�X�X�R���v�U�� #l\r\n#L1# �A�G�X�X��o��EXP��� #l\r\n#L2# ��z�X�X���ʳt�׭��C #l\r\n#L3# �ʦL�X�X�L�k�ϥΧޯ� #l\r\n#L4# ���r�X�X�w�C���HP #l");
        if(ans != 2) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�G�G�b��Ǵ��q�S�����өǪ��H#b\r\n#L0# #o5130103##l\r\n#L1# #o5140000##l\r\n#L2# #o6300000##l\r\n#L3# #o8140000##l\r\n#L4# #o5120000##l");
        if(ans != 0) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�T�G�U�C���A�b��Ǵ��q���B�쳷��L�k���쪺NPC�O�֡H#b\r\n#L0# #p2020000##l\r\n#L1# #p2020003##l\r\n#L2# #p2012010##l\r\n#L3# #p2020006##l\r\n#L4# #p2020007##l");
        if(ans != 2) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�|�G�U�C���O�i��X���B�һs�B�s�@��NPC�O���@�ӡH#b\r\n#L0# #p2010003##l\r\n#L1# #p1022003##l\r\n#L2# #p1032003##l\r\n#L3# #p1032002##l\r\n#L4# #p2020000##l");
        if(ans != 2) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D���G�������U�C�ī~���A�����ī~�P�ĪG�O���T�������Y���H#b\r\n#L0# #t2000001# - HP 200 ���_#l\r\n#L1# #t2001001# - MP 2000 ���_#l\r\n#L2# #t2010004# - MP 100 ���_#l\r\n#L3# #t2020001# - HP 300 ���_#l\r\n#L4# #t2020003# - HP 400 ���_#l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
    }
    else if(index == 6)
    {
        ans = self->askMenu("���D�@�G�b���h�Q�Ȯq���]�k�˪L�ݤ�����NPC�O�֡H#b\r\n#L0# #p1032003##l\r\n#L1# #p1032002##l\r\n#L2# #p1032001##l\r\n#L3# #p1032100##l\r\n#L4# #p1081101##l");
        if(ans != 4) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�G�G�b��Ǵ��q���ѪŤ����ݤ�����NPC�O�֡H#b\r\n#L0# #p2010000##l\r\n#L1# #p1022100##l\r\n#L2# #p2010003##l\r\n#L3# #p2012004##l\r\n#L4# #p2012005##l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�T�G��ۣۣ�B�짯�B�Ť��F�B��짯�B�T�������A���ӬO���ų̰����Ǫ��H#b\r\n#L0# ��ۣۣ #l\r\n#L1# ��짯 #l\r\n#L2# �Ť��F #l\r\n#L3# �짯 #l\r\n#L4# �T������ #l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D�|�G�U�C���A�b���h�Q�Ȯq�S���������O�H#b\r\n#L0# �_�ۧ� #l\r\n#L1# ������ #l\r\n#L2# �i�h���� #l\r\n#L3# �Z������ #l\r\n#L4# �]�k�˪L#l");
        if(ans != 1) { goto INCORRECT_ANSWER; }
        ans = self->askMenu("���D���G�P�d���L����NPC�O�֡H#b\r\n#L0# #p1012005##l\r\n#L1# #p1032102##l\r\n#L2# #p1012007##l\r\n#L3# #p1012002##l\r\n#L4# #p1012004##l");
        if(ans != 3) { goto INCORRECT_ANSWER; }
    }
    self->say("���ߧA�����F�Ҧ�������...�A�����z�w�g��o����...�Ч�o�Ӷ������b���W�M��^�h�C");
    if(inventory->exchange(0, 4031058, 1) != 0)
        self->say("���|�a�H�ݏ��ӧA����L���Ŷ�����...");
}

if(target->getLevel() >= 70 and qr->get(7500) == "end1")
{
    if(inventory->itemCount(4031058) != 0)
        self->say("�A�٨S�ⶵ��a�^�h�����ѭ̶ܡH");
    else if(self->askYesNo("... ... ...\r\n�p�G�A�Q�n�q�L���z������A�A�������T�^���کҴ��X�����D�A���L�A�b�����e�A�A������X#b#t4005004##k�@���N���A�A�ǳƦn�F�ܡH") == 1)
    {
        if(inventory->exchange(0, 4005004, -1) != 0)
            self->say("�A���W�S������#b#t4005004##k�A�ڵL�k���A�i�����...");
        else
        {
            self->say("���򱵤U�ӧڱN�}�l���z����C�^���U�C�Ҧ����D�A���A�N�i�H�q�L����C���O�p�G�A�^�����F�A�Ύ͸չϻ����A���A�������s�ӹL...");
            wizQuestion(random(1, 6));
        }
    }
    else
        self->say("���A�ǳƦn�ɡA�A�ӻP�ڽ͸ܡC");
}