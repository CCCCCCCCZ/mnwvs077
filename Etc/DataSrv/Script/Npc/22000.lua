
require "./DataSrv/Script/sysDef"

if(self->askYesNo("�u�n�f���o����A�A�N�i�H�e����j���@�ɫ_�I�C�u�n #e150����#n�A�ڷ|�a�A��#b���h�Q�ȴ�#k�C���O�A�@�����}�o�Ӧa��A�N�û�����^�ӤF�C�p��H�A�Q���}�o�̨ëe�����h�Q�ȴ�ܡH") == 1) 
{
    if(inventory->itemCount(4031801) != 0) 
    {
        self->sayNext("�n���A�·е���150����...�x�A���O����H�O#b���d�������˫H#k�ܡH�K�I�A���Ӧ��I��ڪ��C�S�Q��ڦ��o�Ӻa���i�H�ݨ���d�����˨Ӫ��H�A�Q���A�@�w���ܤj����O�i�H�����@�찶�j���_�I�a�I�ڤ����Ӹ�A�����o���O�Ϊ��C");
        self->sayNext("�J�M�O���d�����˧A�Ӫ��A����N�K�O���A�@���a�A��í�F�I�ڭ̲{�b�N�ߨ�X�o�e�����h�Q�ȴ�I");
        inventory->exchange(0, 4031801, -1);
        target->transferField(104000000, "");
    }
    else
    {
        self->sayNext("�Q�e�����c�a���@�ɶܡH���򵹧�#e150 ����#n�ڴN�i�H�a�A���}...");
        if(target->getLevel() < 7)
            self->sayNext("���ڬݬ�...�ڻ{���A�٤������C�A�����ܤ�7�Ť~����e�����h�Q�ȴ�C");
        else
        {
            if(inventory->exchange(-150) == 1)
                self->sayNext("����H�S�����o�Q�f�ڪ���H...");
            else
            {
                self->sayNext("�n���I#e150 ����#n�ڤw�g����F�I���ڭ̥X�o�a�A�e�����h�Q�ȴ�I");
                target->transferField(104000000, "");
            }
        }
    }
}
else
    self->say("�ݨӱz�٦��|���������Ʊ��A���z�M�w�n�b�P�ڽ͸ܡA���O�A�@�����}�o�̴N�A�]�L�k�^�ӤF�I")