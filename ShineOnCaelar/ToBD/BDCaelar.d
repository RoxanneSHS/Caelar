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
IF~Global("BD_Visited_BD5300","Global",31)~THEN BDCaelar KickedSelf
~So you have broken our pact, <CHARNAME>. I should have known you would never help me to deliver those souls to Kelemvor. There is no reason for me to follow you anymore. I stand true to my task and will perform it alone then.~
DO~DestroyItem("BDSolGlo") Wait(2) LeaveParty() EscapeAreaDestroy(55)~EXIT

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
DO~SetGlobal("BD_Visited_BD5300","Global",3) Wait(2) AddJournalEntry(@14,QUEST)~
==IF_FILE_EXISTS C0Sir25J IF~InParty("C0Sirene")~ THEN ~Our priests are well educated in the matters of Kelemvor, I'm sorry that my own education is not as deep to be of help.~EXIT 

CHAIN
IF~~THEN BDCaelar AfterPlane4b
~I had a priest of Ilmater among my advisors during the crusade. It may be worth inquiring at one of their temples about the issue? Illmater's followers seem to know something about Kelemvor as well.~
DO~SetGlobal("BD_Visited_BD5300","Global",3) Wait(2) AddJournalEntry(@14,QUEST)~
==IF_FILE_EXISTS C0Sir25J IF~InParty("C0Sirene")~ THEN ~Our priests are well educated in the matters of Kelemvor, I'm sorry that my own education is not as deep to be of help.~EXIT 

CHAIN
IF~Global("BD_ToB_CaelarD","Global",4)~ THEN BDCaelar Volu1
~It is quite satisfactory that we brought the crusade to some acceptable conclusion with our delivery of the souls to Kanaglym.~
DO~SetGlobal("BD_ToB_CaelarD","Global",5)~
END
++~This is your interpretation - and yours alone. I can see no satisfaction in bringing those souls to rest, not after all the bloodshed and suffering your stupid crusade had caused.~+ Souls
++~I kept my promise and that is all I have to say about this topic. Now I have your word that you'll be loyal to MY task. Spare me your damned crusade and any attempt to justify your deeds, I'm not listening.~+ Noword
++~Hundreds of dead crusaders and other victims on the Sword Coast are a price that is no way an adequate sacrifice for those who were already dead and lost.~+ Volu2 

CHAIN
IF~~THEN BDCaelar Noword
~Do not doubt the word and loyalty of an Argent, <CHARNAME>. You're not my judge but I'll measure you according to how you will use your heritage and prospects.~DO~RealSetGlobalTimer("BD_ToB_CaelarT","Locals",3100)~EXIT

CHAIN
IF~~THEN BDCaelar Souls
~Of all people, you should value a soul more than any other. Would you have left yours to that Exile? Didn't you leave a bloody trail across Amn for just one reason - YOUR soul. My crusade was to free many souls and not one of them was my own.~
END
++~Your aim was ONE soul, Aun's soul, and the only reason it had to suffer was due to your mistake.~+ Many
++~You misused the motivation of those following you with a hidden agenda. Stop finding excuses for yourself.~+ Hephi

CHAIN
IF~~THEN BDCaelar Many
~Aun's soul was part of a greater picture. My deeds at Kamaglym should have proven that.~EXTERN BDCaelar Noword

CHAIN
IF~~THEN BDCaelar Volu2 
~The crusaders were volunteers. Each of them had their own personal reason to follow us. Each of them found a justification to be part of the movement.~EXTERN BDCaelar Souls

CHAIN
IF~~THEN BDCaelar Hephi
~The only one with a hidden agenda was Hephernaan, as we both well know. And truly hidden it was. My goal were the souls in Avernus.~EXTERN BDCaelar Many

CHAIN
IF~Global("BD_ToB_CaelarD","Global",6) IsGabber(Player1) !RealGlobalTimerExpired("BD_ToB_CaelarT","Locals")~THEN BDCaelar NoPIDs
~(Her shining blue eyes mask all expression her face might reveal. She is not in the mood for a conversation right now) ~EXIT

CHAIN
IF~Global("BD_ToB_CaelarD","Global",6) IsGabber(Player1) RealGlobalTimerExpired("BD_ToB_CaelarT","Locals")~THEN BDCaelar PIDs
~(Her shining blue eyes mask all expression her face might reveal.) Yes?~
END
IF~Global("BD_eyes","Locals",0)~THEN REPLY~Can you explain what's the matter with your eyes? ~DO~SetGlobal("BD_eyes","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ CaeEyes1
IF~Global("BD_hepha","Locals",0)~THEN REPLY~How did you meet Hephernaan, why did he get such an influence over you? ~DO~SetGlobal("BD_hepha","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~EXIT
IF~Global("BD_crusa","Locals",0)~THEN REPLY~Why did you need the crusade for your goals? ~DO~SetGlobal("BD_crusa","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~EXIT
IF~Global("BD_crime","Locals",0)~THEN REPLY~Who ordered all those crimes that the crusade is guilty of? ~DO~SetGlobal("BD_crime","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~EXIT
IF~Global("BD_futu","Locals",0)GlobalGT("Chapter","Global",20)~THEN REPLY~What do you expect to achieve by serving my purpose? ~DO~SetGlobal("BD_futu","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~EXIT
IF~~THEN REPLY~Ah, nothing, Caelar. ~DO~RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~EXIT

CHAIN
IF~~THEN BDCaelar CaeEyes1
~I am assimar as you well know. My eyes are part of my celestial heritage. I can't hide my anchestory nor did I ever intend to hide it. ~
=~Aasimar bear the mark of their celestial touch through many different physical features that often varied from individual to individual. Those descended from ghaeles often have pearly opalescent eyes like mine.~
END
++~Ghaeles?~+ CaeEyes2
++~Aasimar descend from creatures of pure good alignment, but while predisposed to good alignments, aasimar are by no means always good.~+ CaeEyes3
++~I read at Candlekeep that most aasimar are destined to become paladins.~+ CaeEyes3

CHAIN
IF~~THEN BDCaelar CaeEyes2
~Those are knights-errant of the celestials. They are powerful warriors who delight in the hunting and slaying of evil in all its forms,especially fiends, evil dragons, and undead. I feel that urge in my blood and it's my destiny.~EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar CaeEyes3
~Ghaeles, the ancestors I assume are in my bloodline, are knights-errant of the celestials. They are powerful warriors who delight in the hunting and slaying of evil in all its forms,especially fiends, evil dragons, and undead. I feel that urge in my blood and it's my destiny.~EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar PidFin
~Does that answer your interogation, <CHARNAME>?~
END
++~Interesting to hear your view first hand instead of relying on second hand information. It makes things appear in a different light.~DO~IncrementGlobal("BD_Cae_Belive","LOCALS",1)~EXIT
++~You always have a justification for yourself and your deeds. Pepentance is not in your vocabulary, it seems.~EXIT
++~I see what you mean although I can't agree to your self-satisfied interpretation.~DO~IncrementGlobal("BD_Cae_Belive","LOCALS",-1)~EXIT
++~Thank you for clarifying things, Caelar.~EXIT