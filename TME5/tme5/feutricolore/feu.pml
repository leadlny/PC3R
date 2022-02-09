mtype={R,V,O,I}
chan OBS=[0] of {mtype,bool}

active proctype feu(){
    bool cli = false;
    mtype col = I;
    initial:
        atomic{
            cli=true;
            col=O;
            OBS!col,cli
            goto rouge
        }
    rouge:
        atomic{
            cli=false;
            col=R;
            OBS!col,cli
        }
        if
            :: goto vert
            :: goto panne
        fi

    orange:
        atomic{
            cli=false;
            col=O;
            OBS!col,cli
        }
        if
            :: goto rouge
            :: goto panne
        fi
    vert:
        atomic{
            cli=false
            col=V 
            OBS!col,cli
        }
        if
            :: goto orange
            :: goto panne
        fi
    panne:
        atomic{
            cli=true
            col=O 
          //  OBS!col,cli
            goto panne
        }


}
active proctype observateur () {
    mtype precedent = I;
    mtype col = I;
    bool cli = false; 

    do
    :: OBS?col , cli ->
        if
        ::atomic {col = O ->
                            assert(cli == true || precedent != R);
                            precedent = O};
        ::atomic {col = V ->
                            assert(precedent != O);
                            precedent = V};
        ::atomic {col = R ->
                            assert(precedent != V);
                            precedent = R};
        ::atomic { cli == true -> assert(col == O)};
        fi
    od
}
