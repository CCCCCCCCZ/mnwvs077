
require "./DataSrv/Script/sysDef"

field = self->getField();
if(field and field->getID() == 0) 
{
    if(self->askYesNo("�w��Ө췬�����@�ɡI�o�̪��V�m�ҬO���F�n���U��ߪ̡�ڷ|��ĳ�z�Q�ΰV�m�ҨӼ��x�C���A��M�z�]�i�H�������L�ö}�l�_�I�A�O�_�n�i�J�V�m���O�H") == 1)
    {
        self->say("�ڱN�e�z�i�J�A���O�b�����e�٬O�n�����z�A�аȥ���`���ɭ������ܡA���z�n�B��");
        target->transferField(1, "");
    }
    else
    {
        if(self->askYesNo("�z�O�_�u���n�����}�l�ȵ{�O�H") == 1) 
        {
            self->say("�ݨӱz�w�g�U�w�M�ߡA���ڱN�����N�z�e���V�m�ҡA���z�n�B��");
            target->transferField(40000, "");
        }
        else
            self->say("�ݨӱz�n�S���ǳƦn�A���z�ǳƦn���H�ɥi�H��ڻ��I");
    }
}
else
{
    self->sayNext("�o�̱N�|�}�l�V�m�ҵ{�A�P�ɱz�]�����|�i�H����U����¾�~�C");
    self->sayNext("��z�V�O��F�F�@�w�����ū�A�N�i�H���¾�~�A�b�}�b����i�H��¾���}�b��A�]�k�˪L�i�H��¾���k�v�A�i�h�����i�H��¾���C�h�A�Z�������h�i�H��¾���s��I");
}