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
	case 3: // STATE 1 - labyrinthe.pml:139 - [go?direction] (0:0:1 - 1)
		reached[1][1] = 1;
		if (boq != now.go) continue;
		if (q_len(now.go) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->direction;
		;
		((P1 *)_this)->direction = qrecv(now.go, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("observateur:direction", ((P1 *)_this)->direction);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.go);
		sprintf(simtmp, "%d", ((P1 *)_this)->direction); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.go))
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
	case 4: // STATE 2 - labyrinthe.pml:141 - [((direction==EXIT))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->direction==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: direction */  (trpt+1)->bup.oval = ((P1 *)_this)->direction;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->direction = 0;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - labyrinthe.pml:142 - [printf('go to %e \\n',direction)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		Printf("go to %e \n", ((P1 *)_this)->direction);
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 11 - labyrinthe.pml:146 - [(0)] (0:0:0 - 3)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(0))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 12 - labyrinthe.pml:147 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC labyrinthe */
	case 8: // STATE 1 - labyrinthe.pml:5 - [go!ENTER] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 2, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 9: // STATE 3 - labyrinthe.pml:9 - [go!N] (0:0:0 - 4)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 10: // STATE 5 - labyrinthe.pml:13 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 11: // STATE 7 - labyrinthe.pml:14 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 12: // STATE 9 - labyrinthe.pml:15 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 13: // STATE 13 - labyrinthe.pml:20 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 15 - labyrinthe.pml:21 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 19 - labyrinthe.pml:26 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 21 - labyrinthe.pml:27 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 17: // STATE 25 - labyrinthe.pml:31 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 29 - labyrinthe.pml:35 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 19: // STATE 33 - labyrinthe.pml:39 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 20: // STATE 35 - labyrinthe.pml:40 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 39 - labyrinthe.pml:44 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 43 - labyrinthe.pml:48 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 45 - labyrinthe.pml:49 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 49 - labyrinthe.pml:53 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 25: // STATE 51 - labyrinthe.pml:54 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 55 - labyrinthe.pml:58 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 27: // STATE 57 - labyrinthe.pml:59 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 61 - labyrinthe.pml:63 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 29: // STATE 63 - labyrinthe.pml:64 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 67 - labyrinthe.pml:68 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 71 - labyrinthe.pml:72 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 32: // STATE 73 - labyrinthe.pml:73 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 77 - labyrinthe.pml:77 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 34: // STATE 79 - labyrinthe.pml:78 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 83 - labyrinthe.pml:82 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 85 - labyrinthe.pml:83 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 89 - labyrinthe.pml:87 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 38: // STATE 91 - labyrinthe.pml:88 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 95 - labyrinthe.pml:92 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][95] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 97 - labyrinthe.pml:93 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 99 - labyrinthe.pml:94 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 103 - labyrinthe.pml:98 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 105 - labyrinthe.pml:99 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 109 - labyrinthe.pml:103 - [go!W] (0:0:0 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 3, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 111 - labyrinthe.pml:104 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 46: // STATE 115 - labyrinthe.pml:108 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][115] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 119 - labyrinthe.pml:112 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 123 - labyrinthe.pml:116 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 127 - labyrinthe.pml:120 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][127] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 50: // STATE 131 - labyrinthe.pml:124 - [go!N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 6, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 133 - labyrinthe.pml:125 - [go!S] (0:0:0 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 5, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 52: // STATE 135 - labyrinthe.pml:126 - [go!E] (0:0:0 - 1)
		IfNotBlocked
		reached[0][135] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 4, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 139 - labyrinthe.pml:130 - [go!EXIT] (0:0:0 - 3)
		IfNotBlocked
		reached[0][139] = 1;
		if (q_len(now.go))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.go);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.go, 0, 1, 1);
		{ boq = now.go; };
		_m = 2; goto P999; /* 0 */
	case 54: // STATE 140 - labyrinthe.pml:131 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][140] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

