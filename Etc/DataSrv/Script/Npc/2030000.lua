require "./DataSrv/Script/sysDef"

if(inventory->itemCount(4031450) > 0)
{
    target->transferField(921100100, "");
    return;
}

self->sayNext("�K�A�A�ݰ_�Ӧ��G�Q�n������`�J���a��H�b���̭����ܦh�j�j���Ǫ��|�]��ۧA�A���ޫ�ˡA�A�@�w�n�p�ߡC�ܤ[�H�e�A�P�ڦP�����k�H�Q�n�i�h�������ǫ¯٧��l���Ǫ��A�i�O�N�A�]�S���^�ӤF...");
sayStr = "�ڻ{���A�٬O���֧��ܤ߷N�A���O�p�G�A��M�n�e�i����...�ڱo�ݬݧA�O���O���o�Ӹ��A�ڤ��Ʊ榳�H�ենi�h�e���A";
if(target->getLevel() >= 50)
    sayStr = sayStr .. "��...�A�ݰ_�����Ӻ�����O���A�n�a�A�A�T�w�n�i�J�H";
else
    sayStr = sayStr .. "��...����50�Ť���A�Ҽ{�ݬݤ]����H�A�T�w�n�i�J�H";

if(self->askYesNo(sayStr) == 1)
    target->transferField(211040300, "under00");
else
    self->say("���ާA�����ųo�򰪡A�٬O�������_�i��e����a�H�S���Y�A��A���ܤ߷N�A�A�ӧ�ڡA�ڪ�¾�d�N�O�O�@�o��");