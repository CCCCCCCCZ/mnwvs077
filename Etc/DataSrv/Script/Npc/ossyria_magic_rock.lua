require "./DataSrv/Script/sysDef"


--//The Magic Rock @ Orbis 
function s_ossyria3_1() {
    inven = inventory; 

    if ( inven->itemCount( 4001019 ) >= 1 ) { 
        ret1 = self->askYesNo( "�A�i�H�ϥ�#b#t4001019##k�ӱҰ�#b#p2012014##k�C�O�_�n�����ǰe��#b#p2012015##k���񪺦a�I�H" ); 
        if ( ret1 != 0 ) { 
            ret2 = inven->exchange( 0, 4001019, -1 ); 
            if ( ret2 != 0 ) self->say( "�L�k�Ұ�#b#p2012014##k�A�]���һݭn��#b#t4001019##k�����C" ); 
            else target->transferField( 200082100, "sp" ); 
        } 
    } 
    else self->say( "�o��#b#p2012014##k�i�H��A�ǰe��#b#p2012015##k�Ҧb�a����A���O�����n�����������b�~��Ұʶǰe�C" ); 
} 

--//The Magic Rock @ El Nath 
function s_ossyria3_2() {
    inven = inventory; 

    if ( inven->itemCount( 4001019 ) >= 1 ) { 
        ret1 = self->askYesNo( "�A�i�H�ϥ�#b#t4001019##k�ӱҰ�#b#p2012015##k�C�O�_�n�����ǰe��#b#p2012014##k���񪺦a�I�H" ); 
        if ( ret1 != 0 ) { 
            ret2 = inven->exchange( 0, 4001019, -1 ); 
            if ( ret2 != 0 ) self->say( "�L�k�Ұ�#b#p2012015##k�A�]���һݭn��#b#t4001019##k�����C" ); 
            else target->transferField( 200080200, "sp" ); 
        } 
    } 
    else self->say( "�o��#b#p2012015##k�i�H��A�ǰe��#b#p2012014##k�Ҧb�a����A���O�����n�����������b�~��Ұʶǰe�C"); 
} 