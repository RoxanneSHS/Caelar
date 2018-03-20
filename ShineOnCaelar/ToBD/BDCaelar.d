CHAIN
IF~Global("InParty","LOCALS",1) !InParty("BDCaelar")~THEN BDCaelar Kicked
~So you want to break our pact, <CHARNAME>?~
END
++~You have learned little and are not willing ro change. I bear it no longer.~+ Kicked2
++~I want you to rest for a while and cintemplate our circumstances.~ + Kicked2
++~No. Stay with me, Caelar. Let us move on~DO~JoinParty() ChangeAIScript("DPlayer2",DEFAULT)~EXIT

CHAIN
IF~~THEN BDCaelar Kicked2
~I will seek my uncle Aun. Good luck on your way.~DO~RunAwayFrom(Player1,20) Wait(4) MoveBetweenAreas("bd2000",[3224.1415],5)~EXIT

CHAIN
IF~Global("BD_ToB_CaelarD","Global",1)~THEN BDCaelar AfterPlane1
~Ah, fresh air in my lungs! I almost forgot how it feels to have an open sky above. No wonder that the drow turned into...what frow are.~
DO~SetGlobal("BD_ToB_CaelarD","Global",2)~
=~Anyway, it may now be the right moment to tell you more about the quest you promised to solve with me.~
END
++~I promised nothing except that I may listen to your plea.~+ AfterPlane2
++~The sooner we do it, the sooner you'll stop nagging me.~+ AfterPlane2
++~Very well, go ahaead, I'm listening.~+ AfterPlane2
++~Ah, yes that easy thing about bringing a thousand souls to Kelemvor...~+ AfterPlane2

CHAIN
IF~~THEN BDCaelar AfterPlane2
~I spent my time in Avernus fighting the remains of Belhifet's minions and exploring his former Realm. I found this soul globe device among his instruments of torture and it turned out to be useful. I could over time collect souls tortured by demons or burning in lava pools and put them to relative safety inside the globe. Now all we need to do is to deliver that globe to some entrance of the Fugue Plane.~
END
++~Yes...?~+ AfterPlane3
++~The Fugue Plane, that is Kelemvor's Realm, the Lord of the Dead. I mean, you must be dead to get there, right?~+ AfterPlane3
++~That's in deed *all we need to do*. Wasn't there such an entrance in the last pub we visited?~+ AfterPlane3

CHAIN
IF~~THEN BDCaelar AfterPlane3
~I suppose some priest of Kelemvor might help us in our case?~
==BDCaelar IF~InParty("CVSandr")~THEN~Also, I talked with Sandrah about it and she mentioned a place called Kanaglym. It must be below Dragonspear Castle.~
END
IF~Global("BD_Visited_BD5300","Global",1) !InParty("CVSandr")~THEN REPLY~When we explored the underground river below Dragonspear, we found a place called Kanaglym. Might this be the access you seek?~+ AfterPlane4a
IF~Global("BD_Visited_BD5300","Global",1) InParty("CVSandr")~THEN REPLY~Sandrah is right. When we explored the underground river below Dragonspear, we found this place. Good to be reminded, counselor.~+ AfterPlane4a
IF~Global("BD_Visited_BD5300","Global",0) InParty("CVSandr")~THEN REPLY~Sandrah and her tomes! But when we explored the underground river below Dragonspear, we did not find this place. We may have been to much in hurry back then.~+ AfterPlane4a
++~Even better, where do we find a temple of Kelemvor?~+ AfterPlane4b
 
CHAIN
IF~~THEN BDCaelar AfterPlane4a
~I had a priest of Ilmater among my advisors during the crusade. It may be worth inquiring at one of their temples about the issue? I mean before we blindly return to *that* place...~
DO~SetGlobal("BD_Visited_BD5300","Global",3)~
==IF_FILE_EXISTS C0Sir25J IF~InParty("C0Sirene")~ THEN ~Our priests are well educated in the matters of Kelemvor, I'm sorry that my own education is not as deep to be of help.~EXIT 

CHAIN
IF~~THEN BDCaelar AfterPlane4b
~I had a priest of Ilmater among my advisors during the crusade. It may be worth inquiring at one of their temples about the issue? Illmater's followers seem to know something about Kelemvor as well.~
DO~SetGlobal("BD_Visited_BD5300","Global",3)~
==IF_FILE_EXISTS C0Sir25J IF~InParty("C0Sirene")~ THEN ~Our priests are well educated in the matters of Kelemvor, I'm sorry that my own education is not as deep to be of help.~EXIT 

