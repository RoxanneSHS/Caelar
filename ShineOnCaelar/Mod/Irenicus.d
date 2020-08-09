CHAIN
IF~Global("CaeJonel","Locals",1)~THEN BDCaelar Jonel1
@0
DO~SetGlobal("CaeJonel","Locals",2)~
==BJONEL25@1
==BDCaelar@2
==BJONEL25@3
DO~SetGlobal("bdcut11_restart","global",0) Wait(2) StartCutSceneMode() StartCutScene("BDCut11")~EXIT

CHAIN
IF~Global("CaeJonel","Locals",3)~THEN BDCaelar Jonel2
@4
DO~SetGlobal("CaeJonel","Locals",4)~
==BJONEL25@5
==BDCaelar@6
==BJONEL25@7
==BDCaelar@8
==BJONEL25@9EXIT   