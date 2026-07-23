function KM3 takes integer r returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer KL3=GetSpellAbilityId()
local integer SUI=GetUnitAbilityLevel(P7I,KL3)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if r==2 then
call UYI(GetObjectName(1848658743),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==3 then
call UYI(GetObjectName(1848658516),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==4 then
call UYI(GetObjectName(1848658744),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==5 then
call UYI(GetObjectName(1848658511),5,GetTriggerUnit(),0.03,255,0,0,255)
endif
set r=r-1
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(300),(r))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(299),(KL3))
call TriggerRegisterTimerEvent(t,0.4,true)
call TriggerAddCondition(t,Condition(function KJ3))
set t=null
set P8I=null
set P7I=null
endfunction
function KN3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093815122)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)*0.4)
set P7I=null
set P8I=null
set I01=null
endfunction
function FVO takes nothing returns nothing
local unit P7I=GK
call IA1(P7I,1093815121)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815121,true)
set P7I=null
endfunction
function FWO takes nothing returns nothing
local unit P7I=GK
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815121,false)
set P7I=null
endfunction
function KS3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer KK3=(LoadInteger(LY,(S5I),(300)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer KL3=(LoadInteger(LY,(S5I),(299)))
local unit I01
if GetTriggerEvalCount(t)>KK3 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
if KL3==1093815121 then
set KL3=1093815122
endif
call IA1(I01,KL3)
call SetUnitAbilityLevel(I01,KL3,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
endif
set t=null
set P8I=null
set P7I=null
set I01=null
return false
endfunction
function KT3 takes integer r returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer KL3=GetSpellAbilityId()
local integer SUI=GetUnitAbilityLevel(P7I,KL3)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if r==2 then
call UYI(GetObjectName(1848658743),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==3 then
call UYI(GetObjectName(1848658516),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==4 then
call UYI(GetObjectName(1848658744),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==5 then
call UYI(GetObjectName(1848658511),5,GetTriggerUnit(),0.03,255,0,0,255)
endif
set r=r-1
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(300),(r))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(299),(KL3))
call TriggerRegisterTimerEvent(t,0.4,true)
call TriggerAddCondition(t,Condition(function KS3))
set t=null
set P8I=null
set P7I=null
endfunction
function KR3 takes nothing returns boolean
local integer r
if GetUnitAbilityLevel(GetTriggerUnit(),1093679160)>0 and NNI(GetSpellTargetUnit())==false then
if GetSpellAbilityId()==1093678167 or GetSpellAbilityId()==1093679172 or GetSpellAbilityId()==1093679169 or GetSpellAbilityId()==1093679161 or GetSpellAbilityId()==1093815121 then
set r=KW3(GetTriggerUnit())
if r>1 and((LoadInteger(LY,(GetHandleId((GetSpellTargetUnit()))),((4322))))==1)==false then
call KT3(r)
endif
elseif GetSpellAbilityId()==1093677361 or GetSpellAbilityId()==1093677111 or GetSpellAbilityId()==1093744471 or GetSpellAbilityId()==1093677396 or GetSpellAbilityId()==1093744472 or GetSpellAbilityId()==1093677126 or GetSpellAbilityId()==1093744473 or GetSpellAbilityId()==1093744470 then
set r=KW3(GetTriggerUnit())
if r>1 and((LoadInteger(LY,(GetHandleId((GetSpellTargetUnit()))),((4322))))==1)==false then
call KM3(r)
endif
endif
endif
if NNI(GetSpellTargetUnit())==false and GetSpellAbilityId()==1093815121 then
call KN3()
endif
return false
endfunction
function KP3 takes nothing returns boolean
local integer id=GetPlayerId(GetTriggerPlayer())
local string s1
local string s2
local string s3
local string s4
local string s5
local string s6
if D8I[id]>0 then
set s1=GetObjectName(1848658504)+" "+I2S(D8I[id])
set s2=GetObjectName(1848658509)+" "+I2S(D4I[id]+D5I[id]+D6I[id]+D7I[id])+" ("+I2S((D4I[id]+D5I[id]+D6I[id]+D7I[id])*100/D8I[id])+"%)"
set s3=GetObjectName(1848658508)+" "+I2S(D4I[id])+" ("+I2S(100*D4I[id]/D8I[id])+"%)"
set s4=GetObjectName(1848658507)+" "+I2S(D5I[id])+" ("+I2S(100*D5I[id]/D8I[id])+"%)"
set s5=GetObjectName(1848658506)+" "+I2S(D6I[id])+" ("+I2S(100*D6I[id]/D8I[id])+"%)"
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,s1)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,s2)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,s3)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,s4)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,s5)
endif
return false
endfunction
function YD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function KR3))
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[1],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-st",true)
call TriggerAddCondition(t,Condition(function KP3))
set t=null
endfunction
function KQ3 takes nothing returns boolean
local unit YQ3=GetFilterUnit()
local unit PKI=GetTriggerUnit()
if IsUnitAlly(YQ3,GetOwningPlayer(PKI))and GetUnitState(YQ3,UNIT_STATE_LIFE)>0 and GetUnitAbilityLevel(YQ3,1113746543)==0 then
if(GetOwningPlayer(YQ3)==BO[0]or GetOwningPlayer(YQ3)==CO[0])then
if(GetUnitTypeId(YQ3)==1969711215 or GetUnitTypeId(YQ3)==1966092337 or GetUnitTypeId(YQ3)==1970169187 or GetUnitTypeId(YQ3)==1966092338)then
return true
endif
if(GetUnitTypeId(YQ3)==1702061422 or GetUnitTypeId(YQ3)==1697656918 or GetUnitTypeId(YQ3)==1701081721 or GetUnitTypeId(YQ3)==1697656919)then
return true
endif
return false
elseif IsUnitType(YQ3,UNIT_TYPE_HERO)==true then
return true
elseif GetOwningPlayer(YQ3)==GetOwningPlayer(PKI)then
return true
endif
endif
return false
endfunction
function KU3 takes integer r returns nothing
local unit PKI=GetTriggerUnit()
local integer SUI=r
local group Z51=NTI()
local unit I01
local unit WH1
local integer TPI=GetSpellAbilityId()
local integer TGI=1
if r==2 then
call UYI(GetObjectName(1848658743),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==3 then
call UYI(GetObjectName(1848658516),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==4 then
call UYI(GetObjectName(1848658744),5,GetTriggerUnit(),0.03,255,0,0,255)
elseif r==5 then
call UYI(GetObjectName(1848658511),5,GetTriggerUnit(),0.03,255,0,0,255)
endif
set r=r-1
call GroupEnumUnitsInRange(Z51,GetUnitX(PKI),GetUnitY(PKI),600,Condition(function KQ3))
if PKI!=GetSpellTargetUnit()then
call GroupAddUnit(Z51,PKI)
endif
loop
exitwhen TGI>SUI
set TGI=TGI+1
set I01=CreateUnit(GetOwningPlayer(PKI),1697656899,GetUnitX(PKI),GetUnitY(PKI),270)
call IA1(I01,TPI)
call SetUnitAbilityLevel(I01,TPI,GetUnitAbilityLevel(PKI,TPI))
call UnitApplyTimedLife(I01,1112820806,1.0)
set WH1=GroupPickRandomUnit(Z51)
call IssueTargetOrder(I01,"bloodlust",WH1)
call SetUnitPathing(I01,false)
call SetUnitInvulnerable(I01,true)
call IA1(I01,1097625443)
call GroupRemoveUnit(Z51,WH1)
endloop
call NSI(Z51)
endfunction
function L03 takes nothing returns boolean
local integer r
if GetUnitAbilityLevel(GetTriggerUnit(),1093679160)>0 and(GetSpellAbilityId()==1093679155 or GetSpellAbilityId()==1093679177 or GetSpellAbilityId()==1093679175 or GetSpellAbilityId()==1093679174)then
set r=KW3(GetTriggerUnit())
if r>1 then
call KU3(r)
endif
endif
return false
endfunction
function YE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function L03))
set t=null
endfunction
constant function Purification_RawCode takes nothing returns integer
return 1093679182
endfunction
function LI3 takes nothing returns boolean
return GetSpellAbilityId()==(1093679182)
endfunction
function L13 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)!=1 and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction
function LO3 takes nothing returns nothing
call P6I(GetTriggerUnit(),GetEnumUnit(),3,JO)
endfunction
function L23 takes nothing returns nothing
local boolexpr QL1=Condition(function L13)
local group Z51=NTI()
local real x=GetUnitX(GetSpellTargetUnit())
local real y=GetUnitY(GetSpellTargetUnit())
set JO=90*GetUnitAbilityLevel(GetTriggerUnit(),(1093679182))
if GetUnitState(GetSpellTargetUnit(),UNIT_STATE_LIFE)>1 then
call SetUnitState(GetSpellTargetUnit(),UNIT_STATE_LIFE,GetUnitState(GetSpellTargetUnit(),UNIT_STATE_LIFE)+JO)
endif
call GroupEnumUnitsInRange(Z51,x,y,260+25,QL1)
call ForGroup(Z51,function LO3)
call NSI(Z51)
endfunction
function YF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function LI3))
call TriggerAddAction(t,function L23)
endfunction
function L33 takes nothing returns boolean
local unit IYO=GetSummonedUnit()
local unit I01
local unit P8I
if GetUnitAbilityLevel(IYO,1110456632)>0 then
set I01=GetSummoningUnit()
set P8I=(LoadUnitHandle(LY,(GetHandleId(I01)),(303)))
call SetUnitX(IYO,GetUnitX(P8I))
call SetUnitY(IYO,GetUnitY(P8I))
call IssueTargetOrder(IYO,"attack",P8I)
endif
set IYO=null
set I01=null
set P8I=null
return false
endfunction
function L43 takes player p,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(p,1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer IB1
call SaveUnitHandle(LY,(GetHandleId(I01)),(303),(P8I))
if SUI==1 then
set IB1=1093742664
elseif SUI==2 then
set IB1=1093742663
elseif SUI==3 then
set IB1=1093742665
else
set IB1=1093742662
endif
call IA1(I01,IB1)
call IssueTargetOrderById(I01,852274,K1[GetPlayerId(p)])
set I01=null
endfunction
function L53 takes player p,unit P8I,integer SUI,boolean L63,boolean L73 returns nothing
local real PAI=50+50*SUI
local unit I01
local integer IB1
if L73 then
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093742659)
call SetUnitAbilityLevel(I01,1093742659,SUI)
call IssueTargetOrder(I01,"cripple",P8I)
call P6I(K1[GetPlayerId(p)],P8I,1,PAI)
if L63 then
call L43(p,P8I,SUI)
endif
endif
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\IllidanMissile\\IllidanMissile.mdl",P8I,"origin"))
set I01=null
endfunction
function L83 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local boolean DH1=(LoadBoolean(LY,(S5I),(302)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real x=GetUnitX(IG1)
local real y=GetUnitY(IG1)
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real IH1=1000*0.035
local real IZ1=UEI(x,y,QJI,QKI)
local real IV1=x+IH1*Cos(IZ1*bj_DEGTORAD)
local real IW1=y+IH1*Sin(IZ1*bj_DEGTORAD)
local boolean ZXO=(LoadBoolean(LY,(S5I),(249)))
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
call SetUnitFacing(IG1,IZ1)
if((LoadInteger(LY,(GetHandleId((P8I))),((4422))))==1)==true then
set ZXO=false
call SaveBoolean(LY,(S5I),(249),(ZXO))
endif
if UTI(QJI,QKI,IV1,IW1)<=IH1 then
if ZXO then
call L53(p,P8I,SUI,true,DH1)
endif
call KillUnit(IG1)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set IG1=null
return false
endfunction
function L93 takes unit P7I,integer SUI,unit P8I,boolean DH1 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747990092,GetUnitX(P7I),GetUnitY(P7I),UEI(GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I)))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(P7I)))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveBoolean(LY,(S5I),(302),(DH1))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveBoolean(LY,(S5I),(249),(true))
call TriggerRegisterTimerEvent(t,0.035,true)
call TriggerAddCondition(t,Condition(function L83))
set t=null
endfunction
function LA3 takes nothing returns boolean
if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())==1332179560 and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
call L93(GetFilterUnit(),GetUnitAbilityLevel(GetTriggerUnit(),1093742660),GetSpellTargetUnit(),false)
endif
return false
endfunction
function LB3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093742660)
local unit P8I=GetSpellTargetUnit()
local group g=NTI()
local boolean LC3=NNI(GetSpellTargetUnit())
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),700,Condition(function LA3))
if LC3 then
call L93(SFI,SUI,P8I,false)
else
call L93(SFI,SUI,P8I,true)
endif
call NSI(g)
set SFI=null
set P8I=null
set g=null
endfunction
function LD3 takes nothing returns boolean
if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())==1332179560 and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
call SetUnitFacing(GetFilterUnit(),AK)
call SetUnitAnimation(GetFilterUnit(),"spell")
endif
return false
endfunction
function LE3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local group g=NTI()
set AK=UEI(GetUnitX(SFI),GetUnitY(SFI),GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()))
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),700,Condition(function LD3))
call NSI(g)
set SFI=null
set g=null
endfunction
function LF3 takes nothing returns boolean
if GetSpellAbilityId()==1093742660 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call LB3()
else
call LE3()
endif
endif
return false
endfunction
function YH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function LF3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function LF3))
call Q1I(1093742659)
call Q1I(1093742664)
call Q1I(1093742663)
call Q1I(1093742665)
call Q1I(1093742662)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function L33))
set t=null
endfunction
function LG3 takes nothing returns boolean
if GetUnitAbilityLevel(GetFilterUnit(),1110455106)>0 and IsUnitIllusion(GetFilterUnit())==true then
set UJ=UJ+1
endif
return false
endfunction
function LH3 takes nothing returns nothing
local unit LZ3=GetAttacker()
local group g=NTI()
local integer TJI=GetRandomInt(1,100)
local integer LV3=GetUnitAbilityLevel(LZ3,1093682242)
local unit I01
local integer LW3=4+2*LV3
local integer LX3=35+5*LV3
local integer LY3=8
set UJ=0
call GroupEnumUnitsOfPlayer(g,GetOwningPlayer(LZ3),Condition(function LG3))
call NSI(g)
if UJ<LW3 and GetUnitAbilityLevel(LZ3,1112433775)==0 then
if IsUnitIllusion(LZ3)==false and TJI<=LX3 then
set I01=CreateUnit(GetOwningPlayer(LZ3),1697656901,GetUnitX(LZ3),GetUnitY(LZ3),0)
call IA1(I01,1093682244)
call IssueTargetOrderById(I01,852274,LZ3)
endif
if IsUnitIllusion(LZ3)==true and TJI<=LY3 then
set I01=CreateUnit(GetOwningPlayer(LZ3),1697656901,GetUnitX(LZ3),GetUnitY(LZ3),0)
call IA1(I01,1093873730)
call IssueTargetOrderById(I01,852274,LZ3)
endif
endif
set LZ3=null
set g=null
set I01=null
endfunction
function LJ3 takes nothing returns boolean
if(GetUnitAbilityLevel(GetAttacker(),1110455106)>0)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==true then
call LH3()
endif
return false
endfunction
function YG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function LJ3))
set t=null
endfunction
function LK3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real QWI=QLI(P7I,P8I)
local real II3=(LoadReal(LY,(S5I),(6)))
local real I13=(LoadReal(LY,(S5I),(7)))
local real x
local real y
local real a=UDI(P7I,P8I)
if IC1(P7I)or IC1(P8I)or QWI<175 or GetTriggerEvalCount(t)>250 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set x=PTI(II3+800*0.02*Cos(a*bj_DEGTORAD))
set y=PUI(I13+800*0.02*Sin(a*bj_DEGTORAD))
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
call SetUnitFacing(P7I,a)
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function LL3 takes unit P7I,unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IssueTargetOrder(P7I,"attack",P8I)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function LK3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
set t=null
set P7I=null
set P8I=null
endfunction
function LM3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(GetHandleId(P7I)),(831)))
local integer SUI=GetUnitAbilityLevel(P7I,1093687627)
local real PD2=(LoadReal(LY,(GetHandleId(P7I)),(832)))
local boolean LN3=(TimerGetElapsed(M))>(PD2+20-4*SUI)
local integer LS3=500+100*SUI
local integer LT3=300
local real QWI
if IsUnitIllusion(P7I)==true and IC1(P7I)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif P8I==null or IC1(P8I)==true then
call SaveUnitHandle(LY,(GetHandleId(P7I)),(831),(null))
elseif LN3 then
set QWI=QLI(P7I,P8I)
if QWI>LT3 and QWI<LS3 then
call SaveReal(LY,(GetHandleId(P7I)),(832),(((TimerGetElapsed(M)))*1.0))
call SaveUnitHandle(LY,(GetHandleId(P7I)),(831),(null))
call RemoveSavedHandle(LY,(GetHandleId(P7I)),(831))
call LL3(P7I,P8I)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function LR3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function LM3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function LP3 takes nothing returns boolean
if GetUnitAbilityLevel(GetTriggerUnit(),1093687627)>0 then
if GetIssuedOrderId()==851971 and GetOrderTargetUnit()!=null and IsPlayerAlly(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetOrderTargetUnit()))==false then
call SaveUnitHandle(LY,(GetHandleId(GetTriggerUnit())),(831),(GetOrderTargetUnit()))
elseif GetIssuedOrderId()==851983 and GetOrderTargetUnit()!=null and IsPlayerAlly(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetOrderTargetUnit()))==false then
call SaveUnitHandle(LY,(GetHandleId(GetTriggerUnit())),(831),(GetOrderTargetUnit()))
else
call SaveUnitHandle(LY,(GetHandleId(GetTriggerUnit())),(831),(null))
call RemoveSavedHandle(LY,(GetHandleId(GetTriggerUnit())),(831))
endif
endif
return false
endfunction
function LQ3 takes nothing returns boolean
if GetUnitAbilityLevel(GetTriggerUnit(),1093687627)==1 then
call LR3()
endif
return false
endfunction
function YZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
call UMI(t,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
call UMI(t,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
call TriggerAddCondition(t,Condition(function LP3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function LQ3))
set t=null
endfunction
function LU3 takes nothing returns nothing
call SetUnitX(GetEnumUnit(),DBI+GetRandomInt(0,500)-250)
call SetUnitY(GetEnumUnit(),DCI+GetRandomInt(0,500)-250)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\DG_Reappear.mdx",GetEnumUnit(),"chest"))
endfunction
function M03 takes nothing returns boolean
return GetOwningPlayer(DAI)==GetOwningPlayer(GetFilterUnit())and IsUnitIllusion(GetFilterUnit())==true
endfunction
function MI3 takes nothing returns nothing
call SetUnitInvulnerable(GetEnumUnit(),false)
call PauseUnit(GetEnumUnit(),false)
call ShowUnit(GetEnumUnit(),true)
call SetUnitX(GetEnumUnit(),DBI+GetRandomInt(0,250))
call SetUnitY(GetEnumUnit(),DCI+GetRandomInt(0,250))
endfunction
function M13 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01
call I41(GetOwningPlayer(P7I),1,x,y,925)
call UPI(x,y,225)
set DBI=x
set DCI=y
call ForGroup(g,function MI3)
call GroupAddUnit(g,P7I)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call IA1(I01,1093873733)
call IssueTargetOrderById(I01,852274,P7I)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call IA1(I01,1093873732)
call IssueTargetOrderById(I01,852274,P7I)
call NSI(g)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,925,Condition(function M03))
call GroupAddUnit(g,P7I)
call ForGroup(g,function LU3)
call NSI(g)
call ClearSelectionForPlayer(GetOwningPlayer(P7I))
call SelectUnitAddForPlayer(P7I,GetOwningPlayer(P7I))
set t=null
set P7I=null
set g=null
set I01=null
return false
endfunction
function MO3 takes nothing returns nothing
call SelectUnitRemoveForPlayer(GetEnumUnit(),GetOwningPlayer(GetEnumUnit()))
call SetUnitInvulnerable(GetEnumUnit(),true)
call PauseUnit(GetEnumUnit(),true)
call ShowUnit(GetEnumUnit(),false)
call DestroyEffect(AddSpecialEffect("war3mapImported\\DG_Disappear.mdx",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
endfunction
function M23 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ForGroup(g,function MO3)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function M13))
set t=null
set P7I=null
set g=null
set I01=null
return false
endfunction
function M33 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
set DAI=P7I
call GroupEnumUnitsInRange(g,x,y,925,Condition(function M03))
call GroupAddUnit(g,P7I)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call TriggerRegisterTimerEvent(t,.01,false)
call TriggerAddCondition(t,Condition(function M23))
set t=null
set P7I=null
set g=null
endfunction
function M43 takes nothing returns boolean
if GetSpellAbilityId()==1093873731 then
call M33()
endif
return false
endfunction
function YV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function M43))
set t=null
endfunction
function M53 takes nothing returns boolean
return GetSpellAbilityId()==1093678938
endfunction
function M63 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0
endfunction
function M73 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(PKI),1697657394,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),270)
call IA1(I01,1093678676)
call SetUnitAbilityLevel(I01,1093678676,GetUnitAbilityLevel(PKI,1093678938))
call IssueTargetOrder(I01,"entanglingroots",GetEnumUnit())
endfunction
function M83 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local group Z51=NTI()
local boolexpr QL1=Condition(function M63)
call GroupEnumUnitsInRange(Z51,GetUnitX(PKI),GetUnitY(PKI),700,QL1)
call ForGroup(Z51,function M73)
call NSI(Z51)
endfunction
function YW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function M53))
call TriggerAddAction(t,function M83)
endfunction
function M93 takes unit P7I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093748546)
call SetUnitAbilityLevel(I01,1093748546,SUI)
call IssueTargetOrder(I01,"invisibility",P7I)
call IA1(P7I,1093808975)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808975,false)
set I01=null
endfunction
function MA3 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1747993172
endfunction
function MB3 takes unit SFI returns boolean
local group g=NTI()
local boolean FB1=false
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),375,Condition(function MA3))
if FirstOfGroup(g)!=null then
set FB1=true
endif
call NSI(g)
set g=null
return FB1
endfunction
function MC3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit SFI=NYI(PCI)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real Z7O=(LoadReal(LY,(S5I),(442)))
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and(LoadBoolean(LY,(S5I),(329)))and GetAttacker()==SFI then
call UnitRemoveAbility(SFI,1110454833)
call UnitRemoveAbility(SFI,1093748545)
call UnitRemoveAbility(SFI,1093808975)
call UnitRemoveAbility(SFI,1110459705)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED and GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093677402 and GetTriggerUnit()==SFI then
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+1.0)*1.0))
call DisableTrigger(GetTriggeringTrigger())
call M93(SFI,SUI)
call EnableTrigger(GetTriggeringTrigger())
call SaveInteger(LY,(S5I),(34),(0))
endif
if I61(GetUnitX(SFI),GetUnitY(SFI),375)==false and MB3(SFI)==false then
if Z7O<(TimerGetElapsed(M))or GetTriggerEvalCount(t)==1 then
call UnitRemoveAbility(SFI,1110454833)
call UnitRemoveAbility(SFI,1093748545)
call UnitRemoveAbility(SFI,1093808975)
call UnitRemoveAbility(SFI,1110459705)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif(LoadBoolean(LY,(S5I),(329)))and NPI>(150*SUI)then
call UnitRemoveAbility(SFI,1110454833)
call UnitRemoveAbility(SFI,1093748545)
call UnitRemoveAbility(SFI,1093808975)
call UnitRemoveAbility(SFI,1110459705)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif(LoadBoolean(LY,(S5I),(329)))and GetUnitAbilityLevel(SFI,1110454833)==0 and GetUnitAbilityLevel(SFI,1093748545)>0 then
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+1.0)*1.0))
call DisableTrigger(GetTriggeringTrigger())
call M93(SFI,SUI)
call EnableTrigger(GetTriggeringTrigger())
elseif GetUnitAbilityLevel(SFI,1110454833)==0 then
call UnitRemoveAbility(SFI,1110454833)
call UnitRemoveAbility(SFI,1093748545)
call UnitRemoveAbility(SFI,1093808975)
call UnitRemoveAbility(SFI,1110459705)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+1.0)*1.0))
endif
endif
set t=null
set SFI=null
return false
endfunction
function MD3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
if GetUnitAbilityLevel(P7I,1110454833)>0 then
call IA1(P7I,1093748545)
endif
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function ME3 takes nothing returns nothing
local trigger t
local integer S5I
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveInteger(LY,(S5I),(30),(NKI(GetSpellTargetUnit())))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(GetTriggerUnit(),1093677402)))
call SaveInteger(LY,(S5I),(34),(0))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+1.0)*1.0))
call TriggerAddCondition(t,Condition(function MC3))
call TriggerRegisterTimerEvent(t,0.1,true)
call IA1(GetSpellTargetUnit(),1093808975)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetSpellTargetUnit()),1093808975,false)
if GetTriggerUnit()==GetSpellTargetUnit()then
call SaveBoolean(LY,(S5I),(329),(true))
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call TriggerAddCondition(t,Condition(function MD3))
call TriggerRegisterTimerEvent(t,2,false)
call TriggerRegisterDeathEvent(t,GetTriggerUnit())
endif
set t=null
endfunction
function MF3 takes nothing returns boolean
if GetSpellAbilityId()==1093677402 then
call ME3()
endif
return false
endfunction
function YX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MF3))
set t=null
endfunction
function MG3 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(DDI),1697657394,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),270)
call IA1(I01,1093873974)
call SetUnitAbilityLevel(I01,1093873974,GetUnitAbilityLevel(DDI,1093678938))
call IssueTargetOrder(I01,"entanglingroots",GetEnumUnit())
set I01=null
endfunction
function MH3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local destructable d=(LoadDestructableHandle(LY,(S5I),(834)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g
if GetDestructableLife(d)<=0 then
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093678938 then
set DDI=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(I01),GetUnitY(I01),825,Condition(function M63))
call ForGroup(g,function MG3)
call NSI(g)
endif
set t=null
set d=null
set g=null
set I01=null
set P7I=null
return false
endfunction
function MZ3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local destructable d=GetSpellTargetDestructable()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429573,GetDestructableX(d),GetDestructableY(d),0)
call SaveDestructableHandle(LY,(S5I),(834),(d))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MH3))
set t=null
set P7I=null
set d=null
set I01=null
endfunction
function MV3 takes nothing returns boolean
if GetSpellAbilityId()==1093677398 then
call MZ3()
endif
return false
endfunction
function YL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MV3))
set t=null
endfunction
function XBO takes nothing returns nothing
call IA1(GK,1093677398)
endfunction
function MW3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(686)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or LVO<(TimerGetElapsed(M))or RKI(P8I)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveReal(LY,(GetHandleId(P8I)),(686),((0)*1.0))
call UnitRemoveAbility(P8I,1093809232)
call UnitRemoveAbility(P8I,1093809232)
call UnitRemoveAbility(P8I,1093809232)
call UnitRemoveAbility(P8I,1093809232)
call UnitRemoveAbility(P8I,1110459719)
else
call P6I(P7I,P8I,1,15+15*SUI)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function MX3 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(686)))
local integer SUI=GetUnitAbilityLevel(P7I,1093748535)
if LVO>(TimerGetElapsed(M))then
call SaveReal(LY,(GetHandleId(P8I)),(686),(((TimerGetElapsed(M))+4)*1.0))
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveReal(LY,(GetHandleId(P8I)),(686),(((TimerGetElapsed(M))+4)*1.0))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function MW3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\AcidBomb\\BottleImpact.mdl",P8I,"overhead")))
if SUI==1 then
call IA1(P8I,1093809232)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809232,false)
elseif SUI==2 then
call IA1(P8I,1093809232)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809232,false)
elseif SUI==3 then
call IA1(P8I,1093809232)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809232,false)
elseif SUI==4 then
call IA1(P8I,1093809232)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809232,false)
endif
endif
set t=null
endfunction
function Sentinel_FindClosest takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(DFI)and(GetUnitTypeId(GetFilterUnit())==1747993172 or GetUnitTypeId(GetFilterUnit())==1747993173)then
if QNI(GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()),DGI,DHI)<DZI then
set DEI=GetFilterUnit()
set DZI=QNI(GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()),DGI,DHI)
endif
endif
return false
endfunction
function MY3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I
local group g
local real GW1=(LoadReal(LY,(S5I),(442)))
local real x
local real y
local integer RII
local real hp
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_DEATH then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_DEATH then
if GetTriggerUnit()==I01 then
call UnitRemoveAbility(I01,1097886070)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif GetUnitTypeId(I01)==1747993172 then
set GK=I01
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(I01),GetUnitY(I01),110,Condition(function CA1))
set P8I=AU1(g,GetUnitX(I01),GetUnitY(I01))
call NSI(g)
if P8I!=null then
call MX3(P7I,P8I)
set x=GetUnitX(I01)
set y=GetUnitY(I01)
set hp=GetUnitState(I01,UNIT_STATE_LIFE)
call ShowUnit(I01,false)
call DisableTrigger(t)
call KillUnit(I01)
call EnableTrigger(t)
set I01=CreateUnit(GetOwningPlayer(P7I),1747993173,x,y,0)
call SetUnitState(I01,UNIT_STATE_LIFE,hp)
call UnitApplyTimedLife(I01,1112820806,480-((TimerGetElapsed(M))-GW1))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(411),(((TimerGetElapsed(M))+4)*1.0))
endif
elseif GetUnitTypeId(I01)==1747993173 and(LoadReal(LY,(S5I),(411)))<(TimerGetElapsed(M))then
set x=GetUnitX(I01)
set y=GetUnitY(I01)
set hp=GetUnitState(I01,UNIT_STATE_LIFE)
call ShowUnit(I01,false)
call DisableTrigger(t)
call KillUnit(I01)
call EnableTrigger(t)
set I01=CreateUnit(GetOwningPlayer(P7I),1747993172,x,y,0)
call SetUnitState(I01,UNIT_STATE_LIFE,hp)
call UnitApplyTimedLife(I01,1112820806,480-((TimerGetElapsed(M))-GW1))
call SaveUnitHandle(LY,(S5I),(19),(I01))
endif
set t=null
set P7I=null
set P8I=null
set I01=null
set g=null
return false
endfunction
function MJ3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093748535)
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747993172,x,y,0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UnitApplyTimedLife(I01,1112820806,480)
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function MY3))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M)))*1.0))
call SaveInteger(LY,(S5I),(34),(0))
set t=null
set P7I=null
set I01=null
endfunction
function MK3 takes nothing returns boolean
if GetSpellAbilityId()==1093748535 then
call MJ3()
endif
return false
endfunction
function YJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MK3))
set t=null
endfunction
function ML3 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local real d=QNI(GetUnitX(P8I),GetUnitY(P8I),DXI,DYI)
if d<DWI and IsUnitVisible(P8I,GetOwningPlayer(DJI))==true and(IsUnitType(P8I,UNIT_TYPE_HERO)==true or(IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==true and BQ1(P8I)))then
set DVI=GetEnumUnit()
set DWI=d
endif
set P8I=null
endfunction
function MM3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815628)
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamage()>5 then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call QGI(P8I,RMinBJ(GetEventDamage(),20*GetUnitAbilityLevel(P7I,1093815628)))
endif
endif
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or NPI>(SUI+3-1)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093815640)
call UnitRemoveAbility(P8I,1093815641)
call UnitRemoveAbility(P8I,1093815639)
call UnitRemoveAbility(P8I,1093815638)
call UnitRemoveAbility(P8I,1110460213)
endif
set t=null
set P8I=null
return false
endfunction
function MN3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer OO1=1093815640
local integer SUI=GetUnitAbilityLevel(P7I,1093815628)
local group g
if P8I==null then
set DVI=null
set DJI=P7I
set DWI=999999
set DXI=GetSpellTargetX()
set DYI=GetSpellTargetY()
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function CW1))
call ForGroup(g,function ML3)
call NSI(g)
set P8I=DVI
set g=null
endif
if SUI==2 then
set OO1=1093815641
elseif SUI==3 then
set OO1=1093815639
elseif SUI==4 then
set OO1=1093815638
endif
call IA1(P8I,OO1)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),OO1,false)
call TriggerRegisterTimerEvent(t,15,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function MM3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(34),(0))
set t=null
set P7I=null
endfunction
function MS3 takes nothing returns boolean
if GetSpellAbilityId()==1093815628 then
call MN3()
endif
return false
endfunction
function YY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MS3))
set t=null
endfunction
function MT3 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local real MR3=(LoadReal(LY,(S5I),(21)))
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+MR3)
set P7I=null
set P8I=null
endfunction
function MP3 takes nothing returns nothing
local trigger t=IJ1(DKI,GetEnumUnit(),1747993656,"MT3",400,false)
local integer S5I=GetHandleId(t)
call SaveReal(LY,(S5I),(21),((DLI)*1.0))
set t=null
endfunction
function MQ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093809971)
call UnitRemoveAbility(P8I,1110459724)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI>5 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093809971)
call UnitRemoveAbility(P8I,1110459724)
endif
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl",P8I,"origin"))
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),525,Condition(function CT1))
set DKI=P8I
set DLI=15*SUI
call ForGroup(g,function MP3)
call NSI(g)
call P6I(P7I,P8I,1,DLI)
endif
set t=null
set P7I=null
set P8I=null
set g=null
return false
endfunction
function MU3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093809742)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(P8I,1093809971)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809971,false)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerRegisterTimerEvent(t,4.5,false)
call TriggerAddCondition(t,Condition(function MQ3))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M)))*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
set t=null
set P7I=null
endfunction
function LeechSeed takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
call IJ1(P7I,P8I,1747993657,"MU3",600,false)
set P7I=null
set P8I=null
endfunction
function N03 takes nothing returns boolean
if GetSpellAbilityId()==1093809742 and NNI(GetSpellTargetUnit())==false then
call MU3()
endif
return false
endfunction
function YK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function N03))
set t=null
endfunction
function NI3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815892)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P6I(P7I,P8I,1,100+50*SUI)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function N13 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093815892)
local boolean NO3=(LoadBoolean(LY,(S5I),(95)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call IA1(I01,1093684307)
call SetUnitAbilityLevel(I01,1093684307,SUI)
call IssueTargetOrder(I01,"soulburn",P8I)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerAddCondition(t,Condition(function NI3))
call TriggerRegisterTimerEvent(t,0.01,false)
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call SaveUnitHandle(LY,(GetHandleId(t)),(17),(P8I))
call SaveInteger(LY,(GetHandleId(t)),(5),(SUI))
if NO3 then
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\LastWordDamageSpell.mdx",P8I,"overhead"))
endif
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function N23 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01
local integer SUI=GetUnitAbilityLevel(P7I,1093815892)
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093815893)
call UnitRemoveAbility(P8I,1110455638)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093815893)
call UnitRemoveAbility(P8I,1110455638)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerAddCondition(t,Condition(function N13))
call TriggerRegisterTimerEvent(t,0.01,false)
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call SaveUnitHandle(LY,(GetHandleId(t)),(17),(P8I))
call SaveInteger(LY,(GetHandleId(t)),(5),(SUI))
call SaveBoolean(LY,(S5I),(95),(false))
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093815895)
call SetUnitAbilityLevel(I01,1093815895,SUI)
call IssueTargetOrder(I01,"drunkenhaze",P8I)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\LastWordDamageDuration.mdx",P8I,"overhead"))
set I01=null
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and V61(GetSpellAbilityId())==false and V81(GetSpellAbilityId())==false and GetSpellAbilityId()!=1095328363 and GetSpellAbilityId()!=1093678426 and GetSpellAbilityId()!=1093682768 and GetSpellAbilityId()!=1093685593 and GetSpellAbilityId()!=1093678680 and GetSpellAbilityId()!=1093681489 and GetSpellAbilityId()!=1093808472 and GetSpellAbilityId()!=1093808471 and GetSpellAbilityId()!=1093808470 and GetSpellAbilityId()!=1093743191 and GetSpellAbilityId()!=1093678667 and GetSpellAbilityId()!=1097163124 and GetSpellAbilityId()!=1093683801 and GetSpellAbilityId()!=1093682767 and GetSpellAbilityId()!=1093750345 and GetSpellAbilityId()!=1093750089 and GetSpellAbilityId()!=1093816645 and GetSpellAbilityId()!=1093751096 and GetSpellAbilityId()!=1093751361 and GetSpellAbilityId()!=1093751126 and GetSpellAbilityId()!=1093808473 and GetSpellAbilityId()!=1093748565 and GetSpellAbilityId()!=1093753177 and BZ1(GetSpellAbilityId())==false then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093815893)
call UnitRemoveAbility(P8I,1110455638)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
if GetSpellAbilityId()==1093685846 or GetSpellAbilityId()==1093684302 then
call TriggerRegisterTimerEvent(t,0.01,false)
else
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_SPELL_ENDCAST)
endif
call TriggerAddCondition(t,Condition(function N13))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveBoolean(LY,(S5I),(95),(true))
endif
set P8I=null
set P7I=null
set t=null
return false
endfunction
function N33 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetUnitAbilityLevel(P8I,1093815893)==0 or GetTriggerEvalCount(t)>250 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
else
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
endif
set t=null
set I01=null
set P8I=null
return false
endfunction
function N43 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429305,GetUnitX(P8I),GetUnitY(P8I),0)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterTimerEvent(t,5,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function N23))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(P8I,1093815893)
call UnitMakeAbilityPermanent(P8I,true,1093815894)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093815893,false)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\LastWordDebuff_6.mdx",P8I,"overhead")))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function N33))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set P7I=null
set P8I=null
set t=null
endfunction
function N53 takes nothing returns boolean
if GetSpellAbilityId()==1093815892 and NNI(GetSpellTargetUnit())==false then
call N43()
endif
return false
endfunction
function LastWord_Process takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=HK
local real PAI=(LoadReal(LY,(S5I),(20)))
call SetHeroInt(P7I,GetHeroInt(P7I,false)+1,true)
call UYI("+1 "+GetObjectName(1848658512),3,P7I,0.023,0,255,0,230)
set P7I=null
endfunction
function N63 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=HK
local real PAI=(LoadReal(LY,(S5I),(20)))
call SetHeroInt(P7I,GetHeroInt(P7I,false)+2,true)
call UYI("+2 "+GetObjectName(1848658512),3,P7I,0.023,0,255,0,230)
set P7I=null
endfunction
function N73 takes unit P7I,unit IFO returns nothing
if IsUnitType(IFO,UNIT_TYPE_HERO)==true and V51(GetUnitTypeId(IFO))==false and IsUnitIllusion(IFO)==false and(IsUnitInRange(P7I,IFO,900)or GetOwningPlayer(P7I)==GetOwningPlayer(GetKillingUnit()))and IC1(P7I)==false and IsUnitAlly(P7I,GetOwningPlayer(IFO))==false then
if GetUnitTypeId(P7I)==1311781185 then
set DMI[GetPlayerId(GetOwningPlayer(P7I))]=DMI[GetPlayerId(GetOwningPlayer(P7I))]+2
call UYI("-2 "+GetObjectName(1848658512),3,IFO,0.023,255,0,0,230)
call SetHeroInt(IFO,GetHeroInt(IFO,false)-2,true)
call IJ1(IFO,P7I,1747993424,"N63",450,false)
endif
endif
endfunction
function N83 takes nothing returns nothing
call N73(GetEnumUnit(),GetTriggerUnit())
endfunction
function N93 takes nothing returns boolean
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),1000,Condition(function D51))
call GroupAddUnit(g,K1[GetPlayerId(GetOwningPlayer(GetKillingUnit()))])
call ForGroup(g,function N83)
call NSI(g)
set g=null
return false
endfunction
function NA3 takes nothing returns boolean
local integer QHI=DMI[GetPlayerId(GetTriggerPlayer())]
if GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1311781185 and QHI>0 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848657997)+" "+I2S(QHI))
endif
return false
endfunction
function YS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function N53))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function N93))
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[1],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-st",true)
call TriggerAddCondition(t,Condition(function NA3))
set t=null
endfunction
function NB3 takes nothing returns boolean
local real d
if GetUnitAbilityLevel(GetTriggerUnit(),1110455640)>0 and GetUnitAbilityLevel(GetEventDamageSource(),1093684314)>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
call UnitRemoveAbility(GetTriggerUnit(),1110455640)
set d=(0.1+0.2*I2R(GetUnitAbilityLevel(GetEventDamageSource(),1093684314)))*GetHeroInt(GetEventDamageSource(),true)
call UYI("+"+I2S(R2I(d)),1,GetTriggerUnit(),0.023,3,216,216,216)
call DisableTrigger(GetTriggeringTrigger())
call P6I(GetEventDamageSource(),GetTriggerUnit(),3,d)
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function NC3 takes nothing returns nothing
local trigger t
local unit P8I
local unit P7I
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
set P8I=GetSpellTargetUnit()
set P7I=GetTriggerUnit()
else
set P8I=GetTriggerUnit()
set P7I=GetAttacker()
endif
if IsUnitIllusion(P7I)==false then
set t=CreateTrigger()
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function NB3))
endif
set t=null
set P8I=null
set P7I=null
endfunction
function ND3 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetUnitAbilityLevel(GetAttacker(),1093684314)>0 and(LoadBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))then
call NC3()
endif
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if(GetIssuedOrderId()==OrderId("poisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(true))
elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(false))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093684314 then
call NC3()
endif
return false
endfunction
function NE3 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function ND3))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function NF3 takes nothing returns boolean
if GetLearnedSkill()==1093684314 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093684314)==1 then
call NE3()
endif
return false
endfunction
function YN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function NF3))
set t=null
endfunction
function NG3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()!=EVENT_UNIT_DEATH and GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT and NPI<(6)then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)-8*SUI)
call P6I(P7I,P8I,1,5+15*SUI)
elseif NPI>=(6)or GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()!=1093743191 and GetSpellAbilityId()!=1093682767 and GetSpellAbilityId()!=1093750095 and GetSpellAbilityId()!=1093747504 and GetSpellAbilityId()!=1093753417 and GetSpellAbilityId()!=1093810265 and V81(GetSpellAbilityId())==false and(TRI(GetSpellAbilityId())or GetSpellAbilityId()==1093678667))then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093750867)
call UnitRemoveAbility(P8I,1110459217)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function NH3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093743692)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(P8I,1093750867)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function NG3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareTarget.mdl",P8I,"overhead")))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
set P7I=null
set P8I=null
set t=null
endfunction
function NZ3 takes nothing returns nothing
local group g
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093743692)
if SUI>0 then
set g=NTI()
set GK=GetTriggerUnit()
set DNI=GetTriggerUnit()
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function DI1))
call ForGroup(g,function NH3)
call NSI(g)
endif
set g=null
endfunction
function NV3 takes nothing returns nothing
local group g=NTI()
local location l=GetSpellTargetLoc()
set GK=GetTriggerUnit()
set DNI=GetTriggerUnit()
call GroupEnumUnitsInRange(g,GetLocationX(l),GetLocationY(l),375,Condition(function DI1))
call ForGroup(g,function NH3)
call U7I("war3mapImported\\CotS.mdx",GetLocationX(l),GetLocationY(l),5)
call NSI(g)
call RemoveLocation(l)
set g=null
set l=null
endfunction
function NW3 takes nothing returns boolean
if GetSpellAbilityId()==1093743692 then
call NV3()
endif
return false
endfunction
function YM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NW3))
set t=null
endfunction
function NX3 takes nothing returns boolean
return GetSpellAbilityId()==1093684275 or GetSpellAbilityId()==1093816643
endfunction
function NY3 takes nothing returns boolean
call S0I(GetTriggeringTrigger())
call VolumeGroupReset()
return false
endfunction
function NJ3 takes nothing returns nothing
local location BFO=GetUnitLoc(GetTriggerUnit())
local trigger t=CreateTrigger()
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093684275)
if SUI==0 then
set SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093816643)
call NZ3()
endif
call TriggerRegisterTimerEvent(t,SUI+2,false)
call TriggerAddCondition(t,Condition(function NY3))
call CreateNUnitsAtLoc(1,1697656901,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitApplyTimedLifeBJ(5.00,1112820806,bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093684274)
call SetUnitAbilityLevelSwapped(1093684274,bj_lastCreatedUnit,SUI)
call IssuePointOrderLoc(bj_lastCreatedUnit,"silence",BFO)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS,.0)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT,.0)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS,.0)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_MUSIC,.0)
call RemoveLocation(BFO)
set t=null
set BFO=null
endfunction
function GS takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NX3))
call TriggerAddAction(t,function NJ3)
endfunction
function NK3 takes nothing returns boolean
return GetLearnedSkill()==1093677909
endfunction
function NL3 takes nothing returns nothing
call SetPlayerTechResearchedSwap(1378889781,GetUnitAbilityLevelSwapped(1093677909,GetTriggerUnit()),GetOwningPlayer(GetLearningUnit()))
endfunction
function YQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function NK3))
call TriggerAddAction(t,function NL3)
endfunction
function NM3 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
if(LoadInteger(LY,(GetHandleId(GetEnumUnit())),(836)))==DQI or(TimerGetElapsed(M))>(1.1+(LoadReal(LY,(GetHandleId(GetEnumUnit())),(837))))then
call SaveInteger(LY,(GetHandleId(GetEnumUnit())),(836),(DQI))
call SaveReal(LY,(GetHandleId(GetEnumUnit())),(837),(((TimerGetElapsed(M)))*1.0))
call P6I(DTI,GetEnumUnit(),1,DPI)
call IssueTargetOrder(DRI,"slow",GetEnumUnit())
endif
endif
endfunction
function NN3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g=NTI()
local real d
local real a
local real x2
local real y2
set DQI=S5I
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,450+25,Condition(function CZ1))
set DTI=P7I
set DPI=SUI*12
set DRI=I01
call ForGroup(g,function NM3)
call NSI(g)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(309))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(178))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(179))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(180))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(330))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(331))))
if GetTriggerEvalCount(t)==10 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set d=0
set a=0
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(309),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=150
set a=45
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=275
set a=90
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=150
set a=135
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=275
set a=180
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(178),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=150
set a=225
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(179),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=275
set a=270
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(180),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=150
set a=305
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(330),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
set d=275
set a=360
set x2=x+d*Cos(a*bj_DEGTORAD)
set y2=y+d*Sin(a*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(331),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x2,y2)))
endif
set t=null
set P7I=null
set I01=null
set g=null
return false
endfunction
function NS3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093818959)
local real x1=(LoadReal(LY,(S5I),(6)))
local real y1=(LoadReal(LY,(S5I),(7)))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x1,y1,0)
local real x2
local real y2
local real d
local real a
local integer i
call IA1(I01,1093744966)
call SetUnitAbilityLevel(I01,1093744966,SUI)
if GetTriggerEvalCount(t)==1 then
set i=1
loop
exitwhen i>10
set d=GetRandomReal(0,450)
set a=GetRandomReal(0,360)
set x2=x1+d*Cos(a*bj_DEGTORAD)
set y2=y1+d*Sin(a*bj_DEGTORAD)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656906,GetUnitX(P7I),GetUnitY(P7I),90)
call IssuePointOrder(I01,"attackground",x2,y2)
call UnitApplyTimedLife(I01,1112820806,0.5)
set i=i+1
endloop
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(6),((x1)*1.0))
call SaveReal(LY,(S5I),(7),((y1)*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function NN3))
call TriggerEvaluate(t)
endif
set P7I=null
set I01=null
set t=null
return false
endfunction
function NT3 takes nothing returns nothing
local trigger t
local integer S5I
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(829)))
if JGO>0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call I41(GetOwningPlayer(P7I),9.4,x,y,360)
call TriggerRegisterTimerEvent(t,0.4,true)
call TriggerAddCondition(t,Condition(function NS3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call UnitRemoveAbility(P7I,DSI[JGO])
set JGO=JGO-1
call SaveInteger(LY,(GetHandleId(P7I)),(829),(JGO))
call IA1(P7I,DSI[JGO])
else
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659545))
endif
call RemoveLocation(l)
set t=null
set P7I=null
set l=null
endfunction
function NR3 takes nothing returns boolean
if GetSpellAbilityId()==1093818962 or GetSpellAbilityId()==1093818961 or GetSpellAbilityId()==1093678644 or GetSpellAbilityId()==1093818960 then
call NT3()
endif
return false
endfunction
function NP3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(829)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer NQ3=3
if JGO<NQ3 then
set NPI=NPI-1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==0 then
call UnitRemoveAbility(P7I,DSI[JGO])
set NPI=40
call SaveInteger(LY,(S5I),(34),(NPI))
set JGO=JGO+1
call SaveInteger(LY,(GetHandleId(P7I)),(829),(JGO))
call IA1(P7I,DSI[JGO])
endif
endif
set t=null
set P7I=null
return false
endfunction
function NU3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveInteger(LY,(GetHandleId(P7I)),(829),(3))
call IA1(P7I,DSI[3])
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function NP3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(40))
set P7I=null
set t=null
endfunction
function S03 takes nothing returns boolean
if GetLearnedSkill()==1093818959 and IsUnitIllusion(GetTriggerUnit())==false then
if GetUnitAbilityLevel(GetTriggerUnit(),1093818959)==1 then
call NU3()
endif
endif
return false
endfunction
function YT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NR3))
call Q1I(1093744966)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function S03))
set t=null
set DSI[0]=1093818962
set DSI[1]=1093818961
set DSI[2]=1093678644
set DSI[3]=1093818960
endfunction
function SI3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local effect FX=(LoadEffectHandle(LY,(S5I),(32)))
local player p=GetOwningPlayer(SFI)
call UnitShareVision(P8I,p,false)
call DestroyEffect(FX)
call RemoveUnit(I01)
call UnitRemoveAbility(P8I,1110455880)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
set I01=null
set P8I=null
set FX=null
set p=null
return false
endfunction
function S13 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local player p=GetOwningPlayer(SFI)
local unit I01
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local string s="effects\\Snipe Target.mdx"
if IsPlayerAlly(GetLocalPlayer(),p)==false and P0I(GetLocalPlayer())==false then
set s=""
endif
call UnitShareVision(P8I,p,true)
set I01=CreateUnit(GetOwningPlayer(P8I),1697657170,0,0,0)
call IA1(I01,1093684809)
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(s,P8I,"overhead")))
call TriggerRegisterTimerEvent(t,4,false)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function SI3))
set t=null
set SFI=null
set P8I=null
set I01=null
set p=null
endfunction
function SO3 takes nothing returns boolean
if GetSpellAbilityId()==1093678160 or GetSpellAbilityId()==1093747029 then
call S13()
endif
return false
endfunction
function YR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
call TriggerAddCondition(t,Condition(function SO3))
set t=null
endfunction
function S23 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real Z7O=(LoadReal(LY,(GetHandleId(P7I)),(827)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or Z7O<(TimerGetElapsed(M))then
call UnitRemoveAbility(P7I,1093818699)
call UnitRemoveAbility(P7I,1110460484)
call UnitRemoveAbility(P7I,1093818701)
call SaveReal(LY,(GetHandleId(P7I)),(827),((0)*1.0))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function S33 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local real Z7O=(LoadReal(LY,(GetHandleId(P7I)),(827)))
local integer SUI=GetUnitAbilityLevel(P7I,1093677907)
call SaveReal(LY,(GetHandleId(P7I)),(827),(((TimerGetElapsed(M))+0.5)*1.0))
call P6I(P7I,P8I,2,25*SUI-10)
if BJ1(P8I)==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5+0.01,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function S23))
call SaveUnitHandle(LY,(S5I),(2),(P8I))
call IA1(P8I,1093818699)
call IA1(P8I,1093818701)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093818699,false)
endif
set t=null
endfunction
function S43 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if GetEventDamageSource()==P7I and GetEventDamage()>0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call S33(P7I,P8I)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function S53 takes nothing returns boolean
local unit P7I=(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))
local unit P8I=GetTriggerUnit()
local trigger t
local integer S5I
if GetAttacker()==P7I and((LoadInteger(LY,(GetHandleId((P7I))),((4347))))==1)==false and IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(P8I,1093678162)==0 then
if GetRandomReal(0,100)<40 then
call SCI(P7I,4347,0.1)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerAddCondition(t,Condition(function S43))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
endif
set P7I=null
set P8I=null
return false
endfunction
function S63 takes nothing returns boolean
local trigger t
local integer S5I
if GetLearnedSkill()==1093677907 and GetUnitAbilityLevel(GetTriggerUnit(),1093677907)==1 and IsUnitIllusion(GetTriggerUnit())==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function S53))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
set t=null
endif
return false
endfunction
function YP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function S63))
set t=null
endfunction
function S73 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656883,x,y,0)
local integer SUI=GetUnitAbilityLevel(SFI,1093685831)
local real S83=(83+17*SUI)*0.01
call SetUnitVertexColor(I01,255,255,255,150)
call UnitApplyTimedLife(I01,1112820806,6)
call SetUnitScale(I01,S83,S83,S83)
if TOI(GetOwningPlayer(SFI))then
call IA1(I01,1093677369)
call SetUnitAbilityLevel(I01,1093677369,SUI)
else
call IA1(I01,1093682487)
call SetUnitAbilityLevel(I01,1093682487,SUI)
endif
call IssuePointOrder(I01,"cloudoffog",x,y)
call RemoveLocation(l)
set SFI=null
set l=null
set I01=null
endfunction
function S93 takes nothing returns boolean
if GetSpellAbilityId()==1093685831 then
call P32()
call S73()
endif
return false
endfunction
function JI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function S93))
endfunction
function SA3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local player p
local integer SUI=GetUnitAbilityLevel(P7I,1093677130)
local real HJ3=(SUI+3)/4
if(TimerGetElapsed(M))>(10-2*SUI)+E0I then
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+HJ3)
endif
set p=null
set t=null
set P7I=null
return false
endfunction
function SB3 takes nothing returns boolean
local unit P7I=GetAttacker()
local integer SUI=GetUnitAbilityLevel(P7I,1093677130)
if SUI>0 then
set E0I=(TimerGetElapsed(M))
call UnitRemoveAbility(P7I,DUI[SUI])
call UnitRemoveAbility(P7I,1093677130)
call IA1(P7I,DUI[SUI])
call IA1(P7I,1093677130)
call SetUnitAbilityLevel(P7I,1093677130,SUI)
endif
set P7I=null
return false
endfunction
function SC3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093677130)
local trigger t
local integer S5I
if SUI==1 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function SA3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
endif
if GetUnitAbilityLevel(P7I,1093684546)==0 then
call IA1(P7I,1093684546)
endif
if SUI==2 then
call UnitRemoveAbility(P7I,DUI[1])
elseif SUI==3 then
call UnitRemoveAbility(P7I,DUI[1])
call UnitRemoveAbility(P7I,DUI[2])
elseif SUI==4 then
call UnitRemoveAbility(P7I,DUI[1])
call UnitRemoveAbility(P7I,DUI[2])
call UnitRemoveAbility(P7I,DUI[3])
endif
call SetUnitAbilityLevel(P7I,1093684546,SUI)
call IA1(P7I,DUI[SUI])
set P7I=null
endfunction
function SD3 takes nothing returns boolean
if GetLearnedSkill()==1093677130 and IsUnitIllusion(GetTriggerUnit())==false then
call SC3()
endif
return false
endfunction
function YU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function SD3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function SB3))
set DUI[1]=1093817682
set DUI[2]=1093817683
set DUI[3]=1093817684
set DUI[4]=1093818709
set t=null
endfunction
function SE3 takes integer id returns boolean
return id==1093818714 or id==1093818711 or id==1093818710 or id==1093818713 or id==1093818712 or id==1093818928 or id==1093818956
endfunction
function SF3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real PAI=10+30*GetUnitAbilityLevel(P7I,1093684025)
local trigger t
local integer S5I
local real x=GetUnitX(P8I)-75*Cos(GetUnitFacing(P8I)*bj_DEGTORAD)
local real y=GetUnitY(P8I)-75*Sin(GetUnitFacing(P8I)*bj_DEGTORAD)
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(828)))
if JGO>0 then
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
call SetUnitFacing(P7I,GetUnitFacing(P8I))
call DestroyEffect(AddSpecialEffect("war3mapImported\\BlinkStrike.mdx",x,y))
if IsUnitEnemy(P8I,GetOwningPlayer(P7I))then
call P6I(P7I,P8I,1,PAI)
call SaveBoolean(LY,(GetHandleId(P7I)),(332),(true))
call IssueTargetOrder(P7I,"attack",P8I)
endif
call UnitRemoveAbility(P7I,EII[JGO])
set JGO=JGO-1
call SaveInteger(LY,(GetHandleId(P7I)),(828),(JGO))
call IA1(P7I,EII[JGO])
else
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659545))
endif
set P7I=null
set P8I=null
set t=null
endfunction
function SG3 takes nothing returns boolean
if SE3(GetSpellAbilityId())then
call SF3()
endif
return false
endfunction
function SH3 takes nothing returns boolean
if SE3(GetSpellAbilityId())then
call DestroyEffect(AddSpecialEffect("war3mapImported\\BlinkStrike.mdx",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
endif
return false
endfunction
function SZ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(828)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer NQ3=3+GetUnitAbilityLevel(P7I,1093684025)
if JGO<NQ3 then
set NPI=NPI-1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==0 then
call UnitRemoveAbility(P7I,EII[JGO])
set NPI=35
call SaveInteger(LY,(S5I),(34),(NPI))
set JGO=JGO+1
call SaveInteger(LY,(GetHandleId(P7I)),(828),(JGO))
call IA1(P7I,EII[JGO])
endif
endif
set t=null
set P7I=null
return false
endfunction
function SV3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveInteger(LY,(GetHandleId(P7I)),(828),(4))
call IA1(P7I,EII[4])
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function SZ3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(35))
set P7I=null
set t=null
endfunction
function SW3 takes nothing returns boolean
if GetLearnedSkill()==1093684025 and IsUnitIllusion(GetTriggerUnit())==false then
if GetUnitAbilityLevel(GetTriggerUnit(),1093684025)==1 then
call SV3()
endif
endif
return false
endfunction
function J11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SG3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function SH3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function SW3))
set t=null
set EII[0]=1093818714
set EII[1]=1093818711
set EII[2]=1093818710
set EII[3]=1093818713
set EII[4]=1093818712
set EII[5]=1093818928
set EII[6]=1093818956
endfunction
function SX3 takes nothing returns nothing
local unit P7I=GetAttacker()
local unit P8I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093682266)
local boolean SY3=(LoadBoolean(LY,(GetHandleId(P7I)),(332)))
local real d=RAbsBJ(GetUnitFacing(P8I)-GetUnitFacing(P7I))
if d>180 then
set d=360-d
endif
if d<=105 or SY3 then
call SaveBoolean(LY,(GetHandleId(P7I)),(332),(false))
if GetUnitAbilityLevel(P8I,1093678162)==0 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",P8I,"chest"))
call P6I(P7I,P8I,2,GetHeroAgi(P7I,true)*(0.25*SUI+0.25))
endif
endif
set P7I=null
set P8I=null
endfunction
function SJ3 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093682266)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
if IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==false or(IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==false and GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)<0.5)then
call SX3()
endif
endif
return false
endfunction
function J01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function SJ3))
set t=null
endfunction
function SK3 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
call AX1(GetEnumUnit(),E1I,1,8,1110458966)
call UnitMakeAbilityPermanent(GetEnumUnit(),true,E1I)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),E1I,false)
endfunction
function SL3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093814611)
local group g=NTI()
if SUI==1 then
set E1I=1093748278
elseif SUI==2 then
set E1I=1093748279
elseif SUI==3 then
set E1I=1093748275
elseif SUI==4 then
set E1I=1093748277
endif
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),925,Condition(function CK1))
call ForGroup(g,function SK3)
call NSI(g)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl",P7I,"overhead"))
set P7I=null
set g=null
endfunction
function SM3 takes nothing returns boolean
if GetSpellAbilityId()==1093814611 then
call SL3()
endif
return false
endfunction
function SU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SM3))
set t=null
endfunction
function SN3 takes unit SWI returns boolean
if ES1(SWI,FR0[L50])!=null then
return true
endif
return false
endfunction
function SS3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local boolean CK3=SN3(SFI)
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
endif
if(GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT and NPI>1)or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and E31(GetSpellAbilityId())and GetSpellTargetUnit()==SFI)then
if(GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT and NPI>1)then
if IC1(SFI)==false then
call UnitRemoveAbility(SFI,1093818935)
call UnitRemoveAbility(SFI,1093818937)
call UnitRemoveAbility(SFI,1093818936)
call UnitRemoveAbility(SFI,1093687119)
call UnitRemoveAbility(SFI,1093873989)
call UnitRemoveAbility(SFI,1110454329)
call UnitRemoveAbility(SFI,1110459472)
call UnitRemoveAbility(SFI,1110460494)
call UnitRemoveAbility(SFI,1110460495)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT then
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\BattleCryCaster.mdx",SFI,"overhead"))
if CK3 then
if SUI==1 then
call IA1(SFI,1093818935)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093818935,false)
call IA1(SFI,1093874006)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093874006,false)
endif
if SUI==2 then
call IA1(SFI,1093818937)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093818937,false)
call IA1(SFI,1093874005)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093874005,false)
endif
if SUI==3 then
call IA1(SFI,1093818936)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093818936,false)
call IA1(SFI,1093874007)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093874007,false)
endif
else
call IA1(SFI,1093687119)
call SetUnitAbilityLevel(SFI,1093687119,SUI)
call UnitMakeAbilityPermanent(SFI,true,1093687119)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093687119,false)
endif
endif
set t=null
set SFI=null
return false
endfunction
function ST3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit I01
local integer SUI=GetUnitAbilityLevel(SFI,1093752648)
call TriggerRegisterTimerEvent(t,25,false)
call TriggerRegisterTimerEvent(t,0.31,false)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SS3))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(34),(0))
call SaveInteger(LY,(S5I),(5),(SUI))
set t=null
set SFI=null
endfunction
function SR3 takes nothing returns boolean
if GetSpellAbilityId()==1093752648 and GetUnitTypeId(GetTriggerUnit())==1211117617 then
call ST3()
endif
return false
endfunction
function T01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SR3))
set t=null
endfunction
function SP3 takes nothing returns nothing
call DD1(EOI,GetEnumUnit(),2)
call P6I(EOI,GetEnumUnit(),1,E2I*75+25)
endfunction
function SQ3 takes player p,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(p,1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer IB1
local group g=NTI()
set E2I=SUI
set GK=K1[GetPlayerId(p)]
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),280,Condition(function CA1))
call GroupAddUnit(g,P8I)
set EOI=I01
call ForGroup(g,function SP3)
call NSI(g)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\StormBolt\\StormBoltMissile.mdl",P8I,"origin"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\StormBolt\\StormBoltMissile.mdl",P8I,"origin"))
set I01=null
set g=null
endfunction
function SU3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real x=GetUnitX(IG1)
local real y=GetUnitY(IG1)
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real IH1=1000*0.035
local real IZ1=UEI(x,y,QJI,QKI)
local real IV1=x+IH1*Cos(IZ1*bj_DEGTORAD)
local real IW1=y+IH1*Sin(IZ1*bj_DEGTORAD)
local boolean ZXO=(LoadBoolean(LY,(S5I),(249)))
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
call SetUnitFacing(IG1,IZ1)
if((LoadInteger(LY,(GetHandleId((P8I))),((4422))))==1)==true then
set ZXO=false
call SaveBoolean(LY,(S5I),(249),(ZXO))
endif
if UTI(QJI,QKI,IV1,IW1)<=IH1 then
if ZXO then
call SQ3(p,P8I,SUI)
endif
call KillUnit(IG1)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set IG1=null
return false
endfunction
function T03 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093744944)
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747990353,GetUnitX(P7I),GetUnitY(P7I),UEI(GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I)))
local boolean ZXO=NNI(GetSpellTargetUnit())==false
call SaveBoolean(LY,(S5I),(249),(ZXO))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(P7I)))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveInteger(LY,(S5I),(5),(SUI))
call TriggerRegisterTimerEvent(t,0.035,true)
call TriggerAddCondition(t,Condition(function SU3))
set t=null
set P7I=null
set P8I=null
set IG1=null
endfunction
function TI3 takes nothing returns boolean
if GetSpellAbilityId()==1093744944 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetTriggerUnit(),"weapon"))
else
call T03()
endif
endif
return false
endfunction
function SQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function TI3))
set t=null
endfunction
function T13 takes nothing returns boolean
if((GetUnitTypeId(GetFilterUnit())==1848652103))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848652099))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848652088))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848651828))then
return true
endif
return false
endfunction
function TO3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit ZOO
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
local integer SUI=GetUnitAbilityLevel(P7I,GetSpellAbilityId())
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,GetOwningPlayer(P7I),Condition(function T13))
set ZOO=FirstOfGroup(g)
call NSI(g)
if GetSpellAbilityId()==1093748038 then
call IA1(I01,1093681473)
call SetUnitAbilityLevel(I01,1093681473,SUI)
elseif GetSpellAbilityId()==1093748037 then
call IA1(I01,1093681474)
call SetUnitAbilityLevel(I01,1093681474,SUI)
elseif GetSpellAbilityId()==1093748040 then
call IA1(I01,1093681475)
call SetUnitAbilityLevel(I01,1093681475,SUI)
elseif GetSpellAbilityId()==1093748041 then
call IA1(I01,1093681476)
call SetUnitAbilityLevel(I01,1093681476,SUI)
elseif GetSpellAbilityId()==1093748039 then
call IA1(I01,1093681477)
call SetUnitAbilityLevel(I01,1093681477,SUI)
endif
call IssueTargetOrder(I01,"bloodlust",P7I)
if ZOO!=null and IC1(ZOO)==false then
call IssueTargetOrder(I01,"bloodlust",ZOO)
endif
set g=null
set P7I=null
set ZOO=null
set I01=null
endfunction
function T23 takes nothing returns boolean
if GetSpellAbilityId()==1093748038 or GetSpellAbilityId()==1093748037 or GetSpellAbilityId()==1093748040 or GetSpellAbilityId()==1093748041 or GetSpellAbilityId()==1093748039 then
call TO3()
endif
return false
endfunction
function JO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function T23))
set t=null
endfunction
function T33 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit ZOO=(LoadUnitHandle(LY,(S5I),(2)))
local real T43
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamage()>2 and GetEventDamageSource()!=GetTriggerUnit()and T2I(GetOwningPlayer(GetEventDamageSource()))then
call SaveReal(LY,(S5I),(714),(((TimerGetElapsed(M)))*1.0))
endif
endif
set T43=(LoadReal(LY,(S5I),(714)))
if T43+3<(TimerGetElapsed(M))then
if(LoadInteger(LY,(S5I),(34)))==2 then
call SaveInteger(LY,(S5I),(34),(1))
call SaveInteger(LY,(GetHandleId((ZOO))),((4327)),(2))
call SetPlayerAbilityAvailable(GetOwningPlayer(ZOO),1093681463,true)
endif
else
if(LoadInteger(LY,(S5I),(34)))==1 then
call SaveInteger(LY,(S5I),(34),(2))
call SaveInteger(LY,(GetHandleId((ZOO))),((4327)),(1))
call SetPlayerAbilityAvailable(GetOwningPlayer(ZOO),1093681463,false)
endif
endif
set t=null
set ZOO=null
return false
endfunction
function T53 takes unit ZOO returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerRegisterUnitEvent(t,ZOO,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,ZOO,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function T33))
call SaveUnitHandle(LY,(S5I),(2),(ZOO))
call SaveReal(LY,(S5I),(714),((0)*1.0))
call SaveInteger(LY,(S5I),(34),(1))
call SetPlayerAbilityAvailable(GetOwningPlayer(ZOO),1093681463,true)
set t=null
endfunction
function T63 takes nothing returns boolean
return(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),1110459185)>0
endfunction
function T73 takes nothing returns nothing
call P6I(E3I,GetEnumUnit(),2,30)
endfunction
function T83 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit ZOO=(LoadUnitHandle(LY,(S5I),(53)))
local group g=NTI()
set GK=ZOO
set E3I=ZOO
call GroupEnumUnitsInRange(g,GetUnitX(ZOO),GetUnitY(ZOO),2000,Condition(function T63))
call ForGroup(g,function T73)
call NSI(g)
set t=null
set g=null
set ZOO=null
return false
endfunction
function T93 takes nothing returns nothing
local unit ZOO=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function T83))
call SaveUnitHandle(LY,(S5I),(53),(ZOO))
set ZOO=null
set t=null
endfunction
function TA3 takes nothing returns boolean
return GetLearnedSkill()==1093681461 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function TB3 takes nothing returns boolean
if IC1(GetFilterUnit())then
return false
endif
if((GetUnitTypeId(GetFilterUnit())==1848652099))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848652088))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848651828))then
return true
endif
return false
endfunction
function TC3 takes nothing returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(GetTriggerUnit()))
local unit TD3=(LoadUnitHandle(LY,(S5I),(334)))
local unit ZOO=(LoadUnitHandle(LY,(S5I),(333)))
if TD3!=null and X0==false then
call UnitAddItem(ZOO,UnitRemoveItemFromSlot(TD3,0))
call UnitAddItem(ZOO,UnitRemoveItemFromSlot(TD3,1))
call UnitAddItem(ZOO,UnitRemoveItemFromSlot(TD3,2))
call UnitAddItem(ZOO,UnitRemoveItemFromSlot(TD3,3))
call UnitAddItem(ZOO,UnitRemoveItemFromSlot(TD3,4))
call UnitAddItem(ZOO,UnitRemoveItemFromSlot(TD3,5))
endif
endfunction
function TE3 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local player T4I=GetOwningPlayer(PKI)
local location BFO=GetUnitLoc(PKI)
local boolexpr QL1=Condition(function TB3)
local group Z51=NTI()
local integer SUI=GetUnitAbilityLevel(PKI,1093681461)
local integer S5I=GetHandleId(T4I)
local integer TF3
local unit ZOO
local real Z43
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(PKI),QL1)
call DestroyBoolExpr(QL1)
if(SUI==1)then
call T93()
endif
set TF3=CountUnitsInGroup(Z51)
if(TF3==1)then
set ZOO=FirstOfGroup(Z51)
set Z43=GetUnitLifePercent(ZOO)
set BFO=GetUnitLoc(ZOO)
call ShowUnit(ZOO,false)
call KillUnit(ZOO)
if(SUI==2)then
call CreateNUnitsAtLoc(1,1848652088,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call T53(bj_lastCreatedUnit)
elseif(SUI==3)then
call CreateNUnitsAtLoc(1,1848652099,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call T53(bj_lastCreatedUnit)
elseif(SUI==4)then
call CreateNUnitsAtLoc(1,1848652103,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call T53(bj_lastCreatedUnit)
endif
call SetUnitLifePercentBJ(bj_lastCreatedUnit,Z43)
call SaveUnitHandle(LY,(S5I),(333),(bj_lastCreatedUnit))
call TC3()
endif
call NSI(Z51)
endfunction
function J51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function TA3))
call TriggerAddAction(t,function TE3)
endfunction
function TG3 takes nothing returns boolean
return GetLearnedSkill()==1093681464 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function TH3 takes nothing returns nothing
call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),1378889776,GetPlayerTechCount(GetOwningPlayer(GetTriggerUnit()),1378889776,true)+1)
call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),1378889777,GetPlayerTechCount(GetOwningPlayer(GetTriggerUnit()),1378889777,true)+1)
endfunction
function J61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function TG3))
call TriggerAddAction(t,function TH3)
endfunction
function TZ3 takes nothing returns boolean
return GetSpellAbilityId()==1093681461
endfunction
function TV3 takes nothing returns boolean
if IC1(GetFilterUnit())then
return false
endif
if((GetUnitTypeId(GetFilterUnit())==1848652103))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848652099))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848652088))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848651828))then
return true
endif
return false
endfunction
function TW3 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local player T4I=GetOwningPlayer(PKI)
local location BFO=GetUnitLoc(PKI)
local boolexpr QL1=Condition(function TV3)
local group Z51=NTI()
local integer SUI=GetUnitAbilityLevel(PKI,1093681461)
local integer S5I=GetHandleId(T4I)
local boolean TX3
local unit ZOO
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(PKI),QL1)
set TX3=CountUnitsInGroup(Z51)==0
if(SUI==1 and TX3)then
call CreateNUnitsAtLoc(1,1848651828,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call SaveUnitHandle(LY,(S5I),(333),(bj_lastCreatedUnit))
call TC3()
call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call T53(bj_lastCreatedUnit)
elseif(SUI==2 and TX3)then
call CreateNUnitsAtLoc(1,1848652088,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call SaveUnitHandle(LY,(S5I),(333),(bj_lastCreatedUnit))
call TC3()
call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call T53(bj_lastCreatedUnit)
elseif(SUI==3 and TX3)then
call CreateNUnitsAtLoc(1,1848652099,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call SaveUnitHandle(LY,(S5I),(333),(bj_lastCreatedUnit))
call TC3()
call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call T53(bj_lastCreatedUnit)
elseif(SUI==4 and TX3)then
call CreateNUnitsAtLoc(1,1848652103,GetOwningPlayer(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call SaveUnitHandle(LY,(S5I),(333),(bj_lastCreatedUnit))
call TC3()
call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call T53(bj_lastCreatedUnit)
elseif TX3==false then
set ZOO=FirstOfGroup(Z51)
call AddSpecialEffectTargetUnitBJ("chest",ZOO,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
call SetUnitState(ZOO,UNIT_STATE_LIFE,GetUnitState(ZOO,UNIT_STATE_MAX_LIFE))
call SetUnitPosition(ZOO,GetUnitX(PKI),GetUnitY(PKI))
set ZOO=null
endif
call SetUnitAbilityLevel(bj_lastCreatedUnit,1093679449,SUI)
call NSI(Z51)
call RemoveLocation(BFO)
set PKI=null
set T4I=null
set BFO=null
set Z51=null
endfunction
function TY3 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local player T4I=GetOwningPlayer(PKI)
local location BFO=GetUnitLoc(PKI)
local boolexpr QL1=Condition(function TV3)
local group Z51=NTI()
local integer SUI=GetUnitAbilityLevel(PKI,1093681461)
local integer S5I=GetHandleId(T4I)
local boolean TX3
local unit ZOO
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(PKI),QL1)
if CountUnitsInGroup(Z51)!=0 then
set ZOO=FirstOfGroup(Z51)
if ZOO!=null and((LoadInteger(LY,(GetHandleId((ZOO))),((4327))))==1)==true then
call PJI(PKI)
call PZI(T4I,GetObjectName(1848659278))
endif
endif
call NSI(Z51)
call RemoveLocation(BFO)
endfunction
function J31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TZ3))
call TriggerAddAction(t,function TW3)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function TZ3))
call TriggerAddAction(t,function TY3)
endfunction
function TJ3 takes nothing returns boolean
return GetSpellAbilityId()==1093681463
endfunction
function TK3 takes nothing returns nothing
local unit ZOO=GetTriggerUnit()
local unit Z2O=K1[GetPlayerId(GetOwningPlayer(ZOO))]
call SetUnitX(ZOO,GetUnitX(Z2O)+GetRandomReal(25,50)*Cos(GetRandomReal(0,360)))
call SetUnitY(ZOO,GetUnitY(Z2O)+GetRandomReal(25,50)*Sin(GetRandomReal(0,360)))
endfunction
function J41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TJ3))
call TriggerAddAction(t,function TK3)
endfunction
function TL3 takes nothing returns boolean
return(GetUnitTypeId(GetTriggerUnit())==1311781171 or GetUnitTypeId(GetTriggerUnit())==1311781199 or GetUnitTypeId(GetTriggerUnit())==1311781173 or GetUnitTypeId(GetTriggerUnit())==1311781172)and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function TM3 takes nothing returns nothing
local unit ZOO=(LoadUnitHandle(LY,(GetHandleId(GetOwningPlayer(GetTriggerUnit()))),(333)))
call KillUnit(ZOO)
endfunction
function J81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function TL3))
call TriggerAddAction(t,function TM3)
endfunction
function TN3 takes unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call SCI(P7I,4343,5)
call UnitAddAbility(I01,1093748570)
call IssueTargetOrder(I01,"ensnare",P8I)
set I01=null
endfunction
function TS3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call TN3(P7I,P8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function TT3 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function TS3))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function TR3 takes nothing returns nothing
local unit P7I=GetAttacker()
if GetUnitTypeId(P7I)!=1848652103 and GetUnitTypeId(P7I)!=1848652099 then
return
endif
if((LoadInteger(LY,(GetHandleId((P7I))),((4342))))==1)==false and((LoadInteger(LY,(GetHandleId((P7I))),((4343))))==1)==false and GetRandomInt(0,100)<20 then
call SCI(P7I,4342,.3)
call TT3()
endif
return
endfunction
function TP3 takes nothing returns boolean
return GetUnitTypeId(GetAttacker())==1848652103 or GetUnitTypeId(GetAttacker())==1848652099 or GetUnitTypeId(GetAttacker())==1848652088 or GetUnitTypeId(GetAttacker())==1848651828
endfunction
function TQ3 takes nothing returns nothing
local unit ZOO=GetAttacker()
local unit Z2O=K1[GetPlayerId(GetOwningPlayer(ZOO))]
if((GetUnitX(Z2O)-GetUnitX(ZOO))*(GetUnitX(Z2O)-GetUnitX(ZOO))+(GetUnitY(Z2O)-GetUnitY(ZOO))*(GetUnitY(Z2O)-GetUnitY(ZOO))>=(1100*1100))then
call IssueImmediateOrder(ZOO,"stop")
else
call TR3()
endif
endfunction
function J21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function TP3))
call TriggerAddAction(t,function TQ3)
endfunction
function TU3 takes nothing returns boolean
return(GetUnitTypeId(GetTriggerUnit())==1848652103 or GetUnitTypeId(GetTriggerUnit())==1848652099 or GetUnitTypeId(GetTriggerUnit())==1848652088 or GetUnitTypeId(GetTriggerUnit())==1848651828)and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function R03 takes nothing returns nothing
local location I2O
if TII(GetOwningPlayer(GetTriggerUnit()))then
set I2O=GetRectCenter(O4)
else
set I2O=GetRectCenter(S3)
endif
if F41(GetEnumItem())==false then
call SetItemPositionLoc(GetEnumItem(),I2O)
endif
call RemoveLocation(I2O)
set I2O=null
endfunction
function RI3 takes nothing returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(GetTriggerUnit()))
local unit TD3=(LoadUnitHandle(LY,(S5I),(334)))
local unit ZOO=(LoadUnitHandle(LY,(S5I),(333)))
local integer x
local integer y
if TD3==null then
if TII(GetOwningPlayer(ZOO))then
set x=-6390
set y=-5615
else
set x=5875
set y=5000
endif
set TD3=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1697657158,x,y,0)
call SaveUnitHandle(LY,(S5I),(334),(TD3))
endif
if F41(GetEnumItem())==false then
call UnitAddItem(TD3,GetEnumItem())
endif
call ShowUnit(TD3,true)
endfunction
function R13 takes nothing returns nothing
local integer E81=EB1(GetEnumItem())
if GetWidgetLife(GetEnumItem())>0 and E81!=VL0 then
if X0==true then
call R03()
else
call RI3()
endif
else
endif
endfunction
function RO3 takes nothing returns nothing
local location BFO=GetUnitLoc(GetTriggerUnit())
local rect R23=RectFromCenterSizeBJ(BFO,400.00,400.00)
local unit Z2O=K1[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
call SetHeroXP(Z2O,(GetHeroXP(Z2O)-(GetHeroXP(Z2O)/(125-(25*GetUnitAbilityLevel(Z2O,1093681461))))),false)
call P6I(GetKillingUnit(),Z2O,3,0.1*GetUnitState(Z2O,UNIT_STATE_MAX_LIFE))
call EnumItemsInRectBJ(R23,function R13)
call RemoveLocation(BFO)
call RemoveRect(R23)
endfunction
function J71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function TU3))
call TriggerAddAction(t,function RO3)
endfunction
function R33 takes nothing returns boolean
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if T2I(GetOwningPlayer(GetEventDamageSource()))and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true and EWI==false then
if EXI==false then
call UnitRemoveAbility(GetTriggerUnit(),1110458957)
call S0I(GetTriggeringTrigger())
endif
endif
if EXI==true then
set EXI=false
endif
if EWI==true then
set EWI=false
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function R43 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local trigger t=CreateTrigger()
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function R33))
set P8I=null
set t=null
endfunction
function R53 takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1110458957)>0 and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0
endfunction
function R63 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g=NTI()
call GroupEnumUnitsInRange(g,x,y,1000,Condition(function R53))
call ForGroup(g,function R43)
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set g=null
return false
endfunction
function R73 takes nothing returns nothing
if E4I==1 or E4I==2 then
call P6I(GetTriggerUnit(),GetEnumUnit(),2,70+10*E5I)
endif
if E4I==1 or E4I==3 then
call P6I(GetTriggerUnit(),GetEnumUnit(),1,70+10*E5I)
endif
endfunction
function R83 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747990362,x,y,0)
local group g=NTI()
local unit u
set E5I=GetUnitAbilityLevel(P7I,1093747009)
if((LoadInteger(LY,(GetHandleId((P7I))),((4270))))==1)==false then
call SetUnitTimeScale(I01,2.5)
call UnitApplyTimedLife(I01,1112820806,2)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call IA1(I01,1093747001)
call SetUnitAbilityLevel(I01,1093747001,GetUnitAbilityLevel(P7I,1093747009))
call IssueImmediateOrder(I01,"stomp")
call GroupEnumUnitsInRange(g,x,y,500,Condition(function C51))
set E4I=1
call ForGroup(g,function R73)
call NSI(g)
call TriggerRegisterTimerEvent(t,0.65,false)
call TriggerAddCondition(t,Condition(function R63))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
else
call SetUnitTimeScale(I01,2.5)
call UnitApplyTimedLife(I01,1112820806,2)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call IA1(I01,1093747001)
call SetUnitAbilityLevel(I01,1093747001,GetUnitAbilityLevel(P7I,1093747009))
call IssueImmediateOrder(I01,"stomp")
call GroupEnumUnitsInRange(g,x,y,500,Condition(function C51))
set E4I=2
call ForGroup(g,function R73)
call TriggerRegisterTimerEvent(t,0.65,false)
call TriggerAddCondition(t,Condition(function R63))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
set u=(EVI[GetPlayerId(GetOwningPlayer((P7I)))])
call IssueImmediateOrder(u,"stop")
set x=GetUnitX(u)
set y=GetUnitY(u)
set I01=CreateUnit(GetOwningPlayer(P7I),1747990362,x,y,0)
call SetUnitTimeScale(I01,2.5)
call UnitApplyTimedLife(I01,1112820806,2)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call IA1(I01,1093747001)
call SetUnitAbilityLevel(I01,1093747001,GetUnitAbilityLevel(P7I,1093747009))
call IssueImmediateOrder(I01,"stomp")
call GroupEnumUnitsInRange(g,x,y,500,Condition(function C51))
set E4I=3
call ForGroup(g,function R73)
call NSI(g)
call TriggerRegisterTimerEvent(t,0.65,false)
call TriggerAddCondition(t,Condition(function R63))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SetUnitAnimationByIndex(u,3)
endif
set t=null
set P7I=null
set I01=null
set g=null
endfunction
function R93 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IYO=(LoadUnitHandle(LY,(S5I),(335)))
local boolean RA3=(LoadBoolean(LY,(S5I),(336)))
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
call SaveInteger(LY,(GetHandleId((P7I))),((4269)),(2))
call SaveBoolean(LY,(GetHandleId(IYO)),(337),(true))
if RA3 then
call ShowUnit(IYO,false)
call KillUnit(IYO)
else
call ShowUnit(IYO,false)
call UnitRemoveAbility(IYO,1097625443)
call ShowUnit(IYO,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if RA3 then
call SetUnitFacing(IYO,GetUnitFacing(P7I))
endif
endif
set t=null
set IYO=null
return false
endfunction
function RB3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit IYO
local boolean KillImage
call SaveBoolean(LY,(S5I),(336),(false))
if((LoadInteger(LY,(GetHandleId((P7I))),((4270))))==1)==false then
call SaveBoolean(LY,(S5I),(336),(true))
set IYO=CreateUnit(GetOwningPlayer(P7I),1747990357,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call IA1(IYO,1097625443)
call IA1(IYO,1097167980)
call SetUnitPosition(IYO,GetUnitX(P7I),GetUnitY(P7I))
call SetUnitScale(IYO,1.4,1.4,1.4)
else
set IYO=(EVI[GetPlayerId(GetOwningPlayer((P7I)))])
call UnitAddAbility(IYO,1097625443)
endif
call IssueImmediateOrder(IYO,"stop")
call SaveInteger(LY,(GetHandleId((P7I))),((4269)),(1))
call SetUnitAnimation(IYO,"spell slam")
call QueueUnitAnimation(IYO,"spell slam")
call SaveUnitHandle(LY,(S5I),(335),(IYO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function R93))
call SaveUnitHandle(LY,(S5I),(335),(IYO))
set t=null
set P7I=null
set IYO=null
endfunction
function RC3 takes nothing returns boolean
local integer CCO
if GetSpellAbilityId()==1093747009 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_FINISH then
call R83()
else
call RB3()
endif
endif
return false
endfunction
function TU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_FINISH)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function RC3))
set t=null
endfunction
function RD3 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093747521)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093747521)
call UnitRemoveAbility(GetEnumUnit(),1110458960)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093747513)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093747513)
call UnitRemoveAbility(GetEnumUnit(),1110458960)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093747522)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093747522)
call UnitRemoveAbility(GetEnumUnit(),1110458960)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093747523)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093747523)
call UnitRemoveAbility(GetEnumUnit(),1110458960)
endif
call GA1(GetEnumUnit(),0)
endfunction
function RE3 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
if E6I==1 then
if GetUnitAbilityLevel(GetEnumUnit(),1093747521)==0 then
call IA1(GetEnumUnit(),1093747521)
endif
elseif E6I==2 then
if GetUnitAbilityLevel(GetEnumUnit(),1093747513)==0 then
call IA1(GetEnumUnit(),1093747513)
endif
elseif E6I==3 then
if GetUnitAbilityLevel(GetEnumUnit(),1093747522)==0 then
call IA1(GetEnumUnit(),1093747522)
endif
elseif E6I==4 then
if GetUnitAbilityLevel(GetEnumUnit(),1093747523)==0 then
call IA1(GetEnumUnit(),1093747523)
endif
endif
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
call GA1(GetEnumUnit(),R2I((I2R(GetHeroAgi(GetEnumUnit(),true))/7)*I2R(E6I)/4))
endif
endfunction
function RF3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group RG3=(LoadGroupHandle(LY,(S5I),(340)))
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g=NTI()
local group g2
if P7I==null or GetUnitTypeId(P7I)!=1328558389 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call NSI(RG3)
call NSI(g)
return false
endif
set GK=P7I
set E6I=GetUnitAbilityLevel(P7I,1093747524)
call GroupEnumUnitsInRange(g,x,y,300,Condition(function CA1))
if((LoadInteger(LY,(GetHandleId((P7I))),((4270))))==1)==true then
set g2=NTI()
call GroupEnumUnitsInRange(g2,GetUnitX((EVI[GetPlayerId(GetOwningPlayer((P7I)))])),GetUnitY((EVI[GetPlayerId(GetOwningPlayer((P7I)))])),300,Condition(function CA1))
call GroupAddGroup(g2,g)
call NSI(g2)
set g2=null
endif
call GroupRemoveGroup(g,RG3)
call ForGroup(RG3,function RD3)
if IC1(P7I)==false then
call ForGroup(g,function RE3)
endif
call SaveGroupHandle(LY,(S5I),(340),(g))
call NSI(RG3)
set t=null
set P7I=null
set RG3=null
return false
endfunction
function RH3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local integer i
local player p
call IA1(P7I,1093747537)
call TriggerRegisterTimerEvent(t,0.3,true)
call TriggerAddCondition(t,Condition(function RF3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(340),(NTI()))
call SaveTriggerHandle(LY,(GetHandleId(P7I)),(338),(t))
call SaveBoolean(LY,(GetHandleId(P7I)),(339),(true))
set i=0
loop
exitwhen i>5
set p=BO[i]
call SetPlayerAbilityAvailable(p,1093747521,false)
call SetPlayerAbilityAvailable(p,1093747513,false)
call SetPlayerAbilityAvailable(p,1093747522,false)
call SetPlayerAbilityAvailable(p,1093747523,false)
set p=CO[i]
call SetPlayerAbilityAvailable(p,1093747521,false)
call SetPlayerAbilityAvailable(p,1093747513,false)
call SetPlayerAbilityAvailable(p,1093747522,false)
call SetPlayerAbilityAvailable(p,1093747523,false)
set i=i+1
endloop
set t=null
set P7I=null
endfunction
function RZ3 takes nothing returns boolean
if GetLearnedSkill()==1093747524 and GetUnitAbilityLevel(GetTriggerUnit(),1093747524)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call RH3()
endif
return false
endfunction
function TQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function RZ3))
set t=null
endfunction
function RV3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call BP1(P8I)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function RW3 takes nothing returns nothing
local real x1=E9I
local real y1=EAI
local real x2=EBI
local real y2=ECI
local real x3=GetUnitX(GetEnumUnit())
local real y3=GetUnitY(GetEnumUnit())
local real u=((x3-x1)*(x2-x1)+(y3-y1)*(y2-y1))/((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))
local real x4=x1+u*(x2-x1)
local real y4=y1+u*(y2-y1)
local real VZ3=GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*0.35/2
local trigger t
local integer S5I
local integer RX3=GetUnitAbilityLevel(E8I,1093818952)
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
call SetUnitPosition(GetEnumUnit(),x4,y4)
else
call SetUnitX(GetEnumUnit(),x4)
call SetUnitY(GetEnumUnit(),y4)
endif
if RX3>0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call BT1(GetEnumUnit())
call TriggerRegisterTimerEvent(t,RX3+3,false)
call TriggerRegisterDeathEvent(t,GetEnumUnit())
call TriggerAddCondition(t,Condition(function RV3))
call SaveUnitHandle(LY,(S5I),(2),(E8I))
call SaveUnitHandle(LY,(S5I),(17),(GetEnumUnit()))
set t=null
endif
call IssueTargetOrder(E7I,"slow",GetEnumUnit())
call P6I(E8I,GetEnumUnit(),1,VZ3)
call P6I(E8I,GetEnumUnit(),2,VZ3)
endfunction
function RY3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x0=(LoadReal(LY,(S5I),(282)))
local real y0=(LoadReal(LY,(S5I),(283)))
local real a0=(LoadReal(LY,(S5I),(341)))
local integer i=0
local real x
local real y
local group g=NTI()
local group PR2=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093746993)
local integer MKO=(LoadInteger(LY,(S5I),(34)))
local integer RJ3=1093747525
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093818952)
set RJ3=1093818953
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set GK=P7I
set E8I=P7I
set E7I=CreateUnit(GetOwningPlayer(P7I),1697656901,x0,y0,0)
call IA1(E7I,RJ3)
call SetUnitAbilityLevel(E7I,RJ3,SUI)
loop
exitwhen i>MKO
set x=x0+i*200*Cos(a0)
set y=y0+i*200*Sin(a0)
call U7I("Abilities\\Spells\\Orc\\EarthQuake\\EarthQuakeTarget.mdl",x,y,1.6)
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",x,y-250))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",x,y))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",x+250,y))
call UPI(x,y,300)
call GroupEnumUnitsInRange(g,x,y,325,Condition(function CA1))
call GroupAddGroup(g,PR2)
call GroupClear(g)
set i=i+1
endloop
set E9I=x0
set EAI=y0
set EBI=x
set ECI=y
call ForGroup(PR2,function RW3)
call NSI(PR2)
call NSI(g)
set t=null
set P7I=null
return false
endfunction
function RK3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real a=(LoadReal(LY,(S5I),(137)))
local real x0=(LoadReal(LY,(S5I),(282)))
local real y0=(LoadReal(LY,(S5I),(283)))
local real a0
local real RL3
local real RM3
local real RN3
local real RS3
local real RT3
local real RR3
local real RP3
local real RQ3
local real RU3
local real P03
local real PI3
local real P13
local real x
local real y
local ubersplat AR1
local integer NPI=GetTriggerEvalCount(t)
local integer MKO=(LoadInteger(LY,(S5I),(34)))
set x=x0+200*NPI*Cos(a)
set y=y0+200*NPI*Sin(a)
set AR1=CreateUbersplat(x,y,"THNE",255,255,255,255,false,false)
call SetUbersplatRenderAlways(AR1,true)
set RL3=x+250*Cos(bj_DEGTORAD*(a*bj_RADTODEG-45))
set RM3=y+250*Sin(bj_DEGTORAD*(a*bj_RADTODEG-45))
set RN3=x+250*Cos(bj_DEGTORAD*(a*bj_RADTODEG+45))
set RS3=y+250*Sin(bj_DEGTORAD*(a*bj_RADTODEG+45))
set RT3=x-125*Cos(bj_DEGTORAD*(a*bj_RADTODEG-45))
set RR3=y-125*Sin(bj_DEGTORAD*(a*bj_RADTODEG-45))
set RP3=x-125*Cos(bj_DEGTORAD*(a*bj_RADTODEG+45))
set RQ3=y-125*Sin(bj_DEGTORAD*(a*bj_RADTODEG+45))
set RU3=x
set P03=y
set PI3=x
set P13=y
call I41(GetOwningPlayer(P7I),4,x,y,500)
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",RL3,RM3))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",RN3,RS3))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",RT3,RR3))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",RP3,RQ3))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",RU3,P03))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",PI3,P13))
if GetTriggerEvalCount(t)>MKO then
set x0=(LoadReal(LY,(S5I),(282)))
set y0=(LoadReal(LY,(S5I),(283)))
set a0=(LoadReal(LY,(S5I),(341)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,false)
call TriggerAddCondition(t,Condition(function RY3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(282),((x0)*1.0))
call SaveReal(LY,(S5I),(283),((y0)*1.0))
call SaveReal(LY,(S5I),(341),((a0)*1.0))
call SaveInteger(LY,(S5I),(34),(MKO))
endif
set t=null
set P7I=null
return false
endfunction
function PO3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local real d=QNI(x,y,GetUnitX(P7I),GetUnitY(P7I))
local integer MKO=11
call TriggerRegisterTimerEvent(t,0.22,true)
call TriggerAddCondition(t,Condition(function RK3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(282),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(283),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(341),((a)*1.0))
call SaveInteger(LY,(S5I),(34),(MKO))
set t=null
set P7I=null
endfunction
function P23 takes nothing returns boolean
if GetSpellAbilityId()==1093746993 or GetSpellAbilityId()==1093818952 then
call PO3()
endif
return false
endfunction
function TR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function P23))
set t=null
endfunction
function P33 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1093815881)
call UnitAddAbility(P7I,1093815881)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function P43 takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function P33))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
endfunction
function P53 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call G21(P7I,0)
set t=null
set P7I=null
return false
endfunction
function P63 takes unit P7I,unit IYO,unit P73,integer P83,integer P93 returns nothing
local trigger t
local integer S5I
local unit I01
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",IYO,"chest"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",P7I,"chest"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",P7I,"origin"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",P7I,"hand,left"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",P7I,"hand,right"))
call ShowUnit(IYO,false)
call KillUnit(IYO)
call KillUnit(P73)
call SaveInteger(LY,(GetHandleId((P7I))),((4270)),(2))
if P93>0 or P83>0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,9.1,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function P53))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093748537)
call SetUnitAbilityLevel(I01,1093748537,P93)
call IssueTargetOrder(I01,"bloodlust",P7I)
call G21(P7I,P83)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\RadianceHands.mdx",P7I,"weapon")))
endif
set t=null
set I01=null
endfunction
function PA3 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),EDI)==false then
if IsUnitIllusion(GetEnumUnit())==false then
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
set EHI=EHI+(EGI*10)
set EZI=EZI+5
else
set EHI=EHI+(EGI*3)
set EZI=EZI+1
endif
endif
call GroupAddUnit(EDI,GetEnumUnit())
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",GetEnumUnit(),"chest"))
set EWI=true
set EXI=true
call P6I(EEI,GetEnumUnit(),1,EFI)
set EWI=false
set EXI=false
endif
endfunction
function PB3 takes real PC3,real PD3,real PE3,real PF3,real PG3,real PH3 returns real
local real PZ3
local real PV3
local real PW3
local real PX3
local real PY3
local real PJ3
local real PK3
local real REFLECTED_SCALED_V_X
local real REFLECTED_SCALED_V_Y
local real PL3
local real PM3
local real PN3
local real PS3
local real PT3
local real PR3
local real PP3
local real PQ3
set PN3=PE3-PG3
set PS3=PF3-PH3
set PT3=-1*PS3
set PR3=PN3
set PP3=SquareRoot(PT3*PT3+PR3*PR3)
set PT3=PT3/PP3
set PR3=PR3/PP3
set PZ3=PC3-PE3
set PV3=PD3-PF3
set PW3=SquareRoot(PZ3*PZ3+PV3*PV3)
set PX3=PZ3/PW3
set PY3=PV3/PW3
set PQ3=PZ3*PT3+PV3*PR3
set PJ3=-1*PC3+2*PE3+2*PT3*PQ3
set PK3=-1*PD3+2*PF3+2*PR3*PQ3
set PL3=PG3+PE3-PJ3
set PM3=PH3+PF3-PK3
return PL3
endfunction
function PU3 takes real PC3,real PD3,real PE3,real PF3,real PG3,real PH3 returns real
local real PZ3
local real PV3
local real PW3
local real PX3
local real PY3
local real PJ3
local real PK3
local real REFLECTED_SCALED_V_X
local real REFLECTED_SCALED_V_Y
local real PL3
local real PM3
local real PN3
local real PS3
local real PT3
local real PR3
local real PP3
local real PQ3
set PN3=PE3-PG3
set PS3=PF3-PH3
set PT3=-1*PS3
set PR3=PN3
set PP3=SquareRoot(PT3*PT3+PR3*PR3)
set PT3=PT3/PP3
set PR3=PR3/PP3
set PZ3=PC3-PE3
set PV3=PD3-PF3
set PW3=SquareRoot(PZ3*PZ3+PV3*PV3)
set PX3=PZ3/PW3
set PY3=PV3/PW3
set PQ3=PZ3*PT3+PV3*PR3
set PJ3=-1*PC3+2*PE3+2*PT3*PQ3
set PK3=-1*PD3+2*PF3+2*PR3*PQ3
set PL3=PG3+PE3-PJ3
set PM3=PH3+PF3-PK3
return PM3
endfunction
function Q03 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IYO=(LoadUnitHandle(LY,(S5I),(335)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real x0=(LoadReal(LY,(S5I),(282)))
local real y0=(LoadReal(LY,(S5I),(283)))
local real x1=GetUnitX(P7I)
local real y1=GetUnitY(P7I)
local real x2=GetUnitX(IYO)
local real y2=GetUnitY(IYO)
local real x3
local real y3
local real a
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
local real d
local integer SUI=GetUnitAbilityLevel(P7I,1093747000)
local real QI3=(LoadReal(LY,(S5I),(342)))
local real GW1=(TimerGetElapsed(M))
call SetUnitX(I01,GetUnitX(IYO))
call SetUnitY(I01,GetUnitY(IYO))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(IYO,false)
call KillUnit(IYO)
call KillUnit(I01)
call SaveInteger(LY,(GetHandleId((P7I))),((4270)),(2))
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093747000 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093747000,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815881,false)
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093815881 then
call IssueImmediateOrder(IYO,"stop")
call SaveBoolean(LY,(S5I),(249),(true))
call SetUnitAnimationByIndex(IYO,3)
call P43(GetTriggerUnit())
elseif GetSpellAbilityId()==1093815371 then
if IssueImmediateOrder(P7I,"charm")then
call UnitRemoveAbility(IYO,1093815371)
endif
endif
elseif QNI(x1,y1,x2,y2)<100 then
call P63(P7I,IYO,I01,(LoadInteger(LY,(S5I),(344))),(LoadInteger(LY,(S5I),(345))))
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093747000 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093747000,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815881,false)
elseif GetTriggerEvalCount(t)>400 or(LoadBoolean(LY,(S5I),(249)))==true then
call IA1(IYO,1097625443)
if GetTriggerEvalCount(t)==401 and(LoadBoolean(LY,(S5I),(249)))==false then
call IssueImmediateOrder(IYO,"stop")
call SetUnitAnimationByIndex(IYO,3)
endif
set g=NTI()
set EGI=SUI
set EHI=(LoadInteger(LY,(S5I),(344)))
set EZI=(LoadInteger(LY,(S5I),(345)))
set EFI=30+30*SUI
set EEI=P7I
set GK=P7I
set EDI=PR2
call GroupEnumUnitsInRange(g,GetUnitX(IYO),GetUnitY(IYO),300,Condition(function CA1))
call ForGroup(g,function PA3)
call NSI(g)
set g=null
call SaveInteger(LY,(S5I),(344),(EHI))
call SaveInteger(LY,(S5I),(345),(EZI))
if((LoadInteger(LY,(GetHandleId((P7I))),((4269))))==1)==false then
set a=Atan2(y1-y2,x1-x2)
call SetUnitFacing(IYO,a*bj_RADTODEG)
set x3=GetUnitX(IYO)+12*Cos(a)
set y3=GetUnitY(IYO)+12*Sin(a)
call SetUnitX(IYO,PTI(x3))
call SetUnitY(IYO,PUI(y3))
call SaveReal(LY,(S5I),(282),((x1)*1.0))
call SaveReal(LY,(S5I),(283),((y1)*1.0))
endif
else
call SetUnitMoveSpeed(IYO,GetUnitMoveSpeed(P7I))
call UnitRemoveAbility(IYO,1097625443)
set g=NTI()
set EGI=SUI
set EHI=(LoadInteger(LY,(S5I),(344)))
set EZI=(LoadInteger(LY,(S5I),(345)))
set EFI=30+30*SUI
set EEI=P7I
set GK=P7I
set EDI=PR2
call GroupEnumUnitsInRange(g,GetUnitX(IYO),GetUnitY(IYO),300,Condition(function CA1))
call ForGroup(g,function PA3)
call NSI(g)
set g=null
call SaveInteger(LY,(S5I),(344),(EHI))
call SaveInteger(LY,(S5I),(345),(EZI))
if x0!=x1 or y0!=y1 then
set QI3=GW1
call SaveReal(LY,(S5I),(342),((QI3)*1.0))
endif
if((LoadInteger(LY,(GetHandleId((P7I))),((4269))))==1)==false then
if QI3==GW1 then
set x3=PB3(x0,y0,x1,y1,x2,y2)
set y3=PU3(x0,y0,x1,y1,x2,y2)
set a=Atan2(y3-y2,x3-x2)*bj_RADTODEG
call SaveReal(LY,(S5I),(282),((x1)*1.0))
call SaveReal(LY,(S5I),(283),((y1)*1.0))
endif
if(QI3+0.3)<GW1 then
call SaveInteger(LY,(S5I),(343),(1))
elseif(QI3+0.3)>GW1 and(LoadInteger(LY,(S5I),(343)))==1 then
call SaveInteger(LY,(S5I),(343),(2))
elseif(LoadInteger(LY,(S5I),(343)))==3 then
call SaveInteger(LY,(S5I),(343),(1))
endif
else
call SaveInteger(LY,(S5I),(343),(3))
endif
endif
set t=null
set P7I=null
set IYO=null
set PR2=null
set I01=null
return false
endfunction
function Q13 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x0=GetUnitX(P7I)
local real y0=GetUnitY(P7I)
local location l=GetSpellTargetLoc()
local real lx=GetLocationX(l)
local real ly=GetLocationY(l)
local real a=Atan2(ly-y0,lx-x0)
local real d=QDI(QNI(x0,y0,lx,ly),300)
local real x1=PTI(x0+d*Cos(a))
local real y1=PUI(y0+d*Sin(a))
local unit IYO=CreateUnit(GetOwningPlayer(P7I),1747990357,x1,y1,(a*bj_RADTODEG)-180)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429572,x1,y1,(a*bj_RADTODEG)-180)
call SetUnitMoveSpeed(IYO,GetUnitMoveSpeed(P7I))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",IYO,"chest"))
if GetUnitAbilityLevel(P7I,1093747524)>0 then
call IA1(IYO,1093747537)
endif
if GetUnitAbilityLevel(P7I,1093747009)==0 then
call UnitRemoveAbility(IYO,1093815371)
endif
call UnitAddAbility(P7I,1093815881)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093747000,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815881,true)
call RemoveLocation(l)
set EVI[GetPlayerId(GetOwningPlayer(P7I))]=IYO
call SaveInteger(LY,(GetHandleId((P7I))),((4270)),(1))
call IA1(IYO,1098282348)
call IA1(IYO,1097167980)
if(LoadBoolean(LY,(GetHandleId(P7I)),(339)))==true then
call TriggerEvaluate((LoadTriggerHandle(LY,(S5I),(338))))
endif
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,IYO,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Q03))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(335),(IYO))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(282),((x0)*1.0))
call SaveReal(LY,(S5I),(283),((y0)*1.0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call SaveInteger(LY,(S5I),(343),(2))
call SaveReal(LY,(S5I),(342),(((TimerGetElapsed(M))-5)*1.0))
call SaveBoolean(LY,(S5I),(249),(false))
set t=null
set P7I=null
set IYO=null
set I01=null
endfunction
function QO3 takes nothing returns boolean
if GetSpellAbilityId()==1093747000 then
call Q13()
endif
return false
endfunction
function TP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QO3))
call Q1I(1093748537)
set t=null
endfunction
function Q23 takes nothing returns nothing
local unit P8I=GetOrderTargetUnit()
local real x
local real y
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER then
set x=GetUnitX(GetOrderTargetUnit())
set y=GetUnitY(GetOrderTargetUnit())
else
set x=GetOrderPointX()
set y=GetOrderPointY()
endif
if QNI(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),x,y)<700 then
call IO1(ZE,x,y)
endif
endfunction
function Q33 takes nothing returns boolean
if GetIssuedOrderId()==852040 then
call Q23()
endif
return false
endfunction
function Q43 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(t,GetOwningPlayer(GetTriggerUnit()),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER,Condition(function ULI))
call TriggerRegisterPlayerUnitEvent(t,GetOwningPlayer(GetTriggerUnit()),EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,Condition(function ULI))
call TriggerAddCondition(t,Condition(function Q33))
set t=null
endfunction
function Q53 takes nothing returns boolean
if GetLearnedSkill()==1093678658 and GetUnitAbilityLevel(GetTriggerUnit(),1093678658)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call Q43()
endif
return false
endfunction
function JC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function Q53))
set t=null
endfunction
function Q63 takes nothing returns boolean
return(GetLearnedSkill()==1093681483 or GetLearnedSkill()==1093748313)and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function Q73 takes nothing returns nothing
if(GetUnitAbilityLevel(GetTriggerUnit(),1093681483)==1 or GetUnitAbilityLevel(GetTriggerUnit(),1093748313)==1)then
call IA1(GetTriggerUnit(),1093752646)
endif
endfunction
function J91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function Q63))
call TriggerAddAction(t,function Q73)
endfunction
function Q83 takes nothing returns boolean
if(GetSpellAbilityId()==1093681485 or GetSpellAbilityId()==1093681459 or GetSpellAbilityId()==1093681460 or GetSpellAbilityId()==1093677652 or GetSpellAbilityId()==1093748314 or GetSpellAbilityId()==1093752646)then
return true
elseif GetSpellAbilityId()==1093681483 or GetSpellAbilityId()==1093748313 then
if GetUnitAbilityLevel(GetTriggerUnit(),1093752646)==0 then
call IA1(GetTriggerUnit(),1093752646)
endif
endif
return false
endfunction
function Q93 takes nothing returns boolean
if(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==true)then
if(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)then
if(GetUnitAbilityLevelSwapped(1093678162,GetFilterUnit())==0)then
return true
endif
endif
endif
return false
endfunction
function QA3 takes nothing returns nothing
call IssueImmediateOrder(GetEnumUnit(),"locustswarm")
endfunction
function QB3 takes nothing returns nothing
call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),300.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction
function QC3 takes nothing returns nothing
call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),450.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction
function QD3 takes nothing returns nothing
call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),600.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction
function QE3 takes nothing returns nothing
call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),750.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE)
endfunction
function QF3 takes nothing returns boolean
return GetOwningPlayer(GetFilterUnit())==EKI and GetUnitTypeId(GetFilterUnit())==EJI and IC1(GetFilterUnit())==false
endfunction
function QG3 takes player p,integer RII,real x,real y returns nothing
local group g=NTI()
set EKI=p
set EJI=RII
call GroupEnumUnitsInRange(g,x,y,716,Condition(function QF3))
call ForGroup(g,function QA3)
call NSI(g)
set g=null
endfunction
function QH3 takes nothing returns nothing
local real x=GetUnitX(GetTriggerUnit())
local real y=GetUnitY(GetTriggerUnit())
local group Z51
call DisableTrigger(EYI)
set VN=true
if(GetSpellAbilityId()==1093681485)then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
call I41(GetOwningPlayer(GetTriggerUnit()),3,x,y,500)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QB3)
call RemoveUnit(GetTriggerUnit())
call NSI(Z51)
endif
if(GetSpellAbilityId()==1093681459)then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
call I41(GetOwningPlayer(GetTriggerUnit()),3,x,y,500)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QC3)
call RemoveUnit(GetTriggerUnit())
call NSI(Z51)
endif
if(GetSpellAbilityId()==1093681460)then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
call I41(GetOwningPlayer(GetTriggerUnit()),3,x,y,500)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QD3)
call RemoveUnit(GetTriggerUnit())
call NSI(Z51)
endif
if(GetSpellAbilityId()==1093748314)then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
call I41(GetOwningPlayer(GetTriggerUnit()),3,x,y,500)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QE3)
call RemoveUnit(GetTriggerUnit())
call NSI(Z51)
endif
if(GetSpellAbilityId()==1093677652)then
set Z51=NTI()
set bj_groupEnumTypeId=1865429304
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
call ForGroup(Z51,function QA3)
call NSI(Z51)
set Z51=NTI()
set bj_groupEnumTypeId=1865429042
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
call ForGroup(Z51,function QA3)
call NSI(Z51)
set Z51=NTI()
set bj_groupEnumTypeId=1865429058
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
call ForGroup(Z51,function QA3)
call NSI(Z51)
set Z51=NTI()
set bj_groupEnumTypeId=1865429314
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
call ForGroup(Z51,function QA3)
call NSI(Z51)
endif
if(GetSpellAbilityId()==1093752646)then
set x=GetSpellTargetX()
set y=GetSpellTargetY()
call QG3(GetOwningPlayer(GetTriggerUnit()),1865429304,x,y)
call QG3(GetOwningPlayer(GetTriggerUnit()),1865429042,x,y)
call QG3(GetOwningPlayer(GetTriggerUnit()),1865429058,x,y)
call QG3(GetOwningPlayer(GetTriggerUnit()),1865429314,x,y)
endif
set VN=false
call EnableTrigger(EYI)
endfunction
function QZ3 takes nothing returns nothing
local integer id=GetUnitTypeId(GetTriggerUnit())
local real x=GetUnitX(GetTriggerUnit())
local real y=GetUnitY(GetTriggerUnit())
local group Z51
if id==1865429304 then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QB3)
call NSI(Z51)
endif
if id==1865429042 then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QC3)
call NSI(Z51)
endif
if id==1865429058 then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QD3)
call NSI(Z51)
endif
if id==1865429314 then
call U7I("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",x,y,5)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,450,Condition(function Q93))
call ForGroup(Z51,function QE3)
call NSI(Z51)
endif
endfunction
function QV3 takes nothing returns boolean
local integer id=GetUnitTypeId(GetTriggerUnit())
if id==1865429304 or id==1865429042 or id==1865429058 or id==1865429314 then
call QZ3()
endif
return false
endfunction
function JA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddAction(t,function QH3)
call TriggerAddCondition(t,Condition(function Q83))
call AM1("Units\\Creeps\\GoblinSapper\\GoblinSapperYesAttack1.wav")
set EYI=CreateTrigger()
call UMI(EYI,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(EYI,Condition(function QV3))
endfunction
function QW3 takes nothing returns nothing
local real QWI=QLI(EMI,GetEnumUnit())
local real PAI=ENI
local real QX3=225
if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==true then
set QX3=440
endif
if QWI>QX3 then
set PAI=PAI/2
endif
call P6I(EMI,GetEnumUnit(),2,PAI)
endfunction
function QY3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit QJ3=(LoadUnitHandle(LY,(S5I),(347)))
local group g=NTI()
local integer SUI=(LoadInteger(LY,(S5I),(5)))
set GK=QJ3
set EMI=QJ3
set ENI=225+75*SUI
call GroupEnumUnitsInRange(g,GetUnitX(QJ3),GetUnitY(QJ3),500+25,Condition(function CV1))
call ForGroup(g,function QW3)
call NSI(g)
set t=null
set QJ3=null
set g=null
return false
endfunction
function QK3 takes nothing returns boolean
if GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0.5 and(GetUnitTypeId(GetFilterUnit())==1848651855 or GetUnitTypeId(GetFilterUnit())==1848651856 or GetUnitTypeId(GetFilterUnit())==1848651857 or GetUnitTypeId(GetFilterUnit())==1848651854)then
set ELI=ELI+1
endif
return false
endfunction
function QL3 takes nothing returns boolean
local group g=NTI()
set ELI=0
call GroupEnumUnitsOfPlayer(g,GetTriggerPlayer(),Condition(function QK3))
if ELI>0 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848657475)+": "+I2S(ELI))
endif
call NSI(g)
set g=null
return false
endfunction
function QM3 takes nothing returns boolean
if((GetUnitTypeId(GetTriggerUnit())==1848651855))then
return true
endif
if((GetUnitTypeId(GetTriggerUnit())==1848651856))then
return true
endif
if((GetUnitTypeId(GetTriggerUnit())==1848651857))then
return true
endif
if((GetUnitTypeId(GetTriggerUnit())==1848651854))then
return true
endif
if GetUnitTypeId(GetTriggerUnit())==1865429304 or GetUnitTypeId(GetTriggerUnit())==1865429042 or GetUnitTypeId(GetTriggerUnit())==1865429058 or GetUnitTypeId(GetTriggerUnit())==1865429314 then
if RW0[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]then
endif
endif
return false
endfunction
function QN3 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
if((GetUnitTypeId(GetFilterUnit())==1848651855))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848651856))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848651857))then
return true
endif
if((GetUnitTypeId(GetFilterUnit())==1848651854))then
return true
endif
endif
return false
endfunction
function QS3 takes nothing returns boolean
return(GetUnitTypeId(GetFilterUnit())==1211117637 or GetUnitTypeId(GetFilterUnit())==1211117639 or GetUnitTypeId(GetFilterUnit())==1211117638 or GetUnitTypeId(GetFilterUnit())==1160786000 or GetUnitTypeId(GetFilterUnit())==1311780930 or GetUnitTypeId(GetFilterUnit())==1430468144 or GetUnitTypeId(GetFilterUnit())==1162032951 or GetUnitTypeId(GetFilterUnit())==1429221456 or GetUnitTypeId(GetFilterUnit())==1160786510 or GetUnitTypeId(GetFilterUnit())==1160786511 or GetUnitTypeId(GetFilterUnit())==1328558390 or GetUnitTypeId(GetFilterUnit())==1328558391 or GetUnitTypeId(GetFilterUnit())==1160786502 or GetUnitTypeId(GetFilterUnit())==1211122767 or GetUnitTypeId(GetFilterUnit())==1311788343 or GetUnitTypeId(GetFilterUnit())==1311788354 or GetUnitTypeId(GetFilterUnit())==1311788355 or GetUnitTypeId(GetFilterUnit())==1311788367 or GetUnitTypeId(GetFilterUnit())==1311788353 or GetUnitTypeId(GetFilterUnit())==1311788375)and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GK))
endfunction
function QT3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit QJ3=(LoadUnitHandle(LY,(S5I),(347)))
local group g
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyEffect(AddSpecialEffect("war3mapImported\\NewGroundEX.mdx",GetUnitX(QJ3),GetUnitY(QJ3)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=QJ3
call GroupEnumUnitsInRange(g,GetUnitX(QJ3),GetUnitY(QJ3),200,Condition(function QS3))
if FirstOfGroup(g)!=null then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitExploded(QJ3,true)
call KillUnit(QJ3)
endif
call NSI(g)
endif
set t=null
set QJ3=null
set g=null
return false
endfunction
function QR3 takes nothing returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(GetTriggerUnit()))
local group Z51=NTI()
local integer QP3=(LoadInteger(LY,(S5I),(346)))
local integer QQ3=0
local unit QU3
local integer UI3
local unit WH1
local integer U13
local integer TGI
local integer THI
local trigger t=CreateTrigger()
local unit SFI=K1[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
local integer SUI=GetUnitAbilityLevel(SFI,1093678410)
call GroupEnumUnitsInRect(Z51,bj_mapInitialPlayableArea,Condition(function QN3))
call TriggerRegisterTimerEvent(t,0.4,true)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function QT3))
call SaveUnitHandle(LY,(GetHandleId(t)),(347),(GetTriggerUnit()))
set QP3=(QP3+1)
call StartTimerBJ((LoadTimerHandle(LY,(S5I),(1500+QP3))),false,15000.00)
call SaveUnitHandle(LY,(S5I),(1600+QP3),(GetTriggerUnit()))
set QQ3=CountUnitsInGroup(Z51)
if(QQ3>20)then
set UI3=99999
set TGI=1
set THI=QP3
loop
exitwhen TGI>THI
set WH1=(LoadUnitHandle(LY,(S5I),(1600+TGI)))
set U13=R2I(TimerGetRemaining((LoadTimerHandle(LY,(S5I),(1500+TGI)))))
if(GetUnitState(WH1,UNIT_STATE_LIFE)>0 and U13<UI3)then
set QU3=WH1
set UI3=U13
endif
set TGI=TGI+1
endloop
call ExplodeUnitBJ(QU3)
endif
call SaveInteger(LY,(S5I),(346),(QP3))
call NSI(Z51)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function QY3))
call SaveUnitHandle(LY,(S5I),(347),(GetTriggerUnit()))
call SaveInteger(LY,(S5I),(5),(SUI))
endfunction
function JB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-stats",true)
call TriggerRegisterPlayerChatEvent(t,BO[1],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-st",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-st",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-st",true)
call TriggerAddCondition(t,Condition(function QL3))
set t=CreateTrigger()
call TriggerRegisterEnterRectSimple(t,GetWorldBounds())
call TriggerAddCondition(t,Condition(function QM3))
call TriggerAddAction(t,function QR3)
set t=null
endfunction
function UO3 takes nothing returns nothing
local real QWI=QLI(ESI,GetEnumUnit())
local real PAI=ETI
if QWI>225 then
set PAI=ERI
endif
call P6I(ESI,GetEnumUnit(),2,PAI)
endfunction
function U23 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093678658)
local real U33
local real U43
local group g=NTI()
if SUI==1 then
set U33=500
set U43=260
elseif SUI==2 then
set U33=650
set U43=300
elseif SUI==3 then
set U33=850
set U43=340
elseif SUI==4 then
set U33=1150
set U43=380
endif
set ETI=U33
set ERI=U43
set GK=P7I
set ESI=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),525,Condition(function CA1))
call ForGroup(g,function UO3)
call NSI(g)
set g=null
set P7I=null
endfunction
function U53 takes nothing returns boolean
if GetSpellAbilityId()==1093678658 then
call U23()
endif
return false
endfunction
function JD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function U53))
set t=null
endfunction
function U63 takes nothing returns boolean
return GetSpellAbilityId()==1093678645
endfunction
function U73 takes nothing returns nothing
local integer i=0
local unit SFI=GetTriggerUnit()
local item HLO
local integer E81
loop
exitwhen i>5
set HLO=UnitItemInSlot(SFI,i)
set E81=F01(HLO)
if E81==GK0 then
call DisableTrigger(LY0)
set JK=GetItemPlayer(HLO)
call RemoveItem(HLO)
set VK=FD1(SFI,FR0[GJ0],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
set i=i+1
endloop
set SFI=null
set HLO=null
endfunction
function U83 takes nothing returns nothing
local integer TGI=0
local integer THI=5
local integer array U93
local player array UA3
local integer E81
local item FH1
call SaveReal(LY,(GetHandleId(GetTriggerUnit())),(785),((0)*1.0))
call U73()
set U93[0]=0
set U93[1]=0
set U93[2]=0
set U93[3]=0
set U93[4]=0
set U93[5]=0
call DisableTrigger(LY0)
loop
exitwhen TGI>THI
set E81=F01(UnitItemInSlot(GetTriggerUnit(),TGI))
if E81==VZ0 or E81==VV0 or E81==VW0 or E81==VX0 or E81==VY0 or E81==VJ0 or E81==V80 or E81==W00 or E81==WI0 or E81==W10 or E81==ZS0 or E81==WH0 or E81==WX0 or E81==X90 then
set U93[TGI]=GetItemTypeId(UnitItemInSlot(GetTriggerUnit(),TGI))
set UA3[TGI]=GetItemPlayer(UnitItemInSlot(GetTriggerUnit(),TGI))
call RemoveItem(UnitItemInSlot(GetTriggerUnit(),TGI))
endif
set TGI=TGI+1
endloop
call UnitResetCooldown(GetTriggerUnit())
set TGI=0
set THI=5
loop
exitwhen TGI>THI
if U93[TGI]>0 then
set FH1=CreateItem(U93[TGI],0,0)
call SetItemPlayer(FH1,UA3[TGI],false)
call SetItemUserData(FH1,1)
call UnitAddItem(GetTriggerUnit(),FH1)
endif
set TGI=TGI+1
endloop
call EnableTrigger(LY0)
set FH1=null
endfunction
function JH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_FINISH)
call TriggerAddCondition(t,Condition(function U63))
call TriggerAddAction(t,function U83)
endfunction
function UB3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local integer i=0
local real a=0
local real r=0
local integer SUI=GetUnitAbilityLevel(SFI,1093681745)
call IA1(I01,1093678406)
call SetUnitAbilityLevel(I01,1093678406,SUI)
loop
exitwhen i>40
exitwhen IssuePointOrder(I01,"stampede",x+r*Cos(a),y+r*Sin(a))
set i=i+1
set a=a+0.4
set r=r+10
endloop
call RemoveLocation(l)
set SFI=null
set I01=null
set l=null
endfunction
function UC3 takes nothing returns boolean
if GetSpellAbilityId()==1093681745 then
call UB3()
endif
return false
endfunction
function JF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UC3))
set t=null
endfunction
function UD3 takes nothing returns boolean
return(GetSpellAbilityId()==1093678137 or GetSpellAbilityId()==1093818178)and NNI(GetSpellTargetUnit())==false
endfunction
function UE3 takes nothing returns nothing
call UnitDamageTarget(GetTriggerUnit(),GetSpellTargetUnit(),GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId())*80,true,false,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
endfunction
function JG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UD3))
call TriggerAddAction(t,function UE3)
endfunction
function UF3 takes nothing returns boolean
return(RKI(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GK))and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and IsHeroUnitId(GetUnitTypeId(GetFilterUnit()))
endfunction
function UG3 takes nothing returns nothing
local unit P7I=GK
local unit P8I=HK
local integer SUI=GetUnitAbilityLevel(P7I,1093678405)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093818177)
endif
call P6I(P7I,P8I,1,50+75*SUI)
set P7I=null
set P8I=null
endfunction
function UH3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=null
local group g=NTI()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local integer NPI=2
if GetUnitAbilityLevel(P7I,1093678405)==0 then
set NPI=4
endif
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,2500+25,Condition(function UF3))
loop
exitwhen FirstOfGroup(g)==null or NPI==0
set P8I=AU1(g,x,y)
set NPI=NPI-1
call GroupRemoveUnit(g,P8I)
call IJ1(P7I,P8I,1747993940,"UG3",1000,false)
endloop
call NSI(g)
set g=null
set P8I=null
set P7I=null
endfunction
function UZ3 takes nothing returns boolean
if GetSpellAbilityId()==1093678405 or GetSpellAbilityId()==1093818177 then
call UH3()
endif
return false
endfunction
function JE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UZ3))
set t=null
endfunction
function UV3 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==true then
call P6I(EPI,GetEnumUnit(),1,EQI/3)
else
call P6I(EPI,GetEnumUnit(),1,EQI)
endif
endfunction
function UW3 takes unit P7I,real x,real y,real r,real d returns nothing
local group g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,r,Condition(function CZ1))
set EPI=P7I
set EQI=d
call ForGroup(g,function UV3)
call NSI(g)
set g=null
endfunction
function UX3 takes nothing returns boolean
if((GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())))and RYI(GetFilterUnit())==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit()))then
return true
endif
return false
endfunction
function UY3 takes unit SFI returns unit
local unit P7I=null
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),275,Condition(function UX3))
call GroupRemoveUnit(g,SFI)
set P7I=GroupPickRandomUnit(g)
call NSI(g)
set GK=P7I
set P7I=null
set g=null
return GK
endfunction
function UJ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x0=(LoadReal(LY,(S5I),(282)))
local real y0=(LoadReal(LY,(S5I),(283)))
local real x1=GetUnitX(P7I)
local real y1=GetUnitY(P7I)
local real x2=0
local real y2=0
local real RM2
local real RN2
local real RS2
local real RT2
local real IV1
local real IW1
local location l
if P8I!=null then
set x2=GetUnitX(P8I)
set y2=GetUnitY(P8I)
endif
if P8I==null or QNI(x0,y0,x2,y2)>1000 then
set x2=x0
set y2=y0
endif
set RM2=UEI(x1,y1,x2,y2)
set RN2=QNI(x1,y1,x2,y2)
set RS2=RN2/IMaxBJ((65-NPI),1)
set RT2=(NPI-33)*(NPI-33)
set IV1=x1+RS2*Cos(RM2*bj_DEGTORAD)
set IW1=y1+RS2*Sin(RM2*bj_DEGTORAD)
if NPI<65 then
if RNI(P7I)==false then
call SetUnitFlyHeight(P7I,775-RT2,0)
endif
call SetUnitPosition(P7I,IV1,IW1)
else
if RNI(P7I)==false then
call SetUnitFlyHeight(P7I,GetUnitDefaultFlyHeight(P7I),0)
endif
call PauseUnit(P7I,false)
call SetUnitPathing(P7I,true)
call SetUnitPosition(P7I,x2,y2)
call SaveInteger(LY,(GetHandleId((P7I))),((4268)),(2))
set l=Location(x2,y2)
call TerrainDeformationRippleBJ(0.2,true,l,1.00,300.00,96.00,1,64.00)
call RemoveLocation(l)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl",GetUnitX(P7I),GetUnitY(P7I)))
if IsUnitAlly(P7I,GetOwningPlayer(SFI))then
else
if(ES1((SFI),FR0[KJ0])!=null)then
call P6I(SFI,P7I,1,(0.2+0.15*(GetUnitAbilityLevel(SFI,1093682009)+1))*75*GetUnitAbilityLevel(SFI,1093681754))
else
call P6I(SFI,P7I,1,(0.2+0.15*GetUnitAbilityLevel(SFI,1093682009))*75*GetUnitAbilityLevel(SFI,1093681754))
endif
endif
call UPI(x2,y2,300)
call UW3(SFI,x2,y2,300,75*GetUnitAbilityLevel(SFI,1093681754))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
set P7I=null
set P8I=null
set l=null
return false
endfunction
function UK3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P7I=EUI
local unit P8I
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x
local real y
call SetUnitAnimationByIndex(SFI,4)
call PauseUnit(P7I,true)
call SetUnitPathing(P7I,false)
if RNI(P7I)==false then
call IA1(P7I,1097691750)
call UnitRemoveAbility(P7I,1097691750)
endif
call SaveInteger(LY,(GetHandleId((P7I))),((4268)),(1))
if GetSpellTargetItem()==null then
set P8I=GetSpellTargetUnit()
set x=GetUnitX(P8I)
set y=GetUnitY(P8I)
else
set x=GetItemX(GetSpellTargetItem())
set y=GetItemY(GetSpellTargetItem())
set P8I=null
endif
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",P7I,"origin")))
call SaveReal(LY,(S5I),(282),((x)*1.0))
call SaveReal(LY,(S5I),(283),((y)*1.0))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function UJ3))
set SFI=null
set P7I=null
set P8I=null
set t=null
endfunction
function UL3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P7I=UY3(SFI)
local unit P8I=GetSpellTargetUnit()
if GetSpellTargetItem()!=null and C8O(GetItemTypeId(GetSpellTargetItem()))==false then
call PJI(SFI)
call PZI(GetOwningPlayer(SFI),GetObjectName(1848659507))
endif
set EUI=P7I
if P7I==null then
call PJI(SFI)
call PZI(GetOwningPlayer(SFI),GetObjectName(1848656961))
elseif GetOwningPlayer(P8I)==GetOwningPlayer(SFI)then
call PJI(SFI)
call PZI(GetOwningPlayer(SFI),GetObjectName(1848656729))
endif
set SFI=null
set P7I=null
set P8I=null
endfunction
function UM3 takes nothing returns boolean
if GetSpellAbilityId()==1093681754 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
call UL3()
else
call UK3()
endif
endif
return false
endfunction
function JW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UM3))
set t=null
endfunction
function UN3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
call BI1(1093815115)
endfunction
function US3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer UT3=(LoadInteger(LY,(S5I),(375)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and GetEventDamage()>20 then
set NPI=(LoadInteger(LY,(GetHandleId(P7I)),(674)))
if((LoadInteger(LY,(GetHandleId((P7I))),((4297))))==1)==false then
call SCI(P7I,4297,0.1)
call SaveInteger(LY,(GetHandleId(P7I)),(674),(NPI+1))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function UR3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local trigger t2
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(GetHandleId(P7I)),(674)))
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and NPI<6 then
if GetAttacker()==P7I and((LoadInteger(LY,(GetHandleId((P7I))),((4297))))==1)==false then
set t2=CreateTrigger()
call TriggerRegisterUnitEvent(t2,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t2,1,false)
call TriggerAddCondition(t2,Condition(function US3))
call SaveUnitHandle(LY,(GetHandleId(t2)),(2),(P7I))
endif
endif
if NPI>5 then
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(674),(0))
call UnitRemoveAbility(P7I,1093752625)
if(LoadInteger(LY,(S5I),(34)))==1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
call SaveInteger(LY,(S5I),(34),(1))
if NPI>5 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call UnitRemoveAbility(P7I,1093752391)
if(ES1((P7I),FR0[KJ0])!=null)then
call IA1(P7I,1093752392)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093752392,true)
endif
set t=null
set P7I=null
return false
endfunction
function WarClub_Animation takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEvalCount(t)==1 then
call SetUnitTimeScalePercent(P7I,250)
else
call SetUnitTimeScalePercent(P7I,100)
call SetUnitAnimationByIndex(P7I,12)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
return false
endfunction
function UP3 takes nothing returns boolean
local trigger t
if GetSpellAbilityId()==1093752392 then
call SCI(GetTriggerUnit(),4296,29.9)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093752392,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093752391,true)
call IA1(GetTriggerUnit(),1093752391)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093752625,false)
call IA1(GetTriggerUnit(),1093752625)
call IssueTargetOrder(GetTriggerUnit(),"grabtree",GetSpellTargetDestructable())
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,30,false)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function UR3))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(GetTriggerUnit()))
call SaveInteger(LY,(GetHandleId(t)),(34),(0))
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(674),(0))
set t=null
elseif GetSpellAbilityId()==1093815105 then
call RemoveDestructable(GetSpellTargetDestructable())
call ShowUnit(GetTriggerUnit(),false)
call ShowUnit(GetTriggerUnit(),true)
call UnitRemoveAbility(GetTriggerUnit(),1097625443)
call UnitAddAbility(GetTriggerUnit(),1093815106)
call UnitRemoveAbility(GetTriggerUnit(),1093815106)
call UnitAddAbility(GetTriggerUnit(),1093815107)
call UnitRemoveAbility(GetTriggerUnit(),1093815107)
call AddUnitAnimationProperties(GetTriggerUnit(),"upgrade",false)
endif
return false
endfunction
function WarClub_Scan takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if(ES1((P7I),FR0[KJ0])!=null)then
if((LoadInteger(LY,(GetHandleId((P7I))),((4296))))==1)==false then
if GetUnitAbilityLevel(P7I,1093752392)==0 and GetUnitAbilityLevel(P7I,1093752391)==0 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093752392,true)
call IA1(P7I,1093752392)
endif
endif
else
call UnitRemoveAbility(P7I,1093752392)
call UnitRemoveAbility(P7I,1093752391)
endif
set t=null
return false
endfunction
function GX2 takes nothing returns nothing
local unit P7I=XM
local unit P8I=YM
local unit I01=(LoadUnitHandle(LY,(GetHandleId(P7I)),(297)))
call SaveUnitHandle(LY,(GetHandleId(P8I)),(297),(I01))
call SetUnitOwner(I01,GetOwningPlayer(P8I),true)
set P7I=null
set P8I=null
set I01=null
endfunction
function AVO takes nothing returns nothing
local unit SFI=NK
local unit I01=(LoadUnitHandle(LY,(GetHandleId(SFI)),(297)))
if I01!=null and GetUnitTypeId(I01)==1697657174 then
call RemoveUnit(I01)
endif
endfunction
function UQ3 takes nothing returns boolean
return GetLearnedSkill()==1093682009 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function UU3 takes nothing returns nothing
local unit I04=(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(298)))
local integer SUI=GetUnitAbilityLevel(I04,1093682009)
if GetUnitState(I04,UNIT_STATE_LIFE)>1 then
call SetUnitScale(I04,0.5+0.25*SUI,0.5+0.25*SUI,0.5+0.25*SUI)
endif
endfunction
function II4 takes nothing returns boolean
local integer SUI
if IsUnitIllusion(GetTriggerUnit())and(GetUnitTypeId(GetTriggerUnit())==1432580716 or GetUnitTypeId(GetTriggerUnit())==1429221720)then
set SUI=GetUnitAbilityLevel((LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(298))),1093682009)
call SetUnitScale(GetTriggerUnit(),0.5+0.25*SUI,0.5+0.25*SUI,0.5+0.25*SUI)
endif
return false
endfunction
function I14 takes nothing returns nothing
local trigger t
local unit I04=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(I04,1093682009)
local unit I01
local unit SFI=GetTriggerUnit()
local region S5O
if SUI==1 then
set I01=CreateUnit(GetOwningPlayer(SFI),1697657174,0,0,0)
call IA1(I01,1093742658)
call SaveUnitHandle(LY,(GetHandleId(SFI)),(297),(I01))
else
set I01=(LoadUnitHandle(LY,(GetHandleId(SFI)),(297)))
endif
if SUI==2 then
call UnitRemoveAbility(I01,1093742658)
call IA1(I01,1093742657)
elseif SUI==3 then
call UnitRemoveAbility(I01,1093742658)
call UnitRemoveAbility(I01,1093742657)
call IA1(I01,1093687891)
endif
call SetPlayerTechResearched(GetOwningPlayer(I04),1378889797,SUI)
if SUI==1 then
set t=CreateTrigger()
call TriggerAddAction(t,function UU3)
call TriggerRegisterTimerEvent(t,2.00,true)
call SaveUnitHandle(LY,(GetHandleId(t)),(298),(I04))
call SetUnitScale(I04,0.5+0.25*SUI,0.5+0.25*SUI,0.5+0.25*SUI)
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,GetWorldBounds())
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function II4))
call SaveUnitHandle(LY,(GetHandleId(t)),(298),(I04))
set t=null
set S5O=null
set t=CreateTrigger()
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(I04))
call TriggerRegisterTimerEvent(t,0.5,true)
set t=null
endif
set SFI=null
set I01=null
endfunction
function JZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function UQ3))
call TriggerAddAction(t,function I14)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UP3))
call UN3()
set t=null
endfunction
function IO4 takes nothing returns boolean
local unit P7I=GetTriggerUnit()
local unit P8I=GetAttacker()
local integer SUI=GetUnitAbilityLevel(P7I,1093744977)
local unit I01
if GetRandomInt(1,100)<=(5+SUI*5)and QLI(P7I,P8I)<325 then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093681750)
call SetUnitAbilityLevel(I01,1093681750,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
set I01=null
endif
set P7I=null
set P8I=null
return false
endfunction
function I24 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P7I=GetTriggerUnit()
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function IO4))
set t=null
set P7I=null
endfunction
function I34 takes nothing returns boolean
if GetLearnedSkill()==1093744977 and GetUnitAbilityLevel(GetTriggerUnit(),1093744977)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call I24()
endif
return false
endfunction
function JX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function I34))
set t=null
endfunction
function I44 takes nothing returns boolean
if((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((4268))))==1)and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(F0I))==true then
call P6I(F0I,GetFilterUnit(),1,FII)
endif
return false
endfunction
function I54 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,x,y,0)
local integer SUI=GetUnitAbilityLevel(SFI,1093684300)
local group g=NTI()
call IA1(I01,1093742666)
call SetUnitAbilityLevel(I01,1093742666,SUI)
set F0I=SFI
if SUI==1 then
set FII=25
elseif SUI==2 then
set FII=45
elseif SUI==3 then
set FII=65
elseif SUI==4 then
set FII=75
endif
call GroupEnumUnitsInRange(g,x,y,275+24,Condition(function I44))
call NSI(g)
if GetTriggerEvalCount(t)>6 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
set I01=null
set g=null
return false
endfunction
function I64 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local location l=GetSpellTargetLoc()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
local integer SUI=GetUnitAbilityLevel(SFI,1093684300)
call IA1(I01,1093742669)
call SetUnitAbilityLevel(I01,1093742669,SUI)
call IssuePointOrder(I01,"clusterrockets",GetLocationX(l),GetLocationY(l))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function I54))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((GetLocationX(l))*1.0))
call SaveReal(LY,(S5I),(7),((GetLocationY(l))*1.0))
call TriggerEvaluate(t)
call RemoveLocation(l)
set SFI=null
set l=null
set t=null
set I01=null
endfunction
function I74 takes nothing returns boolean
if GetSpellAbilityId()==1093684300 then
call I64()
endif
return false
endfunction
function JV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function I74))
set t=null
endfunction
function I84 takes nothing returns nothing
if GetEnumUnit()==GetTriggerUnit()then
call AX1(GetEnumUnit(),1093687365,FOI,F1I,1110454338)
else
call AX1(GetEnumUnit(),1093687365,FOI,F1I,1110454338)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093687365,false)
endfunction
function I94 takes nothing returns nothing
local group g=NTI()
set FOI=GetUnitAbilityLevel(GetTriggerUnit(),1093748042)
set F1I=7
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function CQ1))
call ForGroup(g,function I84)
call NSI(g)
set g=null
endfunction
function IA4 takes nothing returns boolean
if GetSpellAbilityId()==1093748042 then
call I94()
endif
return false
endfunction
function KO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IA4))
set t=null
endfunction
function IB4 takes nothing returns boolean
return GetSpellAbilityId()==1093681733
endfunction
function IC4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitAbilityLevel(P7I,1093679429,GetUnitAbilityLevel(P7I,1093681733))
call UnitRemoveAbility(P7I,1110456665)
set t=null
set P7I=null
return false
endfunction
function ID4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function IC4))
set t=null
set P7I=null
endfunction
function JU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_FINISH)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IB4))
call TriggerAddAction(t,function ID4)
endfunction
function IE4 takes nothing returns boolean
return GetLearnedSkill()==1093681733 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function IF4 takes nothing returns nothing
call SetUnitAbilityLevel(GetTriggerUnit(),1093679429,GetUnitAbilityLevel(GetTriggerUnit(),1093681733))
endfunction
function K01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function IE4))
call TriggerAddAction(t,function IF4)
endfunction
constant function BeastRage_AbilityCode takes nothing returns integer
return 1093685040
endfunction
constant function BeastRage_EffectCode takes nothing returns integer
return 1093684826
endfunction
function IG4 takes nothing returns boolean
return GetUnitAbilityLevel(GetAttacker(),(1093685040))>0 and((LoadInteger(LY,(GetHandleId((GetAttacker()))),((4271))))==1)==false
endfunction
function IH4 takes nothing returns nothing
local unit Z4O=GetAttacker()
local unit P8I=GetTriggerUnit()
local integer S5I=GetHandleId(Z4O)
local integer IZ4=(LoadInteger(LY,(S5I),(237)))
local unit IV4=NYI(IZ4)
local integer QX2=QAI((LoadInteger(LY,(S5I),(236))),0)
local integer SUI=GetUnitAbilityLevel(Z4O,(1093685040))
local integer IW4=1
if IV4!=P8I then
set QX2=1
else
set QX2=Q9I(QX2+1,1+4)
endif
if QX2>1 then
set IW4=QX2+4*(SUI-1)
endif
call Q6I(Z4O,(1093684826),IW4)
call SaveInteger(LY,(S5I),(236),(QX2))
if IV4!=P8I then
call NXI(IZ4)
set IZ4=NKI(P8I)
call SaveInteger(LY,(S5I),(237),(IZ4))
endif
call SCI(Z4O,4271,0.4)
endfunction
function KI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function IG4))
call TriggerAddAction(t,function IH4)
call Q1I((1093684826))
endfunction
function IX4 takes unit P7I,unit P8I,unit I01,integer SUI returns nothing
call SetUnitOwner(I01,GetOwningPlayer(P8I),false)
call SetUnitAbilityLevel(I01,1093808463,SUI)
call IssueTargetOrder(I01,"curse",P8I)
call P6I(P7I,P8I,1,25+50*SUI)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",P8I,"overhead"))
endfunction
function IY4 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),F5I)==false then
call GroupAddUnit(F5I,GetEnumUnit())
call IX4(F2I,GetEnumUnit(),F3I,F6I)
endif
endfunction
function IJ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit IK4=(LoadUnitHandle(LY,(S5I),(675)))
local unit IL4=(LoadUnitHandle(LY,(S5I),(676)))
local real a=(LoadReal(LY,(S5I),(13)))
local real d=(LoadReal(LY,(S5I),(433)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g=NTI()
if GetTriggerEvalCount(t)<=50 then
set a=a+20
set d=d+7
call SaveReal(LY,(S5I),(13),((a)*1.0))
call SaveReal(LY,(S5I),(433),((d)*1.0))
elseif GetTriggerEvalCount(t)<=100 then
set a=a+20
set d=d-7
call SaveReal(LY,(S5I),(13),((a)*1.0))
call SaveReal(LY,(S5I),(433),((d)*1.0))
endif
call SetUnitX(IK4,PTI(x+d*Cos(a*bj_DEGTORAD)))
call SetUnitY(IK4,PUI(y+d*Sin(a*bj_DEGTORAD)))
set a=a+180
call SetUnitX(IL4,PTI(x+d*Cos(a*bj_DEGTORAD)))
call SetUnitY(IL4,PUI(y+d*Sin(a*bj_DEGTORAD)))
set GK=P7I
set F2I=P7I
set F3I=I01
set F5I=PR2
set F6I=SUI
call GroupEnumUnitsInRange(g,GetUnitX(IK4),GetUnitY(IK4),125,Condition(function CA1))
call ForGroup(g,function IY4)
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(IL4),GetUnitY(IL4),125,Condition(function CA1))
call ForGroup(g,function IY4)
call NSI(g)
if GetTriggerEvalCount(t)>100 then
call KillUnit(IK4)
call KillUnit(IL4)
call KillUnit(I01)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set IK4=null
set IL4=null
set I01=null
return false
endfunction
function IM4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit IK4=CreateUnit(GetOwningPlayer(P7I),1697657433,x,y,0)
local unit IL4=CreateUnit(GetOwningPlayer(P7I),1697657433,x,y,0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call UnitAddAbility(I01,1093808463)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(675),(IK4))
call SaveUnitHandle(LY,(S5I),(676),(IL4))
call SaveReal(LY,(S5I),(13),((0)*1.0))
call SaveReal(LY,(S5I),(433),((0)*1.0))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(P7I,1093808462)))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function IJ4))
set P7I=null
set IK4=null
set IL4=null
set t=null
set I01=null
endfunction
function IN4 takes unit P7I,unit P8I,unit I01,integer SUI returns nothing
call SetUnitOwner(I01,GetOwningPlayer(P8I),false)
call SetUnitAbilityLevel(I01,1093808464,SUI)
call IssueTargetOrder(I01,"slow",P8I)
call P6I(P7I,P8I,1,75)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",P8I,"overhead"))
endfunction
function IS4 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),F5I)==false and F4I!=null and IC1(F4I)==false then
call GroupAddUnit(F5I,GetEnumUnit())
call IN4(F2I,GetEnumUnit(),F3I,F6I)
endif
endfunction
function IT4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit IK4=(LoadUnitHandle(LY,(S5I),(393)))
local unit IL4=(LoadUnitHandle(LY,(S5I),(394)))
local unit IR4=(LoadUnitHandle(LY,(S5I),(395)))
local unit IP4=(LoadUnitHandle(LY,(S5I),(396)))
local unit IQ4=(LoadUnitHandle(LY,(S5I),(397)))
local real a=(LoadReal(LY,(S5I),(13)))-12.5
local real d=(LoadReal(LY,(S5I),(433)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit UC2
local group g
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
set d=d+900/20.0
call SaveReal(LY,(S5I),(433),((d)*1.0))
call SetUnitX(IK4,PTI(x+d*Cos(a*bj_DEGTORAD)))
call SetUnitY(IK4,PUI(y+d*Sin(a*bj_DEGTORAD)))
set a=a+6.25
call SetUnitX(IL4,PTI(x+d*Cos(a*bj_DEGTORAD)))
call SetUnitY(IL4,PUI(y+d*Sin(a*bj_DEGTORAD)))
set a=a+6.25
call SetUnitX(IR4,PTI(x+d*Cos(a*bj_DEGTORAD)))
call SetUnitY(IR4,PUI(y+d*Sin(a*bj_DEGTORAD)))
set a=a+6.25
call SetUnitX(IP4,PTI(x+d*Cos(a*bj_DEGTORAD)))
call SetUnitY(IP4,PUI(y+d*Sin(a*bj_DEGTORAD)))
set a=a+6.25
call SetUnitX(IQ4,PTI(x+d*Cos(a*bj_DEGTORAD)))
call SetUnitY(IQ4,PUI(y+d*Sin(a*bj_DEGTORAD)))
set F2I=P7I
set F3I=I01
set F5I=PR2
set F6I=SUI
set UC2=IK4
if UC2!=null and IC1(UC2)==false then
set x=GetUnitX(UC2)
set y=GetUnitY(UC2)
set F4I=UC2
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,125,Condition(function CA1))
call ForGroup(g,function IS4)
call NSI(g)
endif
set UC2=IL4
if UC2!=null and IC1(UC2)==false then
set x=GetUnitX(UC2)
set y=GetUnitY(UC2)
set F4I=UC2
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,125,Condition(function CA1))
call ForGroup(g,function IS4)
call NSI(g)
endif
set UC2=IR4
if UC2!=null and IC1(UC2)==false then
set x=GetUnitX(UC2)
set y=GetUnitY(UC2)
set F4I=UC2
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,125,Condition(function CA1))
call ForGroup(g,function IS4)
call NSI(g)
endif
set UC2=IP4
if UC2!=null and IC1(UC2)==false then
set x=GetUnitX(UC2)
set y=GetUnitY(UC2)
set F4I=UC2
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,125,Condition(function CA1))
call ForGroup(g,function IS4)
call NSI(g)
endif
set UC2=IQ4
if UC2!=null and IC1(UC2)==false then
set x=GetUnitX(UC2)
set y=GetUnitY(UC2)
set F4I=UC2
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,125,Condition(function CA1))
call ForGroup(g,function IS4)
call NSI(g)
endif
if GetTriggerEvalCount(t)>20 then
call KillUnit(IK4)
call KillUnit(IL4)
call KillUnit(IR4)
call KillUnit(IP4)
call KillUnit(IQ4)
call KillUnit(I01)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set IK4=null
set IL4=null
set IR4=null
set IP4=null
set IQ4=null
set I01=null
return false
endfunction
function IU4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x0=GetUnitX(P7I)
local real y0=GetUnitY(P7I)
local real x1=GetSpellTargetX()
local real y1=GetSpellTargetY()
local real a=UEI(x0,y0,x1,y1)
local unit IK4=CreateUnit(GetOwningPlayer(P7I),1697657434,x0,y0,a-12.5)
local unit IL4=CreateUnit(GetOwningPlayer(P7I),1697657434,x0,y0,a-6.25)
local unit IR4=CreateUnit(GetOwningPlayer(P7I),1697657434,x0,y0,a)
local unit IP4=CreateUnit(GetOwningPlayer(P7I),1697657434,x0,y0,a+6.25)
local unit IQ4=CreateUnit(GetOwningPlayer(P7I),1697657434,x0,y0,a+12.5)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x0,y0,0)
call UnitAddAbility(I01,1093808464)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(393),(IK4))
call SaveUnitHandle(LY,(S5I),(394),(IL4))
call SaveUnitHandle(LY,(S5I),(395),(IR4))
call SaveUnitHandle(LY,(S5I),(396),(IP4))
call SaveUnitHandle(LY,(S5I),(397),(IQ4))
call SaveReal(LY,(S5I),(6),((x0)*1.0))
call SaveReal(LY,(S5I),(7),((y0)*1.0))
call SaveReal(LY,(S5I),(433),((0)*1.0))
call SaveReal(LY,(S5I),(13),((a)*1.0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(P7I,1093808461)))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function IT4))
set P7I=null
set IK4=null
set IL4=null
set IR4=null
set IP4=null
set IQ4=null
set t=null
set I01=null
endfunction
function O04 takes nothing returns boolean
if GetSpellAbilityId()==1093808461 then
call IU4()
elseif GetSpellAbilityId()==1093808462 then
call IM4()
endif
return false
endfunction
function OI4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093808460)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
if GetUnitTypeId(P7I)==1311781175 or GetUnitTypeId(P7I)==1311781442 then
if((LoadInteger(LY,(GetHandleId((P7I))),((4416))))==1)==false or p!=GetOwningPlayer(P7I)then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808462,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808461,false)
call SaveInteger(LY,(GetHandleId((P7I))),((4416)),(1))
call SaveInteger(LY,(GetHandleId((P7I))),((4417)),(2))
if p!=GetOwningPlayer(P7I)then
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(P7I)))
endif
endif
if GetUnitAbilityLevel(P7I,1093808462)!=SUI then
call SetUnitAbilityLevel(P7I,1093808462,SUI)
endif
elseif GetUnitTypeId(P7I)==1311781174 then
if((LoadInteger(LY,(GetHandleId((P7I))),((4417))))==1)==false or p!=GetOwningPlayer(P7I)then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808462,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808461,true)
call SaveInteger(LY,(GetHandleId((P7I))),((4417)),(1))
call SaveInteger(LY,(GetHandleId((P7I))),((4416)),(2))
if p!=GetOwningPlayer(P7I)then
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(P7I)))
endif
endif
if GetUnitAbilityLevel(P7I,1093808461)!=SUI then
call SetUnitAbilityLevel(P7I,1093808461,SUI)
endif
endif
set t=null
set P7I=null
return false
endfunction
function O14 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call IA1(P7I,1093808462)
call IA1(P7I,1093808461)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808462,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808461,false)
call SaveInteger(LY,(GetHandleId((P7I))),((4416)),(2))
call SaveInteger(LY,(GetHandleId((P7I))),((4417)),(2))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function OI4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(P7I)))
set t=null
set P7I=null
endfunction
function OO4 takes nothing returns boolean
if GetLearnedSkill()==1093808460 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093808460)==1 then
call O14()
endif
return false
endfunction
function K11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function OO4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O04))
set t=null
endfunction
function O24 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer MKO=2+SUI
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P7I,1093750323)
call UnitRemoveAbility(P7I,1093750326)
call UnitRemoveAbility(P7I,1093750327)
call UnitRemoveAbility(P7I,1110459208)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetAttacker()==P7I then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI>=MKO then
call UnitRemoveAbility(P7I,1093750323)
call UnitRemoveAbility(P7I,1093750326)
call UnitRemoveAbility(P7I,1093750327)
call UnitRemoveAbility(P7I,1110459208)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if GetTriggerUnit()==P7I and GetSpellAbilityId()==1093750841 and(TimerGetElapsed(M))>(LoadReal(LY,(S5I),(442)))then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif E31(GetSpellAbilityId())and P7I==GetSpellTargetUnit()then
call UnitRemoveAbility(P7I,1093750323)
call UnitRemoveAbility(P7I,1093750326)
call UnitRemoveAbility(P7I,1093750327)
call UnitRemoveAbility(P7I,1110459208)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call UnitRemoveAbility(P7I,1093750323)
call UnitRemoveAbility(P7I,1093750326)
call UnitRemoveAbility(P7I,1093750327)
call UnitRemoveAbility(P7I,1110459208)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function O34 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093750841)
call IA1(P7I,1093750323)
call IA1(P7I,1093750326)
call IA1(P7I,1093750327)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750326,false)
call TriggerRegisterTimerEvent(t,15,false)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O24))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+1)*1.0))
set t=null
set P7I=null
endfunction
function O44 takes nothing returns boolean
if GetSpellAbilityId()==1093750841 then
call O34()
endif
return false
endfunction
function JY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O44))
call Q1I(1093750323)
set t=null
endfunction
function O54 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093684291)
local integer EB2
local integer O64
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetUnitAbilityLevel(P7I,1110454856)==0 or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and P7I==GetSpellTargetUnit()and E31(GetSpellAbilityId()))then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1110454856)
call G21(P7I,0)
else
set EB2=R2I(GetUnitState(P7I,UNIT_STATE_LIFE)*(0.04+0.01*SUI))
set O64=(LoadInteger(LY,(S5I),(238)))
if EB2!=O64 then
call SaveInteger(LY,(S5I),(238),(EB2))
call G21(P7I,EB2)
endif
endif
set t=null
set P7I=null
return false
endfunction
function O74 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DEATH)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O54))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveInteger(LY,(S5I),(238),(0))
set t=null
endfunction
function O84 takes nothing returns boolean
if GetSpellAbilityId()==1093684291 then
call O74()
endif
return false
endfunction
function O94 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1110454856)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==false and GetUnitAbilityLevel(GetTriggerUnit(),1093678162)==0 then
endif
return false
endfunction
function JJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O84))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function O94))
set t=null
endfunction
function OA4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call G41(P7I,0)
set P7I=null
return false
endfunction
function OB4 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer OC4=(LoadInteger(LY,(GetHandleId(P8I)),(824)))
local real OD4=(LoadReal(LY,(GetHandleId(P8I)),(825)))
local integer SUI=GetUnitAbilityLevel(P7I,1093818418)
if GetTriggerEventId()==EVENT_WIDGET_DEATH or OD4<(TimerGetElapsed(M))then
call SaveInteger(LY,(GetHandleId(P8I)),(824),(0))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_ATTACKED then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.31,true)
call TriggerAddCondition(t,Condition(function OA4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call G41(P7I,IMinBJ((10+5*SUI)*OC4,500))
endif
set t=null
set P7I=null
set P8I=null
endfunction
function OE4 takes nothing returns boolean
if GetTriggerEventId()!=EVENT_UNIT_ATTACKED then
call OB4()
endif
if GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))then
call OB4()
endif
return false
endfunction
function OF4 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local integer OC4=(LoadInteger(LY,(GetHandleId(P8I)),(824)))
local integer SUI=GetUnitAbilityLevel(P7I,1093818418)
call SaveInteger(LY,(GetHandleId(P8I)),(824),(OC4+1))
call SaveReal(LY,(GetHandleId(P8I)),(825),(((TimerGetElapsed(M))+15)*1.0))
if OC4==0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\BattleRoar\\RoarTarget.mdl",P8I,"overhead")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_ATTACKED)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function OE4))
call SaveInteger(LY,(GetHandleId(P8I)),(824),(2))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.31,true)
call TriggerAddCondition(t,Condition(function OA4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call G41(P7I,IMinBJ((10+5*SUI),500))
endif
set t=null
endfunction
function OG4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call OF4(P7I,P8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function OH4 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function OG4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set P8I=null
set P7I=null
set t=null
endfunction
function OZ4 takes nothing returns nothing
local unit P7I=GetAttacker()
if((LoadInteger(LY,(GetHandleId((P7I))),((4274))))==1)==false then
call SCI(P7I,4274,0.2)
call OH4()
endif
endfunction
function OV4 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093818418)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call OZ4()
endif
return false
endfunction
function OW4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function OV4))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function OX4 takes nothing returns boolean
if GetLearnedSkill()==1093818418 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093818418)==1 then
call OW4()
endif
return false
endfunction
function JK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function OX4))
set t=null
endfunction
function OY4 takes unit I01,real x,real y,integer SUI returns nothing
call SetUnitPosition(I01,x,y)
call IssueImmediateOrder(I01,"howlofterror")
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\HowlOfTerror\\HowlCaster.mdl",x,y))
set I01=null
endfunction
function OJ4 takes nothing returns boolean
if(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and IsUnitInGroup(GetFilterUnit(),F7I)==false then
call GroupAddUnit(F7I,GetFilterUnit())
call P6I(F8I,GetFilterUnit(),7,F9I)
endif
return false
endfunction
function OK4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local group g
if GetTriggerEvalCount(t)>10 then
call NSI(JAO)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set F7I=JAO
set F8I=P7I
set F9I=SUI*20+10
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,325,Condition(function OJ4))
call NSI(g)
set g=null
call OY4(I01,x,y,SUI)
if ModuloInteger(GetTriggerEvalCount(t),2)==0 then
call KillUnit(CreateUnit(GetOwningPlayer(P7I),1697657409,x,y,0))
endif
set x=PTI(x+200*Cos(RM2*bj_DEGTORAD))
set y=PUI(y+200*Sin(RM2*bj_DEGTORAD))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
endif
set t=null
set P7I=null
set I01=null
set JAO=null
return false
endfunction
function OL4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x1=GetUnitX(P7I)
local real y1=GetUnitY(P7I)
local real x2=GetLocationX(l)
local real y2=GetLocationY(l)
local real RM2=UEI(x1,y1,x2,y2)
local integer SUI=GetUnitAbilityLevel(P7I,1093744463)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x1,y1,0)
call IA1(I01,1093681488)
call SetUnitAbilityLevel(I01,1093681488,SUI)
call RemoveLocation(l)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(6),((x1)*1.0))
call SaveReal(LY,(S5I),(7),((y1)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveGroupHandle(LY,(S5I),(133),(NTI()))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function OK4))
set t=null
set P7I=null
set l=null
set I01=null
endfunction
function OM4 takes nothing returns boolean
if GetSpellAbilityId()==1093744463 then
call OL4()
endif
return false
endfunction
function JM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OM4))
set t=null
endfunction
function ON4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x1=(LoadReal(LY,(S5I),(64)))
local real x2=(LoadReal(LY,(S5I),(66)))
local real y1=(LoadReal(LY,(S5I),(65)))
local real y2=(LoadReal(LY,(S5I),(67)))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl",P7I,"origin"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl",P8I,"origin"))
call SetUnitPosition(P7I,x2,y2)
call SCI(P8I,4407,1)
call SetUnitPosition(P8I,x1,y1)
if IsUnitInRegion(MN,P8I)then
call B41(P8I)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function OS4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real x1=GetUnitX(P7I)
local real y1=GetUnitY(P7I)
local real x2=GetUnitX(P8I)
local real y2=GetUnitY(P8I)
local trigger t
local integer S5I
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==true or NNI(GetSpellTargetUnit())==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(64),((x1)*1.0))
call SaveReal(LY,(S5I),(66),((x2)*1.0))
call SaveReal(LY,(S5I),(65),((y1)*1.0))
call SaveReal(LY,(S5I),(67),((y2)*1.0))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function ON4))
call UGI("SPLK",x1,y1,x2,y2,0.5,0,1,1,0.3)
call UPI(x1,y1,300)
call UPI(x2,y2,300)
endif
set P7I=null
set P8I=null
set t=null
endfunction
function OT4 takes nothing returns boolean
if GetSpellAbilityId()==1093683534 or GetSpellAbilityId()==1093747031 then
call OS4()
endif
return false
endfunction
function OR4 takes nothing returns nothing
if(IsTerrainPathable(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),PATHING_TYPE_WALKABILITY))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652610))
endif
endfunction
function OP4 takes nothing returns boolean
if GetSpellAbilityId()==1093683534 or GetSpellAbilityId()==1093747031 then
call OR4()
endif
return false
endfunction
function JN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OT4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function OP4))
set t=null
endfunction
function MagicMissle takes nothing returns nothing
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareMissile.mdl",GetTriggerUnit(),"weapon"))
endfunction
function OQ4 takes nothing returns boolean
if GetSpellAbilityId()==1093677633 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareMissile.mdl",GetTriggerUnit(),"weapon"))
endif
return false
endfunction
function JL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerAddCondition(t,Condition(function OQ4))
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
set t=null
endfunction
function OU4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if IC1(P7I)==false or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call UnitRemoveAbility(P8I,1093818198)
call UnitRemoveAbility(P8I,1093818201)
call UnitRemoveAbility(P8I,1093818199)
call UnitRemoveAbility(P8I,1093818200)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function A04 takes nothing returns boolean
local trigger t
local integer S5I
local unit P7I=GetTriggerUnit()
local unit P8I=GetKillingUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1094934883)
set P8I=ZMO(P8I)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function OU4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
if SUI==1 then
call IA1(P8I,1093818198)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093818198,false)
elseif SUI==2 then
call IA1(P8I,1093818201)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093818201,false)
elseif SUI==3 then
call IA1(P8I,1093818199)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093818199,false)
elseif SUI==4 then
call IA1(P8I,1093818200)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093818200,false)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AI4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function A04))
set P7I=null
set t=null
endfunction
function A14 takes nothing returns boolean
if GetLearnedSkill()==1094934883 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1094934883)==1 then
call AI4()
endif
return false
endfunction
function JS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerAddCondition(t,Condition(function A14))
call UMI(t,EVENT_PLAYER_HERO_SKILL)
set t=null
endfunction
function AO4 takes unit u returns nothing
local unit SFI=K1[GetPlayerId(GetOwningPlayer(u))]
local integer S5I=GetHandleId(SFI)
local integer A24
local integer i
local integer x
local integer A34
local unit A44
if GetUnitTypeId(SFI)!=1160786265 then
return
endif
set A24=(LoadInteger(LY,(S5I),(348)))
set i=1
loop
exitwhen i>A24
set A34=(LoadInteger(LY,(S5I),(7000+i)))
set A44=NYI(A34)
if A44==u then
set x=i
loop
exitwhen x==A24
call SaveInteger(LY,(S5I),(7000+x),((LoadInteger(LY,(S5I),(7000+x+1)))))
set x=x+1
endloop
set i=A24
endif
set i=i+1
endloop
call SaveInteger(LY,(S5I),(348),(A24-1))
set A44=null
set SFI=null
endfunction
function A54 takes unit u returns nothing
local unit SFI=K1[GetPlayerId(GetOwningPlayer(u))]
local integer S5I=GetHandleId(SFI)
local integer A24=(LoadInteger(LY,(S5I),(348)))
call SaveReal(LY,(GetHandleId(u)),(786),(((TimerGetElapsed(M)))*1.0))
set A24=A24+1
call SaveInteger(LY,(S5I),(7000+A24),(NKI(u)))
call SaveInteger(LY,(S5I),(348),(A24))
if RW0[GetPlayerId(GetOwningPlayer(SFI))]then
call SelectUnitAddForPlayer(u,GetOwningPlayer(SFI))
endif
set SFI=null
endfunction
function WardenTrap_DeathMain takes nothing returns nothing
call AO4(GetTriggerUnit())
endfunction
function A64 takes unit u returns nothing
local integer A74=GetUnitAbilityLevel(u,1093685840)*3+2
local integer S5I=GetHandleId(u)
local integer A24=(LoadInteger(LY,(S5I),(348)))
local integer A34=(LoadInteger(LY,(S5I),(7000+1)))
local unit A44=NYI(A34)
if A24>=A74 then
call AO4(A44)
call RemoveUnit(A44)
endif
set A44=null
endfunction
function A84 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call IA1(I01,1093685845)
call SetUnitAbilityLevel(I01,1093685845,FAI)
call IssueTargetOrder(I01,"slow",GetEnumUnit())
call IA1(I01,1093686071)
set I01=null
endfunction
function A94 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g=NTI()
local real GW1=(LoadReal(LY,(GetHandleId(P7I)),(786)))
local real TB2=(TimerGetElapsed(M))-GW1
local integer SUI=1
if TB2>4 then
set SUI=5
elseif TB2>3 then
set SUI=4
elseif TB2>2 then
set SUI=3
elseif TB2>1 then
set SUI=2
endif
set FAI=SUI
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl",x,y))
call GroupEnumUnitsInRange(g,x,y,400,Condition(function C51))
call ForGroup(g,function A84)
call NSI(g)
call AO4(P7I)
call RemoveUnit(P7I)
set g=null
set P7I=null
endfunction
function AA4 takes nothing returns boolean
return GetOwningPlayer(GetFilterUnit())==JK and GetUnitTypeId(GetFilterUnit())==1697657392
endfunction
function AB4 takes nothing returns nothing
local real AC4=UTI(GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),AK,BK)
local real AD4=UTI(GetUnitX(GK),GetUnitY(GK),AK,BK)
if AC4<AD4 then
set GK=GetEnumUnit()
endif
endfunction
function AE4 takes nothing returns nothing
local group g=NTI()
set JK=GetOwningPlayer(GetTriggerUnit())
call GroupEnumUnitsInRange(g,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),9000,Condition(function AA4))
set GK=FirstOfGroup(g)
set AK=GetUnitX(GetTriggerUnit())
set BK=GetUnitY(GetTriggerUnit())
call ForGroup(g,function AB4)
call IssueImmediateOrder((GK),"locustswarm")
call NSI(g)
set g=null
endfunction
function WardenTrap_LearnMain takes nothing returns nothing
call IA1(GetTriggerUnit(),1093818442)
endfunction
function AF4 takes nothing returns nothing
local location l=GetSpellTargetLoc()
call IA1(GetTriggerUnit(),1093818442)
call A64(GetTriggerUnit())
call A54(CreateUnit(GetOwningPlayer(GetTriggerUnit()),1697657392,GetLocationX(l),GetLocationY(l),0))
call RemoveLocation(l)
set l=null
endfunction
function AG4 takes nothing returns boolean
if GetSpellAbilityId()==1093685840 then
call AF4()
endif
if GetSpellAbilityId()==1093818442 then
call AE4()
endif
return false
endfunction
function AH4 takes nothing returns boolean
if GetSpellAbilityId()==1093685841 then
call A94()
endif
return false
endfunction
function AZ4 takes nothing returns boolean
if GetLearnedSkill()==1093685840 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093685840)==1 then
call IA1(GetTriggerUnit(),1093818442)
endif
return false
endfunction
function AV4 takes nothing returns boolean
if GetUnitTypeId(GetDyingUnit())==1697657392 then
call AO4(GetTriggerUnit())
endif
return false
endfunction
function SY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AG4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function AV4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AH4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function AZ4))
set t=null
endfunction
function AW4 takes unit u,real AX4,real AY4,real AJ4,real AK4,real AL4 returns boolean
local real AM4=AJ4-AX4
local real AN4=AK4-AY4
local real AS4=GetUnitX(u)-AX4
local real AT4=GetUnitY(u)-AY4
return AL4>=RAbsBJ(AM4*AT4-AN4*AS4)/RAbsBJ(Pow(Pow(AM4,2)+Pow(AN4,2),0.5))
endfunction
function AR4 takes unit P7I,unit P8I,real PAI,real InitX,real InitY returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093685839)
local real AP4=(300+20*SUI)*2
local real AQ4=80+25
local unit AU4
local real dx
local real dy
local real B04
local real x
local real y
local group g=NTI()
local boolean BI4
local boolean B14
set dx=GetUnitX(P8I)-GetUnitX(P7I)
set dy=GetUnitY(P8I)-GetUnitY(P7I)
set B04=Pow(Pow(dx,2)+Pow(dy,2),0.5)
set x=GetUnitX(P8I)+(AP4/2-25)*(dx/B04)
set y=GetUnitY(P8I)+(AP4/2-25)*(dy/B04)
set GK=P7I
set AK=PAI
call GroupEnumUnitsInRange(g,x,y,Pow(Pow(AP4/2,2)+Pow(AQ4/2,2),0.5),Condition(function CA1))
call GroupRemoveUnit(g,P8I)
set AU4=FirstOfGroup(g)
loop
exitwhen AU4==null
set BI4=AW4(AU4,GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I),AQ4/2)
set B14=AW4(AU4,x,y,x-100,y+100*x*Pow(y,-1),0.01+AP4/2)
if BI4 and B14 then
call P6I(P7I,AU4,3,PAI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PriestMissile\\PriestMissile.mdl",AU4,"chest"))
endif
call GroupRemoveUnit(g,AU4)
set AU4=FirstOfGroup(g)
endloop
call NSI(g)
set AU4=null
set g=null
endfunction
function BO4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and GetEventDamage()>1 and IsUnitIllusion(P8I)==false then
call DisableTrigger(t)
call AR4(P7I,P8I,GetEventDamage(),(LoadReal(LY,(S5I),(349))),(LoadReal(LY,(S5I),(350))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function B24 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.0,false)
call TriggerAddCondition(t,Condition(function BO4))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(349),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(350),((GetUnitY(P7I))*1.0))
set P8I=null
set P7I=null
set t=null
endfunction
function B34 takes nothing returns nothing
local unit P7I=GetAttacker()
if((LoadInteger(LY,(GetHandleId((P7I))),((4272))))==1)==false then
call SCI(P7I,4272,0.4)
call B24()
endif
endfunction
function B44 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093685839)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))then
call B34()
endif
return false
endfunction
function B54 takes nothing returns nothing
local trigger t
if GetUnitAbilityLevel(GetTriggerUnit(),1093685839)==1 then
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function B44))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
endif
call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),1382379618,GetUnitAbilityLevel(GetTriggerUnit(),1093685839))
set t=null
endfunction
function B64 takes nothing returns boolean
if GetLearnedSkill()==1093685839 and IsUnitIllusion(GetTriggerUnit())==false then
call B54()
endif
return false
endfunction
function SX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function B64))
set t=null
endfunction
function B74 takes nothing returns boolean
local unit SFI=GetTriggerUnit()
local integer S5I=GetHandleId(SFI)
local integer BQO=(LoadInteger(LY,(S5I),(352)))
if BQO>0 and GetTriggerEventId()!=EVENT_UNIT_DEATH then
if GetEventDamage()>5 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PriestMissile\\PriestMissile.mdl",SFI,"right hand"))
call QGI(SFI,GetEventDamage())
call SaveInteger(LY,(S5I),(352),(BQO-1))
endif
else
call UnitRemoveAbility(SFI,1093685838)
call UnitRemoveAbility(SFI,1110456394)
call SaveInteger(LY,(S5I),(352),(0))
endif
set SFI=null
return false
endfunction
function B84 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local unit SFI=(LoadUnitHandle(LY,(GetHandleId(t)),(14)))
local integer S5I=GetHandleId(SFI)
local integer BQO=(LoadInteger(LY,(S5I),(351)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetAttacker()==SFI and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false)then
if GetTriggerEventId()!=EVENT_UNIT_DEATH and BQO>0 and GetEventDamage()>0 then
call SaveInteger(LY,(S5I),(351),(BQO-1))
else
call UnitRemoveAbility(SFI,1093685830)
call UnitRemoveAbility(SFI,1093685837)
call UnitRemoveAbility(SFI,1110456393)
call SaveInteger(LY,(S5I),(351),(0))
endif
endif
set t=null
set SFI=null
return false
endfunction
function B94 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local unit SFI=(LoadUnitHandle(LY,(GetHandleId(t)),(14)))
local integer S5I=GetHandleId(SFI)
call SaveInteger(LY,(S5I),(352),(0))
call SaveInteger(LY,(S5I),(351),(0))
call UnitRemoveAbility(SFI,1093685830)
call UnitRemoveAbility(SFI,1093685837)
call UnitRemoveAbility(SFI,1093685838)
call FlushChildHashtable(LY,(GetHandleId(t)))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function BA4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer S5I=GetHandleId(SFI)
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,17,false)
call TriggerAddCondition(t,Condition(function B94))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(SFI))
call IO1(FE,GetUnitX(SFI),GetUnitY(SFI))
call IA1(SFI,1093685838)
call SaveInteger(LY,(S5I),(352),(GetUnitAbilityLevel(SFI,1093748033)+2))
call IA1(SFI,1093685830)
call SetUnitAbilityLevel(SFI,1093685830,GetUnitAbilityLevel(SFI,1093748033))
call IA1(SFI,1093685837)
call SaveInteger(LY,(S5I),(351),(GetUnitAbilityLevel(SFI,1093748033)+2))
set SFI=null
endfunction
function BB4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function B74))
call SaveInteger(LY,(GetHandleId(SFI)),(352),(0))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function B84))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(SFI))
call SaveInteger(LY,(GetHandleId(SFI)),(351),(0))
set t=null
set SFI=null
endfunction
function BC4 takes nothing returns boolean
if GetLearnedSkill()==1093748033 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093748033)==1 then
call BB4()
endif
return false
endfunction
function BD4 takes nothing returns boolean
if GetSpellAbilityId()==1093748033 then
call BA4()
endif
return false
endfunction
function SW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BD4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function BC4))
set t=null
endfunction
function BE4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
call UnitRemoveAbility((LoadUnitHandle(LY,(GetHandleId(t)),(14))),1093685827)
call FlushChildHashtable(LY,(GetHandleId(t)))
call S0I(t)
set t=null
return false
endfunction
function BF4 takes unit P7I,unit P8I returns nothing
local trigger t=CreateTrigger()
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(P8I))
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function BE4))
call IA1(P8I,1093685827)
call SetUnitAbilityLevel(P8I,1093685827,GetUnitAbilityLevel(P7I,1093685846))
call P6I(P7I,P8I,2,50*GetUnitAbilityLevel(P7I,1093685846))
call UYI(I2S(50*GetUnitAbilityLevel(P7I,1093685846)),1,P8I,0.03,255,0,0,255)
call UnitRemoveAbility(P7I,1110456395)
set t=null
endfunction
function BG4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local trigger BH4=(LoadTriggerHandle(LY,(S5I),(353)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call FlushChildHashtable(LY,(GetHandleId(BH4)))
call S0I(BH4)
call BF4(P7I,P8I)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set P7I=null
set BH4=null
return false
endfunction
function BZ4 takes unit P7I,unit P8I,trigger BH4 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.0,false)
call TriggerAddCondition(t,Condition(function BG4))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveTriggerHandle(LY,(S5I),(353),(BH4))
set t=null
endfunction
function BV4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEventId()==EVENT_UNIT_SPELL_CAST or(GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetAttacker()==SFI and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(SFI))==false)then
if GetTriggerEventId()!=EVENT_UNIT_DEATH and GetTriggerEventId()!=EVENT_UNIT_SPELL_CAST and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
call BZ4(SFI,GetTriggerUnit(),t)
call UnitRemoveAbility(SFI,1110456395)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEventId()==EVENT_UNIT_SPELL_CAST then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
if x!=GetUnitX(SFI)or y!=GetUnitY(SFI)then
call UnitRemoveAbility(SFI,1110456395)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set SFI=null
return false
endfunction
function BW4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call DestroyEffect(AddSpecialEffectTarget("effects\\PurpleAura.mdx",SFI,"origin"))
call IO1(UC,GetUnitX(SFI),GetUnitY(SFI))
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_CAST)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function BV4))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(SFI))*1.0))
call IssueImmediateOrder(SFI,"holdposition")
set t=null
set SFI=null
endfunction
function BX4 takes nothing returns boolean
if GetSpellAbilityId()==1093685846 then
call BW4()
endif
return false
endfunction
function SV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BX4))
set t=null
endfunction
function BY4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer BJ4=(LoadInteger(LY,(S5I),(247)))
call DestroyEffect(AddSpecialEffect("effects\\Tornado.mdx",GetUnitX(P7I),GetUnitY(P7I)))
if GetTriggerEvalCount(t)>10*(2+1*SUI)or GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P7I,BJ4)
call UnitRemoveAbility(P7I,1110456663)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function BK4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093743689)
local integer BJ4
if SUI==1 then
set BJ4=1093743413
elseif SUI==2 then
set BJ4=1093743183
elseif SUI==3 then
set BJ4=1093743412
elseif SUI==4 then
set BJ4=1093743417
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),BJ4,false)
call AH1(P7I,BJ4,1,2+SUI)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function BY4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(247),(BJ4))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("effects\\Tornado.mdx",P7I,"hand,left")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("effects\\Tornado.mdx",P7I,"hand,right")))
set P7I=null
set t=null
endfunction
function BL4 takes nothing returns boolean
if GetSpellAbilityId()==1093743689 then
call BK4()
endif
return false
endfunction
function TX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BL4))
set t=null
endfunction
function BM4 takes nothing returns nothing
local destructable P8I=GetEnumDestructable()
local real a=Atan2(GetDestructableY(P8I)-GetUnitY(GK),GetDestructableX(P8I)-GetUnitX(GK))
local real VOO=RAbsBJ((AK-a)*bj_RADTODEG)
if(RJI(P8I)or GetDestructableTypeId(P8I)==1110454325)and GetDestructableLife(P8I)>1 and VOO<FDI and VOO<(FEI-5)then
set FDI=VOO
set FBI=P8I
endif
set P8I=null
endfunction
function BN4 takes unit IG1,unit P7I,real RM2 returns destructable
local real x=GetUnitX(IG1)
local real y=GetUnitY(IG1)
local rect r=Rect(x-FGI,y-FGI,x+FGI,y+FGI)
set FDI=9999
set GK=IG1
set FBI=null
call EnumDestructablesInRect(r,Condition(function N1I),function BM4)
call RemoveRect(r)
set r=null
return FBI
endfunction
function BS4 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local real a=Atan2(GetUnitY(P8I)-GetUnitY(GK),GetUnitX(P8I)-GetUnitX(GK))
local real VOO=RAbsBJ((AK-a)*bj_RADTODEG)
if VOO<FDI and VOO<FEI and P8I!=HK then
set FDI=VOO
set FCI=P8I
endif
set P8I=null
endfunction
function BT4 takes unit IG1,unit P7I,real RM2 returns unit
local group g=NTI()
set FCI=null
set FDI=9999
set GK=IG1
set AK=Atan2(GetUnitY(P7I)-FZI,GetUnitX(P7I)-FHI)
set HK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),FFI,Condition(function CE1))
call ForGroup(g,function BS4)
call NSI(g)
set g=null
return FCI
endfunction
function BR4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
if(LoadLightningHandle(LY,(S5I),(196)))!=null then
call DestroyLightning((LoadLightningHandle(LY,(S5I),(196))))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function BP4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real BQ4=(LoadReal(LY,(S5I),(248)))
local real RM2=Atan2(GetUnitY(P8I)-GetUnitY(IG1),GetUnitX(P8I)-GetUnitX(IG1))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real x=GetUnitX(IG1)+50*Cos(RM2)
local real y=GetUnitY(IG1)+50*Sin(RM2)
local unit BU4
local destructable d
local lightning UZI
local unit I01
local boolean ZXO=(LoadBoolean(LY,(S5I),(249)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(IG1)
else
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
call SetUnitFacing(IG1,RM2*bj_RADTODEG)
if QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))<45 then
set FHI=(LoadReal(LY,(S5I),(6)))
set FZI=(LoadReal(LY,(S5I),(7)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetUnitTypeId(P8I)!=1848651852 and ZXO then
set BU4=BT4(IG1,P8I,BQ4)
set d=BN4(IG1,P8I,BQ4)
if BU4!=null then
set t=CreateTrigger()
set S5I=GetHandleId(t)
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093743177)
call SetUnitAbilityLevel(I01,1093743177,SUI+1)
call IssueTargetOrder(I01,"thunderbolt",P8I)
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(BU4),GetUnitY(BU4),0)
call IA1(I01,1093743177)
call SetUnitAbilityLevel(I01,1093743177,SUI+1)
call IssueTargetOrder(I01,"thunderbolt",BU4)
call TriggerRegisterTimerEvent(t,0.25+SUI*0.75,false)
call TriggerAddCondition(t,Condition(function BR4))
set UZI=AddLightning("MFPB",true,GetUnitX(P8I),GetUnitY(P8I),GetUnitX(BU4),GetUnitY(BU4))
call SetLightningColor(UZI,0.5,0.5,1,1)
call SaveLightningHandle(LY,(S5I),(196),(UZI))
elseif d!=null then
set t=CreateTrigger()
set S5I=GetHandleId(t)
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093743177)
call SetUnitAbilityLevel(I01,1093743177,SUI+1)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call TriggerRegisterTimerEvent(t,0.25+SUI*0.75,false)
call TriggerAddCondition(t,Condition(function BR4))
set UZI=AddLightning("MFPB",true,GetUnitX(P8I),GetUnitY(P8I),GetDestructableX(d),GetDestructableY(d))
call SetLightningColor(UZI,0.5,0.5,1,1)
call SaveLightningHandle(LY,(S5I),(196),(UZI))
call SetDestructableAnimation(d,"stand hit")
else
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093743177)
call SetUnitAbilityLevel(I01,1093743177,1)
call IssueTargetOrder(I01,"thunderbolt",P8I)
endif
endif
call KillUnit(IG1)
endif
endif
set t=null
set IG1=null
set P8I=null
set UZI=null
set BU4=null
set d=null
set I01=null
return false
endfunction
function C04 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real RM2=Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747990327,GetUnitX(P7I),GetUnitY(P7I),RM2*bj_RADTODEG)
local integer SUI=GetUnitAbilityLevel(P7I,1093743178)
local boolean ZXO=NNI(GetSpellTargetUnit())==false
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(248),((RM2)*1.0))
call SaveBoolean(LY,(S5I),(249),(ZXO))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call TriggerRegisterTimerEvent(t,0.033,true)
call TriggerAddCondition(t,Condition(function BP4))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
set P7I=null
set P8I=null
set t=null
endfunction
function CI4 takes nothing returns boolean
if GetSpellAbilityId()==1093743178 then
call C04()
endif
return false
endfunction
function TW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CI4))
set t=null
endfunction
function C14 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),FVI)==false and GetUnitAbilityLevel(GetEnumUnit(),1113815395)==0 then
call P6I((FWI),(GetEnumUnit()),1,(((FXI)*1.0))*Pow(0.9,(FJI))*Pow(0.99,(FYI)))
call GroupAddUnit(FVI,GetEnumUnit())
set FJI=FJI+1
endif
endfunction
function CO4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real PAI=(LoadReal(LY,(S5I),(20)))
local integer C24=(LoadInteger(LY,(S5I),(354)))
local integer C34=(LoadInteger(LY,(S5I),(355)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local real x=PTI(GetUnitX(IG1)+(60*Pow(0.9,C34)*Pow(0.99,C24))*Cos(RM2))
local real y=PUI(GetUnitY(IG1)+(60*Pow(0.9,C34)*Pow(0.99,C24))*Sin(RM2))
local group g=NTI()
local real d
if GetTriggerEvalCount(t)>2 then
set d=150
else
set d=75
endif
call DestroyEffect(AddSpecialEffect("effects\\Tornado.mdx",x,y))
set C24=C24+UPI(x,y,75)
call SaveInteger(LY,(S5I),(354),(C24))
set FVI=PR2
set FWI=IG1
set FXI=PAI
set FYI=C24
set FJI=C34
set GK=IG1
call GroupEnumUnitsInRange(g,x,y,d,Condition(function CA1))
call ForGroup(g,function C14)
call NSI(g)
call SaveInteger(LY,(S5I),(355),(FJI))
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
if GetTriggerEvalCount(t)>42 then
call KillUnit(IG1)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set IG1=null
set PR2=null
set g=null
return false
endfunction
function C44 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x2=(LoadReal(LY,(GetHandleId(P7I)),(356)))
local real y2=(LoadReal(LY,(GetHandleId(P7I)),(357)))
local real C54=QCI((TimerGetElapsed(M))-(LoadReal(LY,(GetHandleId(P7I)),(358))),1.0)
local real RM2=Atan2(y2-GetUnitY(P7I),x2-GetUnitX(P7I))
local trigger t
local integer S5I
local unit IG1
local integer SUI=GetUnitAbilityLevel(P7I,1093743179)
local real PAI=(40+80*SUI)*(C54)
set t=CreateTrigger()
set S5I=GetHandleId(t)
set IG1=CreateUnit(GetOwningPlayer(P7I),1747990328,GetUnitX(P7I),GetUnitY(P7I),RM2*bj_RADTODEG)
set x2=GetUnitX(P7I)+2475*Cos(RM2)
set y2=GetUnitY(P7I)+2475*Sin(RM2)
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(47),((x2)*1.0))
call SaveReal(LY,(S5I),(48),((y2)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call SaveInteger(LY,(S5I),(354),(0))
call SaveInteger(LY,(S5I),(355),(0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function CO4))
set P7I=null
set t=null
set IG1=null
endfunction
function C64 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
call SetUnitTimeScale(SFI,1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function C74 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
call SetUnitAnimation(SFI,"attack")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function C84 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
call RemoveLocation(l)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0.,false)
call TriggerAddCondition(t,Condition(function C74))
call SaveReal(LY,(GetHandleId(SFI)),(356),((x)*1.0))
call SaveReal(LY,(GetHandleId(SFI)),(357),((y)*1.0))
call SaveReal(LY,(GetHandleId(SFI)),(358),(((TimerGetElapsed(M)))*1.0))
call SetUnitTimeScale(SFI,1)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,1,false)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function C64))
set t=null
set SFI=null
endfunction
function C94 takes nothing returns boolean
if GetSpellAbilityId()==1093743179 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CHANNEL then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(360),(false))
call C84()
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(360),(true))
elseif(LoadBoolean(LY,(GetHandleId(GetTriggerUnit())),(360)))==true then
call C44()
endif
endif
return false
endfunction
function TY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_ENDCAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function C94))
set t=null
endfunction
function CA4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local real RS2=(LoadReal(LY,(S5I),(193)))
local boolean CK3=(LoadBoolean(LY,(S5I),(15)))
local integer SUI
if GetTriggerEvalCount(t)==1 then
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetAttacker()==P7I and GetTriggerUnit()==P8I then
call DestroyEffect(AddSpecialEffectTarget("effects\\Tornado.mdx",P7I,"hand,left"))
call DestroyEffect(AddSpecialEffectTarget("effects\\Tornado.mdx",P7I,"hand,right"))
if GetUnitAbilityLevel(P7I,1093743186)==0 then
call IA1(P7I,1093743186)
set SUI=GetUnitAbilityLevel(P7I,1093747766)
endif
elseif GetAttacker()==P7I and GetTriggerUnit()!=P8I then
call UnitRemoveAbility(P7I,1093743186)
call UnitRemoveAbility(P7I,1110456664)
call UnitRemoveAbility(P7I,1093748299)
call UnitRemoveAbility(P7I,1093748300)
call UnitRemoveAbility(P7I,1093748298)
endif
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+(RS2)*GetEventDamage())
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093743184 or GetSpellAbilityId()==1093747766 then
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call UnitRemoveAbility(P7I,1093743186)
call UnitRemoveAbility(P7I,1110456664)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093748299)
call UnitRemoveAbility(P7I,1093748300)
call UnitRemoveAbility(P7I,1093748298)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function CB4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093743184)
local real RS2=0.6-SUI*0.1
local boolean CK3=false
call UnitRemoveAbility(P7I,1093743186)
call UnitRemoveAbility(P7I,1110456664)
if SUI==0 then
set CK3=true
set SUI=GetUnitAbilityLevel(P7I,1093747766)
set RS2=0.45-SUI*0.15
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093743186,false)
call IA1(P7I,1093743186)
call IssueTargetOrder(P7I,"attack",P8I)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveBoolean(LY,(S5I),(15),(CK3))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveReal(LY,(S5I),(193),((RS2)*1.0))
call SaveInteger(LY,(S5I),(361),(0))
call TriggerRegisterTimerEvent(t,20,false)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function CA4))
set P7I=null
set P8I=null
set t=null
endfunction
function CC4 takes nothing returns boolean
if(GetSpellAbilityId()==1093743184 or GetSpellAbilityId()==1093747766)and NNI(GetSpellTargetUnit())==false then
call CB4()
endif
return false
endfunction
function TJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CC4))
set t=null
endfunction
function CD4 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and V51(GetUnitTypeId(GetFilterUnit()))==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(FKI))==true
endfunction
function CE4 takes nothing returns nothing
local real x=GetUnitX(GetEnumUnit())
local real y=GetUnitY(GetEnumUnit())
local unit RMI=CreateUnit(GetOwningPlayer(FKI),1697657657,x,y,0)
call UnitAddAbility(RMI,1093678419)
call SetUnitAbilityLevel(RMI,1093678419,FLI)
call IssueTargetOrder(RMI,"chainlightning",GetEnumUnit())
call UnitApplyTimedLife(RMI,1112820806,3)
call UnitAddAbility(RMI,1097625443)
set RMI=null
endfunction
function CF4 takes nothing returns nothing
local group g=NTI()
set FKI=GetTriggerUnit()
if GetSpellAbilityId()==1093810503 then
set FLI=GetUnitAbilityLevel(GetTriggerUnit(),1093810503)+4
else
set FLI=GetUnitAbilityLevel(GetTriggerUnit(),1093810504)+7
endif
call GroupEnumUnitsInRect(g,bj_mapInitialPlayableArea,Condition(function CD4))
call ForGroup(g,function CE4)
call NSI(g)
set g=null
endfunction
function CG4 takes nothing returns boolean
if GetSpellAbilityId()==1093810503 or GetSpellAbilityId()==1093810504 then
call CF4()
endif
return false
endfunction
function JR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CG4))
set t=null
endfunction
constant function StaticField_RawCode takes nothing returns integer
return 1093684789
endfunction
constant function StaticField_LightningCode takes nothing returns integer
return 1093818193
endfunction
constant function StaticField_ArcLightningCode takes nothing returns integer
return 1093677616
endfunction
constant function StaticField_WrathOfGodCode takes nothing returns integer
return 1093810503
endfunction
constant function StaticField_WrathOfGod2Code takes nothing returns integer
return 1093810504
endfunction
function CH4 takes nothing returns boolean
return(GetSpellAbilityId()==(1093818193)or GetSpellAbilityId()==(1093677616)or GetSpellAbilityId()==(1093810503)or GetSpellAbilityId()==(1093810504))and GetUnitAbilityLevel(GetTriggerUnit(),(1093684789))>0
endfunction
function CZ4 takes nothing returns nothing
local real CV4=GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)
local real CW4=0.03+0.02*GetUnitAbilityLevel(GetTriggerUnit(),(1093684789))
local real PAI=CV4*CW4
call UnitDamageTarget(GetTriggerUnit(),GetEnumUnit(),PAI,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\ForkedLightning\\ForkedLightningTarget.mdl",GetEnumUnit(),"overhead"))
endfunction
function CX4 takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false
endfunction
function CY4 takes nothing returns nothing
local location BFO=GetUnitLoc(GetTriggerUnit())
local group Z51=NTI()
local real x=GetLocationX(BFO)
local real y=GetLocationY(BFO)
local boolexpr QL1=Condition(function CX4)
call GroupEnumUnitsInRange(Z51,x,y,1225,QL1)
call ForGroup(Z51,function CZ4)
call RemoveLocation(BFO)
call NSI(Z51)
endfunction
function JT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CH4))
call TriggerAddAction(t,function CY4)
endfunction
function CJ4 takes nothing returns boolean
return(RKI(GetFilterUnit())==false and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and IsHeroUnitId(GetUnitTypeId(GetFilterUnit()))
endfunction
function CK4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01
local integer SUI=GetUnitAbilityLevel(P7I,1093818193)
local real PAI=25+SUI*75
local group g
local real x
local real y
if SUI>=3 then
set PAI=PAI+25
endif
if P8I==null then
set g=NTI()
set x=GetSpellTargetX()
set y=GetSpellTargetY()
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,325+25,Condition(function CJ4))
set P8I=AU1(g,x,y)
call NSI(g)
set g=null
endif
if P8I!=null then
set x=GetUnitX(P8I)
set y=GetUnitY(P8I)
call UUI(P7I,P8I)
call PDI(P7I,P8I,1,PAI,0.25)
endif
set I01=CreateUnit(GetOwningPlayer(P7I),1697656880,x,y,0)
call IA1(I01,1093678419)
call UnitApplyTimedLife(I01,1112820806,4.5)
call SetUnitPathing(I01,false)
call IA1(I01,1097625443)
if P8I==null or IssueTargetOrder(I01,"chainlightning",P8I)==false then
set P8I=CreateUnit(GetOwningPlayer(P7I),1697656899,x,y,0)
call UnitApplyTimedLife(P8I,1112820806,0.2)
call IssueTargetOrder(I01,"chainlightning",P8I)
endif
set P7I=null
set P8I=null
set I01=null
endfunction
function CL4 takes nothing returns boolean
if GetSpellAbilityId()==1093818193 and(GetSpellTargetUnit()==null or NNI(GetSpellTargetUnit())==false)then
call CK4()
endif
return false
endfunction
function JP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CL4))
set t=null
endfunction
function CM4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
if GetTriggerEvalCount(t)>80 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set I01=null
return false
endfunction
function CN4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697657411,GetUnitX(P7I),GetUnitY(P7I),0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(I01,1093748301)
call SetUnitAbilityLevel(I01,1093748301,GetUnitAbilityLevel(P7I,1093677616))
call IssueTargetOrder(I01,"chainlightning",P8I)
call UnitApplyTimedLife(I01,1112820806,10)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function CM4))
set P7I=null
set P8I=null
set I01=null
set t=null
endfunction
function CS4 takes nothing returns boolean
if GetSpellAbilityId()==1093677616 and NNI(GetSpellTargetUnit())==false then
call CN4()
endif
return false
endfunction
function JQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerAddCondition(t,Condition(function CS4))
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
set t=null
endfunction
constant function DeathCoil_AbilityCode takes nothing returns integer
return 1093683507
endfunction
function CT4 takes nothing returns boolean
return GetSpellAbilityId()==(1093683507)and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))or NNI(GetSpellTargetUnit())==false)
endfunction
function CR4 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real PAI=(LoadReal(LY,(S5I),(20)))
call UnitDamageTarget(SFI,SFI,PAI,false,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call FlushChildHashtable(LY,(S5I))
call PauseTimer(t)
call DestroyTimer(t)
endfunction
function CP4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real PAI=50+50*GetUnitAbilityLevel(SFI,(1093683507))
local real CQ4=50+25*GetUnitAbilityLevel(SFI,(1093683507))
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",P8I,"origin"))
if IsUnitAlly(P8I,GetOwningPlayer(SFI))and GetUnitState(P8I,UNIT_STATE_LIFE)>1.00 then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+PAI)
else
call UnitDamageTarget(SFI,P8I,PAI,false,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
endif
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(20),((CQ4)*1.0))
call TimerStart(t,0,false,function CR4)
endfunction
function ML1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CT4))
call TriggerAddAction(t,function CP4)
endfunction
function CU4 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(FMI),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call IA1(I01,1093684554)
call SetUnitAbilityLevel(I01,1093684554,FNI)
call IssueTargetOrder(I01,"forkedlightning",GetEnumUnit())
set I01=null
endfunction
function D04 takes unit P7I,unit P8I,integer SUI returns nothing
local group g=NTI()
set GK=P7I
set FNI=SUI
set FMI=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),700,Condition(function C81))
call ForGroup(g,function CU4)
call NSI(g)
set g=null
endfunction
function DI4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real D14=(LoadReal(LY,(S5I),(362)))
local unit P7I
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local integer SUI
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4250))))==1)==false then
if D14<GetEventDamage()then
set P7I=(LoadUnitHandle(LY,(S5I),(2)))
set SUI=(LoadInteger(LY,(S5I),(5)))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call SaveBoolean(LY,(GetHandleId(P8I)),(363),(false))
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call QGI(GetTriggerUnit(),D14)
call D04(P7I,GetTriggerUnit(),SUI)
elseif GetEventDamage()>0 then
call QGI(GetTriggerUnit(),GetEventDamage())
call SaveReal(LY,(S5I),(362),((D14-GetEventDamage())*1.0))
endif
endif
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if E31(GetSpellAbilityId())==true and GetSpellTargetUnit()==P8I then
set P7I=(LoadUnitHandle(LY,(S5I),(2)))
set SUI=(LoadInteger(LY,(S5I),(5)))
call SaveBoolean(LY,(GetHandleId(P8I)),(363),(false))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call D04(P7I,P8I,SUI)
endif
else
set P7I=(LoadUnitHandle(LY,(S5I),(2)))
set SUI=(LoadInteger(LY,(S5I),(5)))
call SaveBoolean(LY,(GetHandleId(P8I)),(363),(false))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call D04(P7I,P8I,SUI)
endif
set t=null
return false
endfunction
function DO4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093684550)
local integer KAO=GetHandleId(P8I)
local real D14
if(LoadBoolean(LY,(KAO),(363)))==true then
call TriggerEvaluate((LoadTriggerHandle(LY,(KAO),(364))))
endif
call UnitRemoveBuffs(P8I,false,true)
call DU1(P8I,0,0)
if SUI==1 then
set D14=110
elseif SUI==2 then
set D14=140
elseif SUI==3 then
set D14=170
else
set D14=200
endif
call SaveReal(LY,(S5I),(362),((D14)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\Defensive Barrier big.mdx",P8I,"chest")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerRegisterTimerEvent(t,15,false)
call TriggerAddCondition(t,Condition(function DI4))
call SaveTriggerHandle(LY,(KAO),(364),(t))
call SaveBoolean(LY,(KAO),(363),(true))
set t=null
set P8I=null
set P7I=null
endfunction
function D24 takes nothing returns boolean
if GetSpellAbilityId()==1093684550 then
call DO4()
endif
return false
endfunction
function D34 takes nothing returns nothing
if GetUnitAbilityLevel(GetSpellTargetUnit(),1112433775)>0 then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652617))
endif
endfunction
function D44 takes nothing returns boolean
if GetSpellAbilityId()==1093684550 then
call D34()
endif
return false
endfunction
function MN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function D44))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function D24))
set t=null
endfunction
function D54 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local trigger bt=(LoadTriggerHandle(LY,(S5I),(35)))
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)then
call TriggerRegisterUnitEvent(bt,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
endif
set t=null
set bt=null
return false
endfunction
function D64 takes nothing returns nothing
call TriggerRegisterUnitEvent(FTI,GetEnumUnit(),EVENT_UNIT_DAMAGED)
endfunction
function D74 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or IssueImmediateOrder(SFI,"windwalk")then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
return false
endfunction
function D84 takes unit SFI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function D74))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
set t=null
endfunction
function D94 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093684819)
local integer DC1=3+SUI
local real OA2
local boolean DA4=false
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093747777)
set DC1=4+1*SUI
set DA4=true
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED and((LoadInteger(LY,(GetHandleId((P7I))),((4250))))==1)then
if SFI==P7I then
call QGI(SFI,GetEventDamage())
call QGI(SFI,GetEventDamage())
elseif DA4 and QLI(SFI,P7I)<900 and IsUnitAlly(SFI,GetOwningPlayer(P7I))then
call QGI(SFI,GetEventDamage()*0.35)
call QGI(P7I,GetEventDamage()*0.35)
endif
elseif SFI==P7I and((GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()==1093684819 or GetSpellAbilityId()==1093747777))or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and((LoadInteger(LY,(GetHandleId((SFI))),((4251))))==1)==false and GetUnitState(SFI,UNIT_STATE_LIFE)<400 and GetUnitAbilityLevel(SFI,1112433775)==0))then
call TimerStart(EJ0[GetPlayerId(GetOwningPlayer(SFI))],70-10*SUI,false,null)
call SCI(SFI,4250,DC1)
call SCI(SFI,4251,70-10*SUI)
call UnitRemoveBuffs(SFI,false,true)
call DU1(SFI,0,0)
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
call DisableTrigger(t)
set FSI=true
if IssueImmediateOrder(SFI,"windwalk")==false then
call D84(SFI)
endif
set FSI=false
call EnableTrigger(t)
endif
call U5I("Abilities\\Spells\\Undead\\Unsummon\\UnsummonTarget.mdl",SFI,"origin",DC1)
endif
set t=null
set SFI=null
set P7I=null
return false
endfunction
function DB4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local group g
local region r
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function D94))
set FTI=t
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,999999,Condition(function D61))
call ForGroup(g,function D64)
call NSI(g)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveTriggerHandle(LY,(S5I),(35),(FTI))
set r=CreateRegion()
call RegionAddRect(r,GetWorldBounds())
call TriggerRegisterEnterRegion(t,r,Condition(function N1I))
call TriggerAddCondition(t,Condition(function D54))
set t=null
set P7I=null
set g=null
set r=null
endfunction
function DC4 takes nothing returns boolean
if(GetLearnedSkill()==1093684819 or GetLearnedSkill()==1093747777)and IsUnitIllusion(GetTriggerUnit())==false and(GetUnitAbilityLevel(GetTriggerUnit(),1093684819)==1 or GetUnitAbilityLevel(GetTriggerUnit(),1093747777)==1)then
call DB4()
endif
return false
endfunction
function MS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function DC4))
set t=null
endfunction
constant function MarkOfTheAbyss_AttackBuff takes nothing returns integer
return 1110455862
endfunction
constant function MarkOfTheAbyss_EffectCode takes nothing returns integer
return 1093684552
endfunction
constant function MarkOfTheAbyss_FrostmourneCode takes nothing returns integer
return 1093684551
endfunction
function DD4 takes nothing returns boolean
return GetUnitAbilityLevel(GetTriggerUnit(),(1110455862))>0 or GetUnitAbilityLevel(GetAttacker(),(1093684551))>0
endfunction
function DE4 takes nothing returns nothing
local unit Z4O=GetAttacker()
local unit P8I=GetTriggerUnit()
local unit SourceHero
local integer SUI=GetUnitAbilityLevel(Z4O,(1093684551))
local unit I01=CreateUnit(GetOwningPlayer(Z4O),1697656901,GetUnitX(Z4O),GetUnitY(Z4O),0)
if SUI>0 then
call SaveInteger(LY,(GetHandleId(P8I)),(203),(SUI))
else
set SUI=(LoadInteger(LY,(GetHandleId(P8I)),(203)))
endif
if IsUnitEnemy(P8I,GetOwningPlayer(Z4O))==true then
call IA1(I01,(1093684552))
call SetUnitAbilityLevel(I01,(1093684552),SUI)
call IssueTargetOrder(I01,"bloodlust",Z4O)
endif
endfunction
function MM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function DD4))
call TriggerAddAction(t,function DE4)
endfunction
function DF4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real PAI
local integer DC1
local unit IWO
if SUI==1 then
set PAI=16
set DC1=10
elseif SUI==2 then
set PAI=24
set DC1=10
elseif SUI==3 then
set PAI=32
set DC1=10
elseif SUI==4 then
set PAI=40
set DC1=10
endif
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetTriggerEvalCount(t)>1 and GetSpellAbilityId()==1093686065 and NNI(GetSpellTargetUnit())==false and P8I==GetSpellTargetUnit()then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_DEATH then
set IWO=GetKillingUnit()
if RLI(IWO)then
set IWO=(K1[GetPlayerId(GetOwningPlayer((IWO)))])
endif
if GetTriggerUnit()==P8I or IWO==P8I then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093752627)
call UnitRemoveAbility(P8I,1110459471)
endif
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==DC1 or GetUnitAbilityLevel(P8I,1110459471)==0 or RKI(P8I)==true then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093752627)
call UnitRemoveAbility(P8I,1110459471)
endif
call P6I(P7I,P8I,1,PAI)
endif
set t=null
set P7I=null
set P8I=null
set IWO=null
return false
endfunction
function DG4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093686065)
local real PAI
local real DC1
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Demon\\ReviveDemon\\ReviveDemon.mdl",P8I,"overhead"))
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093752627,false)
call IA1(P8I,1093752627)
call UnitMakeAbilityPermanent(P8I,true,1093752626)
call TriggerRegisterTimerEvent(t,1,true)
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DF4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\SoulBurn\\SoulBurnbuff.mdl",P8I,"overhead")))
set P7I=null
set P8I=null
set t=null
endfunction
function DH4 takes nothing returns nothing
if GetUnitAbilityLevel(GetEnumUnit(),1110459471)>0 then
set FRI=FRI+1
endif
endfunction
function DZ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g=NTI()
set GK=P7I
set FRI=0
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function CA1))
call ForGroup(g,function DH4)
call NSI(g)
if FRI==0 then
if GetUnitAbilityLevel(P7I,1110459738)>0 then
call UnitRemoveAbility(P7I,1093812562)
call UnitRemoveAbility(P7I,1093812563)
call UnitRemoveAbility(P7I,1093812565)
call UnitRemoveAbility(P7I,1093812564)
call UnitRemoveAbility(P7I,1093812561)
call UnitRemoveAbility(P7I,1093812560)
call UnitRemoveAbility(P7I,1110459738)
endif
elseif FRI==1 then
if GetUnitAbilityLevel(P7I,1093812562)==0 then
call UnitRemoveAbility(P7I,1093812562)
call UnitRemoveAbility(P7I,1093812563)
call UnitRemoveAbility(P7I,1093812565)
call UnitRemoveAbility(P7I,1093812564)
call UnitRemoveAbility(P7I,1093812561)
call UnitRemoveAbility(P7I,1093812560)
call UnitRemoveAbility(P7I,1110459738)
call UnitAddAbility(P7I,1093812562)
endif
elseif FRI==2 then
if GetUnitAbilityLevel(P7I,1093812563)==0 then
call UnitRemoveAbility(P7I,1093812562)
call UnitRemoveAbility(P7I,1093812563)
call UnitRemoveAbility(P7I,1093812565)
call UnitRemoveAbility(P7I,1093812564)
call UnitRemoveAbility(P7I,1093812561)
call UnitRemoveAbility(P7I,1093812560)
call UnitRemoveAbility(P7I,1110459738)
call UnitAddAbility(P7I,1093812563)
endif
elseif FRI==3 then
if GetUnitAbilityLevel(P7I,1093812565)==0 then
call UnitRemoveAbility(P7I,1093812562)
call UnitRemoveAbility(P7I,1093812563)
call UnitRemoveAbility(P7I,1093812565)
call UnitRemoveAbility(P7I,1093812564)
call UnitRemoveAbility(P7I,1093812561)
call UnitRemoveAbility(P7I,1093812560)
call UnitRemoveAbility(P7I,1110459738)
call UnitAddAbility(P7I,1093812565)
endif
elseif FRI==4 then
if GetUnitAbilityLevel(P7I,1093812564)==0 then
call UnitRemoveAbility(P7I,1093812562)
call UnitRemoveAbility(P7I,1093812563)
call UnitRemoveAbility(P7I,1093812565)
call UnitRemoveAbility(P7I,1093812564)
call UnitRemoveAbility(P7I,1093812561)
call UnitRemoveAbility(P7I,1093812560)
call UnitRemoveAbility(P7I,1110459738)
call UnitAddAbility(P7I,1093812564)
endif
elseif FRI==5 then
if GetUnitAbilityLevel(P7I,1093812561)==0 then
call UnitRemoveAbility(P7I,1093812562)
call UnitRemoveAbility(P7I,1093812563)
call UnitRemoveAbility(P7I,1093812565)
call UnitRemoveAbility(P7I,1093812564)
call UnitRemoveAbility(P7I,1093812561)
call UnitRemoveAbility(P7I,1093812560)
call UnitRemoveAbility(P7I,1110459738)
call UnitAddAbility(P7I,1093812561)
endif
elseif FRI>=6 then
if GetUnitAbilityLevel(P7I,1093812560)==0 then
call UnitRemoveAbility(P7I,1093812562)
call UnitRemoveAbility(P7I,1093812563)
call UnitRemoveAbility(P7I,1093812565)
call UnitRemoveAbility(P7I,1093812564)
call UnitRemoveAbility(P7I,1093812561)
call UnitRemoveAbility(P7I,1093812560)
call UnitRemoveAbility(P7I,1110459738)
call UnitAddAbility(P7I,1093812560)
endif
endif
set t=null
set P7I=null
return false
endfunction
function DV4 takes nothing returns boolean
if GetSpellAbilityId()==1093686065 and NNI(GetSpellTargetUnit())==false then
call DG4()
endif
return false
endfunction
function DW4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function DZ4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812562,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812563,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812565,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812564,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812561,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812560,false)
set t=null
endfunction
function DX4 takes nothing returns boolean
if GetLearnedSkill()==1093686065 and GetUnitAbilityLevel(GetTriggerUnit(),1093686065)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call DW4()
endif
return false
endfunction
function K21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DV4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function DX4))
set t=null
endfunction
function DY4 takes nothing returns boolean
return(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),1110454328)==0 and GetUnitAbilityLevel(GetFilterUnit(),1113815395)==0 and GetUnitAbilityLevel(GetFilterUnit(),1113815346)==0
endfunction
function DJ4 takes integer S5I,integer DK4 returns nothing
local integer i=1
loop
exitwhen i>DK4
call DestroyEffect((LoadEffectHandle(LY,(S5I),(2700+i))))
set i=i+1
endloop
endfunction
function DL4 takes nothing returns nothing
call UnitWakeUp(GetEnumUnit())
call IssueTargetOrder(GetEnumUnit(),"attack",FPI)
endfunction
function DM4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g=(LoadGroupHandle(LY,(S5I),(220)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer DK4=(LoadInteger(LY,(S5I),(365)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER and GetTriggerEventId()!=EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER and GetTriggerEventId()!=EVENT_PLAYER_UNIT_ISSUED_ORDER then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==(8+2*SUI)or IC1(SFI)then
call UnitRemoveAbility(SFI,1093683509)
call NSI(g)
call DJ4(S5I,DK4)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call DisableTrigger(t)
set FPI=SFI
call ForGroup(g,function DL4)
call EnableTrigger(t)
endif
else
if IsUnitInGroup(GetTriggerUnit(),g)==true and UnitIsSleeping(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1110454328)==0 and GetIssuedOrderId()!=851973 and FSI==false then
call DisableTrigger(t)
call IssueTargetOrder(GetTriggerUnit(),"attack",SFI)
call EnableTrigger(t)
endif
endif
set t=null
set g=null
set SFI=null
return false
endfunction
function DN4 takes nothing returns nothing
set UJ=UJ+1
call SaveEffectHandle(LY,(SK),(2700+UJ),(AddSpecialEffectTarget("Abilities\\Weapons\\LavaSpawnMissile\\LavaSpawnBirthMissile.mdl",GetEnumUnit(),"chest")))
endfunction
function DS4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093683510)
local group g=NTI()
call IA1(SFI,1093683509)
call SetUnitAbilityLevel(SFI,1093683509,SUI)
set GK=SFI
set FPI=SFI
set UJ=0
set SK=S5I
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),325,Condition(function DY4))
call ForGroup(g,function DN4)
call ForGroup(g,function DL4)
call SaveInteger(LY,(S5I),(365),(UJ))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveGroupHandle(LY,(S5I),(220),(g))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
call TriggerRegisterTimerEvent(t,0.2,true)
call UMI(t,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
call UMI(t,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
call UMI(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function DM4))
set t=null
set g=null
set SFI=null
endfunction
function DT4 takes nothing returns boolean
if GetSpellAbilityId()==1093683510 then
call DS4()
endif
return false
endfunction
function K41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DT4))
set t=null
endfunction
function DR4 takes nothing returns nothing
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
call P6I(GetTriggerUnit(),GetEnumUnit(),2,GetUnitAbilityLevel(GetTriggerUnit(),1093681974)*35+65)
endfunction
function DP4 takes nothing returns nothing
local group g
local unit SFI=GetTriggerUnit()
local integer NPI=(LoadInteger(LY,(GetHandleId(SFI)),(823)))
if GetRandomReal(0,100)<(NPI+1)*5.570 then
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),300,Condition(function C71))
call ForGroup(g,function DR4)
call SetUnitAnimation(SFI,"spin")
call OE1(SFI,0.6)
call SCI(SFI,4267,0.5-0.05*GetUnitAbilityLevel(GetTriggerUnit(),1093681974))
call SaveInteger(LY,(GetHandleId(SFI)),(823),(0))
call NSI(g)
else
call SaveInteger(LY,(GetHandleId(SFI)),(823),(NPI+1))
endif
set g=null
set SFI=null
endfunction
function DQ4 takes nothing returns boolean
if GetUnitAbilityLevel(GetTriggerUnit(),1110455120)>0 and IsUnitType(GetAttacker(),UNIT_TYPE_STRUCTURE)==false and IsUnitType(GetAttacker(),UNIT_TYPE_MECHANICAL)==false and GetUnitAbilityLevel(GetAttacker(),1093678162)==0 and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false and((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4267))))==1)==false then
call DP4()
endif
return false
endfunction
function K31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function DQ4))
set t=null
endfunction
function DU4 takes nothing returns nothing
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093814595,false)
call AX1(GetEnumUnit(),1093814595,1,FQI,1110459990)
endfunction
constant function CullingBlade_RawCode takes nothing returns integer
return 1093682482
endfunction
function E04 takes nothing returns boolean
return NNI(GetSpellTargetUnit())==false and(GetSpellAbilityId()==(1093682482)or GetSpellAbilityId()==1093750098)
endfunction
function EI4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real D14=GetUnitState(P8I,UNIT_STATE_LIFE)
local integer SUI=GetUnitAbilityLevel(SFI,(1093682482))
local unit I01
local boolean E14=false
local group g
local integer EO4=250
local integer E24=325
local integer E34=400
set FQI=6
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093750098)
set E14=true
set EO4=300
set E24=425
set E34=550
set FQI=10
endif
if(D14<=EO4 and SUI==1)or(D14<=E24 and SUI==2)or(D14<=E34 and SUI==3)then
if IsUnitType(P8I,UNIT_TYPE_HERO)then
if E14 then
call UnitRemoveAbility(SFI,1093750098)
call UnitAddAbility(SFI,1093750098)
call SetUnitAbilityLevel(SFI,1093750098,SUI)
else
call UnitRemoveAbility(SFI,1093682482)
call UnitAddAbility(SFI,1093682482)
call SetUnitAbilityLevel(SFI,1093682482,SUI)
endif
endif
call PlaySoundOnUnitBJ(FC,100,P8I)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl",P8I,"overhead"))
set I01=CreateUnit(GetOwningPlayer(SFI),1697656901,0,0,0)
call UnitRemoveBuffs(P8I,true,true)
call UnitRemoveAbility(P8I,1097167980)
call UnitDamageTarget(I01,P8I,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\AxeUltiMSFX_01.mdx",SFI,"origin"))
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),925,Condition(function CR1))
call ForGroup(g,function DU4)
call NSI(g)
set g=null
endif
endfunction
function K51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function E04))
call TriggerAddAction(t,function EI4)
endfunction
function E44 takes nothing returns boolean
return GetSpellAbilityId()==1093683019 and NNI(GetSpellTargetUnit())==false
endfunction
function E54 takes nothing returns nothing
call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),20+70*GetUnitAbilityLevel(GetTriggerUnit(),1093683019),ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC)
if GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)>1 then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+20+70*GetUnitAbilityLevel(GetTriggerUnit(),1093683019))
endif
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl",GetSpellTargetUnit(),"origin"))
endfunction
function E64 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit I01
if GetUnitAbilityLevel(P8I,1110454854)==0 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093678169,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816121,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetTriggerUnit()==P8I then
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093678169,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816121,false)
call UnitRemoveAbility(P8I,1110454854)
set I01=CreateUnit(p,1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093678169)
call SetUnitAbilityLevel(I01,1093678169,SUI)
call IssueTargetOrder(I01,"sleep",GetAttacker())
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
if GetUnitState(P8I,UNIT_STATE_LIFE)>21 then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)-20)
else
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093678169,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816121,false)
call UnitRemoveAbility(P8I,1110454854)
call P6I(P7I,P8I,1,50)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set p=null
set I01=null
set P8I=null
set P7I=null
return false
endfunction
function E74 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
set S5I=GetHandleId(t)
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(P7I)))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(P7I,1093678169)))
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function E64))
if GetUnitAbilityLevel(P8I,1093678169)>0 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093678169,false)
call IA1(P8I,1093816121)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816121,true)
endif
set NY0=true
call P6I(P7I,P8I,2,0)
set NY0=false
set P7I=null
set P8I=null
set t=null
endfunction
function E84 takes nothing returns boolean
if GetSpellAbilityId()==1093678169 and RYI(GetSpellTargetUnit())==false then
call E74()
endif
return false
endfunction
function E94 takes nothing returns boolean
if GetSpellAbilityId()==1093678169 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
if GetOwningPlayer(GetTriggerUnit())!=GetOwningPlayer(GetSpellTargetUnit())and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
endif
return false
endfunction
function EA4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1110454854)
call UnitRemoveAbility(P7I,1093816121)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093678169,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093816121,false)
set t=null
set P7I=null
return false
endfunction
function EB4 takes nothing returns boolean
local trigger t
if GetIssuedOrderId()==String2OrderIdBJ("manashieldon")and GetUnitAbilityLevel(GetTriggerUnit(),1093816121)>0 then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function EA4))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(GetTriggerUnit()))
endif
return false
endfunction
function K61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function E84))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function E94))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function EB4))
set t=null
endfunction
function EC4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real OA2
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer MKO=6
local unit I01
local integer SUI
local fogmodifier I31=(LoadFogModifierHandle(LY,(S5I),(42)))
if GetUnitAbilityLevel(P7I,1093747769)>0 then
set MKO=8
endif
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
call FogModifierStop(I31)
call DestroyFogModifier(I31)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveBoolean(LY,(GetHandleId(P7I)),(4344),(false))
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if(LoadBoolean(LY,(GetHandleId(GetTriggerUnit())),(4344)))then
set SUI=GetUnitAbilityLevel(P7I,1093678169)
if SUI>0 and GetUnitAbilityLevel(P7I,1093747769)>0 then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),0)
call IA1(I01,1093678169)
call SetUnitAbilityLevel(I01,1093678169,SUI)
call IssueTargetOrder(I01,"sleep",GetAttacker())
endif
endif
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI>MKO then
call FogModifierStop(I31)
call DestroyFogModifier(I31)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call PJI(P7I)
else
set OA2=RMinBJ(0.05*GetUnitState(P8I,UNIT_STATE_MAX_MANA),GetUnitState(P8I,UNIT_STATE_MANA))
if GetUnitAbilityLevel(P7I,1093747769)>0 then
set OA2=RMinBJ(0.1*GetUnitState(P8I,UNIT_STATE_MAX_MANA),GetUnitState(P8I,UNIT_STATE_MANA))
endif
if OA2>0 then
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+OA2)
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)-OA2)
endif
endif
endif
set t=null
set P7I=null
set P8I=null
set I31=null
return false
endfunction
function ED4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local fogmodifier I31=CreateFogModifierRadius(GetOwningPlayer(P7I),FOG_OF_WAR_VISIBLE,GetUnitX(P8I),GetUnitY(P8I),350,true,true)
call FogModifierStart(I31)
call UnitRemoveAbility(P8I,1110454854)
call UnitRemoveAbility(P8I,1112896368)
call UnitRemoveAbility(P8I,1114993524)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function EC4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveFogModifierHandle(LY,(S5I),(42),(I31))
call SaveBoolean(LY,(GetHandleId(P7I)),(4344),(true))
set P7I=null
set P8I=null
set t=null
set I31=null
endfunction
function EE4 takes nothing returns boolean
if GetSpellAbilityId()==1093677649 or GetSpellAbilityId()==1093747769 then
call ED4()
endif
return false
endfunction
function K71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EE4))
set t=null
endfunction
function EF4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(789)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()==EVENT_WIDGET_DEATH or LVO<(TimerGetElapsed(M))then
call UnitRemoveAbility(P8I,1093816135)
call UnitRemoveAbility(P8I,1093816129)
call UnitRemoveAbility(P8I,1093816134)
call UnitRemoveAbility(P8I,1093816136)
call UnitRemoveAbility(P8I,1110460229)
endif
set t=null
set P8I=null
return false
endfunction
function EG4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093816137)
if SUI==1 then
call UnitRemoveAbility(P8I,1110460229)
call UnitRemoveAbility(P8I,1093816129)
call UnitRemoveAbility(P8I,1093816134)
call UnitRemoveAbility(P8I,1093816136)
call IA1(P8I,1093816135)
call UnitMakeAbilityPermanent(P8I,true,1093816132)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816135,false)
elseif SUI==2 then
call UnitRemoveAbility(P8I,1110460229)
call UnitRemoveAbility(P8I,1093816135)
call UnitRemoveAbility(P8I,1093816134)
call UnitRemoveAbility(P8I,1093816136)
call IA1(P8I,1093816129)
call UnitMakeAbilityPermanent(P8I,true,1093816133)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816129,false)
elseif SUI==3 then
call UnitRemoveAbility(P8I,1110460229)
call UnitRemoveAbility(P8I,1093816135)
call UnitRemoveAbility(P8I,1093816129)
call UnitRemoveAbility(P8I,1093816136)
call IA1(P8I,1093816134)
call UnitMakeAbilityPermanent(P8I,true,1093816131)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816134,false)
elseif SUI==4 then
call UnitRemoveAbility(P8I,1110460229)
call UnitRemoveAbility(P8I,1093816135)
call UnitRemoveAbility(P8I,1093816129)
call UnitRemoveAbility(P8I,1093816134)
call IA1(P8I,1093816136)
call UnitMakeAbilityPermanent(P8I,true,1093816130)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093816136,false)
endif
call TriggerRegisterTimerEvent(t,20,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function EF4))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(GetHandleId(P8I)),(789),((19.9+(TimerGetElapsed(M)))*1.0))
set t=null
set P7I=null
set P8I=null
endfunction
function EH4 takes nothing returns boolean
if GetSpellAbilityId()==1093816137 and NNI(GetSpellTargetUnit())==false then
call EG4()
endif
return false
endfunction
function K81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EH4))
set t=null
endfunction
function EZ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=(LoadInteger(LY,(GetHandleId(P8I)),(281)))
local boolean EV4=(LoadBoolean(LY,(S5I),(280)))
local real DH1
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call SetUnitTurnSpeed(P8I,GetUnitDefaultTurnSpeed(P8I))
call SaveInteger(LY,(GetHandleId(P8I)),(281),(0))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DU1(P8I,0,0)
elseif NPI==0 then
call SetUnitTurnSpeed(P8I,GetUnitDefaultTurnSpeed(P8I))
call SaveInteger(LY,(GetHandleId(P8I)),(281),(0))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED and EV4==false then
if NPI>0 and GetUnitAbilityLevel(GetEventDamageSource(),1093748044)>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
call SaveBoolean(LY,(S5I),(280),(true))
if G8I then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\LordofFlameMissile\\LordofFlameMissile.mdl",P8I,"chest"))
set DH1=0.5*(5+5*GetUnitAbilityLevel(P7I,1093748044))*NPI
elseif MZ0==false and GetEventDamage()>12 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\LordofFlameMissile\\LordofFlameMissile.mdl",P8I,"chest"))
set DH1=(5+5*GetUnitAbilityLevel(P7I,1093748044))*NPI
endif
if IsUnitType(P8I,UNIT_TYPE_HERO)==false then
set DH1=DH1*0.5
endif
if G8I then
call P6I(P7I,P8I,1,DH1)
elseif MZ0==false and GetEventDamage()>12 then
call P6I(P7I,P8I,1,DH1)
endif
call SaveBoolean(LY,(S5I),(280),(false))
endif
else
call SetUnitTurnSpeed(P8I,GetUnitDefaultTurnSpeed(P8I)*0.3)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function EW4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real Z7O=(LoadReal(LY,(GetHandleId(P8I)),(675)))
local integer StickyCount=(LoadInteger(LY,(GetHandleId(P8I)),(281)))
if(TimerGetElapsed(M))-Z7O>=8 then
call SetUnitTurnSpeed(P8I,GetUnitDefaultTurnSpeed(P8I))
call SaveInteger(LY,(GetHandleId(P8I)),(281),(0))
call DU1(P8I,0,0)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function EX4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(P7I,1093748044)
local integer NPI=IMinBJ((LoadInteger(LY,(GetHandleId(P8I)),(281)))+1,10)
if RKI(P8I)then
set P7I=null
set P8I=null
return
endif
call DU1(P8I,SUI,NPI)
call SaveInteger(LY,(GetHandleId(P8I)),(281),(NPI))
call SaveReal(LY,(GetHandleId(P8I)),(675),(((TimerGetElapsed(M)))*1.0))
call SetUnitTurnSpeed(P8I,GetUnitDefaultTurnSpeed(P8I)*0.3)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
call UKI(GetOwningPlayer(P7I),I2S(NPI)+"!",2,P8I,0.026,50,0,255,216)
endif
if NPI==1 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveBoolean(LY,(S5I),(280),(false))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function EZ4))
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,8,false)
call TriggerAddCondition(t,Condition(function EW4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function EY4 takes nothing returns nothing
local group g=NTI()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local unit P7I=GetTriggerUnit()
call GroupEnumUnitsInRange(g,x,y,400,Condition(function C51))
call ForGroup(g,function EX4)
call I41(GetOwningPlayer(P7I),2,x,y,500)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x,y))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x,y+130))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x,y-130))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x+130,y))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x+130,y+130))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x+130,y-130))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x-130,y))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x-130,y+130))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",x-130,y-130))
call RemoveLocation(l)
call NSI(g)
set g=null
set l=null
set P7I=null
endfunction
function EJ4 takes nothing returns boolean
if GetSpellAbilityId()==1093748044 then
call EY4()
endif
return false
endfunction
function TM1 takes nothing returns nothing
local integer i
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EJ4))
set FUI[1]=1093752899
set FUI[2]=1093752898
set FUI[3]=1093752884
set FUI[4]=1093752885
set FUI[5]=1093752886
set FUI[6]=1093752887
set FUI[7]=1093752897
set FUI[8]=1093752888
set FUI[9]=1093752889
set FUI[10]=1093752900
set G0I[1]=1093752909
set G0I[2]=1093752901
set G0I[3]=1093752902
set G0I[4]=1093752903
set G0I[5]=1093752904
set G0I[6]=1093752905
set G0I[7]=1093752906
set G0I[8]=1093752907
set G0I[9]=1093752910
set G0I[10]=1093752908
set GII[1]=1093752911
set GII[2]=1093752918
set GII[3]=1093752919
set GII[4]=1093752913
set GII[5]=1093752914
set GII[6]=1093752915
set GII[7]=1093752920
set GII[8]=1093752916
set GII[9]=1093752917
set GII[10]=1093752912
set G1I[1]=1093752921
set G1I[2]=1093752922
set G1I[3]=1093753141
set G1I[4]=1093753142
set G1I[5]=1093753143
set G1I[6]=1093753137
set G1I[7]=1093753138
set G1I[8]=1093753139
set G1I[9]=1093753140
set G1I[10]=1093753136
set i=1
loop
exitwhen i>10
call Q1I(FUI[i])
set i=i+1
endloop
set i=1
loop
exitwhen i>10
call Q1I(G0I[i])
set i=i+1
endloop
set i=1
loop
exitwhen i>10
call Q1I(GII[i])
set i=i+1
endloop
set i=1
loop
exitwhen i>10
call Q1I(G1I[i])
set i=i+1
endloop
set t=null
endfunction
function EK4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real a=(LoadReal(LY,(S5I),(137)))
local real d=(LoadReal(LY,(S5I),(138)))
local real x1=(LoadReal(LY,(S5I),(6)))
local real y1=(LoadReal(LY,(S5I),(7)))
local real x2
local real y2
local real x
local real y
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>10 then
call UPI(GetUnitX(P8I),GetUnitY(P8I),200)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set x2=x1+d*Cos(a)
set y2=y1+d*Sin(a)
if(IsPointInRegion(LN,((x2)*1.0),((y2)*1.0)))==false then
call SaveReal(LY,(S5I),(6),((x2)*1.0))
call SaveReal(LY,(S5I),(7),((y2)*1.0))
set x=x2
set y=y2
else
set x=x1
set y=y1
endif
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
call SetUnitPosition(P8I,x,y)
else
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
endif
endif
set t=null
set P8I=null
return false
endfunction
function EL4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093744982)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function EK4))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(137),((Atan2(GetUnitY(P8I)-G5I,GetUnitX(P8I)-G4I))*1.0))
call SaveReal(LY,(S5I),(138),((QDI((400-QNI(G4I,G5I,GetUnitX(P8I),GetUnitY(P8I))),10)/10)*1.0))
call SaveReal(LY,(S5I),(6),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P8I))*1.0))
set P7I=null
set P8I=null
set t=null
call P6I(GOI,GetEnumUnit(),1,G3I*75)
endfunction
function EM4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real a=(LoadReal(LY,(S5I),(137)))
local group g=NTI()
local unit P8I
local real x=GetUnitX(I01)
local real y=GetUnitY(I01)
local real EN4=(LoadReal(LY,(S5I),(6)))
local real ES4=(LoadReal(LY,(S5I),(7)))
set x=PTI(x+36*Cos(a))
set y=PUI(y+36*Sin(a))
call SetUnitX(I01,x)
call SetUnitY(I01,y)
set GK=I01
call GroupEnumUnitsInRange(g,x,y,125,Condition(function CE1))
set P8I=FirstOfGroup(g)
call NSI(g)
if QNI(x,y,EN4,ES4)<40 or GetTriggerEvalCount(t)>100 then
set P8I=null
set x=EN4
set y=ES4
set GOI=P7I
set G3I=(LoadInteger(LY,(S5I),(5)))
set G2I=P8I
if P8I==null then
set G4I=x
set G5I=y
else
set G4I=GetUnitX(P8I)
set G5I=GetUnitY(P8I)
endif
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,400,Condition(function CE1))
if P8I!=null then
call GroupRemoveUnit(g,P8I)
call DD1(P7I,P8I,0.3)
call P6I(GOI,P8I,1,G3I*75)
endif
call ForGroup(g,function EL4)
call KillUnit(I01)
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set I01=null
set P7I=null
set g=null
return false
endfunction
function ET4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093744982)
local unit I01
call RemoveLocation(l)
set I01=CreateUnit(GetOwningPlayer(P7I),1747993924,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call TriggerRegisterTimerEvent(t,0.04,true)
call TriggerAddCondition(t,Condition(function EM4))
set P7I=null
set I01=null
set l=null
set t=null
endfunction
function ER4 takes nothing returns boolean
if GetSpellAbilityId()==1093744982 then
call ET4()
endif
return false
endfunction
function TN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ER4))
set t=null
endfunction
function EP4 takes nothing returns nothing
local unit P7I=G6I
local unit JMO=GetEnumUnit()
local unit P8I
local group g
if GetUnitCurrentOrder(JMO)==0 then
set g=NTI()
set GK=JMO
call GroupEnumUnitsInRange(g,GetUnitX(JMO),GetUnitY(JMO),825,Condition(function CA1))
set P8I=FirstOfGroup(g)
if P8I!=null then
call GroupRemoveUnit(g,P8I)
endif
if FirstOfGroup(g)==null and P8I==P7I then
call IssueTargetOrder(JMO,"attack",P8I)
endif
call NSI(g)
set P8I=null
set g=null
endif
set P7I=null
set JMO=null
endfunction
function EQ4 takes unit P7I returns nothing
local group g=NTI()
set GK=P7I
set G6I=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1000,Condition(function DA1))
call ForGroup(g,function EP4)
call NSI(g)
set g=null
endfunction
function EU4 takes nothing returns nothing
call P6I(G6I,GetEnumUnit(),1,G9I*10)
endfunction
function F04 takes unit P7I,integer S5I,integer NPI returns nothing
local group g1=NTI()
local group g2=NTI()
local integer i=0
set GK=P7I
loop
exitwhen i>NPI
call GroupEnumUnitsInRange(g2,(LoadReal(LY,(S5I),(2300+i))),(LoadReal(LY,(S5I),(2500+i))),225,Condition(function CA1))
call GroupAddGroup(g2,g1)
call GroupClear(g2)
set i=i+1
endloop
call NSI(g2)
if FirstOfGroup(g1)!=null then
set G6I=P7I
set G9I=GetUnitAbilityLevel(P7I,1093744986)
set G7I=CreateUnit(GetOwningPlayer(P7I),1697656901,0,0,0)
call IA1(G7I,1093744981)
call SetUnitAbilityLevel(G7I,1093744981,G9I)
call ForGroup(g1,function EU4)
endif
call NSI(g1)
set g1=null
set g2=null
endfunction
function FI4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer i
local real x
local real y
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>360 then
set i=0
loop
exitwhen i>NPI
call DestroyEffect((LoadEffectHandle(LY,(S5I),(2700+i))))
set i=i+1
endloop
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set x=GetUnitX(P7I)
set y=GetUnitY(P7I)
if C2==true then
call EQ4(P7I)
endif
if QNI(x,y,II3,I13)>125 then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
call SaveEffectHandle(LY,(S5I),(2700+NPI),(AddSpecialEffect("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",x,y)))
call SaveReal(LY,(S5I),(2300+NPI),((x)*1.0))
call SaveReal(LY,(S5I),(2500+NPI),((y)*1.0))
endif
if ModuloInteger(GetTriggerEvalCount(t),10)==0 then
set G8I=true
call F04(P7I,S5I,NPI)
set G8I=false
endif
call UPI(GetUnitX(P7I),GetUnitY(P7I),100)
endif
return false
endfunction
function F14 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function FI4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveEffectHandle(LY,(S5I),(2700),(AddSpecialEffect("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",GetUnitX(P7I),GetUnitY(P7I))))
call SaveReal(LY,(S5I),(23),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(2300),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(2500),((GetUnitY(P7I))*1.0))
set P7I=null
set t=null
endfunction
function FO4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if IC1(P7I)then
return false
endif
if GetUnitTypeId(P7I)==1328558390 then
call SetUnitFlyHeight(P7I,170,0)
elseif GetUnitTypeId(P7I)==1328558391 then
call SetUnitFlyHeight(P7I,220,0)
endif
set t=null
set P7I=null
return false
endfunction
function F24 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,2,true)
call TriggerAddCondition(t,Condition(function FO4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function F34 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
call SetTerrainPathable(x,y,PATHING_TYPE_WALKABILITY,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function F44 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
call SetTerrainPathable(x,y,PATHING_TYPE_WALKABILITY,true)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function F34))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set P7I=null
set t=null
endfunction
function F54 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093744986 then
if GetUnitTypeId(GetTriggerUnit())==1328558390 then
call F14()
elseif IsTerrainPathable(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),PATHING_TYPE_WALKABILITY)then
call F44()
endif
endif
else
if GetLearnedSkill()==1093744986 and GetUnitAbilityLevel(GetTriggerUnit(),1093744986)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call F24()
endif
endif
return false
endfunction
function TS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function F54))
set t=null
endfunction
function F64 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real d=QNI(GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))
local real a
local real DC1=(LoadReal(LY,(S5I),(57)))
local real x0=(LoadReal(LY,(S5I),(282)))
local real y0=(LoadReal(LY,(S5I),(283)))
local real x1
local real y1
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>R2I(20*DC1)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
call SetUnitPathing(P8I,true)
call BP1(P7I)
call UPI(GetUnitX(P8I),GetUnitY(P8I),175)
else
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
if QNI(x0,y0,GetUnitX(P7I),GetUnitY(P7I))>400 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
call SetUnitPathing(P8I,true)
call BP1(P7I)
call UPI(GetUnitX(P8I),GetUnitY(P8I),175)
else
call SaveReal(LY,(S5I),(282),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(283),((GetUnitY(P7I))*1.0))
if d>300 then
set a=Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I))
set x1=GetUnitX(P7I)+300*Cos(a)
set y1=GetUnitY(P7I)+300*Sin(a)
if(IsPointInRegion(LN,((x1)*1.0),((y1)*1.0)))==false then
call SetUnitX(P8I,x1)
call SetUnitY(P8I,y1)
endif
endif
endif
endif
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function F74 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1966092377,GetUnitX(P7I),GetUnitY(P7I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093744975)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093750102)+2
endif
call IA1(I01,1093744974)
call SetUnitAbilityLevel(I01,1093744974,GetUnitAbilityLevel(P7I,1093744975))
call IssueTargetOrder(I01,"magicleash",P8I)
call SetUnitPathing(I01,false)
call SetUnitPathing(P8I,false)
call BT1(P7I)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function F64))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(57),((2.5+SUI*0.5)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\AerialShackles\\AerialShacklesTarget.mdl",P8I,"chest")))
call SaveReal(LY,(S5I),(282),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(283),((GetUnitY(P7I))*1.0))
set t=null
set P7I=null
set P8I=null
set I01=null
endfunction
function F84 takes nothing returns boolean
if(GetSpellAbilityId()==1093744975 or GetSpellAbilityId()==1093750102)and NNI(GetSpellTargetUnit())==false and GetUnitTypeId(GetSpellTargetUnit())!=1848651852 then
call F74()
endif
return false
endfunction
function TT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function F84))
set t=null
endfunction
function F94 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local real d=SquareRoot((II3-x)*(II3-x)+(I13-y)*(I13-y))
local real VZ3=0.2*SUI*d
local integer KO2=(LoadInteger(LY,(S5I),(25)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call UnitRemoveAbility(P8I,1093683528)
call UnitRemoveAbility(P8I,1110456396)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endif
if d>1300 then
set VZ3=0
endif
if VZ3>5 then
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",P8I,"origin"))
endif
if((LoadInteger(LY,(GetHandleId((P8I))),((2485))))==1)and VZ3>=GetUnitState(P8I,UNIT_STATE_LIFE)-2 then
set VZ3=GetUnitState(P8I,UNIT_STATE_LIFE)-2
endif
if RYI(P8I)then
set VZ3=0
endif
if VZ3>0 and IC1(P8I)==false and BL1(P8I)==false then
call P6I(P7I,P8I,6,VZ3)
endif
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
call SaveInteger(LY,(S5I),(25),(KO2+1))
if IC1(P8I)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif KO2>4*(12)then
call UnitRemoveAbility(P8I,1093683528)
call UnitRemoveAbility(P8I,1110456396)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function FA4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093684296)
local real PAI=50+100*SUI
call IA1(P8I,1093683528)
call SetUnitAbilityLevel(P8I,1093683528,SUI)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",P8I,"chest"))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(23),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P8I))*1.0))
call SaveInteger(LY,(S5I),(25),(0))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function F94))
call TriggerRegisterDeathEvent(t,P8I)
set P7I=null
set P8I=null
set t=null
endfunction
function FB4 takes nothing returns boolean
if GetSpellAbilityId()==1093684296 and NNI(GetSpellTargetUnit())==false then
call FA4()
endif
return false
endfunction
function KC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FB4))
set t=null
endfunction
function FC4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real H71=(LoadReal(LY,(S5I),(6)))
local real H81=(LoadReal(LY,(S5I),(7)))
call H61(P7I,H71,H81,H21(P7I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
set t=null
set P7I=null
return false
endfunction
function FD4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer i=0
local player p
loop
exitwhen i>5
set p=BO[i]
if GGI[GetPlayerId(p)]==null or IsPlayerAlly(GetOwningPlayer(P7I),p)==true or BM1(GGI[GetPlayerId(p)])then
call SetUnitX(GFI[GetPlayerId(p)],P4I(P7I))
call SetUnitY(GFI[GetPlayerId(p)],P5I(P7I))
else
if IsUnitVisible(GGI[GetPlayerId(p)],GetOwningPlayer(P7I))==false then
call KillUnit(CreateUnit(GetOwningPlayer(P7I),1865429571,GetUnitX(GGI[GetPlayerId(p)]),GetUnitY(GGI[GetPlayerId(p)]),0))
endif
call SetUnitX(GFI[GetPlayerId(p)],GetUnitX(GGI[GetPlayerId(p)]))
call SetUnitY(GFI[GetPlayerId(p)],GetUnitY(GGI[GetPlayerId(p)]))
endif
set p=CO[i]
if GGI[GetPlayerId(p)]==null or IsPlayerAlly(GetOwningPlayer(P7I),p)==true or BM1(GGI[GetPlayerId(p)])then
call SetUnitX(GFI[GetPlayerId(p)],P4I(P7I))
call SetUnitY(GFI[GetPlayerId(p)],P5I(P7I))
else
if IsUnitVisible(GGI[GetPlayerId(p)],GetOwningPlayer(P7I))==false then
call KillUnit(CreateUnit(GetOwningPlayer(P7I),1865429571,GetUnitX(GGI[GetPlayerId(p)]),GetUnitY(GGI[GetPlayerId(p)]),0))
endif
call SetUnitX(GFI[GetPlayerId(p)],GetUnitX(GGI[GetPlayerId(p)]))
call SetUnitY(GFI[GetPlayerId(p)],GetUnitY(GGI[GetPlayerId(p)]))
endif
set i=i+1
endloop
set p=null
set t=null
set P7I=null
return false
endfunction
function FE4 takes unit P8I,player p,boolean ZXO returns nothing
if ZXO then
set GGI[GetPlayerId(GetOwningPlayer(P8I))]=P8I
else
set GGI[GetPlayerId(GetOwningPlayer(P8I))]=null
endif
endfunction
function FF4 takes nothing returns nothing
local unit I01
if BU1(GetEnumUnit())==false then
call UnitRemoveAbility(GetEnumUnit(),1113875828)
call FE4(GetEnumUnit(),GetOwningPlayer(GDI),true)
else
call FE4(GetEnumUnit(),GetOwningPlayer(GDI),true)
if GetUnitAbilityLevel(GetEnumUnit(),1113875828)==0 and GetUnitAbilityLevel(GetEnumUnit(),1110454356)==0 and GetUnitAbilityLevel(GetEnumUnit(),1110454348)==0 then
set I01=CreateUnit(GetOwningPlayer(GDI),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call UnitAddAbility(I01,1093817943)
call IssueImmediateOrderById(I01,852625)
set I01=null
endif
endif
endfunction
function FG4 takes nothing returns nothing
local real JC3=0.3
if IC1(GDI)==true or IsUnitInGroup(GetEnumUnit(),GCI)==false or GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)>JC3 or(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)>JC3/2 and BU1(GetEnumUnit())==true)then
call GroupRemoveUnit(GBI,GetEnumUnit())
call FE4(GetEnumUnit(),GetOwningPlayer(GDI),false)
call UnitRemoveAbility(GetEnumUnit(),1113875828)
endif
endfunction
function FH4 takes nothing returns nothing
local real JC3
if IC1(GDI)==false and IsUnitInGroup(GetEnumUnit(),GBI)==false and IsUnitIllusion(GetEnumUnit())==false then
set JC3=0.3
if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)<JC3 then
call GroupAddUnit(GBI,GetEnumUnit())
endif
endif
endfunction
function FZ4 takes nothing returns nothing
local real JC3
if IC1(GDI)==false and IsUnitIllusion(GetEnumUnit())==false then
set GZI=GZI+1
set GHI=GHI+(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
endif
endfunction
function FV4 takes unit P7I,integer E01 returns nothing
local integer i=1
if E01==0 then
call UnitRemoveAbility(P7I,1110455634)
call G21(P7I,0)
else
call G21(P7I,E01*5)
endif
set i=1
loop
exitwhen i>20
if i!=E01 then
call UnitRemoveAbility(P7I,GAI[i])
elseif GetUnitAbilityLevel(P7I,GAI[i])==0 then
call UnitRemoveAbility(P7I,1110455634)
call UnitAddAbility(P7I,GAI[i])
endif
set i=i+1
endloop
endfunction
function FW4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group FX4=(LoadGroupHandle(LY,(S5I),(22)))
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093683512)
local integer E01=0
local real FY4
local real FJ4=0
set GK=P7I
set GDI=P7I
set GBI=FX4
set GEI=SUI
set GHI=0
set GZI=0
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),25+25000,Condition(function DO1))
call ForGroup(g,function FZ4)
call NSI(g)
if GZI>0 then
set FY4=GZI-GHI
set FJ4=(FY4*SUI*10)
set E01=IMinBJ(R2I(FJ4/5),20)
endif
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),25+25000,Condition(function DO1))
call ForGroup(g,function FH4)
set GCI=g
call ForGroup(GBI,function FG4)
call ForGroup(GBI,function FF4)
if E01==0 then
call FV4(P7I,E01)
call SaveInteger(LY,(GetHandleId(P7I)),(814),(0))
else
call FV4(P7I,E01)
call SaveInteger(LY,(GetHandleId(P7I)),(814),(E01))
endif
if E01<5 then
call UnitRemoveAbility(P7I,1093808436)
else
call IA1(P7I,1093808436)
endif
call NSI(g)
set t=null
set P7I=null
set g=null
set FX4=null
return false
endfunction
function FK4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local player p
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function FW4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.04,true)
call TriggerAddCondition(t,Condition(function FD4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.005,true)
call TriggerAddCondition(t,Condition(function FC4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
set p=BO[1]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=BO[2]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=BO[3]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=BO[4]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=BO[5]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=CO[1]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=CO[2]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=CO[3]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=CO[4]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set p=CO[5]
set GFI[GetPlayerId(p)]=CreateUnit(GetOwningPlayer(P7I),1865429570,P4I(P7I),P5I(P7I),0)
set GGI[GetPlayerId(p)]=null
set t=null
set P7I=null
endfunction
function FL4 takes nothing returns boolean
if GetLearnedSkill()==1093683512 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093683512)==1 then
call FK4()
endif
return false
endfunction
function KA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function FL4))
set GAI[1]=1093817656
set GAI[2]=1093808215
set GAI[3]=1093817657
set GAI[4]=1093817654
set GAI[5]=1093817655
set GAI[6]=1093817667
set GAI[7]=1093817668
set GAI[8]=1093817665
set GAI[9]=1093817666
set GAI[10]=1093808218
set GAI[11]=1093817670
set GAI[12]=1093817669
set GAI[13]=1093817671
set GAI[14]=1093817672
set GAI[15]=1093808216
set GAI[16]=1093817676
set GAI[17]=1093817676
set GAI[18]=1093808217
set GAI[19]=1093817674
set GAI[20]=1093817673
set t=null
endfunction
function FM4 takes nothing returns nothing
call P6I(GVI,GetEnumUnit(),1,80+40*GWI)
endfunction
function FN4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093818425)
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
local group g=NTI()
call IA1(I01,1093873729)
call SetUnitAbilityLevel(I01,1093873729,SUI)
call IssuePointOrder(I01,"silence",x,y)
set GK=P7I
set GVI=P7I
set GWI=SUI
call GroupEnumUnitsInRange(g,x,y,600+25,Condition(function CA1))
call ForGroup(g,function FM4)
call IO1(OG,x,y)
call NSI(g)
call DestroyEffect(AddSpecialEffect(GXI,x,y))
call DestroyEffect(AddSpecialEffect(GXI,x+200,y))
call DestroyEffect(AddSpecialEffect(GXI,x+200,y-200))
call DestroyEffect(AddSpecialEffect(GXI,x+200,y+200))
call DestroyEffect(AddSpecialEffect(GXI,x-200,y-200))
call DestroyEffect(AddSpecialEffect(GXI,x,y+200))
call DestroyEffect(AddSpecialEffect(GXI,x-200,y+200))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function FS4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call I41(GetOwningPlayer(P7I),3,x,y,600)
call TriggerRegisterTimerEvent(t,3,false)
call TriggerAddCondition(t,Condition(function FN4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call DestroyEffect(AddSpecialEffect("war3mapImported\\Bloodrite.mdx",x,y))
call IO1(IG,x,y)
set t=null
set P7I=null
endfunction
function FT4 takes nothing returns boolean
if GetSpellAbilityId()==1093818425 then
call FS4()
endif
return false
endfunction
function K91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FT4))
set t=null
endfunction
function FR4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093873969)
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GYI and(P8I==GetEventDamageSource()or P8I==GetTriggerUnit())then
set GYI=false
call P6I(GetEventDamageSource(),GetTriggerUnit(),3,GetEventDamage()*(20+5*SUI)/100)
set GYI=true
endif
elseif GetTriggerEventId()==EVENT_UNIT_DEATH then
if GetKillingUnit()==P8I or GetTriggerUnit()==P8I then
call SetUnitState(GetKillingUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*0.25+GetUnitState(GetKillingUnit(),UNIT_STATE_LIFE))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",GetKillingUnit(),"origin"))
elseif GetOwningPlayer(GetKillingUnit())==GetOwningPlayer(P8I)and GetUnitAbilityLevel(GetKillingUnit(),1093678162)>0 then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_MAX_LIFE)*0.25+GetUnitState(P8I,UNIT_STATE_LIFE))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",P8I,"origin"))
endif
if GetTriggerUnit()==P8I then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function FP4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093873969)
local unit u
call TriggerRegisterTimerEvent(t,8+SUI,false)
call TriggerAddCondition(t,Condition(function FR4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\TrollBerserk\\HeadhunterWEAPONSLeft.mdl",P8I,"hand,right")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\TrollBerserk\\HeadhunterWEAPONSLeft.mdl",P8I,"hand,left")))
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function CO1))
loop
set u=FirstOfGroup(g)
exitwhen u==null
call GroupRemoveUnit(g,u)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DEATH)
endloop
call NSI(g)
set u=null
set t=null
set P7I=null
set P8I=null
set g=null
endfunction
function FQ4 takes nothing returns boolean
if GetSpellAbilityId()==1093873969 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or NNI(GetSpellTargetUnit())==false then
call FP4()
endif
endif
return false
endfunction
function FU4 takes nothing returns boolean
if GetSpellAbilityId()==1093873969 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and GetSpellTargetUnit()!=GetTriggerUnit()and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
return false
endfunction
function KB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function FU4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FQ4))
set t=null
endfunction
function G04 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit GI4
local integer S5I=GetHandleId(P7I)
local integer SUI=GetUnitAbilityLevel(P7I,1093818963)
local integer G14=(LoadInteger(LY,(S5I),(279)))
local unit GO4=(LoadUnitHandle(LY,(S5I),(1400+1)))
local integer x=1
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(830)))
if JGO>0 then
set GI4=CreateUnit(GetOwningPlayer(P7I),1865429043,GetSpellTargetX(),GetSpellTargetY(),GetRandomReal(0,360))
set G14=G14+1
call SaveUnitHandle(LY,(S5I),(1400+G14),(GI4))
call SetUnitAbilityLevel(GI4,1093681734,SUI)
if(G14>SUI*2)then
call KillUnit(GO4)
loop
exitwhen x==G14
call SaveUnitHandle(LY,(S5I),(1400+x),((LoadUnitHandle(LY,(S5I),(1400+x+1)))))
set x=x+1
endloop
set G14=G14-1
endif
call SaveInteger(LY,(S5I),(279),(G14))
call UnitRemoveAbility(P7I,GJI[JGO])
set JGO=JGO-1
call SaveInteger(LY,(GetHandleId(P7I)),(830),(JGO))
call IA1(P7I,GJI[JGO])
else
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659545))
endif
set P7I=null
set GI4=null
set GO4=null
endfunction
function G24 takes nothing returns boolean
if GetSpellAbilityId()==1093818965 or GetSpellAbilityId()==1093818968 or GetSpellAbilityId()==1093818967 or GetSpellAbilityId()==1093818964 or GetSpellAbilityId()==1093818966 then
call G04()
endif
return false
endfunction
function G34 takes unit G44 returns nothing
local integer S5I=GetHandleId(G44)
local integer SUI=GetUnitAbilityLevel(G44,1093818963)
local integer G14=(LoadInteger(LY,(S5I),(279)))
local integer x=1
local unit GV2
loop
exitwhen x>G14
set GV2=(LoadUnitHandle(LY,(S5I),(1400+x)))
call SetUnitAbilityLevel(GV2,1093681734,SUI)
set x=x+1
endloop
endfunction
function G54 takes nothing returns boolean
return GetLearnedSkill()==1093818963 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function G64 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit G44=(LoadUnitHandle(LY,(S5I),(366)))
local integer G74=GetHandleId(K1[GetPlayerId(GetOwningPlayer(G44))])
local integer G14=(LoadInteger(LY,(G74),(279)))
local integer x=1
local boolean G84=false
local player G94
local boolean GA4=false
local integer SUI=GetUnitAbilityLevel(K1[GetPlayerId(GetOwningPlayer(G44))],1093818963)
local integer GB4=1093873716
if SUI==2 then
set GB4=1093873717
elseif SUI==3 then
set GB4=1093873715
elseif SUI==4 then
set GB4=1093873714
endif
if G44==null then
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
else
if(LoadReal(LY,(GetHandleId(G44)),(785)))+6>(TimerGetElapsed(M))then
set GA4=true
endif
loop
exitwhen x>G14 or G84==true
set G84=IsUnitInRange(G44,(LoadUnitHandle(LY,(G74),(1400+x))),900)
set x=x+1
endloop
if G84==false then
call UnitRemoveAbility(G44,1110454595)
endif
if IsUnitType(G44,UNIT_TYPE_HERO)==true then
if GetUnitAbilityLevel(G44,1110454595)>0 then
call IA1(G44,1093677617)
if TII(GetOwningPlayer(G44))then
set G94=CO[0]
else
set G94=BO[0]
endif
if GA4==false then
call IA1(G44,1097167976)
call IA1(G44,GB4)
call SetPlayerAbilityAvailable(GetOwningPlayer(G44),GB4,false)
call SetUnitPathing(G44,false)
if PQI(GetUnitX(G44))!=GetUnitX(G44)or QII(GetUnitY(G44))!=GetUnitY(G44)then
call SetUnitX(G44,PQI(GetUnitX(G44)))
call SetUnitY(G44,QII(GetUnitY(G44)))
endif
else
call UnitRemoveAbility(G44,1097167976)
call UnitRemoveAbility(G44,1093873716)
call UnitRemoveAbility(G44,1093873717)
call UnitRemoveAbility(G44,1093873715)
call UnitRemoveAbility(G44,1093873714)
call UnitRemoveAbility(G44,1110460489)
call SetUnitPathing(G44,true)
call UPI(GetUnitX(G44),GetUnitY(G44),50)
endif
set G94=null
else
call UnitRemoveAbility(G44,1093677617)
call UnitRemoveAbility(G44,1097167976)
call SetUnitPathing(G44,true)
call UnitRemoveAbility(G44,1093873716)
call UnitRemoveAbility(G44,1093873717)
call UnitRemoveAbility(G44,1093873715)
call UnitRemoveAbility(G44,1093873714)
call UnitRemoveAbility(G44,1110460489)
call UPI(GetUnitX(G44),GetUnitY(G44),50)
endif
else
if GetUnitAbilityLevel(G44,1110454595)>0 then
call IA1(G44,1093810499)
if GA4==false then
call IA1(G44,1097167976)
call IA1(G44,GB4)
call SetPlayerAbilityAvailable(GetOwningPlayer(G44),GB4,false)
call SetUnitPathing(G44,false)
if PQI(GetUnitX(G44))!=GetUnitX(G44)or QII(GetUnitY(G44))!=GetUnitY(G44)then
call SetUnitX(G44,PQI(GetUnitX(G44)))
call SetUnitY(G44,QII(GetUnitY(G44)))
endif
else
call UnitRemoveAbility(G44,1097167976)
call UnitRemoveAbility(G44,1093873716)
call UnitRemoveAbility(G44,1093873717)
call UnitRemoveAbility(G44,1093873715)
call UnitRemoveAbility(G44,1093873714)
call UnitRemoveAbility(G44,1110460489)
call SetUnitPathing(G44,true)
endif
else
call UnitRemoveAbility(G44,1093810499)
call UnitRemoveAbility(G44,1097167976)
call UnitRemoveAbility(G44,1093873716)
call UnitRemoveAbility(G44,1093873717)
call UnitRemoveAbility(G44,1093873715)
call UnitRemoveAbility(G44,1093873714)
call UnitRemoveAbility(G44,1110460489)
call SetUnitPathing(G44,true)
endif
endif
endif
set G44=null
endfunction
function GC4 takes unit G44 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddAction(t,function G64)
call SaveUnitHandle(LY,(S5I),(366),(G44))
set t=null
endfunction
function GD4 takes nothing returns boolean
if GetUnitTypeId(GetSummonedUnit())==1848652101 or GetUnitTypeId(GetSummonedUnit())==1848652089 then
call GC4(GetSummonedUnit())
endif
return false
endfunction
function GE4 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local trigger t
if(GetUnitAbilityLevel(PKI,1093818963)==1)then
call GC4(PKI)
else
call G34(PKI)
endif
set PKI=null
endfunction
function GF4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(830)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer NQ3=GetUnitAbilityLevel(P7I,1093818963)
if JGO<NQ3 then
set NPI=NPI-1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==0 then
call UnitRemoveAbility(P7I,GJI[JGO])
set NPI=40
call SaveInteger(LY,(S5I),(34),(NPI))
set JGO=JGO+1
call SaveInteger(LY,(GetHandleId(P7I)),(830),(JGO))
call IA1(P7I,GJI[JGO])
endif
endif
set t=null
set P7I=null
return false
endfunction
function GG4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveInteger(LY,(GetHandleId(P7I)),(830),(1))
call IA1(P7I,GJI[1])
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function GF4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(40))
set P7I=null
set t=null
endfunction
function GH4 takes nothing returns boolean
if GetLearnedSkill()==1093818963 and IsUnitIllusion(GetTriggerUnit())==false then
if GetUnitAbilityLevel(GetTriggerUnit(),1093818963)==1 then
call GG4()
endif
endif
return false
endfunction
function KD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function G54))
call TriggerAddAction(t,function GE4)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function GD4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function G24))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function GH4))
set GJI[0]=1093818965
set GJI[1]=1093818968
set GJI[2]=1093818967
set GJI[3]=1093818964
set GJI[4]=1093818966
endfunction
function GZ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and E31(GetSpellAbilityId())and GetSpellTargetUnit()==SFI)then
if IC1(SFI)==false then
call UnitRemoveAbility(SFI,1093687122)
call UnitRemoveAbility(SFI,1110454597)
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
return false
endfunction
function GV4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,14,false)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GZ4))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\VampiricPotion\\VampPotionCaster.mdl",SFI,"origin")))
call IA1(SFI,1093687122)
call SetUnitAbilityLevel(SFI,1093687122,GetUnitAbilityLevel(SFI,1093687121))
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093687122,false)
endfunction
function GW4 takes nothing returns boolean
if GetSpellAbilityId()==1093687121 then
call GV4()
endif
return false
endfunction
function KE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GW4))
set t=null
endfunction
function GX4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEvalCount(t)>300 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetUnitAbilityLevel(P8I,1110459703)>0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P6I(P7I,P8I,1,GetUnitAbilityLevel(P7I,1093681736)*75)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function GY4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerAddCondition(t,Condition(function GX4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function GJ4 takes nothing returns boolean
if GetSpellAbilityId()==1093681736 then
call GY4()
endif
return false
endfunction
function KF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GJ4))
set t=null
endfunction
function GK4 takes nothing returns boolean
return GetSpellAbilityId()==1093678389
endfunction
function GL4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real PAI=(LoadReal(LY,(S5I),(20)))
local integer DC1=(LoadInteger(LY,(S5I),(188)))
local texttag tt
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetEventDamageSource()==I01 then
set tt=CreateTextTag()
call UYI(I2S(DC1),DC1,P8I,0.03,127,127,255,255)
call SetTextTagText(tt,"+"+I2S(R2I(PAI)),0.025)
call SetTextTagPosUnit(tt,P8I,10)
call SetTextTagColor(tt,255,0,0,255)
call SetTextTagVelocity(tt,0,0.0355)
call SetTextTagFadepoint(tt,2)
call SetTextTagPermanent(tt,false)
call SetTextTagLifespan(tt,2)
if IsUnitVisible(P8I,GetLocalPlayer())or P0I(GetLocalPlayer())then
call SetTextTagVisibility(tt,true)
else
call SetTextTagVisibility(tt,false)
endif
call P6I(P7I,P8I,1,PAI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
set tt=null
return false
endfunction
function GM4 takes nothing returns nothing
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093678389)
local integer GN4
local unit PKI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local location BFO=GetUnitLoc(PKI)
local real PAI
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(PKI),1697656901,GetUnitX(PKI),GetUnitY(PKI),0)
if SUI==1 then
set GN4=GetRandomInt(1,2)
if GN4==1 then
set PAI=GetRandomReal(100,200)
elseif GN4==2 then
set PAI=GetRandomReal(1,100)
endif
elseif SUI==2 then
set GN4=GetRandomInt(1,3)
if GN4==1 then
set PAI=GetRandomReal(170,225)
elseif GN4==2 then
set PAI=GetRandomReal(110,170)
elseif GN4==3 then
set PAI=GetRandomReal(50,110)
endif
elseif SUI==3 then
set GN4=GetRandomInt(1,4)
if GN4==1 then
set PAI=GetRandomReal(195,250)
elseif GN4==2 then
set PAI=GetRandomReal(155,195)
elseif GN4==3 then
set PAI=GetRandomReal(115,155)
elseif GN4==4 then
set PAI=GetRandomReal(75,115)
endif
elseif SUI==4 then
set GN4=GetRandomInt(2,4)
if GN4==2 then
set PAI=GetRandomReal(225,275)
elseif GN4==3 then
set PAI=GetRandomReal(175,225)
elseif GN4==4 then
set PAI=GetRandomReal(100,175)
endif
endif
call TriggerRegisterTimerEvent(t,10,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function GL4))
call SaveUnitHandle(LY,(S5I),(2),(PKI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
if(SUI==4)then
endif
call SaveInteger(LY,(S5I),(188),(GN4))
call IA1(I01,1093678165)
call SetUnitAbilityLevel(I01,1093678165,GN4)
call IssueTargetOrder(I01,"thunderbolt",P8I)
set t=null
endfunction
function KZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GK4))
call TriggerAddAction(t,function GM4)
endfunction
function GS4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call G21(P7I,0)
set t=null
set P7I=null
return false
endfunction
function GT4 takes nothing returns boolean
if GetUnitTypeId(GetFilterUnit())==GetUnitTypeId(GNI)and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GNI)and IsUnitIllusion(GetFilterUnit())==true then
call SetUnitX(GetFilterUnit(),GLI)
call SetUnitY(GetFilterUnit(),GMI)
call IssueTargetOrder(GetFilterUnit(),"attack",GSI)
endif
return false
endfunction
function GR4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real RM2=UEI(QXI,QYI,QJI,QKI)
local real QWI=QNI(QXI,QYI,QJI,QKI)
local real d=GetRandomReal(QWI*0.3,QWI*0.8)
local integer SUI=GetUnitAbilityLevel(P7I,1093685847)
local real IV1=QXI+d*Cos(RM2*bj_DEGTORAD)
local real IW1=QYI+d*Sin(RM2*bj_DEGTORAD)
local unit u=CreateUnit(GetOwningPlayer(P7I),GKI,IV1,IW1,0)
local unit u2
local group g
local trigger t
local integer S5I
call SetUnitX(P7I,IV1)
call SetUnitY(P7I,IW1)
call SetUnitFacing(P7I,-RM2)
call PlaySoundOnUnitBJ(CC,100,P8I)
if IsUnitEnemy(P8I,GetOwningPlayer(P7I))and GetUnitTypeId(P8I)!=1848651852 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1.2,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function GS4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
call G21(P7I,40+20*SUI)
set IV1=QXI+(d-25)*Cos(RM2*bj_DEGTORAD)
set IW1=QYI+(d-25)*Sin(RM2*bj_DEGTORAD)
call SCI(P8I,4405,1)
call SetUnitX(P8I,IV1)
call SetUnitY(P8I,IW1)
call SetUnitFacing(P8I,RM2)
call IssueTargetOrder(P7I,"attack",P8I)
set g=NTI()
set GLI=IV1
set GMI=IW1
set GNI=P7I
set GSI=P8I
call GroupEnumUnitsInRange(g,QXI,QYI,1400,Condition(function GT4))
call NSI(g)
set u2=CreateUnit(GetOwningPlayer(P7I),GKI,IV1,IW1,0)
call KillUnit(u2)
endif
call KillUnit(u)
set P7I=null
set P8I=null
set u=null
set u2=null
set g=null
endfunction
function GP4 takes nothing returns boolean
if GetSpellAbilityId()==1093685847 then
call GR4()
endif
return false
endfunction
function GQ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit u=CreateUnit(GetOwningPlayer(SFI),GKI,GetUnitX(SFI),GetUnitY(SFI),0)
call PlaySoundOnUnitBJ(CC,100,SFI)
call KillUnit(u)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set u=null
set t=null
set SFI=null
return false
endfunction