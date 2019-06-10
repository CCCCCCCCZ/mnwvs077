require "./DataSrv/Script/sysDef"

fieldID = self->field()->getID();

--Default settings
cost = 45000;
targetField = 211040200;

if(fieldID == 540000000) { targetField = 541020000; cost = 30000; }
else if(fieldID == 240000000) { targetField = 240030000; cost = 55000; }
else if(fieldID == 220000000) { targetField = 220050300; cost = 45000; }
else if(fieldID == 211000000) { targetField = 211040200; cost = 45000; }

self->sayNext("�A�n�A�ڬO#b#p" .. templateID .. "##k�A�ڥi�H�a�A��U�ئM�I���a��A�A�i�H�q#b#m" .. self->field()->getID() .. "##k�e��#b#m" .. targetField .. "##k�A�åB�u�ݭn#b" .. cost .. "#k�����I");
if(self->askYesNo("�p��H�A������e��#b#m" .. targetField .. "##k�ܡH�Ъ`�N�A�M�I�a�Ϫ��Ǫ��S�O�j���A���D���n�U���ǳơA�_�h#r����ĳ�e��#k�C") == 1)
{
    if(inventory->exchange(-cost) != 0)
        self->say("�z�S�������������A�@�@�ݭn#b" .. cost .. "#k�����C");
    else
        target->transferField(targetField, "");
}