
ADD_TRANS_TRIGGER BDDelanc 50
~!Global("bd_alt_willing_surrender","global",2)~

EXTEND_BOTTOM BDDelanc 50
IF~Global("bd_alt_willing_surrender","global",2) InParty("Corwin")~THEN REPLY~I still think surrender is the best option. I'd gladly give my life to save those around me.~DO~ SetGlobal("bd_alt_willing_surrender","global",3)~EXTERN BDCorwiJ Surr1
IF~Global("bd_alt_willing_surrender","global",2)!InParty("Corwin")~THEN REPLY~I still think surrender is the best option. I'd gladly give my life to save those around me. Damn it, De Lancie, I came this far for a reason. I'm ready to go, Caelar.~DO~ SetGlobal("bd_alt_willing_surrender","global",3)~EXTERN BDHepher Surr2
IF~Global("bd_alt_willing_surrender","global",2) ~THEN REPLY~Surrender is a tool, one I won't use until I'm certain of the outcome. I stay with the coalition.~EXTERN BDCaelar 40
END

CHAIN 
IF~~THEN BDCorwiJ Surr1
~They should've known you would. It's too dangerous, but... Damn it, De Lancie, <PRO_HESHE> came this far for a reason.~
END
++~I'm ready to go, Caelar.~ EXTERN BDHepher Surr2

CHAIN 
IF~~THEN BDHepher Surr2
~Eh?...This is a surprising outcome, my lady.~
==BDCaelar~Gentlemen, I will send my couriers immediately to your camp to negotiate the retreat from Dragonspear.~
=~<CHARNAME>, this is a good day for us since it's a good day for the Realms. Light will shine.~
==BDDelanc~This is rebellion...treason!~
==BDNederl~This is as heroic as it is foolish and maybe will save us all.~
END
++~This is my decision now. Hold the peace, make the best of this one chance we have.~
DO~SetGlobal("bd_parley_retreat","bd7300",1) StartCutSceneMode() Wait(2) StartCutScene("CVInSpe1")~EXIT
++~I do what must be done. Don't you spoil it. I gave my word to the Shining Lady.~DO~SetGlobal("bd_parley_retreat","bd7300",1) StartCutSceneMode() Wait(2) StartCutScene("CVInSpe1")~EXIT

CHAIN
IF WEIGHT #-7~Global("bd_alt_willing_surrender","global",4)~THEN BDCaelar InSpear1
~I still can't believe that we avoided the battle that would have painted the walls of this castle with the blood of many innocent. I have thought maybe too low of you, <CHARNAME>.~
DO~SetGlobal("bd_alt_willing_surrender","global",5)~
==BDHepher~My lady, it may still turn out a grave mistake to trust the Bhaalspawn. We need <PRO_HISHER> blood, not <PRO_HISHER> cooperation.~
==BDCaelar~Enough blood has been spilled, Hephernaan, we finally come near out glorious goal. Let us not soil it, I gave my word, the word of an Argent.~
==BDHepher~The spawn in chains would serve us just as fine. No need for a risk any more.~
==BDCaelar~Our words and honour bind us more than chains, isn't that so, <CHARNAME>?~
END
++~Your advisor has all reason to fear me, Caelar. I came for your task but not for his.~ EXTERN BDHepher InSpear2
++~Hephernaan, it's about time we open the eyes of the Shining Lady to see where the enemy is and where the ally, don't you think?~EXTERN BDHepher InSpear3

CHAIN
IF~~THEN BDHepher InSpear2
~They are the same, Bhaalspawn, don't try to imply anything else here.~
=~We have no time to waste. To the portal, I say!~DO~ActionOverride("BDHepher",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDHepher",EscapeAreaObject("TransBD4100"))~
==BDCaelar~Come, <CHARNAME>, proof your worth now. I will give the signal for my troops to depart and let the coalition take the castle, peacefully.~ 
=~Let us enter the castle now.~DO~ActionOverride("BDCaelar",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDCaelar",EscapeAreaObject("TransBD4100"))~EXIT

CHAIN
IF~~THEN BDHepher InSpear3
~The seal awaits us, my lady, and this snake only tries to win time and hold us up until <PRO_HISHER> allies are ready to strike.~
=~We have no time to waste. To the portal, I say!~
DO~SetGlobal("bd_alt_willing_surrender","global",6) ActionOverride("BDHepher",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDHepher",EscapeAreaObject("TransBD4100"))~EXIT

CHAIN
IF WEIGHT #-7~Global("bd_alt_willing_surrender","global",6)~THEN BDCaelar InSpearw
~What did those words mean, <CHARNAME>?~
END
++~He is a traitor, Caelar.~+ InSpearw2
++~You know little of your so-called advisor, Shining Lady.~+ InSpearw2
++~Actually nothing. Forget my remark, Caelar. ~+ InSpearw3

CHAIN
IF~~THEN BDCaelar InSpearw2
~I hope you can back up these accusations with evidence or our young alliance may come to a sudden end.~
END
++~All of his actions speak a clear language. You may be what you claim, but Hephernaan is no servant of the light. ~+ InSpearw3
++~You heard him, he still wants to enforce what I came to do willingly. Hephernaan is no servant of the light. ~+ InSpearw3
++~We found documents about his history and reports from spies. He uses you for his own sinister purpose only. ~+ InSpearw4
IF~Global("bd_hephernann_talk_belhifet","global",1)~THEN REPLY~He has his own little altar in the basement where he prays to his true master. We observed him when we sneaked through your secret supply road. He wants the portal to be opened for his master's arrival.~+ InSpearw4

CHAIN
IF~~THEN BDCaelar InSpearw3
~I have no choice but move ahead. Too much is at stake. We will see who of you is the traitor and who is the true ally. I must risk it.~
=~Come, <CHARNAME>, proof your worth now. I will give the signal for my troops to depart and let the coalition take the castle, peacefully.~ 
=~Let us enter the castle now.~DO~SetGlobal("bd_alt_willing_surrender","global",7) ActionOverride("BDCaelar",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDCaelar",EscapeAreaObject("TransBD4100"))~EXIT
 
CHAIN
IF~~THEN BDCaelar InSpearw4
~We must stop him, by all means! Come, <CHARNAME>, proof your worth now. I will give the signal for my troops to depart and let the coalition take the castle, peacefully.~ 
=~Let us enter the castle now.~DO~SetGlobal("bd_alt_willing_surrender","global",7) ActionOverride("BDCaelar",MoveToPointNoInterrupt([4423.545])) ActionOverride("BDCaelar",EscapeAreaObject("TransBD4100"))~EXIT

CHAIN
IF WEIGHT #-7~Global("bd_alt_willing_surrender","global",8)~THEN BDCaelar AtSeal1
~And so we reach the end of a long, long journey. If you only knew the sacrifices I made to bring us to this point. All of them worthwhile.~ [BD38472]
DO~SetGlobal("bd_alt_willing_surrender","global",9) SetGlobal("bd_plot","global",486) CreateCreatureObjectOffset("BDHepher",Myself,[35.35])~
END
++~So this is the portal, after all. But where is Hephernaan?~DO~SetGlobal("bd_plot","global",486)~+ AtSeal2
++~We are ready, let us make haste else Hephernaan might still spoil our goal.~DO~SetGlobal("bd_plot","global",486)~+ AtSeal2
++~Let us move, lest someone still tries to get in our way.~DO~SetGlobal("bd_plot","global",486)~+ AtSeal2

CHAIN
IF~~THEN BDCaelar AtSeal2
~We cannot fail, the heroic Bhaalspawn and the heiress of the Argents together against Avernus.~
EXTERN BDCaelar 51

ADD_TRANS_TRIGGER BDhepher 16
~!Global("bd_alt_willing_surrender","global",9)~

EXTEND_BOTTOM BDhepher 16
IF~Global("bd_alt_willing_surrender","global",9)~THEN DO~ StartCutSceneMode() CloseDoor("door03") Wait(2) Lock("door03") Wait(2) StartCutScene("bdcut45b")~EXIT
END

ADD_TRANS_TRIGGER BDbelhif 2
~!Global("bd_alt_willing_surrender","global",9)~

EXTEND_BOTTOM BDbelhif 2
IF~Global("bd_alt_willing_surrender","global",9)~THEN REPLY~I know not what lies brought Caelar here, Belhifet, and I care not. The fiend behind the crusade stands revealed, and you will pay for the Sword Coast's suffering!~ EXTERN BDHEPHER 22
IF ~Global("bd_alt_willing_surrender","global",9)~ THEN REPLY ~If she was yours, how does she fight against you now?~  EXTERN BDAUN 0
END

ADD_TRANS_TRIGGER BDbelhif 5
~!Global("bd_alt_willing_surrender","global",9)~

EXTEND_BOTTOM BDbelhif 5
IF~Global("bd_alt_willing_surrender","global",9)~THEN REPLY~No, Caelar - you can't have fallen so far as that! Fight with me. Belhifet's death will be the first stone laid on the path to your redemption.~ EXTERN ~BDCAELAR~ 62
IF ~Global("bd_alt_willing_surrender","global",9)~ THEN REPLY ~Caelar, we came here together to end this and, damn it, we will leave here together. We have a pact and we keep it. ~  EXTERN ~BDCAELAR~ 62
END

ADD_TRANS_TRIGGER BDBelt 9
~!Global("bd_alt_willing_surrender","global",9)~ DO 3

EXTEND_BOTTOM BDbelt 9
IF~Global("bd_alt_willing_surrender","global",9) OR(8) Global("bd_caelar","bd0035",0)Global("bd_madele","bd0035",1)
Global("bd_poison","bd0035",1) 	Global("bd_illness","bd0035",1) Global("bd_traitor","bd0035",1) Global("bd_thrix","bd0035",1) Global("bd_paladin","bd0035",1) Global("bd_reputation","bd0035",1)~THEN REPLY~I do not know if I killed the woman. It's all a blur. But I do have something I want to say.~EXTERN BDBelt 10
END	

CHAIN
IF~~THEN BDBelt AltCael
~A two sided matter. The battle you avoided would have cost many lives on both sides. Still some claim it was rebellion. Anyway...~EXTERN BDBelt 11

EXTEND_BOTTOM BDbelt 10 #5
IF~Global("bd_alt_willing_surrender","global",9) Global("bd_caelar","bd0035",0)~THEN REPLY~I surrendered myself to Caelar Argent and saved many lives, all those who would have died storming Dragonspear Castle. ~DO ~IncrementGlobal("bd_trial_hero","bd0035",1) IncrementGlobal("bd_trial_evil","bd0035",-1) IncrementGlobal("bd_trial_case","bd0035",1) SetGlobal("bd_caelar","bd0035",1)~ EXTERN BDBelt AltCael
END

ADD_TRANS_TRIGGER BDBelt 12
~!Global("bd_alt_willing_surrender","global",9)~ DO 1

EXTEND_BOTTOM BDbelt 12
IF~Global("bd_alt_willing_surrender","global",9) OR(8) Global("bd_caelar","bd0035",0)Global("bd_madele","bd0035",1)
Global("bd_poison","bd0035",1) 	Global("bd_illness","bd0035",1) Global("bd_traitor","bd0035",1) Global("bd_thrix","bd0035",1) Global("bd_paladin","bd0035",1) Global("bd_reputation","bd0035",1)~THEN REPLY~Yes, there is.~EXTERN BDBelt 10
END	

