CHAIN
IF~Global("InParty","LOCALS",1) !InParty("BDCaelar")~THEN BDCaelar Kicked
~So you want to break our pact, <CHARNAME>?~
END
++~You have learned little and are not willing ro change. I bear it no longer.~+ Kicked2
++~I want you to rest for a while and contemplate our circumstances.~ + Kicked2
++~No. Stay with me, Caelar. Let us move on~DO~JoinParty() ChangeAIScript("DPlayer2",DEFAULT)~EXIT

CHAIN
IF~~THEN BDCaelar Kicked2
~I will seek my uncle Aun. Good luck on your way.~DO~RunAwayFrom(Player1,20) Wait(4) MoveBetweenAreas("bd2000",[3224.1415],5)~EXIT

CHAIN
IF~Global("BD_Visited_BD5300","Global",31)~THEN BDCaelar KickedSelf
~So you have broken our pact, <CHARNAME>. I should have known you would never help me to deliver those souls to Kelemvor. There is no reason for me to follow you any more. I stand true to my task and will perform it alone then.~
=~I do. And even should I fail, it is necessary. To not attempt it would be a greater crime.~[BD56578]
DO~DestroyItem("BDSolGlo") Wait(2) LeaveParty() EscapeAreaDestroy(55)~EXIT

CHAIN
IF~Global("BD_ToB_CaelarD","Global",1)~THEN BDCaelar AfterPlane1
~Ah, fresh air in my lungs! I almost forgot how it feels to have an open sky above. No wonder that the drow turned into...what drow are.~
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
IF~Global("BD_Visited_BD5300","Global",1) InParty("CVSandr")~THEN REPLY~Sandrah is right. When we explored the underground river below Dragonspear, we found this place. Good to be reminded, counsellor.~+ AfterPlane4a
IF~Global("BD_Visited_BD5300","Global",0) InParty("CVSandr")~THEN REPLY~Sandrah and her tomes! But when we explored the underground river below Dragonspear, we did not find this place. We may have been to much in hurry back then.~+ AfterPlane4a
++~Even better, where do we find a temple of Kelemvor?~+ AfterPlane4b
 
CHAIN
IF~~THEN BDCaelar AfterPlane4a
~I had a priest of Ilmater among my advisers during the crusade. It may be worth inquiring at one of their temples about the issue? I mean before we blindly return to *that* place...~
DO~SetGlobal("BD_Visited_BD5300","Global",3) Wait(2) AddJournalEntry(@14,QUEST)~
==IF_FILE_EXISTS C0Sir25J IF~InParty("C0Sirene")~ THEN ~Our priests are well educated in the matters of Kelemvor, I'm sorry that my own education is not as deep to be of help.~EXIT 

CHAIN
IF~~THEN BDCaelar AfterPlane4b
~I had a priest of Ilmater among my advisers during the crusade. It may be worth inquiring at one of their temples about the issue? Illmater's followers seem to know something about Kelemvor as well.~
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
~Do not doubt the word and loyalty of an Argent, <CHARNAME>. You're not my judge but I'll measure you according to how you will use your heritage and prospects.~DO~SetGlobal("BD_Cae_Belive","LOCALS",10) Wait(2) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",3100)~EXIT

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
IF~Global("BD_SaradushFell","Locals",1)~THEN BDCaelar Saradfall
~Our decisions impact many, even those who don't even know us and whom we never get to know, <CHARNAME>. I know how it feels to be responsible for the victims of war.~
DO~SetGlobal("BD_SaradushFell","Locals",2)~
==BDCaelar IF~ GlobalLT("BD_Visited_BD5300","Global",4)~THEN~I regret the loss of those who stood against me, and trust that, in death, they came to understand what I could not show them in life. I will honor their passing with the return of the Dragonspear dead.~[BD35852]
==BDCaelar IF~ GlobalGT("BD_Visited_BD5300","Global",3)~THEN~I regret the loss of those who stood against me, and trust that, in death, they came to understand what I could not show them in life. We have honoured their passing with the return of the Dragonspear dead.~
==BDCaelar~Can you make such a promise to those who vanished with Saradush?~
END
++~I did not cause these dead like you caused those who fell in YOUR crusade. You don't get me to your level, Caelar, don't even try.~+ Saradfall2
++~I swear that the Five will pay for this crime. I will fight those trying to raise Bhaal until my last breath.~+ Saradfall3
++~Neither you could run away from your fate nor can I. You are right, we must honour the fallen with the deeds we do in their name.~+ Saradfall3
++~You faced such losses so you must know that no words can express what I feel right now.~+ Saradfall3

CHAIN
IF~~THEN BDCaelar Saradfall2
~Your father was the Lord of Murder. Countless lives were stolen in his name. What if you could restore that balance - bring back those unjustly taken? Would you? Or is the call of your sire's blood too strong?~[BD35853] 
=~We will see...~ EXIT

CHAIN
IF~~THEN BDCaelar Saradfall3
~(Her hand lies on your shoulder for a short moment, her shining eyes meet yours for a second, and she nods.)~
=~(She turns away abruptly and faces the landscape.)~EXIT


CHAIN
IF~Global("BD_ToB_CaelarD","Global",6) IsGabber(Player1) !RealGlobalTimerExpired("BD_ToB_CaelarT","Locals")~THEN BDCaelar NoPIDs
~(Her shining blue eyes mask all expression her face might reveal. She is not in the mood for a conversation right now) ~EXIT

CHAIN
IF~Global("BD_ToB_CaelarD","Global",6) IsGabber(Player1) RealGlobalTimerExpired("BD_ToB_CaelarT","Locals")~THEN BDCaelar PIDs
~(Her shining blue eyes mask all expression her face might reveal.) Yes?~
END
IF~Global("BD_eyes","Locals",0)~THEN REPLY~Can you explain what's the matter with your eyes? ~DO~SetGlobal("BD_eyes","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ CaeEyes1
IF~Global("BD_hepha","Locals",0)~THEN REPLY~How did you meet Hephernaan, why did he get such an influence over you? ~DO~SetGlobal("BD_hepha","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ Hepham1
IF~Global("BD_crusa","Locals",0) ~THEN REPLY~Why did you need me and Imoen for your goals? ~DO~SetGlobal("BD_crusa","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ blood1
IF~Global("BD_crime","Locals",0) Global("BD_crusa","Locals",1)~THEN REPLY~Who ordered all those crimes that the crusade is guilty of? ~DO~SetGlobal("BD_crime","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ crime1
IF~Global("BD_futu","Locals",0)GlobalGT("Chapter","Global",20)~THEN REPLY~What do you expect to achieve by serving my purpose? ~DO~SetGlobal("BD_futu","Locals",1) RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~+ CaeServe1
IF~GlobalGT("BD_Cae_Belive","LOCALS",11) GlobalLT("BD_Cae_Belive","LOCALS",20)~THEN REPLY~I come to think that many, myself included, have erred a lot when it comes to the nature of the Shining Lady.~+ JudgeG
IF~GlobalLT("BD_Cae_Belive","LOCALS",9)~THEN REPLY~Your attitude towards your past deeds seems to confirm everything that made people hate the the Shining Lady.~+ JudgeB
IF~~THEN REPLY~Ah, nothing, Caelar. ~DO~RealSetGlobalTimer("BD_ToB_CaelarT","Locals",600)~EXIT

CHAIN
IF~~THEN BDCaelar CaeEyes1
~I am assimar as you well know. My eyes are part of my celestial heritage. I can't hide my anchestory nor did I ever intend to hide it. ~
=~Aasimar bear the mark of their celestial touch through many different physical features that often vary from individual to individual. Those descending from ghaeles often have pearly opalescent eyes like mine.~
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
IF~~THEN BDCaelar CaeServe1
~My time in Avernus has cured me from my belief in Lathander. I can't see myself associated with the Order of the Aster any more.~
END
++~They won't take you back anyway I guess.~+ CaeServe2a
++~What does this have to do with me?~+ CaeServe2a

CHAIN
IF~~THEN BDCaelar CaeServe2a
~You and I are not that different, don't fool yourself about it. We are born with a heritage and a destiny unlike most others. We have nowhere to go back to any more and what lies ahead of us is what we shape for ourselves.~
=~I was just nine years old when I made the mistake of my life. Trying to correct it with the false advice of the Gods and some advisors didn't make things better. Your course was set even prior your birth and further set in motion with Sarevok killing your Gorion.~
=~Many try to judge you and many think they can judge me. But they all know nothing. And we will proof it to them.~
END
++~You and me, we have nothing in common.~+ CaeServe2
++~That is some food for thought.~+ CaeServe2
++~You made an error when you were a foolish child, so much is true. But you seem to have learned nothing from it and continue to wreck things up.~+ CaeServe2

CHAIN
IF~~THEN BDCaelar CaeServe2
~Maybe I have a clearer view of your destiny than you have yourself, <CHARNAME>. You are bound for great things. Your heritage entitles you just like mine lets me stand out. Your father left you godhood as an option.~
END
++~I will never take Bhaal's throne!~+ CaeServe3
++~You will fall deep from Lathander to Bhaal, Caelar.~+ CaeServe3
++~So I'm your stepping stone for another army of destruction? Wasn't the crusade enough for your taste?~+ CaeServe3

CHAIN
IF~~THEN BDCaelar CaeServe3
~I am not talking about a new god of murder, <CHARNAME>, I refer to godhood as a pure form of power. YOU will be the one to define your portfolio. I anticipate it to be one that I can associate myself with. I may become one of those to serve you beyond your mortal tasks.~
=~Be warned however. I will not stand idle if Bhaal should corrupt you.~EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar Hepham1
~After I lost uncle Aun to Avernus, I made demands at the order of the Aster to take unflinching action against the forces of evil. My demands fell on deafened ears. I left the knighthood, seeking a means by which to fulfil my righteous vision.~
END
++~You could be glad they did not punish you for your failure.~+ Hepham2
++~They had no means to do it, even if they had intended to help you.~+ Hepham2
++~Such tin heads are never of use when a real task needs to be solved.~+ Hepham2

CHAIN
IF~~THEN BDCaelar Hepham2
~The "Revered Brother" Hephernaan appeared just in my hour of deepest despair. A wolf in a robe, but he smiled and lied well enough, and he was the first to nurture my hope to reach Avernus.~
=~I left Waterdeep alone, learning all I could of the evils that threaten the Prime. The knowledge I gained filled me with anguish. ~
=~One day I reached a bridge overlooking the Winding Way. I looked into the dark waters flowing below and questioned all I had once believed to be true. Perhaps I was wrong. Perhaps I had not been chosen to rid the world of evil. It was in this, my greatest moment of doubt, that Hephernaan appeared. He claimed to serve not one god or pantheon, but all of them. I accepted this heresy.~
END
++~A mistake to worsen all the mistakes already made.~+ Hepham3
++~Desperation lets us choose dubious company at times.~+ Hepham3
++~I'm no stranger to such moments of doubt myself.~+ Hepham3

CHAIN
IF~~THEN BDCaelar Hepham3
~We spoke until the next morning...And when my tale was told, he said, "The people of the land long for righteousness. The gods have blessed you with a vision. I know what you must do."~
END
++~And so he planted his ideas into you!~+ Hepham4
++~His master knew of your desperation and sent you an angel, eh, devil right on time.~+ Hepham4a

CHAIN
IF~~THEN BDCaelar Hepham4a
~A Baatezu, to be precise. And in hindsight all of it may have been Belhifet's plan to get more souls into Avernus...Anyway back to the facts we know.~EXTERN BDCaelar Hepham4

CHAIN
IF~~THEN BDCaelar Hepham4
~He told me about Dragonspear Castle and the portal and that my divine blood would open it. He also advised me that we would need an army to enter Avernus.~
=~Knowing that we would get no help from the Aster, we called out to the people of Faerun. From the coasts and the plains, the mountains and the deserts, men and women of courage and righteous conviction answered, flocking to our banner.~EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar blood1
~We - Hephernaan thought my aasimar blood might open the portal to Avernus, but its divine power had been diluted over generations. We needed the blood of a god, or the next best thing - the child of a god. Your appearance as Sarevok's sibling was just bad timing - for you.~
END
++~Just that this godchild didn't want to give <PRO_HISHER> blood voluntarily.~+ blood2
++~Ah, yes, kill a god or a godchild, why set yourself any limit in ambition.~+ blood2
++~At least you considered to sacrifice yourself in the first place.~+ blood3

CHAIN
IF~~THEN BDCaelar blood3
~I never hesitated a moment...but it wasn't to be. And in hindsight that was a good thing. Otherwise Hephernaan might have suceeded in the end.~EXTERN BDCaelar blood2

CHAIN
IF~~THEN BDCaelar blood2
~I never wanted you dead. I needed you alive. The men I sent to Baldur's Gate - good and righteous men - were meant to capture you.~
=~Later I tried my charisma on you and tried to let me see my vision. It were your so-called allies who tried to keep us apart.~ EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar crime1
~Nobody ever ordered any crimes, <CHARNAME>. Listen very carefully, you have been fed with as many lies from your *friends* in Baldur's Gate as I had to swallow from my *advisor*~
END
++~Explain.~+ crime2
++~You have an excuse for yourself for everything, haven't you.~+ crime2
++~You may have been used but surely not me.~+ crime2

CHAIN
IF~~THEN BDCaelar crime2
~When we discovered that our crusader army needed to march to the abandoned Dragonspear Castle where the portal was, I sent emissaries to the Dukes to inform them and also to ask for help and supplies. The Dukes denied my request. They claimed that Dragonspear Castle was a strategic location for them and a foreign army there was a military threat.~
=~I went to a meeting with Duke Silvershield at the Northern Citadel to convince him of our common enemy below the castle. He would not listen. He called me an invader.~
=~It was Baldur's Gate who declared war on the Crusade, <CHARNAME>. Neither the town, nor the Dukes nor you where our enemies until your allies decided to oppose me.~
=~I was very concerned about this development. It was never planned to use the crusaders against any other enemy than the fiends of hell. Every loss in a war I didn't want was a personal grief to me.~DO~StartCutSceneMode() Wait(2) StartCutScene("bdcut20m") ~ EXIT

CHAIN
IF~~THEN BDCaelar PidFin
~Does that answer your interogation, <CHARNAME>?~
END
++~Interesting to hear your view first hand instead of relying on second hand information. It makes things appear in a different light.~DO~IncrementGlobal("BD_Cae_Belive","LOCALS",1)~EXIT
++~You always have a justification for yourself and your deeds. Repentance is not in your vocabulary, it seems.~EXIT
++~I see what you mean although I can't agree to your self-satisfied interpretation.~DO~IncrementGlobal("BD_Cae_Belive","LOCALS",-1)~EXIT
++~Thank you for clarifying things, Caelar.~EXIT

CHAIN
IF~Global("BD_crime","Locals",1)~THEN BDCaelar crime3
~I was no warlord and no blood thirsty monster. The crusaders where family to me.~EXTERN BDCaelar PidFin

CHAIN
IF~~THEN BDCaelar JudgeG
~I no longer perceive myself as the Shining Lady. You should have learned that much about me by now.~
DO~SetGlobal("BD_Cae_Belive","LOCALS",31)~
END
++~A childish mistake made by a child and everything that followed was a series of disasters. Whatever you did, things have gone from bad to worse.~+ Uphill
++~It's a tragic tale of treason and misconception. Good intentions alone are no guarantee for a good outcome.~+ Uphill
++~It looks like you never were in charge or control of anything accosted to you. You might have had great ideas but no means to get anything done.~ + JudgeB
++~I truly despise your arrogance and self-righteousness that finds an excuse for all your misdeeds.~+ break1

CHAIN
IF~~THEN BDCaelar Uphill
~I have not lost my confidence yet. Since we travel together, I see that great things can be achieved if we work together. Your leadership and my contributions will solve this crisis. The smouldering flame that is Caelar Argent may soon be shining bright again.~EXIT

CHAIN
IF~~THEN BDCaelar JudgeB
~Is that true for yourself as well, do you hate me?~
DO~SetGlobal("BD_Cae_Belive","LOCALS",21)~
END
++~I truly despise your arrogance and self-righteousness that finds an excuse for all your misdeeds.~+ break1 
++~No. If you ever find the courage to stand to your mistakes, there is a small chance that you learn a bit.~+ Uphill 

CHAIN
IF~~THEN BDCaelar break1 
~If that is what you think of me still...even after you learned the truth about those past events from my own lips...~
=~There is only one thing for us to do. Let us agree to break our pact. I gave you my word after Kanaglym but now I ask you to let me go from your service. ~
END
++~This is probably the best. May you find whatever light there waits for you for guidance.~ DO~LeaveParty() EscapeAreaDestroy(55)~EXIT
++~I don't give up that easily, Caelar. Your word of honor binds you, so you have to endure my further lecturing you. Try to like it. ~EXIT
++~I'm baffled by your use of terms like *honor* still. You're a lost case, it's best you leave.~DO~LeaveParty() EscapeAreaDestroy(55)~EXIT
++~You're still a useful companion. One like I will need in the days and weeks to come. Keep your opinions to yourself and I'll spare you mine. Let's move on.~EXIT
