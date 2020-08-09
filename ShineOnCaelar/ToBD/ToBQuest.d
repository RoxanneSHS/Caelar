BEGIN BDCaeen1

EXTEND_TOP Slilmat 0 #2
IF~Global("BD_Visited_BD5300","Global",3) Global("Kanag","LOCALS",0)~THEN REPLY @0DO~SetGlobal("Kanag","LOCALS",1)~GOTO Caequest1s
END 

EXTEND_TOP Wilmat 0 #2
IF~Global("BD_Visited_BD5300","Global",3) Global("Kanag","LOCALS",0)~THEN REPLY @0DO~SetGlobal("Kanag","LOCALS",1)~GOTO Caequest1w
END  

CHAIN
IF~~THEN Slilmat Caequest1s
@1
==BDCaelar IF~InParty("BDCaelar")~THEN@2
END
IF~InParty("BDCaelar")~EXTERN Slilmat Caequest2s
IF~!InParty("BDCaelar")~THEN REPLY@3EXTERN Slilmat Caequest2s

CHAIN
IF~~THEN Slilmat Caequest2s
@4
=@5
END
++@6DO~TakePartyGold(150) Wait(2) AddJournalEntry(@2014,QUEST)~EXIT
++@7DO~TakePartyGold(50) Wait(2) AddJournalEntry(@2014,QUEST)~EXIT

CHAIN
IF~~THEN Wilmat Caequest1w
@1
==BDCaelar IF~InParty("BDCaelar")~THEN@2
END
IF~InParty("BDCaelar")~EXTERN wilmat Caequest2w
IF~!InParty("BDCaelar")~THEN REPLY@8EXTERN wilmat Caequest2w

CHAIN
IF~~THEN Wilmat Caequest2w
@4
=@5
END
++@6DO~TakePartyGold(150) Wait(2) AddJournalEntry(@2014,QUEST)~EXIT
++@7DO~TakePartyGold(50) Wait(2) AddJournalEntry(@2014,QUEST)~EXIT

CHAIN
IF~Global("BD_NewQuest","BD5000",1)~THEN BDCaeen1 welcome
@9
DO~SetGlobal("BD_NewQuest","BD5000",2)~
==BDCaeen1 IF~InParty("BDCaelar")~THEN@10
==BDCaeen1 IF~!InParty("BDCaelar")~THEN@11
==BDCaelar IF~InParty("BDCaelar")~THEN@12
END
IF~!InParty("BDCaelar")~THEN REPLY@13+ welcome2
++@14+ welcome2
++@15+ welcome2

CHAIN
IF~~THEN BDCaeen1 welcome2
@16DO~Enemy() Shout(ASSIST) ActionOverride("BDCaeen2",Enemy())~EXIT

CHAIN
IF~Global("BD_Visited_BD5300","Global",4)~THEN BDCaelar AtChasm1
@17
DO~SetGlobal("BD_Visited_BD5300","Global",5)~
=@18
END
++@19+ AtChasm2
++@20+ AtChasm2
IF~GlobalGT("BD_BONES","BD5300",1)~THEN REPLY@21+ AtChasm3

CHAIN
IF~~THEN BDCaelar AtChasm2
@22EXIT

CHAIN
IF~~THEN BDCaelar AtChasm3
@23EXIT

CHAIN
IF WEIGHT #-4~Global("BDNedlock","BD5100",1)~THEN BDNederl InTob1
@24
DO~SetGlobal("BDNedlock","BD5100",2)~
==BDNederl IF~InParty("BDCaelar")~THEN@25
==BDCaelar IF~InParty("BDCaelar")~THEN@26
END
IF~InParty("BDCaelar")~THEN REPLY@27+ InTob2
IF~!InParty("BDCaelar")~THEN REPLY@28+ InTob2
IF~~THEN REPLY@29+ InTob2

CHAIN
IF~~THEN BDNederl InTob2
@30
=@31
=@32
END
IF~ !InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ~THEN REPLY@33+ InTob3P
IF~!InParty("BDCAelar") !Alignment(Player1,MASK_EVIL)  ~THEN REPLY@34+ InTob3P
IF~ !InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ~THEN REPLY@35+ InTob3P
IF~!InParty("BDCAelar") Alignment(Player1,MASK_EVIL) ~THEN REPLY@33+ InTob3F
IF~!InParty("BDCAelar") Alignment(Player1,MASK_EVIL) ~THEN REPLY@34+ InTob3F
IF~!InParty("BDCAelar") Alignment(Player1,MASK_EVIL) ~THEN REPLY@35+ InTob3F
IF~InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15) ~THEN REPLY@33+ InTob3P
IF~InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15) ~THEN REPLY@36+ InTob3P
IF~InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15) ~THEN REPLY@35+ InTob3P
IF~InParty("BDCAelar") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16)~THEN REPLY@33+ InTob3F
IF~InParty("BDCAelar") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16)~THEN REPLY@36+ InTob3F
IF~InParty("BDCAelar") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16) ~THEN REPLY@35+ InTob3F

CHAIN
IF~~THEN BDNederl InTob3P
@37DO~SetGlobal("BDNedlock","BD5100",3)~EXIT

CHAIN
IF~~THEN BDNederl InTob3F
@38DO~SetGlobal("BDNedlock","BD5100",4)~EXIT