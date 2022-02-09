	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC observateur */

	case 3: // STATE 1
		;
		XX = 1;
		unrecv(now.OBS, XX-1, 0, ((P1 *)_this)->col, 1);
		unrecv(now.OBS, XX-1, 1, ((int)((P1 *)_this)->cli), 0);
		((P1 *)_this)->col = trpt->bup.ovals[0];
		((P1 *)_this)->cli = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 4: // STATE 4
		;
		((P1 *)_this)->precedent = trpt->bup.ovals[1];
		((P1 *)_this)->col = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 5: // STATE 8
		;
		((P1 *)_this)->precedent = trpt->bup.ovals[1];
		((P1 *)_this)->col = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 6: // STATE 12
		;
		((P1 *)_this)->precedent = trpt->bup.ovals[1];
		((P1 *)_this)->col = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 7: // STATE 14
		;
	/* 0 */	((P1 *)_this)->cli = trpt->bup.oval;
		;
		;
		goto R999;

	case 8: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC feu */

	case 9: // STATE 2
		;
		((P0 *)_this)->col = trpt->bup.ovals[1];
		((P0 *)_this)->cli = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 3
		;
		_m = unsend(now.OBS);
		;
		goto R999;

	case 11: // STATE 7
		;
		((P0 *)_this)->col = trpt->bup.ovals[1];
		((P0 *)_this)->cli = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 8
		;
		_m = unsend(now.OBS);
		;
		goto R999;

	case 13: // STATE 15
		;
		((P0 *)_this)->col = trpt->bup.ovals[1];
		((P0 *)_this)->cli = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 16
		;
		_m = unsend(now.OBS);
		;
		goto R999;

	case 15: // STATE 23
		;
		((P0 *)_this)->col = trpt->bup.ovals[1];
		((P0 *)_this)->cli = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 24
		;
		_m = unsend(now.OBS);
		;
		goto R999;

	case 17: // STATE 31
		;
		((P0 *)_this)->col = trpt->bup.ovals[1];
		((P0 *)_this)->cli = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
	}

