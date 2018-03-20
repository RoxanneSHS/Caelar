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
++~Thank you for your time, priest. Take this.~DO~TakePartyGold(150)~EXIT
++~Thank you for nothing, priest. We knew that much already. Take this.~DO~TakePartyGold(50)~EXIT

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
++~Thank you for your time, priest. Take this.~DO~TakePartyGold(150)~EXIT
++~Thank you for nothing, priest. We knew that much already. Take this.~DO~TakePartyGold(50)~EXIT