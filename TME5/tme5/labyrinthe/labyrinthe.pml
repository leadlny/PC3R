mtype={N,S,E,W,ENTER,EXIT}
chan go=[0] of{mtype}

active proctype labyrinthe(){
    go!ENTER;
    goto cell_55;

    cell_55:
        go!N; goto cell_54;

    cell_54:
        if
          ::go!N; goto cell_53;
          ::go!W; goto cell_44;
          ::go!S; goto cell_55;
        fi

    cell_53:
        if
          ::go!N; goto cell_52;
          ::go!S; goto cell_54;
          fi

    cell_52:
        if
          ::go!N; goto cell_51;
          ::go!S; goto cell_53;
        fi
    cell_51:
        if
          ::go!S; goto cell_52;
        fi
    cell_45:
        if
          ::go!W; goto cell_35;
        fi
    cell_44:
        if
          ::go!W; goto cell_34;
          ::go!E; goto cell_54;
        fi
    cell_43:
        if
          ::go!W; goto cell_33;
        fi
    cell_42:
        if
          ::go!N; goto cell_41;
          ::go!W; goto cell_32;
        fi
    cell_41:
        if
          ::go!W; goto cell_31;
          ::go!S; goto cell_42;
        fi
    cell_35:
        if
          ::go!W; goto cell_25;
          ::go!E; goto cell_45;
        fi
    cell_34:
        if
          ::go!W; goto cell_24;
          ::go!E; goto cell_44;
        fi
    cell_33:
        if
          ::go!E; goto cell_43;
        fi
    cell_32:
        if
          ::go!W; goto cell_22;
          ::go!E; goto cell_42;
        fi
    cell_31:
        if
          ::go!W; goto cell_21;
          ::go!E; goto cell_41;
        fi
    cell_25:
        if
          ::go!N; goto cell_24;
          ::go!E; goto cell_35;
        fi
    cell_24:
        if
          ::go!N; goto cell_23;
          ::go!E; goto cell_34;
        fi
    cell_23:
        if
          ::go!W; goto cell_13;
          ::go!N; goto cell_22;
          ::go!S; goto cell_24;
        fi
    cell_22:
        if
          ::go!S; goto cell_23;
          ::go!E; goto cell_32;
        fi
    cell_21:
        if
          ::go!W; goto cell_11;
          ::go!E; goto cell_31;
        fi
    cell_15:
        if
          ::go!N; goto cell_14;
        fi
    cell_14:
        if
          ::go!S; goto cell_15;
        fi
    cell_13:
        if
          ::go!E; goto cell_23;
        fi
    cell_12:
        if
          ::go!N; goto cell_11;
        fi
    cell_11:
        if
          ::go!N; goto exit;
          ::go!S; goto cell_12;
          ::go!E; goto cell_21;
        fi

    exit:
        go!EXIT
}




active proctype observateur() {
    mtype direction ;
    do
        ::go?direction ->
            if
                ::direction==EXIT -> goto exit
                ::else ->printf ("go to %e \n",direction)
            fi
    od
    exit:
        false
}
