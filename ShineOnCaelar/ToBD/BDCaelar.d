CHAIN
IF~Global("InParty","LOCALS",1) !InParty("BDCaelar")~THEN BDCaelar Kicked
@0
END
++@1+ Kicked2
++@2 + Kicked2
++@3DO~JoinParty() ChangeAIScript("DPlayer2",DEFAULT)~EXIT

CHAIN
IF~~THEN BDCaelar Kicked2
@4DO~RunAwayFrom(Player1,20) Wait(4) MoveBetweenAreas("bd2000",[3224.1415],5)~EXIT

CHAIN
IF~Global("BD_Visited_BD5300","Global",31)~THEN BDCaelar KickedSelf
@5
@6
DO~DestroyItem("BDSolGlo") Wait(2) LeaveParty() EscapeAreaDestroy(55)~EXIT

CHAIN
IF~Global("BD_ToB_CaelarD","Global",1)~THEN BDCaelar AfterPlane1
@7
DO~SetGlobal("BD_ToB_CaelarD","Global",2)~
=@8
END
++@9+ AfterPlane2
++@10+ AfterPlane2
++@11+ AfterPlane2
++@12+ AfterPlane2

CHAIN
IF~~THEN BDCaelar AfterPlane2
@13
END
++@14+ AfterPlane3
++@15+ AfterPlane3
++@16+ AfterPlane3

CHAIN
IF~~THEN BDCaelar AfterPlane3
@17
==BDCaelar IF~InParty("CVSandr")~THEN@18
END
IF~Global("BD_Visited_BD5300","Global",1) !InParty("CVSandr")~THEN REPLY@19+ AfterPlane4a
IF~Global("BD_Visited_BD5300","Global",1) InParty("CVSandr")~THEN REPLY@20+ AfterPlane4a
IF~Global("BD_Visited_BD5300","Global",0) InParty("CVSandr")~THEN REPLY@21+ AfterPlane4a
++@22+ AfterPlane4b
 
CHAIN
IF~~THEN BDCaelar AfterPlane4a
@23
DO~SetGlobal("BD_Visited_BD5300","Global",3) Wait(2) AddJournalEntry(@2014,QUEST)~
==IF_FILE_EXISTS C0Sir25J IF~InParty("C0Sirene")~ THEN @24EXIT 

CHAIN
IF~~THEN BDCaelar AfterPlane4b
@25
DO~SetGlobal("BD_Visited_BD5300","Global",3) Wait(2) AddJournalEntry(@2014,QUEST)~
==IF_FILE_EXISTS C0Sir25J IF~InParty("C0Sirene")~ THEN @24EXIT 

CHAIN
IF~Global("BD_ToB_CaelarD","Global",4)~ THEN BDCaelar Volu1
@26
DO~SetGlobal("BD_ToB_CaelarD","Global",5)~
END
++@27+ Souls
++@28+ Noword
++@29+ Volu2 

CHAIN
IF~~THEN BDCaelar Noword
@30DO~SetGlobal("BD_Cae_Belive","LOCALS",10) Wait(2) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",3100)~EXIT

CHAIN
IF~~THEN BDCaelar Souls
@31
END
++@32+ Many
++@33+ Hephi

CHAIN
IF~~THEN BDCaelar Many
@34EXTERN BDCaelar Noword

CHAIN
IF~~THEN BDCaelar Volu2 
@35EXTERN BDCaelar Souls

CHAIN
IF~~THEN BDCaelar Hephi
@36EXTERN BDCaelar Many

CHAIN
IF~Global("BD_SaradushFell","Locals",1)~THEN BDCaelar Saradfall
@37
DO~SetGlobal("BD_SaradushFell","Locals",2)~
==BDCaelar IF~ GlobalLT("BD_Visited_BD5300","Global",4)~THEN@38
==BDCaelar IF~ GlobalGT("BD_Visited_BD5300","Global",3)~THEN@39
==BDCaelar@40
END
++@41+ Saradfall2
++@42+ Saradfall3
++@43+ Saradfall3
++@44+ Saradfall3

CHAIN
IF~~THEN BDCaelar Saradfall2
@45 
=@46 EXIT

CHAIN
IF~~THEN BDCaelar Saradfall3
@47
=@48EXIT


CHAIN
IF~Global("BD_ToB_CaelarD","Global",6) IsGabber(Player1) !RealGlobalTimerExpired("BD_ToB_CaelarT","Locals")~THEN BDCaelar NoPIDs
@49EXIT

CHAIN
IF~Global("BD_ToB_CaelarD","Global",6) IsGabber(Player1) RealGlobalTimerExpired("BD_ToB_CaelarT","Locals")~THEN BDCaelar PIDs
@50
END
IF~Global("BD_eyes","Locals",0)~THEN REPLY@51DO~SetGlobal("BD_eyes","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ CaeEyes1
IF~Global("BD_hepha","Locals",0)~THEN REPLY@52DO~SetGlobal("BD_hepha","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ Hepham1
IF~Global("BD_crusa","Locals",0) ~THEN REPLY@53DO~SetGlobal("BD_crusa","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ blood1
IF~Global("BD_crime","Locals",0) Global("BD_crusa","Locals",1)~THEN REPLY@54DO~SetGlobal("BD_crime","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ crime1
IF~Global("BD_futu","Locals",0)GlobalGT("Chapter","Global",20)~THEN REPLY@55DO~SetGlobal("BD_futu","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ CaeServe1
IF~GlobalGT("BD_Cae_Belive","LOCALS",11) GlobalLT("BD_Cae_Belive","LOCALS",20)~THEN REPLY@56+ JudgeG
IF~GlobalLT("BD_Cae_Belive","LOCALS",9)~THEN REPLY@57+ JudgeB
IF~~THEN REPLY@58DO~RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~EXIT

CHAIN
IF~~THEN BDCaelar CaeEyes1
@59
=@60
END
++@61+ CaeEyes2
++@62+ CaeEyes3
++@63+ CaeEyes3

CHAIN
IF~~THEN BDCaelar CaeEyes2
@64EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar CaeEyes3
@65EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar CaeServe1
@66
END
++@67+ CaeServe2a
++@68+ CaeServe2a

CHAIN
IF~~THEN BDCaelar CaeServe2a
@69
=@70
=@71
END
++@72+ CaeServe2
++@73+ CaeServe2
++@74+ CaeServe2

CHAIN
IF~~THEN BDCaelar CaeServe2
@75
END
++@76+ CaeServe3
++@77+ CaeServe3
++@78+ CaeServe3

CHAIN
IF~~THEN BDCaelar CaeServe3
@79
=@80EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar Hepham1
@81
END
++@82+ Hepham2
++@83+ Hepham2
++@84+ Hepham2

CHAIN
IF~~THEN BDCaelar Hepham2
@85
=@86
=@87
END
++@88+ Hepham3
++@89+ Hepham3
++@90+ Hepham3

CHAIN
IF~~THEN BDCaelar Hepham3
@91
END
++@92+ Hepham4
++@93+ Hepham4a

CHAIN
IF~~THEN BDCaelar Hepham4a
@94EXTERN BDCaelar Hepham4

CHAIN
IF~~THEN BDCaelar Hepham4
@95
=@96EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar blood1
@97
END
++@98+ blood2
++@99+ blood2
++@100+ blood3

CHAIN
IF~~THEN BDCaelar blood3
@101EXTERN BDCaelar blood2

CHAIN
IF~~THEN BDCaelar blood2
@102
=@103 EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar crime1
@104
END
++@105+ crime2
++@106+ crime2
++@107+ crime2

CHAIN
IF~~THEN BDCaelar crime2
@108
=@109
=@110
=@111DO~StartCutSceneMode() Wait(2) StartCutScene("bdcut20m") ~ EXIT

CHAIN
IF~~THEN BDCaelar PidFin
@112
END
++@113DO~IncrementGlobal("BD_Cae_Belive","LOCALS",1)~EXIT
++@114EXIT
++@115DO~IncrementGlobal("BD_Cae_Belive","LOCALS",-1)~EXIT
++@116EXIT

CHAIN
IF~Global("BD_crime","Locals",1)~THEN BDCaelar crime3
@117EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar JudgeG
@118
DO~SetGlobal("BD_Cae_Belive","LOCALS",31)~
END
++@119+ Uphill
++@120+ Uphill
++@121 + JudgeB
++@122+ break1

CHAIN
IF~~THEN BDCaelar Uphill
@123EXIT

CHAIN
IF~~THEN BDCaelar JudgeB
@124
DO~SetGlobal("BD_Cae_Belive","LOCALS",21)~
END
++@122+ break1 
++@125+ Uphill 

CHAIN
IF~~THEN BDCaelar break1 
@126
=@127
END
++@128 DO~LeaveParty() EscapeAreaDestroy(55)~EXIT
++@129EXIT
++@130DO~LeaveParty() EscapeAreaDestroy(55)~EXIT
++@131EXIT
