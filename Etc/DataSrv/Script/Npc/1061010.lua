
require "./DataSrv/Script/sysDef"

fieldID = self->field()->getID();
returnField = 0;
if(fieldID == 108010301)
    returnField = 102000000;
else if(fieldID == 108010201)
    returnField = 101000000;
else if(fieldID == 108010101)
    returnField = 100000000;
else if(fieldID == 108010401)
    returnField = 103000000;
else
    returnField = 120000101;

if(self->askYesNo("�w�g�������ȷQ�n���}�F�ܡH�ڥi�H�e�A�^��#b#m" .. returnField .. "##k�C") == 1)
    target->transferField(returnField, "");