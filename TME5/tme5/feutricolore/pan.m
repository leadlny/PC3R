#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC observateur */
	case 3: // STATE 1 - feu.pml:61 - [OBS?col,cli] (0:0:2 - 1)
		reached[1][1] = 1;
		if (boq != now.OBS) continue;
		if (q_len(now.OBS) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->col;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->cli);
		;
		((P1 *)_this)->col = qrecv(now.OBS, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("observateur:col", ((P1 *)_this)->col);
#endif
		;
		((P1 *)_this)->cli = qrecv(now.OBS, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("observateur:cli", ((int)((P1 *)_this)->cli));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.OBS);
		sprintf(simtmp, "%d", ((P1 *)_this)->col); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->cli)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.OBS))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 2 - feu.pml:63 - [col = O] (0:19:3 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->col;
		((P1 *)_this)->col = 2;
#ifdef VAR_RANGES
		logval("observateur:col", ((P1 *)_this)->col);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: col */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->col = 0;
		/* merge: assert(((cli==1)||(precedent!=R)))(19, 3, 19) */
		reached[1][3] = 1;
		spin_assert(((((int)((P1 *)_this)->cli)==1)||(((P1 *)_this)->precedent!=4)), "((cli==1)||(precedent!=4))", II, tt, t);
		/* merge: precedent = O(19, 4, 19) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->precedent;
		((P1 *)_this)->precedent = 2;
#ifdef VAR_RANGES
		logval("observateur:precedent", ((P1 *)_this)->precedent);
#endif
		;
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 5: // STATE 6 - feu.pml:66 - [col = V] (0:19:3 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->col;
		((P1 *)_this)->col = 3;
#ifdef VAR_RANGES
		logval("observateur:col", ((P1 *)_this)->col);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: col */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->col = 0;
		/* merge: assert((precedent!=O))(19, 7, 19) */
		reached[1][7] = 1;
		spin_assert((((P1 *)_this)->precedent!=2), "(precedent!=2)", II, tt, t);
		/* merge: precedent = V(19, 8, 19) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->precedent;
		((P1 *)_this)->precedent = 3;
#ifdef VAR_RANGES
		logval("observateur:precedent", ((P1 *)_this)->precedent);
#endif
		;
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 6: // STATE 10 - feu.pml:69 - [col = R] (0:19:3 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->col;
		((P1 *)_this)->col = 4;
#ifdef VAR_RANGES
		logval("observateur:col", ((P1 *)_this)->col);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: col */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->col = 0;
		/* merge: assert((precedent!=V))(19, 11, 19) */
		reached[1][11] = 1;
		spin_assert((((P1 *)_this)->precedent!=3), "(precedent!=3)", II, tt, t);
		/* merge: precedent = R(19, 12, 19) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->precedent;
		((P1 *)_this)->precedent = 4;
#ifdef VAR_RANGES
		logval("observateur:precedent", ((P1 *)_this)->precedent);
#endif
		;
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 7: // STATE 14 - feu.pml:72 - [((cli==1))] (19:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((int)((P1 *)_this)->cli)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cli */  (trpt+1)->bup.oval = ((P1 *)_this)->cli;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->cli = 0;
		/* merge: assert((col==O))(0, 15, 19) */
		reached[1][15] = 1;
		spin_assert((((P1 *)_this)->col==2), "(col==2)", II, tt, t);
		/* merge: .(goto)(0, 18, 19) */
		reached[1][18] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 8: // STATE 22 - feu.pml:75 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC feu */
	case 9: // STATE 1 - feu.pml:9 - [cli = 1] (0:3:2 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->cli);
		((P0 *)_this)->cli = 1;
#ifdef VAR_RANGES
		logval("feu:cli", ((int)((P0 *)_this)->cli));
#endif
		;
		/* merge: col = O(3, 2, 3) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->col;
		((P0 *)_this)->col = 2;
#ifdef VAR_RANGES
		logval("feu:col", ((P0 *)_this)->col);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 3 - feu.pml:11 - [OBS!col,cli] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_len(now.OBS))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.OBS);
		sprintf(simtmp, "%d", ((P0 *)_this)->col); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->cli)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.OBS, 0, ((P0 *)_this)->col, ((int)((P0 *)_this)->cli), 2);
		{ boq = now.OBS; };
		_m = 2; goto P999; /* 0 */
	case 11: // STATE 6 - feu.pml:16 - [cli = 0] (0:8:2 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->cli);
		((P0 *)_this)->cli = 0;
#ifdef VAR_RANGES
		logval("feu:cli", ((int)((P0 *)_this)->cli));
#endif
		;
		/* merge: col = R(8, 7, 8) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->col;
		((P0 *)_this)->col = 4;
#ifdef VAR_RANGES
		logval("feu:col", ((P0 *)_this)->col);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 8 - feu.pml:18 - [OBS!col,cli] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (q_len(now.OBS))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.OBS);
		sprintf(simtmp, "%d", ((P0 *)_this)->col); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->cli)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.OBS, 0, ((P0 *)_this)->col, ((int)((P0 *)_this)->cli), 2);
		{ boq = now.OBS; };
		_m = 2; goto P999; /* 0 */
	case 13: // STATE 14 - feu.pml:27 - [cli = 0] (0:16:2 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->cli);
		((P0 *)_this)->cli = 0;
#ifdef VAR_RANGES
		logval("feu:cli", ((int)((P0 *)_this)->cli));
#endif
		;
		/* merge: col = O(16, 15, 16) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->col;
		((P0 *)_this)->col = 2;
#ifdef VAR_RANGES
		logval("feu:col", ((P0 *)_this)->col);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 14: // STATE 16 - feu.pml:29 - [OBS!col,cli] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (q_len(now.OBS))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.OBS);
		sprintf(simtmp, "%d", ((P0 *)_this)->col); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->cli)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.OBS, 0, ((P0 *)_this)->col, ((int)((P0 *)_this)->cli), 2);
		{ boq = now.OBS; };
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 22 - feu.pml:37 - [cli = 0] (0:24:2 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->cli);
		((P0 *)_this)->cli = 0;
#ifdef VAR_RANGES
		logval("feu:cli", ((int)((P0 *)_this)->cli));
#endif
		;
		/* merge: col = V(24, 23, 24) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->col;
		((P0 *)_this)->col = 3;
#ifdef VAR_RANGES
		logval("feu:col", ((P0 *)_this)->col);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 24 - feu.pml:39 - [OBS!col,cli] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (q_len(now.OBS))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.OBS);
		sprintf(simtmp, "%d", ((P0 *)_this)->col); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->cli)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.OBS, 0, ((P0 *)_this)->col, ((int)((P0 *)_this)->cli), 2);
		{ boq = now.OBS; };
		_m = 2; goto P999; /* 0 */
	case 17: // STATE 30 - feu.pml:47 - [cli = 1] (0:33:4 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->cli);
		((P0 *)_this)->cli = 1;
#ifdef VAR_RANGES
		logval("feu:cli", ((int)((P0 *)_this)->cli));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: cli */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->cli = 0;
		/* merge: col = O(33, 31, 33) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->col;
		((P0 *)_this)->col = 2;
#ifdef VAR_RANGES
		logval("feu:col", ((P0 *)_this)->col);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: col */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->col = 0;
		/* merge: goto panne(33, 32, 33) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

