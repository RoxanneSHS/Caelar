
CHAIN
IF~Global("CealarSarevok","Locals",1)~THEN BDCAelar Sarevok1
@0
DO~SetGlobal("CealarSarevok","Locals",2)~
==BSarev25@1
==BDCAelar@2
==BSarev25@3
==BDCAelar@4
==BSarev25@5
==BDCAelar@6EXIT

CHAIN
IF~Global("CealarSarevok","Locals",3)~THEN BDCAelar Sarevok2
@7
DO~SetGlobal("CealarSarevok","Locals",4)~
==BSarev25@8
=@9
==BDCAelar@10
==BSarev25@11
==BDCAelar@12
==BSarev25@13
==BDCAelar@14
=@15
==BSarev25@16EXIT

CHAIN
IF~Global("CealarImoen","Locals",1)~THEN BDCAelar Imoenkill
@17
DO~SetGlobal("CealarImoen","Locals",2)~
==BIMOEN25@18
==BDCAelar@19
==BIMOEN25@20
==BDCAelar@21EXIT

CHAIN
IF~Global("ViconiaImoen","Locals",1)~THEN BDCAelar Vicieye
@22
DO~SetGlobal("ViconiaImoen","Locals",2)~
==BVICON25@23
==BDCAelar@24
==BVICON25@25
==BDCAelar~I have heard the whispers. Some see the fire in my eyes and call me mad. I am not. I am ambitious, yes, and I am righteous, but not mad. I see the possibility of a better world than this. And I will make my vision a reality.~[BD35827]
==BVICON25@27EXIT

EXTEND_BOTTOM Sarvolo 9
IF~ InParty("BDCaelar") ~THEN REPLY@28 GOTO Volcael
END

CHAIN
IF~~THEN Sarvolo Volcael
@29
==BDCaelar@30
==Sarvolo@31
==BDCaelar@32
END
++@33+ 9
++@34+ 9
