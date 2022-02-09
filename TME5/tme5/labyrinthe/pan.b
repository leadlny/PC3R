	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC observateur */

	case 3: // STATE 1
		;
		XX = 1;
		unrecv(now.go, XX-1, 0, ((P1 *)_this)->direction, 1);
		((P1 *)_this)->direction = trpt->bup.oval;
		;
		;
		goto R999;

	case 4: // STATE 2
		;
	/* 0 */	((P1 *)_this)->direction = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 7: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC labyrinthe */

	case 8: // STATE 1
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 9: // STATE 3
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 10: // STATE 5
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 11: // STATE 7
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 12: // STATE 9
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 13: // STATE 13
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 14: // STATE 15
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 15: // STATE 19
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 16: // STATE 21
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 17: // STATE 25
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 18: // STATE 29
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 19: // STATE 33
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 20: // STATE 35
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 21: // STATE 39
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 22: // STATE 43
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 23: // STATE 45
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 24: // STATE 49
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 25: // STATE 51
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 26: // STATE 55
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 27: // STATE 57
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 28: // STATE 61
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 29: // STATE 63
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 30: // STATE 67
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 31: // STATE 71
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 32: // STATE 73
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 33: // STATE 77
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 34: // STATE 79
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 35: // STATE 83
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 36: // STATE 85
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 37: // STATE 89
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 38: // STATE 91
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 39: // STATE 95
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 40: // STATE 97
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 41: // STATE 99
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 42: // STATE 103
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 43: // STATE 105
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 44: // STATE 109
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 45: // STATE 111
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 46: // STATE 115
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 47: // STATE 119
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 48: // STATE 123
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 49: // STATE 127
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 50: // STATE 131
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 51: // STATE 133
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 52: // STATE 135
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 53: // STATE 139
		;
		_m = unsend(now.go);
		;
		goto R999;

	case 54: // STATE 140
		;
		p_restor(II);
		;
		;
		goto R999;
	}

