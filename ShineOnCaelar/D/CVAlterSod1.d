
ADD_TRANS_TRIGGER BDDelanc 50
~!Global("bd_alt_willing_surrender","global",2)~

EXTEND_BOTTOM BDDelanc 50
IF~Global("bd_alt_willing_surrender","global",2) InParty("Corwin")~THEN REPLY@0DO~ SetGlobal("bd_alt_willing_surrender","global",3)~EXTERN BDCorwiJ Surr1
IF~Global("bd_alt_willing_surrender","global",2)!InParty("Corwin")~THEN REPLY@1DO~ SetGlobal("bd_alt_willing_surrender","global",3)~EXTERN BDHepher Surr2
IF~Global("bd_alt_willing_surrender","global",2) ~THEN REPLY@2EXTERN BDCaelar 40
END

CHAIN 
IF~~THEN BDCorwiJ Surr1
@3
END
++@4 EXTERN BDHepher Surr2

CHAIN 
IF~~THEN BDHepher Surr2
@5
==BDCaelar@6
=@7
==BDDelanc@8
==BDNederl@9
END
++@10
DO~SetGlobal("bd_parley_retreat","bd7300",1) StartCutSceneMode() Wait(2) StartCutScene("CVInSpe1")~EXIT
++@11DO~SetGlobal("bd_parley_retreat","bd7300",1) StartCutSceneMode() Wait(2) StartCutScene("CVInSpe1")~EXIT

CHAIN
IF WEIGHT #-7~Global("bd_alt_willing_surrender","global",4)~THEN BDCaelar InSpear1
@12
DO~SetGlobal("bd_alt_willing_surrender","global",5)~
==BDHepher@13
==BDCaelar@14
==BDHepher@15
==BDCaelar@16
END
++@17 EXTERN BDHepher InSpear2
++@18EXTERN BDHepher InSpear3

CHAIN
IF~~THEN BDHepher InSpear2
@19
=@20DO~ActionOverride("BDHepher",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDHepher",EscapeAreaObject("TransBD4100"))~
==BDCaelar@21 
=@22DO~ActionOverride("BDCaelar",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDCaelar",EscapeAreaObject("TransBD4100"))~EXIT

CHAIN
IF~~THEN BDHepher InSpear3
@23
=@20
DO~SetGlobal("bd_alt_willing_surrender","global",6) ActionOverride("BDHepher",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDHepher",EscapeAreaObject("TransBD4100"))~EXIT

CHAIN
IF WEIGHT #-7~Global("bd_alt_willing_surrender","global",6)~THEN BDCaelar InSpearw
@24
END
++@25+ InSpearw2
++@26+ InSpearw2
++@27+ InSpearw3

CHAIN
IF~~THEN BDCaelar InSpearw2
@28
END
++@29+ InSpearw3
++@30+ InSpearw3
++@31+ InSpearw4
IF~Global("bd_hephernann_talk_belhifet","global",1)~THEN REPLY@32+ InSpearw4

CHAIN
IF~~THEN BDCaelar InSpearw3
@33
=@21 
=@22DO~SetGlobal("bd_alt_willing_surrender","global",7) ActionOverride("BDCaelar",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDCaelar",EscapeAreaObject("TransBD4100"))~EXIT
 
CHAIN
IF~~THEN BDCaelar InSpearw4
@34 
=@22DO~SetGlobal("bd_alt_willing_surrender","global",7) ActionOverride("BDCaelar",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDCaelar",EscapeAreaObject("TransBD4100"))~EXIT

CHAIN
IF WEIGHT #-7~Global("bd_alt_willing_surrender","global",8)~THEN BDCaelar AtSeal1
@35
DO~SetGlobal("bd_alt_willing_surrender","global",9) SetGlobal("bd_plot","global",486) CreateCreatureObjectOffset("BDHepher",Myself,[35.35])~
END
++@36DO~SetGlobal("bd_plot","global",486)~+ AtSeal2
++@37DO~SetGlobal("bd_plot","global",486)~+ AtSeal2
++@38DO~SetGlobal("bd_plot","global",486)~+ AtSeal2

CHAIN
IF~~THEN BDCaelar AtSeal2
@39
EXTERN BDCaelar 51

ADD_TRANS_TRIGGER BDhepher 16
~!Global("bd_alt_willing_surrender","global",9)~

EXTEND_BOTTOM BDhepher 16
IF~Global("bd_alt_willing_surrender","global",9)~THEN DO~ StartCutSceneMode() CloseDoor("door03") Wait(2) Lock("door03") Wait(2) StartCutScene("bdcut45b")~EXIT
END

ADD_TRANS_TRIGGER BDbelhif 2
~!Global("bd_alt_willing_surrender","global",9)~

EXTEND_BOTTOM BDbelhif 2
IF~Global("bd_alt_willing_surrender","global",9)~THEN REPLY@40 EXTERN BDHEPHER 22
IF ~Global("bd_alt_willing_surrender","global",9)~ THEN REPLY @41  EXTERN BDAUN 0
END

ADD_TRANS_TRIGGER BDbelhif 5
~!Global("bd_alt_willing_surrender","global",9)~

EXTEND_BOTTOM BDbelhif 5
IF~Global("bd_alt_willing_surrender","global",9)~THEN REPLY@42 EXTERN ~BDCAELAR~ 62
IF ~Global("bd_alt_willing_surrender","global",9)~ THEN REPLY @43  EXTERN ~BDCAELAR~ 62
END

ADD_TRANS_TRIGGER BDBelt 9
~!Global("bd_alt_willing_surrender","global",9)~ DO 3

EXTEND_BOTTOM BDbelt 9
IF~Global("bd_alt_willing_surrender","global",9) OR(8) Global("bd_caelar","bd0035",0)Global("bd_madele","bd0035",1)
Global("bd_poison","bd0035",1) 	Global("bd_illness","bd0035",1) Global("bd_traitor","bd0035",1) Global("bd_thrix","bd0035",1) Global("bd_paladin","bd0035",1) Global("bd_reputation","bd0035",1)~THEN REPLY@44EXTERN BDBelt 10
END	

CHAIN
IF~~THEN BDBelt AltCael
@45EXTERN BDBelt 11

EXTEND_BOTTOM BDbelt 10 #5
IF~Global("bd_alt_willing_surrender","global",9) Global("bd_caelar","bd0035",0)~THEN REPLY@46DO ~IncrementGlobal("bd_trial_hero","bd0035",1) IncrementGlobal("bd_trial_evil","bd0035",-1) IncrementGlobal("bd_trial_case","bd0035",1) SetGlobal("bd_caelar","bd0035",1)~ EXTERN BDBelt AltCael
END

ADD_TRANS_TRIGGER BDBelt 12
~!Global("bd_alt_willing_surrender","global",9)~ DO 1

EXTEND_BOTTOM BDbelt 12
IF~Global("bd_alt_willing_surrender","global",9) OR(8) Global("bd_caelar","bd0035",0)Global("bd_madele","bd0035",1)
Global("bd_poison","bd0035",1) 	Global("bd_illness","bd0035",1) Global("bd_traitor","bd0035",1) Global("bd_thrix","bd0035",1) Global("bd_paladin","bd0035",1) Global("bd_reputation","bd0035",1)~THEN REPLY@47EXTERN BDBelt 10
END	

