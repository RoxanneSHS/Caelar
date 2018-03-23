CHAIN
IF~Global("CaeJonel","Locals",1)~THEN BDCaelar Jonel1
~So we meet again, scarred one, unhooded this time.~
DO~SetGlobal("CaeJonel","Locals",2)~
==BJONEL25~It was no pleasure then to meet you and it's no pleasure now.~
==BDCaelar~It was you who came to me last time. My celestial heritage attracted you. And then it was <CHARNAME>'s blood and soul you decided on, am I right.~
==BJONEL25~Don't take yourself for more than you are, lady. You were just one insignificant candidate on a longer list. Soon dismissed as your celestial blood runs thin, already its divine power had been diluted over generations.~
DO~SetGlobal("bdcut11_restart","global",0) Wait(2) StartCutSceneMode() StartCutScene("BDCut11")~EXIT

CHAIN
IF~Global("CaeJonel","Locals",3)~THEN BDCaelar Jonel2
~This would have been my fate or rather the fate of my soul should I had passed your tests back then?~
DO~SetGlobal("CaeJonel","Locals",4)~
==BJONEL25~Again you over estimate your significance, lady. A pubertal hormone-driven human female soul, what a disgusting perspective. If at all, you were a candidate for my sister Bodhi, would have served her right.~
==BDCaelar~I'm really glad about your appraisal of my personality.~
==BJONEL25~Don't take it personal, lady. We speak of pure science here and even Skie Silvershield beat you in compatibility, but finally Imoen made the race.~
==BDCaelar~When it comes to fighting for my soul, Exile, be sure I would have matched them all.~
==BJONEL25~Of that I am sure.~EXIT   