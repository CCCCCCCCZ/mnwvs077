
require "./DataSrv/Script/sysDef"

-- // Getting the Ticket
function s_get_ticket() {
	cTime = System.getDateTime();
	field = self->getField();
    inven = inventory;
    state = field->getContiState();
    boardingTime = field->getContiBoardingTime();
	-- // The ride from Orbis to Ludibrium : 10 minute interval or Ludibrium to Orbis : 10 minute interval
	if ( field->getID() == 200000121 or field->getID() == 220000110 ) {

		if ( state != 1 ) self->say( "�ثe����|����F�A�еy�����C�����F�ɬ��ݭn1��5�������ǳƮɶ��A�Э@�ߵ��ԡA���¡C");
		else if ( boardingTime > cTime ) self->say( "�ثe����y���A�y��N�|����}�l����ǲ��C�Э@�ߵ��ݬ�1��5�����A���±z���t�X�C");
		else {
            wField = field->getID();
            if ( target->getLevel() >= 30 ) {
                if ( field->getID() == 200000121 ) {
                    ticketID = 4031074;
                    wField = 200000122;
                }
                else if ( field->getID() == 220000110 ) {
                    ticketID = 4031045;
                    wField = 220000111;
                }
            }
            else if ( target->getLevel() < 30 ) {
                if ( field->getID() == 200000121 ) {
                    ticketID = 4031073;
                    wField = 200000122;
                }
                else if ( field->getID() == 220000110 ) {
                    nItem = inven->itemCount( 4031045 );
                    if ( nItem > 0 ) {
                        ticketID = 4031045;
                        wField = 220000111;
                    } else {
                        ticketID = 4031044;
                        wField = 220000111;
                    }
                }
            }
			nPeople = Field.get(wField)->getUserCount();
			if ( nPeople >= 50 ) self->say( "�藍�_�A�ثe����H�Ƥw�F�W���A���F�z���w���Ҷq�A�е��ݤU�@�ӯZ���C");
			else {
				nRet = self->askYesNo( "��w�g�ǳƥX�o�F�A�Х[��}�B�C�@���Ų���N�L�k�h���A�åB�b�_�����e���}������|���v���󲼻��C�z�T�w�n�n��ܡH");
				if ( nRet == 0 ) self->say( "�٦��Ʊ��S�������ܡH�Х[�ָ}�B�A��W�N�n���}�F�C");
				else {
					ret = inventory->exchange( 0, ticketID, -1 );
					if ( ret != 0 ) self->say( "�ݰ_�ӧA���W�èS����a���T������A�Х[��ɶ��ʶR�C" );
					else target->transferField( wField, "" );
				}
			}
		}
	}
	-- // Orbis to Ellinia : 15 min interval or Ellinia to Orbis : 15 min interval
	else if ( field->getID() == 200000111 or field->getID() == 101000300 ) {
		if (  state != 1 ) self->say( "�ثe����|����F�A�еy�����C�����F�ɬ��ݭn1��5�������ǳƮɶ��A�Э@�ߵ��ԡA���¡C");
		else if ( boardingTime > cTime ) self->say( "�ثe����y���A�y��N�|����}�l����ǲ��C�Э@�ߵ��ݬ�1��5�����A���±z���t�X�C");
		else {
            wField = field->getID();
            if ( target->getLevel() >= 30 ) {
                if ( field->getID() == 101000300 ) {
                    ticketID = 4031045;
                    wField = 101000301;
                }
                else if ( field->getID() == 200000111 ) {
                    ticketID = 4031047;
                    wField = 200000112;
                }
            }
            else if ( target->getLevel() < 30 ) {
                if ( field->getID() == 101000300 ) {
                    nItem = inven->itemCount( 4031045 );
                    if ( nItem > 0 ) {
                        ticketID = 4031045;
                        wField = 101000301;
                    } else {
                        ticketID = 4031044;
                        wField = 101000301;
                    }
                }
                else if ( field->getID() == 200000111 ) {
                    ticketID = 4031046;
                    wField = 200000112;
                }
            }
			nPeople = Field.get(wField)->getUserCount();
			if ( nPeople >= 50 ) self->say( "�藍�_�A�ثe����H�Ƥw�F�W���A���F�z���w���Ҷq�A�е��ݤU�@�ӯZ���C");
			else {
				nRet = self->askYesNo( "��w�g�ǳƥX�o�F�A�Х[��}�B�C�@���Ų���N�L�k�h���A�åB�b�_�����e���}������|���v���󲼻��C�z�T�w�n�n��ܡH");
				if ( nRet == 0 ) self->say( "�٦��Ʊ��S�������ܡH�Х[�ָ}�B�A��W�N�n���}�F�C");
				else {

					ret = inventory->exchange( 0, ticketID, -1 );
					if ( ret != 0 ) self->say( "�ݰ_�ӧA���W�èS����a���T������A�Х[��ɶ��ʶR�C" );
					else target->transferField( wField, "" );
				}
			}
		}
	}
	-- //�����񽺿��� ��?����? ���?ϴ? �� : 10�а��� or ��?������? �����񽺷� ���?ϴ? �� : 10�� ����
	if ( field->getID() ==  200000131 or field->getID() == 240000110 ) {
		if (  state != 1 ) self->say( "�ثe����|����F�A�еy�����C�����F�ɬ��ݭn1��5�������ǳƮɶ��A�Э@�ߵ��ԡA���¡C");
		else if ( boardingTime > cTime ) self->say( "�ثe����y���A�y��N�|����}�l����ǲ��C�Э@�ߵ��ݬ�1��5�����A���±z���t�X�C");
		else {
            wField = field->getID();
            if ( target->getLevel() >= 30 ) {
                if ( field->getID() == 200000131 ) {
                    ticketID = 4031331;
                    wField = 200000132;
                }
                else if ( field->getID() == 240000110 ) {
                    ticketID = 4031045;
                    wField = 240000111;
                }
            }
            else if ( target->getLevel() < 30 ) {
                if ( field->getID() == 200000131 ) {
                    nItem = inven->itemCount( 4031331 );
                    if ( nItem > 0 ) {
                        ticketID = 4031331;
                        wField = 200000132;
                    } else {
                        ticketID = 4031330;
                        wField = 200000132;
                    }
                }
                else if ( field->getID() == 240000110 ) {
                    nItem = inven->itemCount( 4031045 );
                    if ( nItem > 0 ) {
                        ticketID = 4031045;
                        wField = 240000111;
                    } else {
                        ticketID = 4031044;
                        wField = 240000111;
                    }
                }
            }
			nPeople = Field.get(wField)->getUserCount();
			if ( nPeople >= 50 ) self->say( "�藍�_�A�ثe����H�Ƥw�F�W���A���F�z���w���Ҷq�A�е��ݤU�@�ӯZ���C");
			else {
				nRet = self->askYesNo( "��w�g�ǳƥX�o�F�A�Х[��}�B�C�@���Ų���N�L�k�h���A�åB�b�_�����e���}������|���v���󲼻��C�z�T�w�n�n��ܡH");
				if ( nRet == 0 ) self->say( "�٦��Ʊ��S�������ܡH�Х[�ָ}�B�A��W�N�n���}�F�C");
				else {
					ret = inventory->exchange( 0, ticketID, -1 );
					if ( ret != 0 ) self->say( "�ݰ_�ӧA���W�èS����a���T������A�Х[��ɶ��ʶR�C" );
					else target->transferField( wField, "" );
				}
			}
		}
	}
}

function s_sell_ticket()
{
    field = self->getField();
	nTicket = 0;
	tCost = 0;

	if ( target->getLevel() < 10 ) self->say( "���ť�������10���H�W�~����ʶR����}�C" );
	else {
		nRet = 0;
		--Orbis 
		if ( field->getID() == 200000100 ) {
			v1 = self->askMenu( "�١A�w��Ө�ѪŤ����Ⲽ�B�A�o�̦��c���F���P�ت��a����A��W�N�n�}�F�A�аݧA�n�ʶR����̪����O�H\r\n#b#L0# �}���]�k�˪L#l#k\r\n#b#L1# �}�����㫰#l\r\n#b#L2# �}�������#l" );
			if ( v1 == 0 ) {
				if ( target->getLevel() < 30 ) {
					nRet = self->askYesNo( "�}���]�k�˪L����C15�����@�ӯZ���A�@�����L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b1.000����#k�C�A�T�w�n�ʶR#b#t4031046##k�ܡH" );
					nTicket = 4031046;
					tCost = 1000;
				}
				else {
					nRet = self->askYesNo( "�}���]�k�˪L����C15�����@�ӯZ���A�@�����L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b5.000����#k�C�A�T�w�n�ʶR#b#t4031047##k�ܡH" );
					nTicket = 4031047;
					tCost = 5000;
				}
			}
			else if ( v1 == 1 ) {
				if ( target->getLevel() < 30 ) {
					nRet = self->askYesNo( "�}�����㫰������C10�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b2.000����#k�C�A�T�w�n�ʶR#b#t4031073##k�ܡH" );
					nTicket = 4031073;
					tCost = 2000;
				}
				else {
					nRet = self->askYesNo( "�}�����㫰������C10�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b6.000����#k�C�A�T�w�n�ʶR#b#t4031074##k�ܡH" );
					nTicket = 4031074;
					tCost = 6000;
				}
			}
			else if ( v1 == 2 ) {
				if ( target->getLevel() < 30 ) {
					nRet = self->askYesNo( "�}�������������C10�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b10.000����#k�C�A�T�w�n�ʶR#b#t4031330##k�ܡH" );
					nTicket = 4031330;
					tCost = 10000;
				}
				else {
					nRet = self->askYesNo( "�}�������������C10�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b30.000����#k�C�A�T�w�n�ʶR#b#t4031331##k�ܡH" );
					nTicket = 4031331;
					tCost = 30000;
				}
			}
		}
		--Ludibrium
		else if ( field->getID() == 220000100 ) {
			if ( target->getLevel() < 30 ) {
				nRet = self->askYesNo( "�١A�Q�n���}�F�ܡH�o�̦��c��}��#b�ѪŤ���#k����C�}��#b�ѪŤ���#k������C10�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b2.000����#k�C�A�T�w�n�ʶR#b#t4031044##k�ܡH" );
				nTicket = 4031044;
				tCost = 2000;
			}
			else {
				nRet = self->askYesNo( "�١A�Q�n���}�F�ܡH�o�̦��c��}��#b�ѪŤ���#k����C�}��#b�ѪŤ���#k������C10�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b6.000����#k�C�A�T�w�n�ʶR#b#t4031045##k�ܡH" );
				nTicket = 4031045;
				tCost = 6000;
			}
		}
		--Ellinia
		else if ( field->getID() == 101000300 ) {
			if ( target->getLevel() < 30 ) {
				nRet = self->askYesNo( "�١A�Q�n���}�F�ܡH�o�̦��c��}��#b�ѪŤ���#k����C�}��#b�ѪŤ���#k������C15�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b1.000����#k�C�A�T�w�n�ʶR#b#t4031044##k�ܡH" );
				nTicket = 4031044;
				tCost = 1000;
			}
			else {
				nRet = self->askYesNo( "�١A�Q�n���}�F�ܡH�o�̦��c��}��#b�ѪŤ���#k����C�}��#b�ѪŤ���#k������C15�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b5.000����#k�C�A�T�w�n�ʶR#b#t4031045##k�ܡH" );
				nTicket = 4031045;
				tCost = 5000;
			}
		}
		else if ( field->getID() == 240000100 ) {
			if ( target->getLevel() < 30 ) {
				nRet = self->askYesNo( "�١A�Q�n���}�F�ܡH�o�̦��c��}��#b�ѪŤ���#k����C�}��#b�ѪŤ���#k������C10�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b2.000����#k�C�A�T�w�n�ʶR#b#t4031044##k�ܡH" );
				nTicket = 4031044;
				tCost = 2000;
			}
			else {
				nRet = self->askYesNo( "�١A�Q�n���}�F�ܡH�o�̦��c��}��#b�ѪŤ���#k����C�}��#b�ѪŤ���#k������C15�����@�ӯZ���A���L�F�N�������ݤU�@�ӯZ���C�����@�@�O#b30.000����#k�C�A�T�w�n�ʶR#b#t4031045##k�ܡH" );
				nTicket = 4031045;
				tCost = 30000;
			}
		}

		if ( nRet == 0 ) self->say( "�A�٦��Ʊ��S�����ܡH���A�U�w�M�ߥH��A�ӧ�ڧa�C" );
		else {
			ret = inventory->exchange( -tCost, nTicket, 1 );
			if ( ret !=0 ) self->say( "�A�T�w���W����a#b" .. tCost .. "����#k�H�Ϊ̧A���I�]���w�g���F�C" );
		}
	}
}

-- The NPC that warps the character to the different boarding platform
function s_getAboard() {
	v = self->askMenu( "�o�̳q���ƭӤ��P����x�A�C�ӳ��N�q�����P���ت��a�A�ɶ������A�аݧA�n����@�Ӥ�x�O�H\r\n#b#L0#�}���]�k�˪L����x#l\r\n#b#L1#�}�����㫰����x#l#k\r\n#b#L2#�}�����������x#l#k" );
	if ( v == 0 ) {
		nRet = self->askYesNo( "�b�i�J��x���e�нT�O�z�w��a���T����C�z�T�w�n�e��#b�q���]�k�˪L����x#k�H" );
		if ( nRet == 0 ) self->say( "�ݨӧA�٦��Ʊ��n����a�H�Х[�ָ}�B�A�H�K���L�Z���I" );
		else if ( nRet == 1 ) target->transferField( 200000110, "west00" );
	}
	else if ( v == 1 ) {
		nRet = self->askYesNo( "�b�i�J��x���e�нT�O�z�w��a���T����C�z�T�w�n�e���q��#b�q�����㫰����x#k�H" );
		if ( nRet == 0 ) self->say( "�ݨӧA�٦��Ʊ��n����a�H�Х[�ָ}�B�A�H�K���L�Z���I" );
		else if ( nRet == 1 ) target->transferField( 200000120, "west00" );
	}	
	else if ( v == 2 ) {
		nRet = self->askYesNo( "�b�i�J��x���e�нT�O�z�w��a���T����C�z�T�w�n�e���q��#b�q�����������x#k�H" );
		if ( nRet == 0 ) self->say( "�ݨӧA�٦��Ʊ��n����a�H�Х[�ָ}�B�A�H�K���L�Z���I" );
		else if ( nRet == 1 ) target->transferField( 200000130, "west00" );
	}	
	else if ( v == 3 ) {
		nRet = self->askYesNo( "�b�i�J��x���e�нT�O�z�w��a���T����C�z�T�w�n�e���q��#b�q���Z������x#k�H" );
		if ( nRet == 0 ) self->say( "�ݨӧA�٦��Ʊ��n����a�H�Х[�ָ}�B�A�H�K���L�Z���I" );
		else if ( nRet == 1 ) target->transferField( 200000140, "west00" );
	}
}
function s_goOutWaitingRoom() {
	field = self->getField();

	nRet = self->askYesNo( "�A�T�w�n���}�o�̶ܡH�@�����}�����S��������v�A�٥������s�ʶR��~��^�ӡA�A�T�w�ܡH");
	if ( nRet == 0 ) self->say( "���W�N�n�X�o�F�A�Э@�ߵ��ԡC" );
	else {
		if ( field->getID() == 200000122 ) target->transferField( 200000100, "" );
		else if ( field->getID() == 220000111 ) target->transferField( 220000100, "" );
		else if ( field->getID() == 101000301 ) target->transferField( 101000300, "" );
		else if ( field->getID() == 200000112 ) target->transferField( 200000100, "" );
		else if ( field->getID() == 240000111 ) target->transferField( 240000100, "" );
		else if ( field->getID() == 200000132 ) target->transferField( 200000100, "" );		
	}
}