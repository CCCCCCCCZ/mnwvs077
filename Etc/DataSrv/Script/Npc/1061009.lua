
require "./DataSrv/Script/sysDef"

nJob = target->getJob();
if((nJob == 210 or nJob == 220 or nJob == 230) and qr->get(7500) == "p1")
{
    fieldSet = FieldSet.get("ThirdJob2");
    if(fieldSet)
    {
        ret = fieldSet->enter(userID);
        if (ret == 5) 
        {
            self->say("�w�g����L�_�I�a�i�椤�A�еy�ݤ���C");
            return;
        }
        fieldSet->setVar("returnField", self->field()->getID());
    }
}
else
    self->say("�ݨӵL�k�i�J...");