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
IF~!InParty("BDCaelar")~THEN REPLY~We seek a place that allows us to deliver some suffering souls of those departed to the Fugue Plane. The formerly Shining Lady was able to rescue them from Avernus.~EXTERN Slilmat Caequest2s

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
==BDCaeen1 IF~!InParty("BDCaelar")~THEN~Caelar's Bhaalspawn, the very ones that caused our misery and defeat.~
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

CHAIN
IF WEIGHT #-4~Global("BDNedlock","BD5100",1)~THEN BDNederl InTob1
~Ha, now look what we found, this must be the former so-called hero of Baldur's Gate, bah.~
DO~SetGlobal("BDNedlock","BD5100",2)~
==BDNederl IF~InParty("BDCaelar")~THEN~Even worse, <PRO_HESHE> now openly serves the damned lady who shines no more.~
==BDCaelar IF~InParty("BDCaelar")~THEN~Make no mistake, Marshal. Stay your wrath and use what senses you have. The reason why we were here in Kanaglym was to put the souls of Dragaonspear to rest. The crusade is over forever.~
END
IF~InParty("BDCaelar")~THEN REPLY~She speaks the truth, Marshal. I rescued Caelar from Avernus and whatever souls she could secure and we laid them to rest in The Fugue Plane accessible just beyond that portal.~+ InTob2
IF~!InParty("BDCaelar")~THEN REPLY~Make no mistake, Marshal. The reason why we were here in Kanaglym was to put the souls of Dragaonspear to rest. I rescued Caelar from Avernus and whatever souls she could secure and we laid them to rest in The Fugue Plane accessible just beyond that portal.~+ InTob2
IF~~THEN REPLY~Get out of my way, fool, I have no more business with you. History is past and I have to follow my fate to Tethyr now.~+ InTob2

CHAIN
IF~~THEN BDNederl InTob2
~I'm inclined to believe you, <CHARNAME>. Somehow I always perceived you as a <PRO_MANWOMAN> of honour.~
=~The price for this outcome has been high. (Sigh), far too high in my humble opinion but that cannot be changed anymore. Too many people made too many mistakes in this matter.~
=~Can you give me your word that you leave here peacefully and not return any more?~
END
IF~ !InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ~THEN REPLY~I'm my own <PRO_MANWOMAN> and I don't answer to you. I go where I need to go and you will not hinder me.~+ InTob3P
IF~!InParty("BDCAelar") !Alignment(Player1,MASK_EVIL)  ~THEN REPLY~I told you the truth, Nederlok, our mission here is done and I have no reason to return.~+ InTob3P
IF~ !InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ~THEN REPLY~I have no quarrel with you and there is no need for hostility, Marshal. I'll just be on my way.~+ InTob3P
IF~!InParty("BDCAelar") Alignment(Player1,MASK_EVIL) ~THEN REPLY~I'm my own <PRO_MANWOMAN> and I don't answer to you. I go where I need to go and you will not hinder me.~+ InTob3F
IF~!InParty("BDCAelar") Alignment(Player1,MASK_EVIL) ~THEN REPLY~I told you the truth, Nederlok, our mission here is done and I have no reason to return.~+ InTob3F
IF~!InParty("BDCAelar") Alignment(Player1,MASK_EVIL) ~THEN REPLY~I have no quarrel with you and there is no need for hostility, Marshal. I'll just be on my way.~+ InTob3F
IF~InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15) ~THEN REPLY~I'm my own <PRO_MANWOMAN> and I don't answer to you. I go where I need to go and you will not hinder me.~+ InTob3P
IF~InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15) ~THEN REPLY~ I told you the truth, Nederlok, our mission here is done and I have no reason to return.~+ InTob3P
IF~InParty("BDCAelar") !Alignment(Player1,MASK_EVIL) ReputationGT(Player1,15) ~THEN REPLY~I have no quarrel with you and there is no need for hostility, Marshal. I'll just be on my way.~+ InTob3P
IF~InParty("BDCAelar") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16)~THEN REPLY~I'm my own <PRO_MANWOMAN> and I don't answer to you. I go where I need to go and you will not hinder me.~+ InTob3F
IF~InParty("BDCAelar") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16)~THEN REPLY~ I told you the truth, Nederlok, our mission here is done and I have no reason to return.~+ InTob3F
IF~InParty("BDCAelar") OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,16) ~THEN REPLY~I have no quarrel with you and there is no need for hostility, Marshal. I'll just be on my way.~+ InTob3F

CHAIN
IF~~THEN BDNederl InTob3P
~I will not stand between you and whatever is your destiny. Go in peace.~DO~SetGlobal("BDNedlock","BD5100",3)~EXIT

CHAIN
IF~~THEN BDNederl InTob3F
~As much as I'd wished to avoid it, you leave me no choice. I can't let you go, traitor.~DO~SetGlobal("BDNedlock","BD5100",4)~EXIT