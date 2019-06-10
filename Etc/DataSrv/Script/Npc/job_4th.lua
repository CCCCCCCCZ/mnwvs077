
require "./DataSrv/Script/sysDef"

function changeJob4(jobCode, skillLearnItem)
{
    nPSP = (target->getLevel() - 120) * 3;
    if(target->getSP(0) > nPSP)
        self->say("�A���G�٦��Ѿl��#b�ޯ��I��#k�|���ϥΧ����I�Ч�Ѿl���ޯ��I�ƨϥΧ�����A�ӻP�ڹ�ܡC");
    else
    {
        if(inventory->exchange(0, skillLearnItem, 1) != 0)
        {
            self->say("�нT�O�I�]���������٦��������Ŷ��C");
            return;
        }
        target->setJob(jobCode + 1);
        target->incAP(5);
        target->incSP(3);

        nJobType = math.floor(jobCode / 100);
        if(nJobType == 2)
        {
            if(jobCode == 111)
                self->sayNext("���ߧA�����F�C�h�@�ɪ�#b�׷��^��#k�C�}�l�o���]�O���L�����a�I");
            else if(jobCode == 121)
                self->sayNext("���ߧA�����F�C�h�@�ɪ�#b�����t�M�h#k�C�}�l�o���]�O���L�����a�I");
            else if(jobCode == 131)
                self->sayNext("���ߧA�����F�C�h�@�ɪ�#b���M�h#k�C�}�l�o���]�O���L�����a�I");
            self->sayNext("�o�ëD�C�h���������I�A�A���C�h�����N���M��A�p�����媺�ۤv�C");
        }
        else if(nJobType == 2)
        {
            if(jobCode == 211)
                self->sayNext("���ߧA�����F�]�k�@�ɪ�#b�j�]�ɤh�]���B�r�^#k�C�}�l�o���]�O���L�����a�I");
            else if(jobCode == 221)
                self->sayNext("���ߧA�����F�]�k�@�ɪ�#b�j�]�ɤh�]�B�B�p�^#k�C�}�l�o���]�O���L�����a�I");
            else if(jobCode == 231)
                self->sayNext("���ߧA�����F�]�k�@�ɪ�#b�D��#k�C�}�l�o���]�O���L�����a�I");
            self->sayNext("�o�ëD�k�v���������I�A�A���k�v�����N���M��A�p�����媺�ۤv�C");
        }
        else if(nJobType == 3)
        {
            if(jobCode == 311)
                self->sayNext("���ߧA�����F�}�b��@�ɪ�#b�b��#k�C�}�l�o���]�O���L�����a�I");
            else if(jobCode == 321)
                self->sayNext("���ߧA�����F�}�b��@�ɪ�#b���g��#k�C�}�l�o���]�O���L�����a�I");
            self->sayNext("�o�ëD�}�b�⤧�������I�A�A���}�b�⤧���N���M��A�p�����媺�ۤv�C");
        }
        else if(nJobType == 4)
        {
            if(jobCode == 411)
                self->sayNext("���ߧA�����F�s��@�ɪ�#b�]�ώ�#k�C�}�l�o���]�O���L�����a�I");
            else if(jobCode == 421)
                self->sayNext("���ߧA�����F�s��@�ɪ�#b�t�v����#k�C�}�l�o���]�O���L�����a�I");
            self->sayNext("�o�ëD�s�餧�������I�A�A���s�餧���N���M��A�p�����媺�ۤv�C");
        }
        else if(nJobType == 5)
        {
            if(jobCode == 511)
                self->sayNext("���ߧA�����F���s�@�ɪ�#b���Q#k�C�}�l�o���]�O���L�����a�I");
            else if(jobCode == 521)
                self->sayNext("���ߧA�����F���s�@�ɪ�#b�j��#k�C�}�l�o���]�O���L�����a�I");
            self->sayNext("�o�ëD���s���������I�A�A�����s�����N���M��A�p�����媺�ۤv�C");
        }
    }
}