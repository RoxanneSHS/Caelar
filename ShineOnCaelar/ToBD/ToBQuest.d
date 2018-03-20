BEGIN BDCaeen1

EXTEND_TOP Slilmat 0 #2
IF~Global("BD_Visited_BD5300","Global",3) Global("Kanag","LOCALS",0)~THEN REPLY ~We like to inquire about Kelemvor if we might.~DO~SetGlobal("Kanag","LOCALS",1)~GOTO Caequest1s
END 

EXTEND_TOP Wilmat 0 #2
IF~Global("BD_Visited_BD5300","Global",3) Global("Kanag","LOCALS",0)~THEN REPLY ~We like to inquire about Kelemvor if we might.~DO~SetGlobal("Kanag","LOCALS",1)~GOTO Caequest1w
END  

CHAIN
IF~~THEN Slilmat Caequest1s
~Ah, the Lord of the Dead. Your friend at the end of all sufferings. What can I tell you about him, friend?~
==BDCaelar IF~InParty("BDCaelar")~THEN~ We seek a place that allows us to deliver some suffering souls of those departed to the Fugue Plane. I was able to rescue them from Avernus.~
END
IF~InParty("BDCaelar")~EXTERN Slilmat Caequest2s
IF~!InParty("BDCaelar")~THEN REPLY~We seek a place that allows us to deliver some suffering souls of those departed to the Fugue Plane. The formerly Shing Lady was able to rescue them from Avernus.~EXTERN Slilmat Caequest2s

CHAIN
IF~~THEN Slilmat Caequest2s
~Mh...this is an exceptional story. But you are one to be believed, so much is true.~
=~There is rumoured to be such a place on the Sword Coast, it is called Kanaglym. Some say it is located below the old Dragonspear Castle and guarded by a shadow dragon or sorts. That is all I know, the rest is to you, heroes.~
END
++~Thank you for your time, priest. Take this.~DO~TakePartyGold(150) Wait(2) AddJournalEntry(@14,QUEST)~EXIT
++~Thank you for nothing, priest. We knew that much already. Take this.~DO~TakePartyGold(50) Wait(2) AddJournalEntry(@14,QUEST)~EXIT

CHAIN
IF~~THEN Wilmat Caequest1w
~Ah, the Lord of the Dead. Your friend at the end of all sufferings. What can I tell you about him, friend?~
==BDCaelar IF~InParty("BDCaelar")~THEN~ We seek a place that allows us to deliver some suffering souls of those departed to the Fugue Plane. I was able to rescue them from Avernus.~
END
IF~InParty("BDCaelar")~EXTERN wilmat Caequest2w
IF~!InParty("BDCaelar")~THEN REPLY~We seek a place that allows us to deliver some suffering souls of those departed to the Fugue Plane. The formerly Shing Lady was able to rescue them from Avernus.~EXTERN wilmat Caequest2w

CHAIN
IF~~THEN Wilmat Caequest2w
~Mh...this is an exceptional story. But you are one to be believed, so much is true.~
=~There is rumoured to be such a place on the Sword Coast, it is called Kanaglym. Some say it is located below the old Dragonspear Castle and guarded by a shadow dragon or sorts. That is all I know, the rest is to you, heroes.~
END
++~Thank you for your time, priest. Take this.~DO~TakePartyGold(150) Wait(2) AddJournalEntry(@14,QUEST)~EXIT
++~Thank you for nothing, priest. We knew that much already. Take this.~DO~TakePartyGold(50) Wait(2) AddJournalEntry(@14,QUEST)~EXIT

CHAIN
IF~Global("BD_NewQuest","BD5000",1)~THEN BDCaeen1 welcome
~See who's coming.~
DO~SetGlobal("BD_NewQuest","BD5000",2)~
==BDCaeen1 IF~InParty("BDCaelar")~THEN~Our *Shining Lady* and her Bhaalspawn, the very ones that caused our mysery and defeat.~
==BDCaeen1 IF~!InParty("BDCaelar")~THEN~Caelar's Bhaalspawn, the very ones that caused our mysery and defeat.~
==BDCaelar IF~InParty("BDCaelar")~THEN~You were always good in shifting the blame to others, Burthon, the coward. What happened to you after the crusade is nothing but your own doing.~
END
IF~!InParty("BDCaelar")~THEN REPLY~You were always good in shifting the blame to others, coward. I had nothing to do with your fate.~+ welcome2
++~I don't even know who you are. Get lost before things escalate.~+ welcome2
++~I have no issue with any of you. I just need to enter that cave over there.~+ welcome2

CHAIN
IF~~THEN BDCaeen1 welcome2
~Men, they carry our belongings on their bodies. Let's get back what is ours.~DO~Enemy() Shout(ASSIST) ActionOverride("BDCaeen2",Enemy())~EXIT

CHAIN
IF~Global("BD_Visited_BD5300","Global",4)~THEN BDCaelar AtChasm1
~This must be the place, <CHARNAME>. This chasm ahead feels like the other plane that we seek.~
DO~SetGlobal("BD_Visited_BD5300","Global",5)~
=~If we only knew how to release those souls now and let them enter.~
END
++~Brilliant planning, Caelar. Did we come all the way just to stand here now like fools?~+ AtChasm2
++~Maybe it's as easy as just throwing the globe inside...but what if more is required?~+ AtChasm2
IF~GlobalGT("BD_BONES","BD5300",1)~THEN REPLY~Last time we just had to move close enough and activate that trigger.~+ AtChasm3

CHAIN
IF~~THEN BDCaelar AtChasm2
~Sometimes I ask myself how someone like you could make it this far, really. I suggest that we just move close enough and activate that trigger.~EXIT

CHAIN
IF~~THEN BDCaelar AtChasm3
~Sounds like the best option to me, <CHARNAME>.~EXIT