CHAIN
IF~Global("InParty","LOCALS",1) !InParty("BDCaelar")~THEN BDCaelar Kicked
~So you want to break our pact, <CHARNAME>?~
END
++~You have learned little and are not willing ro change. I bear it no longer.~+ Kicked2
++~I want you to rest for a while and cintemplate our circumstances.~ + Kicked2
++~No. Stay with me, Caelar. Let us move on~DO~JoinParty() ChangeAIScript("DPlayer2",DEFAULT)~EXIT

CHAIN
IF~~THEN BDCaelar Kicked2
~I will seek my uncle Aun. Good luck on your way.~DO~MoveBetweenAreas("bd2000",[3224.1415],5)~EXIT

CHAIN
IF~Global("BD_ToB_CaelarD","Global",1)~THEN BDCaelar AfterPlane1
~Good to be with you again.~
DO~SetGlobal("BD_ToB_CaelarD","Global",2)~EXIT 