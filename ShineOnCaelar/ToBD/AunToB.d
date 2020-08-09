CHAIN
IF~Global("BDEEAunplot","Global",1)~THEN BDAUN Plot1
@0
DO~SetGlobal("bd_alt_willing_surrender","global",10)~
=@1
END
++@2+ Plot2
++@3+ Plot3
++@4+ Plot2

CHAIN
IF~~THEN BDAUN Plot3
@5EXTERN BDAUN Plot2

CHAIN
IF~~THEN BDAUN Plot2
@6
==BDAUN IF~InParty("CVSandr")~THEN@7
==BDAUN IF~!InParty("CVSandr")~THEN@8
==BDAUN@9
END
++@10+ Plot4
++@11+ Plot4
++@12+ Plot4

CHAIN
IF~~THEN BDAUN Plot4
@13
END
++@14+ Plot5
++@15+ Plot5
++@16+ Plot5

CHAIN
IF~~THEN BDAUN Plot5
@17
END
++@18DO~SetGlobal("BDEEAunplot","Global",2)~EXIT


CHAIN
IF~Global("BDEEAunplot","Global",3)~THEN BDAUN Plot11
@19
DO~SetGlobal("BDEEAunplot","Global",4)~
=@20
END
++@21+ Plot12
++@22+ Plot12
++@23+ Plot12

CHAIN
IF~~THEN BDAUN Plot12
@24
=@25
END
++@26+ Plot13
++@27+ Plot13
++@28+ Plot13

CHAIN
IF~~THEN BDAUN Plot13
@29
=@30
END
++@31+ Plot14
++@32+ Plot15

CHAIN
IF~~THEN BDAUN Plot14
@33
END
++@34+ Plot16
++@35+ Plot16
++@36+ Plot16
++@37+ Plot16

CHAIN
IF~~THEN BDAUN Plot15
@38EXTERN BDAUN Plot14

CHAIN
IF~~THEN BDAUN Plot16
@39
=@40
=@41
=@42DO~AddJournalEntry(@2012,QUEST) Wait(2) RunAwayFrom(Player1,20)~EXIT

CHAIN
IF WEIGHT #-4~GlobalGT("BDEEAunplot","Global",3) Global("MelissanYagaKillJob","GLOBAL",0)~THEN PPGUY01 GoHell
@43
END
++@44EXTERN PPGUY01 3
++@45+ GoHell2
++@46DO~DestroySelf()~EXIT

CHAIN
IF~~THEN PPGUY01 GoHell2
@47
END
++@48DO~SetGlobal("BDEEAunplot","Global",5) Wait(2) SetMasterArea("BD4000") LeaveAreaLUAPanic("BD4500","",[2123.359],2)
ActionOverride(Player1,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player2,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player3,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player4,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player5,LeaveAreaLUA("BD4500","",[2123.359],2))
ActionOverride(Player6,LeaveAreaLUA("BD4500","",[2123.359],2))
DestroySelf()~EXIT
++@46DO~DestroySelf()~EXIT

EXTEND_TOP PPGUY01 0 #2
IF~Global("BDEEAunplot","Global",4)~THEN REPLY@45GOTO GoHell2
END

CHAIN
IF WEIGHT #-6~Global("BDEEAunplot","Global",5)~THEN BDCaelar Rescue1
@49
DO~SetGlobal("BDEEAunplot","Global",6)~
=@50
END
++@51+ Rescue2
++@52+ Rescue2
++@53+ Rescue2

CHAIN
IF~~THEN BDCaelar Rescue2
@54
=@55
END
++@56+ Rescue3
++@57+ Rescue3
++@58+ Rescue3

CHAIN
IF~~THEN BDCaelar Rescue3
@59
=@60
=@61
END
++@62+ Rescue4
++@63+ Rescue4
++@64+ Rescue4

CHAIN
IF~~THEN BDCaelar Rescue4
@65
END
++@66+ Rescue5
++@67+ Rescue5

CHAIN
IF~~THEN BDCaelar Rescue5
@68EXIT

CHAIN
IF~Global("BDEEAunplot","Global",7)~THEN BDCaelar Uncle1
@69
DO~SetGlobal("BDEEAunplot","Global",8)~
==BDAUN@70
==BDCaelar@71
==BDAUN@72
=@73
==BDCaelar@74
=@75
==BDAUN@76
==BDCaelar@77
=@78
==BDAUN@79
=@80DO~RunAwayFrom(Player1,20) Wait(4) MoveBetweenAreas("bd2000",[3204.1405],4)~
==BDCaelar@81
END
++@82+ Uncle2
++@83+ Uncle2
++@84+ Uncle2

CHAIN
IF~~THEN BDCaelar Uncle2
@85
END
++@86DO~JoinParty()~EXIT
++@87DO~JoinParty()~EXIT
++@88DO~AddJournalEntry(@2015,QUEST_DONE) Wait(2) RunAwayFrom(Player1,20) Wait(4) MoveBetweenAreas("bd2000",[3224.1415],5)~EXIT
++@89+ Uncle3

CHAIN
IF~~THEN BDCaelar Uncle3
@90DO~AddJournalEntry(@2015,QUEST_DONE) Wait(2) RunAwayFrom(Player1,20) Wait(4) MoveBetweenAreas("bd2000",[3224.1415],5)~EXIT