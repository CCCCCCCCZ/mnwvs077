require "./DataSrv/Script/sysDef"

if(self->askYesNo("�{�b�N�n���}�o�̶ܡH") == 1) then
    inventory->exchange(0, 4001022, inventory->itemCount(4001022))
    inventory->exchange(0, 4001023, inventory->itemCount(4001023))
    target->transferField(221024500, "")
end