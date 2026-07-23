function N85 takes nothing returns boolean
local unit P8I=GetFilterUnit()
local unit P7I=XHI
local real QXI=XZI
local real QYI=XVI
local real IO3=XWI
local real I23=XXI
local real x
local real y
local real a
local real d
if(RKI(GetFilterUnit())==false and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))then
if((LoadInteger(LY,(GetHandleId((P8I))),((4324))))==1)==false then
call SCI(P8I,4324,0.3)
endif
set d=QNI(QXI,QYI,GetUnitX(P8I),GetUnitY(P8I))
set a=UEI(QXI,QYI,GetUnitX(P8I),GetUnitY(P8I))*bj_DEGTORAD
if d>XYI then
set x=GetUnitX(P8I)+11*Cos(a)
set y=GetUnitY(P8I)+11*Sin(a)
else
set x=GetUnitX(P8I)-11*Cos(a)
set y=GetUnitY(P8I)-11*Sin(a)
endif
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
endif
set P8I=null
set P7I=null
return false
endfunction
function N95 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real QXI=(LoadReal(LY,(S5I),(6)))
local real QYI=(LoadReal(LY,(S5I),(7)))
local real x
local real y
local integer i=0
local group g
if GetTriggerEvalCount(t)>(50*(2+0.5*GetUnitAbilityLevel(P7I,1093751637)))then
loop
exitwhen i>16
set i=i+1
endloop
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set XZI=QXI
set XVI=QYI
set XHI=P7I
set GK=P7I
loop
exitwhen i>16
set x=QXI+XYI*Cos(bj_DEGTORAD*360.0*i/16.0)
set y=QYI+XYI*Sin(bj_DEGTORAD*360.0*i/16.0)
set XWI=x
set XXI=y
call GroupEnumUnitsInRange(g,x,y,75,Condition(function N85))
set i=i+1
endloop
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function NA5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real QXI=(LoadReal(LY,(S5I),(6)))
local real QYI=(LoadReal(LY,(S5I),(7)))
local real x
local real y
local integer i=0
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
loop
exitwhen i>16
set x=QXI+XYI*Cos(bj_DEGTORAD*360.0*i/16.0)
set y=QYI+XYI*Sin(bj_DEGTORAD*360.0*i/16.0)
set i=i+1
endloop
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("war3mapImported\\KineticField_FX_Stand.mdx",QXI,QYI)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((QXI)*1.0))
call SaveReal(LY,(S5I),(7),((QYI)*1.0))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function N95))
set t=null
set P7I=null
return false
endfunction
function NB5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real QXI=GetSpellTargetX()
local real QYI=GetSpellTargetY()
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("war3mapImported\\KineticField_FX_Start.mdx",QXI,QYI)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((QXI)*1.0))
call SaveReal(LY,(S5I),(7),((QYI)*1.0))
call TriggerRegisterTimerEvent(t,1.2,false)
call TriggerAddCondition(t,Condition(function NA5))
call I41(GetOwningPlayer(P7I),5.5,QXI,QYI,300)
set t=null
set P7I=null
endfunction
function NC5 takes nothing returns boolean
if GetSpellAbilityId()==1093751637 then
call NB5()
endif
return false
endfunction
function RS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NC5))
set t=null
endfunction
function ND5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(6)))
local real QKI=(LoadReal(LY,(S5I),(7)))
local real x=GetUnitX(IG1)
local real y=GetUnitY(IG1)
local real a=UEI(x,y,QJI,QKI)
local real d=QNI(x,y,QJI,QKI)
local real r=(LoadReal(LY,(S5I),(671)))
call SetUnitFacing(IG1,a)
set x=x+r*Cos(a*bj_DEGTORAD)
set y=y+r*Sin(a*bj_DEGTORAD)
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
if d<40 then
call KillUnit(IG1)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SCI(P8I,4411,1)
call SetUnitPosition(P8I,QJI,QKI)
call PanCameraToTimedForPlayer(GetOwningPlayer(P8I),QJI,QKI,0)
elseif RKI(P8I)then
call KillUnit(IG1)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set IG1=null
return false
endfunction
function NE5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real x=(LoadReal(LY,(GetHandleId(P8I)),(7400)))
local real y=(LoadReal(LY,(GetHandleId(P8I)),(7500)))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993398,GetUnitX(P8I),GetUnitY(P8I),0)
local real d=QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))
local real r=0.02*(RMaxBJ(d/1.8,600))
call TriggerAddCondition(t,Condition(function ND5))
call TriggerRegisterTimerEvent(t,0.02,true)
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(671),((r)*1.0))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("effects\\Lightning_Ball_Tail_FX.mdx",P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffect("effects\\Lightning_Ball_Tail_FX.mdx",x,y)))
call TriggerEvaluate(t)
set P7I=null
set P8I=null
endfunction
function NF5 takes nothing returns boolean
if GetSpellAbilityId()==1093751639 and NNI(GetSpellTargetUnit())==false then
if IsUnitIllusion(GetSpellTargetUnit())then
call KillUnit(GetSpellTargetUnit())
else
call NE5()
endif
endif
return false
endfunction
function Y0O takes nothing returns nothing
local unit P8I=GK
local integer S5I=GetHandleId(P8I)
local integer i=0
loop
exitwhen i>15
set i=i+1
endloop
set P8I=null
endfunction
function NG5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local integer S5I=GetHandleId(P8I)
local integer i=1
loop
exitwhen i>15
call SaveReal(LY,(S5I),(7400+i-1),(((LoadReal(LY,(S5I),(7400+i))))*1.0))
call SaveReal(LY,(S5I),(7500+i-1),(((LoadReal(LY,(S5I),(7500+i))))*1.0))
set i=i+1
endloop
call SaveReal(LY,(S5I),(7400+15),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(7500+15),((GetUnitY(P8I))*1.0))
set P8I=null
endfunction
function NH5 takes nothing returns boolean
local group g=NTI()
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function D51))
call ForGroup(g,function NG5)
call NSI(g)
set g=null
return false
endfunction
function RR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NF5))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function NH5))
set t=null
endfunction
function NZ5 takes nothing returns nothing
if XJI!=GetEnumUnit()then
call P6I(XKI,GetEnumUnit(),1,XLI*20+20)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetEnumUnit(),"chest"))
endif
endfunction
function NV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g
local integer NPI=GetTriggerEvalCount(t)
local unit ZK3=null
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
call SetUnitX(IG1,GetUnitX(P8I))
call SetUnitY(IG1,GetUnitY(P8I))
if NPI==1 or NPI==100 or NPI==200 or NPI==300 then
set g=NTI()
if IC1(P8I)then
set ZK3=CreateUnit(GetOwningPlayer(P8I),1697656899,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitApplyTimedLife(ZK3,1112820806,0.2)
call IssueTargetOrder(I01,"chainlightning",ZK3)
else
call IssueTargetOrder(I01,"chainlightning",P8I)
call P6I(P7I,P8I,1,SUI*20+20)
endif
call U5I("war3mapImported\\ThunderStorm_Groundeffect.mdx",P8I,"origin",0.6)
set GK=P7I
set XKI=P7I
set XJI=P8I
set XLI=SUI
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),240+25,Condition(function CA1))
call ForGroup(g,function NZ5)
call NSI(g)
if GetTriggerEvalCount(t)==300 then
call KillUnit(I01)
call KillUnit(IG1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set P7I=null
set P8I=null
set I01=null
set IG1=null
return false
endfunction
function NW5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093751894)
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1697657424,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(IG1,1097625443)
call IA1(I01,1093752119)
call SetUnitAbilityLevel(I01,1093752119,SUI)
call IA1(I01,1097625443)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function NV5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveInteger(LY,(S5I),(5),(SUI))
set P7I=null
set P8I=null
set IG1=null
set t=null
endfunction
function NX5 takes nothing returns boolean
if GetSpellAbilityId()==1093751894 and NNI(GetSpellTargetUnit())==false then
call NW5()
endif
return false
endfunction
function RP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NX5))
set t=null
endfunction
function NY5 takes nothing returns nothing
local unit I01
if XTI then
set I01=CreateUnit(GetOwningPlayer(GetEnumUnit()),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call UnitRemoveAbility(GetEnumUnit(),1110460467)
call IA1(I01,1093817926)
call IssueTargetOrder(I01,"doom",GetEnumUnit())
set I01=null
endif
call P6I(XNI,GetEnumUnit(),1,XMI)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Purge_NoBirth.mdx",GetEnumUnit(),"origin"))
endfunction
function NJ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local boolean CK3=(LoadBoolean(LY,(S5I),(15)))
local group g
local integer NPI=GetTriggerEvalCount(t)
local integer MKO=20
if CK3 then
set MKO=28
endif
if NPI>MKO then
call StopSound(EF,false,true)
call KillUnit(IG1)
call ShowUnit(IG1,false)
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
set XNI=P7I
set XMI=0.25*(150+50*SUI)*(NPI/I2R(MKO))
set XSI=false
set XTI=CK3
if ModuloInteger(NPI,4)==0 then
set XSI=true
endif
call GroupEnumUnitsInRange(g,GetUnitX(IG1),GetUnitY(IG1),475,Condition(function CH1))
call ForGroup(g,function NY5)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
set IG1=null
set I01=null
return false
endfunction
function NK5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993419,QJI,QKI,0)
local integer SUI=GetUnitAbilityLevel(P7I,1093752118)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,QJI,QKI,0)
local boolean CK3=false
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093817912)
set CK3=true
endif
call SetSoundVolume(EF,200)
call StartSound(EF)
call SetSoundPosition(EF,QJI,QKI,100)
if TOI(GetOwningPlayer(P7I))then
call IA1(I01,1093752117)
if CK3 then
call SetUnitAbilityLevel(I01,1093752117,2)
endif
else
call IA1(I01,1093752116)
if CK3 then
call SetUnitAbilityLevel(I01,1093752116,2)
endif
endif
call IssuePointOrder(I01,"cloudoffog",QJI,QKI)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveBoolean(LY,(S5I),(15),(CK3))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function NJ5))
set t=null
set P7I=null
endfunction
function NL5 takes nothing returns boolean
if GetSpellAbilityId()==1093752118 or GetSpellAbilityId()==1093817912 then
call NK5()
endif
return false
endfunction
function RT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NL5))
set t=null
endfunction
function NM5 takes nothing returns nothing
local integer NN5=YII
local unit P8I=GetEnumUnit()
local integer NS5=662-1+NN5
local real NT5=(LoadReal(LY,(GetHandleId(P8I)),(NS5)))
local real SOI=(TimerGetElapsed(M))
if NT5<SOI then
call SaveReal(LY,(GetHandleId(P8I)),(NS5),((SOI+2)*1.0))
if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
call P6I(XRI,P8I,1,2+6*Y0I)
else
endif
endif
set P8I=null
endfunction
function Spirits_DamageHeroes takes nothing returns nothing
local integer NN5=YII
local unit P8I=GetEnumUnit()
local integer NS5=662-1+NN5
local real NT5=(LoadReal(LY,(GetHandleId(P8I)),(NS5)))
local real SOI=(TimerGetElapsed(M))
if NT5<SOI then
call SaveReal(LY,(GetHandleId(P8I)),(NS5),((SOI+2)*1.0))
if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
call P6I(XRI,P8I,1,15+10*Y0I)
else
endif
endif
set P8I=null
endfunction
function NR5 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
call P6I(XRI,GetEnumUnit(),1,XQI)
else
endif
endfunction
function NP5 takes unit P7I,unit NQ5 returns nothing
local group g=NTI()
set GK=P7I
set XQI=25*Y0I
set XRI=P7I
set XPI=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(NQ5),GetUnitY(NQ5),0)
call GroupEnumUnitsInRange(g,GetUnitX(NQ5),GetUnitY(NQ5),325,Condition(function CJ1))
call IA1(XPI,1093751887)
call ForGroup(g,function NR5)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl",GetUnitX(NQ5),GetUnitY(NQ5)))
call KillUnit(NQ5)
call NSI(g)
call UnitApplyTimedLife(CreateUnit(GetOwningPlayer(P7I),1865429073,GetUnitX(NQ5),GetUnitY(NQ5),0),1112820806,2)
set g=null
endfunction
function NU5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit R74=(LoadUnitHandle(LY,(S5I),(393)))
local unit R84=(LoadUnitHandle(LY,(S5I),(394)))
local unit R94=(LoadUnitHandle(LY,(S5I),(395)))
local unit RA4=(LoadUnitHandle(LY,(S5I),(396)))
local unit RB4=(LoadUnitHandle(LY,(S5I),(397)))
local real x
local real y
local real a
local real d=(LoadReal(LY,(S5I),(138)))
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real JC3
local integer NPI=GetTriggerEvalCount(t)
local real DJ1
local group g
local integer S05=0
local real Q4I=2.25
local real SI5
if IC1(R74)==false then
set S05=S05+1
endif
if IC1(R84)==false then
set S05=S05+1
endif
if IC1(R94)==false then
set S05=S05+1
endif
if IC1(RA4)==false then
set S05=S05+1
endif
if IC1(RB4)==false then
set S05=S05+1
endif
if S05==5 then
set Q4I=2.25
elseif S05==4 then
set Q4I=2.1
elseif S05==3 then
set Q4I=1.95
elseif S05==2 then
set Q4I=1.8
elseif S05==1 then
set Q4I=1.65
endif
set JC3=-1*360*0.02/Q4I
set SI5=(LoadReal(LY,(S5I),(137)))+JC3
call SaveReal(LY,(S5I),(137),((SI5)*1.0))
set Y0I=GetUnitAbilityLevel(P7I,1093751864)
set XRI=P7I
if NPI==50 then
call ShowUnit(R84,true)
call SaveBoolean(LY,(S5I),(512),(true))
call IA1(R84,1097625443)
endif
if NPI==100 then
call ShowUnit(R94,true)
call SaveBoolean(LY,(S5I),(513),(true))
call IA1(R94,1097625443)
endif
if NPI==150 then
call ShowUnit(RA4,true)
call SaveBoolean(LY,(S5I),(514),(true))
call IA1(RA4,1097625443)
endif
if NPI==200 then
call ShowUnit(RB4,true)
call SaveBoolean(LY,(S5I),(515),(true))
call IA1(RB4,1097625443)
endif
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093809217 then
if(LoadBoolean(LY,(S5I),(655)))==true then
call SaveBoolean(LY,(S5I),(655),(false))
call SaveBoolean(LY,(S5I),(656),(false))
else
call SaveBoolean(LY,(S5I),(655),(true))
call SaveBoolean(LY,(S5I),(656),(false))
endif
elseif GetSpellAbilityId()==1093809218 then
if(LoadBoolean(LY,(S5I),(656)))==true then
call SaveBoolean(LY,(S5I),(655),(false))
call SaveBoolean(LY,(S5I),(656),(false))
else
call SaveBoolean(LY,(S5I),(655),(false))
call SaveBoolean(LY,(S5I),(656),(true))
endif
endif
endif
if(LoadBoolean(LY,(S5I),(655)))then
set d=RMaxBJ(d-5,100)
call SaveReal(LY,(S5I),(138),((d)*1.0))
elseif(LoadBoolean(LY,(S5I),(656)))then
set d=RMinBJ(d+5,875)
call SaveReal(LY,(S5I),(138),((d)*1.0))
endif
if GetTriggerEventId()==EVENT_UNIT_DEATH or NPI==950 or(IC1(R74)and IC1(R84)and IC1(R94)and IC1(RA4)and IC1(RB4))or(NPI>1 and GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093751864)then
if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
call UnitRemoveAbility(P7I,1093809217)
call UnitRemoveAbility(P7I,1093809218)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if IC1(R74)==false then
call NP5(P7I,R74)
endif
if IC1(R84)==false then
call NP5(P7I,R84)
endif
if IC1(R94)==false then
call NP5(P7I,R94)
endif
if IC1(RA4)==false then
call NP5(P7I,RA4)
endif
if IC1(RB4)==false then
call NP5(P7I,RB4)
endif
else
set g=NTI()
if IC1(R74)==false and(LoadBoolean(LY,(S5I),(511)))then
set DJ1=360*5/5.0
set a=DJ1+SI5
set x=PTI(QXI+d*Cos(a*bj_DEGTORAD))
set y=PUI(QYI+d*Sin(a*bj_DEGTORAD))
call SetUnitX(R74,x)
call SetUnitY(R74,y)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,95,Condition(function D21))
if FirstOfGroup(g)!=null then
call NP5(P7I,R74)
endif
call GroupClear(g)
set XUI=R74
set YII=1
set XRI=P7I
call GroupEnumUnitsInRange(g,x,y,175,Condition(function CY1))
call ForGroup(g,function NM5)
call GroupClear(g)
endif
if IC1(R84)==false and(LoadBoolean(LY,(S5I),(512)))then
set DJ1=360*4/5.0
set a=DJ1+SI5
set x=PTI(QXI+d*Cos(a*bj_DEGTORAD))
set y=PUI(QYI+d*Sin(a*bj_DEGTORAD))
call SetUnitX(R84,x)
call SetUnitY(R84,y)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,95,Condition(function D21))
if FirstOfGroup(g)!=null then
call NP5(P7I,R84)
endif
call GroupClear(g)
set XUI=R84
set YII=2
set XRI=P7I
call GroupEnumUnitsInRange(g,x,y,175,Condition(function CY1))
call ForGroup(g,function NM5)
call GroupClear(g)
endif
if IC1(R94)==false and(LoadBoolean(LY,(S5I),(513)))then
set DJ1=360*3/5.0
set a=DJ1+SI5
set x=PTI(QXI+d*Cos(a*bj_DEGTORAD))
set y=PUI(QYI+d*Sin(a*bj_DEGTORAD))
call SetUnitX(R94,x)
call SetUnitY(R94,y)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,95,Condition(function D21))
if FirstOfGroup(g)!=null then
call NP5(P7I,R94)
endif
call GroupClear(g)
set XUI=R94
set YII=3
set XRI=P7I
call GroupEnumUnitsInRange(g,x,y,175,Condition(function CY1))
call ForGroup(g,function NM5)
call GroupClear(g)
endif
if IC1(RA4)==false and(LoadBoolean(LY,(S5I),(514)))then
set DJ1=360*2/5.0
set a=DJ1+SI5
set x=PTI(QXI+d*Cos(a*bj_DEGTORAD))
set y=PUI(QYI+d*Sin(a*bj_DEGTORAD))
call SetUnitX(RA4,x)
call SetUnitY(RA4,y)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,95,Condition(function D21))
if FirstOfGroup(g)!=null then
call NP5(P7I,RA4)
endif
call GroupClear(g)
set XUI=RA4
set YII=4
set XRI=P7I
call GroupEnumUnitsInRange(g,x,y,175,Condition(function CY1))
call ForGroup(g,function NM5)
call GroupClear(g)
endif
if IC1(RB4)==false and(LoadBoolean(LY,(S5I),(515)))then
set DJ1=360*1/5.0
set a=DJ1+SI5
set x=PTI(QXI+d*Cos(a*bj_DEGTORAD))
set y=PUI(QYI+d*Sin(a*bj_DEGTORAD))
call SetUnitX(RB4,x)
call SetUnitY(RB4,y)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,95,Condition(function D21))
if FirstOfGroup(g)!=null then
call NP5(P7I,RB4)
endif
call GroupClear(g)
set XUI=RB4
set YII=5
set XRI=P7I
call GroupEnumUnitsInRange(g,x,y,175,Condition(function CY1))
call ForGroup(g,function NM5)
call GroupClear(g)
endif
call NSI(g)
endif
set t=null
set P7I=null
set R74=null
set R84=null
set R94=null
set RA4=null
set RB4=null
return false
endfunction
function S15 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit R74
local unit R84
local unit R94
local unit RA4
local unit RB4
local real x
local real y
set x=GetUnitX(P7I)+250*Cos(bj_DEGTORAD*360*5/5.0*-1.0)
set y=GetUnitY(P7I)+250*Sin(bj_DEGTORAD*360*5/5.0*-1.0)
set R74=CreateUnit(GetOwningPlayer(P7I),1747993418,x,y,360*5/5.0*-1.0)
call IA1(R74,1097625443)
set x=GetUnitX(P7I)+250*Cos(bj_DEGTORAD*360*4/5.0*-1.0)
set y=GetUnitY(P7I)+250*Sin(bj_DEGTORAD*360*4/5.0*-1.0)
set R84=CreateUnit(GetOwningPlayer(P7I),1747993418,x,y,360*4/5.0*-1.0)
call ShowUnit(R84,false)
call SetUnitInvulnerable(R84,true)
set x=GetUnitX(P7I)+250*Cos(bj_DEGTORAD*360*3/5.0*-1.0)
set y=GetUnitY(P7I)+250*Sin(bj_DEGTORAD*360*3/5.0*-1.0)
set R94=CreateUnit(GetOwningPlayer(P7I),1747993418,x,y,360*3/5.0*-1.0)
call ShowUnit(R94,false)
call SetUnitInvulnerable(R84,true)
set x=GetUnitX(P7I)+250*Cos(bj_DEGTORAD*360*2/5.0*-1.0)
set y=GetUnitY(P7I)+250*Sin(bj_DEGTORAD*360*2/5.0*-1.0)
set RA4=CreateUnit(GetOwningPlayer(P7I),1747993418,x,y,360*2/5.0*-1.0)
call ShowUnit(RA4,false)
call SetUnitInvulnerable(RA4,true)
set x=GetUnitX(P7I)+250*Cos(bj_DEGTORAD*360*1/5.0*-1.0)
set y=GetUnitY(P7I)+250*Sin(bj_DEGTORAD*360*1/5.0*-1.0)
set RB4=CreateUnit(GetOwningPlayer(P7I),1747993418,x,y,360*1/5.0*-1.0)
call ShowUnit(RB4,false)
call SetUnitInvulnerable(RB4,true)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(393),(R74))
call SaveUnitHandle(LY,(S5I),(394),(R84))
call SaveUnitHandle(LY,(S5I),(395),(R94))
call SaveUnitHandle(LY,(S5I),(396),(RA4))
call SaveUnitHandle(LY,(S5I),(397),(RB4))
call SaveBoolean(LY,(S5I),(511),(true))
call SaveBoolean(LY,(S5I),(512),(false))
call SaveBoolean(LY,(S5I),(513),(false))
call SaveBoolean(LY,(S5I),(514),(false))
call SaveBoolean(LY,(S5I),(515),(false))
call SaveBoolean(LY,(S5I),(655),(false))
call SaveBoolean(LY,(S5I),(656),(false))
call SaveReal(LY,(S5I),(138),((150)*1.0))
call IA1(P7I,1093809218)
call IA1(P7I,1093809217)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NU5))
set P7I=null
set t=null
set R74=null
set R84=null
set R94=null
set RA4=null
set RB4=null
endfunction
function SO5 takes nothing returns boolean
if GetSpellAbilityId()==1093751864 then
call S15()
endif
return false
endfunction
function RQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SO5))
set t=null
endfunction
function S25 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
call QGI(P7I,GetEventDamage()*0.05*SUI)
set t=null
set P7I=null
return false
endfunction
function S35 takes unit u returns nothing
local trigger t
call UnitRemoveAbility(u,1093751891)
call UnitRemoveAbility(u,1093751890)
call UnitRemoveAbility(u,1093751892)
call UnitRemoveAbility(u,1093751888)
if(LoadBoolean(LY,(GetHandleId(u)),(708)))then
call SaveBoolean(LY,(GetHandleId(u)),(708),(false))
set t=(LoadTriggerHandle(LY,(GetHandleId(u)),(709)))
call FlushChildHashtable(LY,(GetHandleId(t)))
call S0I(t)
call RemoveSavedHandle(LY,(GetHandleId(u)),(709))
set t=null
endif
endfunction
function S45 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call S35(P7I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
return false
endfunction
function S55 takes unit u,integer i returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(u))
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function S45))
if i==1 then
call IA1(u,1093751891)
call SetPlayerAbilityAvailable(GetOwningPlayer(u),1093751891,false)
elseif i==2 then
call IA1(u,1093751890)
call SetPlayerAbilityAvailable(GetOwningPlayer(u),1093751890,false)
elseif i==3 then
call IA1(u,1093751892)
call SetPlayerAbilityAvailable(GetOwningPlayer(u),1093751892,false)
elseif i==4 then
call IA1(u,1093751888)
call SetPlayerAbilityAvailable(GetOwningPlayer(u),1093751888,false)
endif
if(LoadBoolean(LY,(GetHandleId(u)),(708)))==false then
call SaveBoolean(LY,(GetHandleId(u)),(708),(true))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function S25))
call SaveTriggerHandle(LY,(GetHandleId(u)),(709),(t))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(u))
call SaveInteger(LY,(GetHandleId(t)),(5),(i))
endif
set t=null
endfunction
function S65 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer SUI=GetUnitAbilityLevel(P7I,1093810257)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit S75=(LoadUnitHandle(LY,(GetHandleId(P7I)),(652)))
local boolean ZXO=false
local real S85=0.2*(GetUnitState(P7I,UNIT_STATE_LIFE)*0.045)
local real S95=0.2*(GetUnitState(P7I,UNIT_STATE_MANA)*0.045)
if GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if GetIssuedOrderId()==String2OrderIdBJ("manashieldon")then
call S55(P7I,SUI)
elseif GetIssuedOrderId()==String2OrderIdBJ("manashieldoff")then
call S35(P7I)
endif
endif
if GetUnitAbilityLevel(P7I,1093751891)>0 or GetUnitAbilityLevel(P7I,1093751890)>0 or GetUnitAbilityLevel(P7I,1093751892)>0 or GetUnitAbilityLevel(P7I,1093751888)>0 then
set ZXO=true
call SetUnitState(P7I,UNIT_STATE_LIFE,RMaxBJ(GetUnitState(P7I,UNIT_STATE_LIFE)-S85,1))
call SetUnitState(P7I,UNIT_STATE_MANA,RMaxBJ(GetUnitState(P7I,UNIT_STATE_MANA)-S95,1))
endif
if S75==null then
if P8I!=null then
call S35(P8I)
set P8I=null
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
else
if P8I==null then
set P8I=S75
if ZXO then
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call S55(P8I,SUI)
else
call S35(P8I)
endif
elseif P8I!=S75 then
call S35(P8I)
if ZXO then
set P8I=S75
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call S55(P8I,SUI)
endif
elseif ZXO==false then
call S35(P8I)
elseif P8I==S75 then
if ZXO then
set P8I=S75
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call S55(P8I,SUI)
endif
endif
endif
set t=null
set P7I=null
set P8I=null
set S75=null
return false
endfunction
function SA5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093810257)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(null))
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function S65))
set P7I=null
set t=null
endfunction
function SB5 takes nothing returns boolean
if GetLearnedSkill()==1093810257 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093810257)==1 then
call SA5()
endif
return false
endfunction
function RU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function SB5))
set t=null
endfunction
function SC5 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),YOI)==false then
call GroupAddUnit(YOI,GetEnumUnit())
call IA1(GetEnumUnit(),1093817424)
call AX1(GetEnumUnit(),1093817424,1,0.25+0.5*Y3I,1110460245)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl",GetEnumUnit(),"chest"))
endif
endfunction
function SD5 takes unit P7I,unit P8I,group JAO returns nothing
local real x1=GetUnitX(P7I)
local real y1=GetUnitY(P7I)
local real x2=GetUnitX(P8I)
local real y2=GetUnitY(P8I)
local real a=UEI(x1,y1,x2,y2)*bj_DEGTORAD
local real x
local real y
local real d=QNI(x1,y1,x2,y2)
local group g=NTI()
local integer i=1
set YOI=JAO
set Y1I=P7I
set Y3I=GetUnitAbilityLevel(P7I,1093751873)
set Y2I=Y3I*50+50
loop
exitwhen i>8
set GK=P7I
set x=x1+d*i/8*Cos(a)
set y=y1+d*i/8*Sin(a)
call GroupEnumUnitsInRange(g,x,y,100,Condition(function CA1))
call ForGroup(g,function SC5)
call GroupClear(g)
set i=i+1
endloop
call NSI(g)
set g=null
endfunction
function SE5 takes unit P7I,unit P8I returns boolean
return((LoadInteger(LY,(GetHandleId((P7I))),((4294))))==1)
endfunction
function SF5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real d=QLI(P7I,P8I)
local real a=UDI(P7I,P8I)*bj_DEGTORAD
local real x=GetUnitX(P7I)+20*Cos(a)
local real y=GetUnitY(P7I)+20*Sin(a)
local location l
if d<300 or d>2150 then
set l=BN1(x,y)
set x=GetLocationX(l)
set y=GetLocationY(l)
call SetUnitX(P7I,PTI(x))
call SetUnitY(P7I,PUI(y))
call UPI(x,y,350)
call RemoveLocation(l)
set l=null
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveInteger(LY,(GetHandleId((P7I))),((4295)),(2))
else
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function SG5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local lightning UZI=(LoadLightningHandle(LY,(S5I),(196)))
local integer NPI=GetTriggerEvalCount(t)
local real d=QLI(P7I,P8I)
local real a=1
local real Z33=GetUnitState(P7I,UNIT_STATE_LIFE)
local real KWO=GetUnitState(P7I,UNIT_STATE_MANA)
local real SH5=(LoadReal(LY,(S5I),(670)))
local real SZ5=(LoadReal(LY,(S5I),(667)))
local real SV5
local real SW5
local real SX5=1.5
if P8I==null or P7I==null or IC1(P7I)==true or(NPI>600 and SE5(P7I,P8I)==false and((LoadInteger(LY,(GetHandleId((P7I))),((4295))))==1)==false)or(d>925 and((LoadInteger(LY,(GetHandleId((P7I))),((4295))))==1)==false)or GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093751893)then
call NSI(JAO)
call DestroyLightning(UZI)
call UnitRemoveAbility(P8I,1093751880)
call UnitRemoveAbility(P8I,1093751881)
call UnitRemoveAbility(P8I,1093751879)
call UnitRemoveAbility(P8I,1093751882)
call UnitRemoveAbility(P8I,1110459464)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093751880)
call UnitRemoveAbility(P7I,1093751881)
call UnitRemoveAbility(P7I,1093751879)
call UnitRemoveAbility(P7I,1093751882)
call UnitRemoveAbility(P7I,1110459464)
call UnitRemoveAbility(P7I,1093751893)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093751873 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093751873,true)
endif
call RemoveSavedHandle(LY,GetHandleId(P7I),652)
else
set SV5=Z33/GetUnitState(P7I,UNIT_STATE_MAX_LIFE)
set SW5=KWO/GetUnitState(P7I,UNIT_STATE_MAX_MANA)
if SV5-SH5>0 and(SV5-SH5)<0.5 then
if((LoadInteger(LY,(GetHandleId((P7I))),((4298))))==1)==false then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+SX5*(SV5-SH5)*GetUnitState(P7I,UNIT_STATE_MAX_LIFE))
endif
endif
if SW5-SZ5>0 and(SW5-SZ5)<0.5 then
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)+SX5*(SW5-SZ5)*GetUnitState(P7I,UNIT_STATE_MAX_MANA))
endif
call SaveReal(LY,(S5I),(670),((GetUnitState(P7I,UNIT_STATE_LIFE)/GetUnitState(P7I,UNIT_STATE_MAX_LIFE))*1.0))
call SaveReal(LY,(S5I),(667),((GetUnitState(P7I,UNIT_STATE_MANA)/GetUnitState(P7I,UNIT_STATE_MAX_MANA))*1.0))
call MoveLightning(UZI,true,GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))
call SD5(P7I,P8I,JAO)
if IsUnitVisible(P7I,GetLocalPlayer())==false and IsUnitVisible(P8I,GetLocalPlayer())==false then
set a=0
endif
if P0I(GetLocalPlayer())then
set a=1
endif
if d<700 or((LoadInteger(LY,(GetHandleId((P7I))),((4295))))==1)==true then
call SetLightningColor(UZI,0.00,1.00,1.00,a)
else
call SetLightningColor(UZI,0.80,0.70,0.40,a)
endif
endif
set t=null
set P7I=null
set P8I=null
set JAO=null
set UZI=null
return false
endfunction
function SY5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local lightning UZI=AddLightning("CHIM",true,GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))
local integer SUI=GetUnitAbilityLevel(P7I,1093751873)
local integer X63
local real d=QLI(P7I,P8I)
local real a=UDI(P7I,P8I)*bj_DEGTORAD
local location l
local real x
local real y
call SetLightningColor(UZI,0.00,1.00,1.00,1)
call IA1(P7I,1093751893)
if SUI==1 then
set X63=1093751880
elseif SUI==2 then
set X63=1093751881
elseif SUI==3 then
set X63=1093751879
elseif SUI==4 then
set X63=1093751882
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093751873,false)
call IA1(P7I,X63)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),X63,false)
call IA1(P8I,X63)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),X63,false)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveGroupHandle(LY,(S5I),(133),(NTI()))
call SaveLightningHandle(LY,(S5I),(196),(UZI))
call SaveReal(LY,(S5I),(670),((GetUnitState(P7I,UNIT_STATE_LIFE)/GetUnitState(P7I,UNIT_STATE_MAX_LIFE))*1.0))
call SaveReal(LY,(S5I),(667),((GetUnitState(P7I,UNIT_STATE_MANA)/GetUnitState(P7I,UNIT_STATE_MAX_MANA))*1.0))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SG5))
call SaveUnitHandle(LY,(GetHandleId(P7I)),(652),(P8I))
if d>700 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl",P7I,"chest")))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function SF5))
call SaveInteger(LY,(GetHandleId((P7I))),((4295)),(1))
endif
set P7I=null
set t=null
endfunction
function SJ5 takes nothing returns boolean
if GetSpellAbilityId()==1093751873 then
call SY5()
endif
return false
endfunction
function P01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SJ5))
set t=null
endfunction
function SK5 takes unit P7I,real x,real y returns boolean
local boolean FB1=false
local player p=GetOwningPlayer(P7I)
local unit I01=CreateUnit(p,1697657425,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093752372)
if IssuePointOrder(I01,"blink",x,y)==true then
call KillUnit(I01)
set I01=null
return true
else
call KillUnit(I01)
set I01=null
return false
endif
endfunction
function SL5 takes string UWI,unit P8I returns nothing
local texttag tt=CreateTextTag()
call SetTextTagText(tt,UWI,0.033)
call SetTextTagPosUnit(tt,P8I,64)
call SetTextTagColor(tt,0,50,255,255)
call SetTextTagVelocity(tt,0,0.0355)
call SetTextTagFadepoint(tt,0.15)
call SetTextTagPermanent(tt,false)
call SetTextTagLifespan(tt,0.85)
call SetTextTagVisibility(tt,true)
set tt=null
endfunction
function SM5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=GetTriggerEvalCount(t)
if IC1(P7I)==false and NPI<12 then
call SL5(I2S(12-NPI),P7I)
endif
if NPI==12 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function SN5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(GetHandleId(P7I)),(652)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local fogmodifier I31=(LoadFogModifierHandle(LY,(S5I),(42)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call SaveInteger(LY,(GetHandleId((P7I))),((4294)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FogModifierStop(I31)
call DestroyFogModifier(I31)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call UPI(QJI,QKI,250)
call UPI(QXI,QYI,250)
if GetTriggerEvalCount(t)==1 then
if IC1(P7I)==false then
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P7I),GetUnitY(P7I)))
call SetUnitPosition(P7I,QJI,QKI)
call PanCameraToTimedForPlayer(GetOwningPlayer(P7I),QJI,QKI,0)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P7I),GetUnitY(P7I)))
endif
if P8I!=null and IC1(P8I)==false and GetOwningPlayer(P8I)!=BO[0]and GetOwningPlayer(P8I)!=CO[0]and((LoadBoolean(LY,(GetHandleId(GetOwningPlayer((P8I)))),(139)))==false)then
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P8I),GetUnitY(P8I)))
call SCI(P8I,4402,1)
call SetUnitPosition(P8I,QJI,QKI)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true and IC1(P8I)==false then
call PanCameraToTimedForPlayer(GetOwningPlayer(P8I),QJI,QKI,0)
endif
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P8I),GetUnitY(P8I)))
endif
else
if IC1(P7I)==false then
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P7I),GetUnitY(P7I)))
call SetUnitPosition(P7I,QXI,QYI)
call PanCameraToTimedForPlayer(GetOwningPlayer(P7I),QXI,QYI,0)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P7I),GetUnitY(P7I)))
endif
if P8I!=null and IC1(P8I)==false and GetOwningPlayer(P8I)!=BO[0]and GetOwningPlayer(P8I)!=CO[0]and((LoadBoolean(LY,(GetHandleId(GetOwningPlayer((P8I)))),(139)))==false)then
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P8I),GetUnitY(P8I)))
call SCI(P8I,4402,1)
call SetUnitPosition(P8I,QXI,QYI)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true and IC1(P8I)==false then
call PanCameraToTimedForPlayer(GetOwningPlayer(P8I),QXI,QYI,0)
endif
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(P8I),GetUnitY(P8I)))
endif
call SaveInteger(LY,(GetHandleId((P7I))),((4294)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FogModifierStop(I31)
call DestroyFogModifier(I31)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set P7I=null
set P8I=null
set I31=null
return false
endfunction
function SS5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local fogmodifier I31
local integer SUI=GetUnitAbilityLevel(P7I,1093751874)
if BG1(P7I)or BE1(P7I)or IC1(P7I)then
call SaveInteger(LY,(GetHandleId((P7I))),((4294)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)==(2.75-0.25*SUI)/.05 then
set I31=CreateFogModifierRadius(GetOwningPlayer(P7I),FOG_OF_WAR_VISIBLE,GetUnitX(P7I),GetUnitY(P7I),400,true,true)
call FogModifierStart(I31)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerRegisterTimerEvent(t,12,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function SN5))
call SaveReal(LY,(S5I),(189),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(190),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("war3mapImported\\EarthlyEminence.mdl",GetUnitX(P7I),GetUnitY(P7I))))
call SaveFogModifierHandle(LY,(S5I),(42),(I31))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function SM5))
endif
set P7I=null
set t=null
set I31=null
return false
endfunction
function ST5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local unit P8I=(LoadUnitHandle(LY,(GetHandleId(P7I)),(652)))
local integer id=GetPlayerId(GetOwningPlayer(P7I))
local integer SUI=GetUnitAbilityLevel(P7I,1093751874)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",P7I,"chest"))
if P8I!=null then
endif
call PingMinimapEx(x,y,4.0,255,0,0,false)
call I41(BO[1],2.5,x,y,300)
call I41(CO[1],2.5,x,y,300)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,.05,true)
call TriggerAddCondition(t,Condition(function SS5))
call SaveReal(LY,(S5I),(47),((x)*1.0))
call SaveReal(LY,(S5I),(48),((y)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("war3mapImported\\EarthlyEminence.mdl",x,y)))
call SaveInteger(LY,(GetHandleId((P7I))),((4294)),(1))
set P7I=null
set t=null
endfunction
function SR5 takes nothing returns boolean
if GetSpellAbilityId()==1093751874 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call ST5()
else
if SK5(GetTriggerUnit(),GetSpellTargetX(),GetSpellTargetY())==false then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848658776))
else
if TII(GetOwningPlayer(GetTriggerUnit()))then
if IsPointInRegion(Y5I,GetSpellTargetX(),GetSpellTargetY())==true then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652633))
endif
else
if IsPointInRegion(Y4I,GetSpellTargetX(),GetSpellTargetY())==true then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652633))
endif
endif
endif
endif
endif
return false
endfunction
function PI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function SR5))
set Y4I=CreateRegion()
call RegionAddRect(Y4I,F4)
call RegionAddRect(Y4I,G5)
set Y5I=CreateRegion()
call RegionAddRect(Y5I,E4)
call RegionAddRect(Y5I,H5)
set t=null
endfunction
function SP5 takes unit P7I,unit P8I,real QXI,real QYI,real a2 returns nothing
local integer i=0
local real QJI
local real QKI=GetUnitY(P8I)
local real a
local real x
local real y
local real SQ5
if P8I!=null then
set QJI=GetUnitX(P8I)
set QKI=GetUnitY(P8I)
set a=UEI(QXI,QYI,QJI,QKI)
else
set a=a2
set QJI=QXI+50*Cos(a*bj_DEGTORAD)
set QKI=QYI+50*Sin(a*bj_DEGTORAD)
endif
set SQ5=a
set x=QJI+200*Cos(SQ5*bj_DEGTORAD)
set y=QKI+200*Sin(SQ5*bj_DEGTORAD)
call OA1(CreateDestructable(1110454326,x,y,-1*SQ5,0.6,1),7)
set SQ5=a-40
set x=QJI+200*Cos(SQ5*bj_DEGTORAD)
set y=QKI+200*Sin(SQ5*bj_DEGTORAD)
call OA1(CreateDestructable(1110454326,x,y,-1*SQ5,0.6,1),7)
set SQ5=a-80
set x=QJI+200*Cos(SQ5*bj_DEGTORAD)
set y=QKI+200*Sin(SQ5*bj_DEGTORAD)
call OA1(CreateDestructable(1110454326,x,y,-1*SQ5,0.6,1),7)
set SQ5=a+40
set x=QJI+200*Cos(SQ5*bj_DEGTORAD)
set y=QKI+200*Sin(SQ5*bj_DEGTORAD)
call OA1(CreateDestructable(1110454326,x,y,-1*SQ5,0.6,1),7)
set SQ5=a+80
set x=QJI+200*Cos(SQ5*bj_DEGTORAD)
set y=QKI+200*Sin(SQ5*bj_DEGTORAD)
call OA1(CreateDestructable(1110454326,x,y,-1*SQ5,0.6,1),7)
if P8I!=null then
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\ChainFreeze_F6.mdx",P8I,"chest"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",P8I,"chest"))
call P6I(Y6I,P8I,1,Y8I*70)
endif
endfunction
function SU5 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),Y9I)==false then
call GroupAddUnit(Y9I,GetEnumUnit())
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\ChainFreeze_F6.mdx",GetEnumUnit(),"chest"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",GetEnumUnit(),"chest"))
call P6I(Y6I,GetEnumUnit(),1,Y8I*70)
endif
endfunction
function T05 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit TI5=(LoadUnitHandle(LY,(S5I),(45)))
local real EN4=(LoadReal(LY,(S5I),(683)))
local real ES4=(LoadReal(LY,(S5I),(684)))
local real QXI=GetUnitX(TI5)
local real QYI=GetUnitY(TI5)
local real RM2=Atan2(ES4-QYI,EN4-QXI)
local real IV1=QXI+22*Cos(RM2)
local real IW1=QYI+22*Sin(RM2)
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local integer SUI=GetUnitAbilityLevel(P7I,1093753167)
local group g=NTI()
set GK=P7I
set Y6I=P7I
set Y9I=JAO
set Y8I=SUI
set Y7I=null
call GroupEnumUnitsInRange(g,IV1,IW1,225,Condition(function CA1))
call ForGroup(g,function SU5)
call NSI(g)
call SetUnitPosition(TI5,IV1,IW1)
if QNI(IV1,IW1,EN4,ES4)<40 then
call KillUnit(TI5)
call ShowUnit(TI5,false)
call SetUnitPathing(TI5,true)
call SP5(P7I,null,IV1,IW1,RM2*bj_RADTODEG)
call NSI(JAO)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set TI5=null
set JAO=null
set g=null
return false
endfunction
function T15 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit TI5=CreateUnit(GetOwningPlayer(P7I),1747993427,GetUnitX(P7I),GetUnitY(P7I),0)
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local real RM2=Atan2(QKI-QYI,QJI-QXI)
local real EN4=PTI(QJI)
local real ES4=PUI(QKI)
call SetUnitFacing(TI5,RM2*bj_RADTODEG)
call SetUnitPathing(TI5,false)
call TriggerRegisterTimerEvent(t,.02,true)
call TriggerAddCondition(t,Condition(function T05))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(683),((EN4)*1.0))
call SaveReal(LY,(S5I),(684),((ES4)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(45),(TI5))
call SaveGroupHandle(LY,(S5I),(133),(NTI()))
set P7I=null
set TI5=null
set t=null
endfunction
function TO5 takes nothing returns boolean
if GetSpellAbilityId()==1093753167 then
call T15()
endif
return false
endfunction
function P11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TO5))
set t=null
endfunction
function T25 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093753169)
local integer NPI=GetTriggerEvalCount(t)
local real y=(NPI-50)*(NPI-50)/4.3
local real PAI
if SUI==1 then
set PAI=75
elseif SUI==2 then
set PAI=150
else
set PAI=225
endif
if NPI==1 then
call IssueTargetOrder(P7I,"attack",P8I)
endif
if NPI<50 then
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,700*NPI/50,0)
endif
elseif NPI<100 then
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,700-700*(NPI-50)/50,0)
endif
else
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,GetUnitDefaultFlyHeight(P8I),0)
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call AX1(P8I,1093808180,1,1+SUI,1110459481)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093808180,false)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function T35 takes unit P7I,unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093753169)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UYI("WALRUS PUNCH !!",3.5,P7I,0.03,255,0,0,255)
call IO1(YF,GetUnitX(P8I),GetUnitY(P8I))
call IA1(I01,1093752144)
call IssueTargetOrder(I01,"thunderbolt",P8I)
if RNI(P8I)==false then
call IA1(P8I,1097691750)
call UnitRemoveAbility(P8I,1097691750)
endif
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"overhead"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"head"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"left,hand"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"right,hand"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"chest"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"origin"))
call TriggerRegisterTimerEvent(t,.01,true)
call TriggerAddCondition(t,Condition(function T25))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl",P8I,"chest")))
set t=null
endfunction
function T45 takes nothing returns boolean
local trigger t2=GetTriggeringTrigger()
local integer KAO=GetHandleId(t2)
local unit P7I=(LoadUnitHandle(LY,(KAO),(2)))
local unit P8I=(LoadUnitHandle(LY,(KAO),(17)))
local effect T55=(LoadEffectHandle(LY,(KAO),(32)))
local trigger t=(LoadTriggerHandle(LY,(KAO),(35)))
local integer S5I=(LoadInteger(LY,(KAO),(375)))
if GetTriggerEvalCount(t2)==1 then
call IssueTargetOrder(P7I,"attack",P8I)
else
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and GetEventDamage()>30 then
call AH1(P7I,1093752136,1,0.1)
call AH1(P7I,1093752137,1,0.1)
call DestroyEffect(T55)
call S0I(t2)
call FlushChildHashtable(LY,(KAO))
call S0I(t)
call FlushChildHashtable(LY,(S5I))
call T35(P7I,P8I)
endif
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetAttacker()==P7I and GetTriggerUnit()!=P8I then
call FlushChildHashtable(LY,(KAO))
call S0I(t2)
endif
else
call UnitRemoveAbility(P7I,1093752136)
call UnitRemoveAbility(P7I,1093752137)
call RemoveSavedHandle(LY,(S5I),(17))
call FlushChildHashtable(LY,(KAO))
call S0I(t2)
endif
endif
set t2=null
set t=null
set P7I=null
set P8I=null
set T55=null
return false
endfunction
function T65 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I
local effect T55=(LoadEffectHandle(LY,(S5I),(32)))
local trigger t2
local integer KAO
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
call DestroyEffect(T55)
call UnitRemoveAbility(P7I,1093752136)
call UnitRemoveAbility(P7I,1093752137)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetAttacker()==P7I and GetTriggerUnit()!=(LoadUnitHandle(LY,(S5I),(17)))and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(P7I))==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
set P8I=GetTriggerUnit()
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call UnitRemoveAbility(P7I,1093752136)
call UnitRemoveAbility(P7I,1093752137)
if GetUnitState(P8I,UNIT_STATE_LIFE)/GetUnitState(P8I,UNIT_STATE_MAX_LIFE)>0.5 then
call IA1(P7I,1093752136)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093752136,false)
else
call IA1(P7I,1093752137)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093752137,false)
endif
call IssueImmediateOrder(P7I,"stop")
set t2=CreateTrigger()
set KAO=GetHandleId(t2)
call TriggerRegisterTimerEvent(t2,0,false)
call TriggerRegisterTimerEvent(t2,2,false)
call TriggerRegisterUnitEvent(t2,P8I,EVENT_UNIT_DAMAGED)
call UMI(t2,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t2,Condition(function T45))
call SaveUnitHandle(LY,(KAO),(2),(P7I))
call SaveUnitHandle(LY,(KAO),(17),(P8I))
call SaveEffectHandle(LY,(KAO),(32),(T55))
call SaveInteger(LY,(KAO),(375),(S5I))
call SaveTriggerHandle(LY,(KAO),(35),(t))
endif
set t=null
set P7I=null
set P8I=null
set T55=null
return false
endfunction
function T75 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function T65))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(null))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\WalrusPunchWeaponFX.mdx",P7I,"weapon")))
set t=null
set P7I=null
endfunction
function T85 takes nothing returns boolean
if GetSpellAbilityId()==1093753169 then
call T75()
endif
return false
endfunction
function PO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function T85))
set t=null
endfunction
function T95 takes nothing returns nothing
call ShowUnit(GetEnumUnit(),true)
call UnitRemoveAbility(GetEnumUnit(),1093678162)
call SetUnitInvulnerable(GetEnumUnit(),false)
call PauseUnit(GetEnumUnit(),false)
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
call SetUnitPosition(GetEnumUnit(),YHI,YZI)
call SelectUnitForPlayerSingle(GetEnumUnit(),GetOwningPlayer(GetEnumUnit()))
else
call SetUnitX(GetEnumUnit(),YHI)
call SetUnitY(GetEnumUnit(),YZI)
endif
if GetEnumUnit()==YCI and YDI!=null then
call IssueTargetOrder(YCI,"attack",YDI)
endif
if GetUnitTypeId(GetEnumUnit())==1160786505 then
call SetUnitVertexColor(GetEnumUnit(),255,255,255,255)
endif
call DestroyEffect(AddSpecialEffect("war3mapImported\\ChainFreeze_F6.mdx",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
endfunction
function Snowball_Slow takes nothing returns nothing
local integer OO1
if YGI==1 then
set OO1=1093808198
elseif YGI==2 then
set OO1=1093808197
elseif YGI==3 then
set OO1=1093751628
elseif YGI==4 then
set OO1=1093808196
endif
if IsUnitInGroup(GetEnumUnit(),YAI)==false then
call GroupAddUnit(YAI,GetEnumUnit())
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),OO1,false)
call AX1(GetEnumUnit(),OO1,1,5,1110459459)
endif
endfunction
function TA5 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),YAI)==false then
call GroupAddUnit(YAI,GetEnumUnit())
call P6I(YCI,GetEnumUnit(),1,40*YGI+40+YWI*(10+10*YGI))
call SetUnitAbilityLevel(YEI,1093687350,DB1(0.25*YGI+0.25))
call SetUnitX(YEI,GetUnitX(GetEnumUnit()))
call SetUnitY(YEI,GetUnitY(GetEnumUnit()))
call IssueTargetOrder(YEI,"thunderbolt",GetEnumUnit())
endif
endfunction
function TB5 takes nothing returns nothing
call SetUnitX(GetEnumUnit(),YHI)
call SetUnitY(GetEnumUnit(),YZI)
endfunction
function TC5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real r=(LoadReal(LY,(S5I),(671)))
local real a=UEI(GetUnitX(IG1),GetUnitY(IG1),QJI,QKI)*bj_DEGTORAD
local real x=GetUnitX(IG1)+r*Cos(a)
local real y=GetUnitY(IG1)+r*Sin(a)
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local group g
local integer NPI=GetTriggerEvalCount(t)
local real S83=RMinBJ(2.5+(NPI*0.02),10)
local real CY3=225+40*(NPI*0.02)
local integer TD5=(LoadInteger(LY,(S5I),(34)))
set YWI=TD5
set YGI=GetUnitAbilityLevel(P7I,1093751607)
set GK=P7I
set YAI=JAO
set YCI=P7I
set YDI=P8I
set YEI=(LoadUnitHandle(LY,(S5I),(19)))
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
call SetUnitFacing(IG1,a*bj_RADTODEG-180)
call SetUnitScale(IG1,S83,S83,S83)
set YHI=x
set YZI=y
call ForGroup((LoadGroupHandle(LY,(S5I),(22))),function TB5)
if QNI(x,y,QJI,QKI)<r*2 or NPI==150 then
call UPI(x,y,300)
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,CY3,Condition(function CA1))
call ForGroup(g,function TA5)
call NSI(g)
set g=null
set YHI=x
set YZI=y
call ForGroup((LoadGroupHandle(LY,(S5I),(22))),function T95)
call NSI((LoadGroupHandle(LY,(S5I),(22))))
call NSI(JAO)
call KillUnit(IG1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitInvulnerable(P7I,false)
call UnitRemoveAbility(P7I,1096971630)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753167,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753169,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753170,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093751607,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093818443,false)
else
if ModuloInteger(GetTriggerEvalCount(t),5)==0 then
call UPI(x,y,300)
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,CY3,Condition(function CA1))
call ForGroup(g,function TA5)
call NSI(g)
set g=null
endif
endif
set t=null
set P7I=null
set IG1=null
set JAO=null
return false
endfunction
function TE5 takes unit P7I,group g,unit TF5 returns nothing
if IsUnitInGroup(TF5,g)==false then
call GroupAddUnit(g,TF5)
call DestroyEffect(AddSpecialEffect("war3mapImported\\ChainFreeze_F6.mdx",GetUnitX(TF5),GetUnitY(TF5)))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",GetUnitX(TF5),GetUnitY(TF5)))
if P7I!=TF5 then
call ShowUnit(TF5,false)
call IA1(TF5,1093678162)
call SetUnitInvulnerable(TF5,true)
call PauseUnit(TF5,true)
endif
if P7I!=TF5 then
set YWI=YWI+1
endif
endif
endfunction
function TG5 takes nothing returns nothing
call TE5(YCI,YBI,GetEnumUnit())
endfunction
function TH5 takes nothing returns boolean
return((IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))or(GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GK)and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit()))))and((LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetFilterUnit()))),(139)))==false or YCI==GetFilterUnit())
endfunction
function TZ5 takes unit P7I,unit P8I,integer TD5 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real a=UEI(QXI,QYI,QJI,QKI)*bj_DEGTORAD
local group g=NTI()
set YVI=0
set YWI=TD5
set YCI=P7I
call SetUnitVertexColor(P7I,255,255,255,0)
set YVI=1.5*RMaxBJ(133,GetUnitMoveSpeed(P7I))+YWI*100
call SetUnitTimeScale(YFI,2)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function TC5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(YEI))
call SaveUnitHandle(LY,(S5I),(45),(YFI))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(671),((YVI*0.02)*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveInteger(LY,(S5I),(34),(TD5))
call SaveGroupHandle(LY,(S5I),(22),(YBI))
call SaveGroupHandle(LY,(S5I),(133),(NTI()))
set t=null
set g=null
endfunction
function TV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real S83=RMinBJ(2.5+(NPI*0.02),10)
local real CY3=225+40*(NPI*0.02)
local unit TF5
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
set YGI=GetUnitAbilityLevel(P7I,1093751607)
set GK=P7I
set YCI=P7I
set YDI=P8I
set YEI=(LoadUnitHandle(LY,(S5I),(19)))
set YFI=IG1
call SetUnitScale(IG1,S83,S83,S83)
if GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
if GetIssuedOrderId()==851971 then
set TF5=GetOrderTargetUnit()
if QLI(P7I,TF5)<425 and IsUnitAlly(TF5,GetOwningPlayer(P7I))==true and(IsUnitType(TF5,UNIT_TYPE_HERO)==true or GetOwningPlayer(TF5)==GetOwningPlayer(P7I))then
call TE5(P7I,(LoadGroupHandle(LY,(S5I),(22))),TF5)
endif
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093818443 then
call TZ5(P7I,P8I,YWI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
set YBI=(LoadGroupHandle(LY,(S5I),(22)))
set g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),100+25,Condition(function TH5))
call ForGroup(g,function TG5)
call NSI(g)
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==200 then
call TZ5(P7I,P8I,YWI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set P7I=null
set IG1=null
return false
endfunction
function TW5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993395,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
local group g=NTI()
set YVI=0
set YWI=0
set YCI=P7I
set YBI=NTI()
set YVI=1.5*RMaxBJ(133,GetUnitMoveSpeed(P7I))
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),100+25,Condition(function TH5))
call ForGroup(g,function TG5)
call NSI(g)
set YEI=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(YEI,1093687350)
call SetUnitInvulnerable(P7I,true)
call IA1(P7I,1096971630)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753167,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753169,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753170,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093751607,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093818443,true)
call IA1(P7I,1093818443)
call SetUnitTimeScale(IG1,2)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TV5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(YEI))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveGroupHandle(LY,(S5I),(22),(YBI))
set t=null
set g=null
endfunction
function TX5 takes nothing returns boolean
if GetSpellAbilityId()==1093751607 then
call TW5()
endif
return false
endfunction
function P21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TX5))
call Q1I(1093687350)
set t=null
endfunction
function TY5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call IssueTargetOrder(P7I,"move",P8I)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function TJ5 takes nothing returns nothing
local unit P7I=GetSummonedUnit()
local unit P8I=GetSummoningUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerAddCondition(t,Condition(function TY5))
call TriggerRegisterTimerEvent(t,0.2,false)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function TK5 takes nothing returns boolean
local integer id=GetUnitTypeId(GetSummonedUnit())
if id==1865429322 or id==1865429323 or id==1865429324 or id==1865429325 then
call TJ5()
endif
return false
endfunction
function P31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function TK5))
endfunction
function TL5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitX(P7I,GetUnitX(P8I))
call SetUnitY(P7I,GetUnitY(P8I))
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
endif
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function TM5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
set YXI=GetEventDamageSource()
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function TN5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetSummoningUnit()
local unit P8I=GetSummonedUnit()
local unit I01
local integer TS5
local integer TT5
local integer TR5
if GetUnitTypeId(P8I)==1852862003 or GetUnitTypeId(P8I)==1852862006 or GetUnitTypeId(P8I)==1848652080 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function TL5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
if EA1(P7I,1227899192)then
call UnitAddAbility(I01,1093678153)
endif
endif
if GetUnitAbilityLevel(P7I,1093747254)>0 then
if GetUnitTypeId(P8I)==1852862001 or GetUnitTypeId(P8I)==1852862004 or GetUnitTypeId(P8I)==1848652081 then
set TS5=GetUnitAbilityLevel(P7I,1093684568)
if TS5>0 then
call IA1(P8I,1093684568)
call SetUnitAbilityLevel(P8I,1093684568,TS5)
endif
endif
if GetUnitTypeId(P8I)==1852862002 or GetUnitTypeId(P8I)==1852862005 or GetUnitTypeId(P8I)==1848652082 then
set TR5=GetUnitAbilityLevel(P7I,1097032808)
if TR5>0 then
call IA1(P8I,1097032808)
call SetUnitAbilityLevel(P8I,1097032808,TR5)
endif
endif
if GetUnitTypeId(P8I)==1852862003 or GetUnitTypeId(P8I)==1852862006 or GetUnitTypeId(P8I)==1848652080 then
set TT5=GetUnitAbilityLevel(P7I,1093678669)
if TT5>0 then
call IA1(P8I,1093678669)
call SetUnitAbilityLevel(P8I,1093678669,TT5)
endif
endif
endif
set t=null
set P7I=null
set P8I=null
set I01=null
endfunction
function TP5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetSummoningUnit()
local unit P8I=GetSummonedUnit()
local integer TS5
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function TM5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function TQ5 takes nothing returns boolean
local integer RII=GetUnitTypeId(GetSummonedUnit())
call TN5()
if P3I(RII)then
call TP5()
endif
return false
endfunction
function P41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function TQ5))
set t=null
endfunction
function TU5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and(GetEventDamage()>40 or IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==true or GetUnitTypeId(P8I)==1970107511 or GetUnitTypeId(P8I)==1700946284)and(LoadBoolean(LY,(GetHandleId(P7I)),(183)))==true then
call SaveBoolean(LY,(GetHandleId(P7I)),(183),(false))
call SaveReal(LY,(GetHandleId(P7I)),(184),(((TimerGetElapsed(M)))*1.0))
call UnitRemoveAbility(P7I,1093818451)
call UnitRemoveAbility(P7I,1093818453)
call FlushChildHashtable(LY,(GetHandleId((LoadTriggerHandle(LY,(S5I),(35))))))
call S0I((LoadTriggerHandle(LY,(S5I),(35))))
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
set P7I=null
set P8I=null
return false
endfunction
function R05 takes nothing returns boolean
local trigger t
local integer S5I
local unit P8I
local unit P7I
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(183),(false))
call SaveReal(LY,(GetHandleId(GetTriggerUnit())),(184),(((TimerGetElapsed(M)))*1.0))
call UnitRemoveAbility(GetTriggerUnit(),1093818451)
call UnitRemoveAbility(GetTriggerUnit(),1093818453)
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
elseif GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(182)))then
if IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
set P8I=GetTriggerUnit()
set P7I=GetAttacker()
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function TU5))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveTriggerHandle(LY,(S5I),(35),(GetTriggeringTrigger()))
set P8I=null
set P7I=null
set t=null
endif
endif
return false
endfunction
function RI5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real QZI=(TimerGetElapsed(M))
local integer SUI=GetUnitAbilityLevel(SFI,1093684568)
local real PD2=(LoadReal(LY,(GetHandleId(SFI)),(184)))
local boolean R15=(LoadBoolean(LY,(GetHandleId(SFI)),(183)))
local real Z7O=(LoadReal(LY,(S5I),(411)))
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetAttacker()==SFI then
set Z7O=(TimerGetElapsed(M))
call SaveReal(LY,(S5I),(411),((Z7O)*1.0))
endif
if((TimerGetElapsed(M))>(Z7O+18-2*SUI))and R15==false and GetUnitTypeId(SFI)==1315988077 and IC1(SFI)==false then
call SaveBoolean(LY,(GetHandleId(SFI)),(183),(true))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function R05))
call SaveUnitHandle(LY,(S5I),(182),(SFI))
call IA1(SFI,1093818451)
call IA1(SFI,1093818453)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093818451,false)
elseif R15==false and(GetUnitAbilityLevel(SFI,1093818451)>0 or GetUnitAbilityLevel(SFI,1093818453)>0)then
call UnitRemoveAbility(SFI,1093818451)
call UnitRemoveAbility(SFI,1093818453)
endif
set t=null
set SFI=null
return false
endfunction
function RO5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function RI5))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(181),(0))
call SaveReal(LY,(S5I),(411),(((TimerGetElapsed(M)))*1.0))
set SFI=null
set t=null
endfunction
function R25 takes nothing returns boolean
if GetLearnedSkill()==1093684568 and GetUnitAbilityLevel(GetTriggerUnit(),1093684568)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call RO5()
endif
return false
endfunction
function P51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function R25))
set t=null
endfunction
function R35 takes nothing returns nothing
call DD1(YYI,GetEnumUnit(),0.75+0.25*GetUnitAbilityLevel(YYI,1093809990))
endfunction
function R45 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real a=(LoadReal(LY,(S5I),(137)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local group g
local real d=QNI(QXI,QYI,QJI,QKI)/25
local location l
local integer NPI=GetTriggerEvalCount(t)
local real x=QXI+d*NPI*Cos(a)
local real y=QYI+d*NPI*Sin(a)
call SetUnitX(P8I,PTI(x))
call SetUnitY(P8I,PUI(y))
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,325-13*NPI,0)
endif
if NPI==25 then
call SetUnitX(P8I,PTI(QJI))
call SetUnitY(P8I,PUI(QKI))
if IsPointInRegion(LN,GetUnitX(P8I),GetUnitY(P8I))==true then
set l=BN1(GetUnitX(P8I),GetUnitY(P8I))
call SetUnitX(P8I,PPI(GetLocationX(l)))
call SetUnitY(P8I,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
set GK=P7I
set YYI=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),350,Condition(function CA1))
call GroupRemoveUnit(g,P8I)
call ForGroup(g,function R35)
call NSI(g)
call UPI(GetUnitX(P8I),GetUnitY(P8I),150)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl",GetUnitX(P8I),GetUnitY(P8I)))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,GetUnitDefaultFlyHeight(P8I),0)
endif
call SetUnitPathing(P8I,true)
endif
set t=null
set P7I=null
set P8I=null
set g=null
return false
endfunction
function R55 takes unit P7I,unit P8I,unit Target2,real R65,real R75,effect FX,effect RU2 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real QJI=R65
local real QKI=R75
local real a=UEI(GetUnitX(P8I),GetUnitY(P8I),R65,R75)*bj_DEGTORAD
if QNI(GetUnitX(P8I),GetUnitY(P8I),R65,R75)>375 then
set QJI=GetUnitX(P8I)+375*Cos(a)
set QKI=GetUnitY(P8I)+375*Sin(a)
endif
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(189),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(190),((GetUnitY(P8I))*1.0))
call SaveEffectHandle(LY,(S5I),(32),(FX))
call SaveEffectHandle(LY,(S5I),(176),(RU2))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function R45))
set t=null
endfunction
function R85 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer MKO=(LoadInteger(LY,(S5I),(12)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local integer R95=(LoadInteger(LY,(S5I),(706)))
local real a
if GetTriggerEventId()==EVENT_WIDGET_DEATH or(GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT and BG1(P8I)==false)then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809990,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810008,false)
call R55(P7I,P8I,(LoadUnitHandle(LY,(S5I),(711))),QJI,QKI,(LoadEffectHandle(LY,(S5I),(32))),(LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093810008 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
set a=UEI(GetUnitX(P8I),GetUnitY(P8I),GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
if QNI(GetUnitX(P8I),GetUnitY(P8I),GetSpellTargetX(),GetSpellTargetY())>375 then
set QJI=GetUnitX(P8I)+375*Cos(a)
set QKI=GetUnitY(P8I)+375*Sin(a)
else
set QJI=GetSpellTargetX()
set QKI=GetSpellTargetY()
endif
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffect("Abilities\\Spells\\Other\\GeneralAuraTarget\\GeneralAuraTarget.mdl",QJI,QKI)))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveUnitHandle(LY,(S5I),(711),(GetSpellTargetUnit()))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\GeneralAuraTarget\\GeneralAuraTarget.mdl",GetSpellTargetUnit(),"origin")))
endif
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call SetUnitPathing(P8I,false)
if(LoadInteger(LY,(S5I),(707)))==1 then
set R95=R95+3
else
set R95=R95-3
endif
call SaveInteger(LY,(S5I),(706),(R95))
if R95==30 then
call SaveInteger(LY,(S5I),(707),(-1))
elseif R95==-30 then
call SaveInteger(LY,(S5I),(707),(1))
endif
if RNI(P8I)==false then
if NPI<15 then
call SetUnitFlyHeight(P8I,NPI*20,0)
else
call SetUnitFlyHeight(P8I,300+R95,0)
endif
endif
if NPI>(MKO-25)then
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,300,0)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809990,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810008,false)
call R55(P7I,P8I,(LoadUnitHandle(LY,(S5I),(711))),QJI,QKI,(LoadEffectHandle(LY,(S5I),(32))),(LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function RA5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093809990)
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093810226)
call SetUnitAbilityLevel(I01,1093810226,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809990,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810008,true)
call UnitAddAbility(P7I,1093810008)
call SetUnitPathing(P8I,false)
if RNI(P8I)==false then
call IA1(P8I,1097691750)
call UnitRemoveAbility(P8I,1097691750)
endif
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(711),(P8I))
call SaveInteger(LY,(S5I),(12),(R2I((1.25+0.25*SUI)/.02)))
call SaveInteger(LY,(S5I),(34),(0))
call SaveInteger(LY,(S5I),(706),(0))
call SaveInteger(LY,(S5I),(707),(1))
call SaveReal(LY,(S5I),(47),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(48),((GetUnitY(P8I))*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\AntiGravityTarget.mdx",P8I,"origin")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffect("Abilities\\Spells\\Other\\GeneralAuraTarget\\GeneralAuraTarget.mdl",GetUnitX(P8I),GetUnitY(P8I))))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function R85))
set P7I=null
set P8I=null
endfunction
function RB5 takes nothing returns boolean
if GetSpellAbilityId()==1093809990 and NNI(GetSpellTargetUnit())==false then
call RA5()
endif
return false
endfunction
function P61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function RB5))
call Q1I(1093687350)
call Q1I(1093810226)
set t=null
endfunction
function RC5 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093809991)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
if SUI==1 then
call AH1(P8I,1093810007,1,10)
elseif SUI==2 then
call AH1(P8I,1093810230,1,10)
elseif SUI==3 then
call AH1(P8I,1093810229,1,10)
elseif SUI==4 then
call AH1(P8I,1093810231,1,10)
endif
else
if SUI==1 then
call AH1(P8I,1093810481,1,10)
elseif SUI==2 then
call AH1(P8I,1093810266,1,10)
elseif SUI==3 then
call AH1(P8I,1093810482,1,10)
elseif SUI==4 then
call AH1(P8I,1093810480,1,10)
endif
endif
call IO1(PF,GetUnitX(P8I),GetUnitY(P8I))
endfunction
function RD5 takes nothing returns nothing
local real d
if IsUnitInGroup(GetEnumUnit(),YLI)==false then
set d=QLI(GetEnumUnit(),YKI)
if d<YMI then
set YMI=d
set YJI=GetEnumUnit()
endif
endif
endfunction
function RE5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local group g=NTI()
call GroupAddUnit(PR2,P8I)
call RC5(P7I,P8I)
set GK=P7I
set YJI=null
set YKI=P8I
set YLI=PR2
set YMI=999999
call GroupEnumUnitsInRange(g,x,y,440+25,Condition(function CF1))
call ForGroup(g,function RD5)
call NSI(g)
if YJI==null or GetTriggerEvalCount(t)>26 then
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set P8I=YJI
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
set g=null
set t=null
set P7I=null
set P8I=null
set PR2=null
return false
endfunction
function RF5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group PR2=NTI()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call IO1(PF,GetUnitX(P7I),GetUnitY(P7I))
call IA1(I01,1093810228)
call SetUnitAbilityLevel(I01,1093810228,GetUnitAbilityLevel(P7I,1093809991))
call IssueTargetOrder(I01,"chainlightning",P8I)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveGroupHandle(LY,(S5I),(187),(PR2))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function RE5))
set P7I=null
set P8I=null
set t=null
set I01=null
endfunction
function RG5 takes nothing returns boolean
if GetSpellAbilityId()==1093809991 and NNI(GetSpellTargetUnit())==false then
call RF5()
endif
return false
endfunction
function P71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function RG5))
set t=null
endfunction
function RH5 takes nothing returns boolean
if IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),GetLearnedSkill())==1 then
if GetLearnedSkill()==1093809990 then
call UnitRemoveAbility(GetTriggerUnit(),1093809993)
elseif GetLearnedSkill()==1093809991 then
call UnitRemoveAbility(GetTriggerUnit(),1093809995)
elseif GetLearnedSkill()==1093810006 then
call UnitRemoveAbility(GetTriggerUnit(),1093809994)
endif
endif
return false
endfunction
function RZ5 takes integer RV5,integer RW5 returns nothing
set YTI[YPI]=RV5
set YRI[YPI]=RW5
set YPI=YPI+1
endfunction
function RX5 takes integer id returns integer
local integer i=0
loop
exitwhen i==YPI
if id==YTI[i]or id==YRI[i]then
return i
endif
set i=i+1
endloop
return-1
endfunction
function RY5 takes integer id returns nothing
set YNI[YSI]=id
set YSI=YSI+1
endfunction
function RJ5 takes integer id returns boolean
local integer i=0
loop
exitwhen i==YSI
if id==YNI[i]then
return true
endif
set i=i+1
endloop
return false
endfunction
function RK5 takes nothing returns boolean
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and RJ5(GetSpellAbilityId())==false then
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(705),(GetSpellAbilityId()))
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(712),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId())))
endif
return false
endfunction
function RL5 takes unit u returns nothing
call UnitRemoveAbility(u,1093743428)
call UnitRemoveAbility(u,1093815881)
call UnitRemoveAbility(u,1093751126)
call UnitRemoveAbility(u,1093751893)
call UnitRemoveAbility(u,1093809217)
call UnitRemoveAbility(u,1093809218)
call UnitRemoveAbility(u,1093750344)
call UnitRemoveAbility(u,1093808206)
call UnitRemoveAbility(u,1093753394)
call UnitRemoveAbility(u,1093753395)
call UnitRemoveAbility(u,1093808181)
call UnitRemoveAbility(u,1093752405)
call UnitRemoveAbility(u,1093683011)
call UnitRemoveAbility(u,1093809221)
call UnitRemoveAbility(u,1093685844)
call UnitRemoveAbility(u,1093751361)
call UnitRemoveAbility(u,1093683265)
call UnitRemoveAbility(u,1093686081)
call UnitRemoveAbility(u,1093743153)
call UnitRemoveAbility(u,1093752646)
call UnitRemoveAbility(u,1093677652)
call UnitRemoveAbility(u,1093751609)
call UnitRemoveAbility(u,1093808456)
call UnitRemoveAbility(u,1093750094)
call UnitRemoveAbility(u,1093678667)
call UnitRemoveAbility(u,1093684805)
call UnitRemoveAbility(u,1093684560)
call UnitRemoveAbility(u,1093815618)
endfunction
function RM5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer RN5=(LoadInteger(LY,(S5I),(704)))
local integer XD4=(LoadInteger(LY,(S5I),(713)))
if RN5==(LoadInteger(LY,(GetHandleId(P7I)),(704)))then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)>(15-XD4)and IC1(P7I)==false then
call UnitRemoveAbility(P7I,RN5)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function RS5 takes unit P7I,integer RN5,real Z7O returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function RM5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(704),(RN5))
call SaveInteger(LY,(GetHandleId(P7I)),(704),(-1))
call SaveInteger(LY,(S5I),(713),(R2I((TimerGetElapsed(M))-Z7O)))
set t=null
endfunction
function RT5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer RN5=(LoadInteger(LY,(S5I),(704)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer SUI=GetUnitAbilityLevel(P7I,1093809992)
local real Z7O=(LoadReal(LY,(S5I),(411)))
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093817913)
endif
if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT and GetTriggerEventId()!=EVENT_WIDGET_DEATH then
if NPI==0 then
call SaveInteger(LY,(S5I),(34),(1))
call DisplayTimedTextToPlayer(GetOwningPlayer(P7I),0,0,10,"|c00ff0303"+GetObjectName(1848659031)+"|r")
else
call RL5(P7I)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),RN5,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call RS5(P7I,RN5,Z7O)
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093809992 or GetSpellAbilityId()==1093817913 then
call RL5(P7I)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),RN5,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call RS5(P7I,RN5,Z7O)
elseif GetSpellAbilityId()==RN5 then
call SaveReal(LY,(S5I),(411),(((TimerGetElapsed(M)))*1.0))
endif
elseif GetTriggerEventId()==EVENT_WIDGET_DEATH then
call RL5(P7I)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),RN5,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call RS5(P7I,RN5,Z7O)
endif
set t=null
set P7I=null
return false
endfunction
function RR5 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer RN5=(LoadInteger(LY,(S5I),(704)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real RP5=60*(2+GetUnitAbilityLevel(P7I,1093809992))
if GetUnitAbilityLevel(P7I,1093809992)==0 then
set RP5=60*(2+GetUnitAbilityLevel(P7I,1093817913))
endif
if(LoadInteger(LY,(GetHandleId(P8I)),(3000)))>0 then
call SaveInteger(LY,(GetHandleId(P7I)),(3000),((LoadInteger(LY,(GetHandleId(P8I)),(3000)))))
endif
if(LoadInteger(LY,(GetHandleId(P8I)),(3001)))>0 then
call SaveInteger(LY,(GetHandleId(P7I)),(3001),((LoadInteger(LY,(GetHandleId(P8I)),(3001)))))
endif
if(LoadInteger(LY,(GetHandleId(P8I)),(3002)))>0 then
call SaveInteger(LY,(GetHandleId(P7I)),(3002),((LoadInteger(LY,(GetHandleId(P8I)),(3002)))))
endif
if(LoadInteger(LY,(GetHandleId(P8I)),(710)))>0 then
call SaveInteger(LY,(GetHandleId(P7I)),(710),((LoadInteger(LY,(GetHandleId(P8I)),(710)))))
endif
call IO1(SF,GetUnitX(P7I),GetUnitY(P7I))
call UYI(GetObjectName(RN5),3.5,P7I,0.024,170,0,255,216)
call SaveInteger(LY,(GetHandleId(P7I)),(704),(RN5))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),RN5,true)
call IA1(P7I,RN5)
call SetUnitAbilityLevel(P7I,RN5,SUI)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(0))
call SaveInteger(LY,(S5I),(704),(RN5))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterTimerEvent(t,RP5,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterTimerEvent(t,RP5-20,false)
call TriggerAddCondition(t,Condition(function RT5))
set t=null
set P7I=null
set P8I=null
endfunction
function RQ5 takes unit P7I,unit P8I,integer RN5,integer SUI returns nothing
local trigger t=IJ1(P8I,P7I,1747993666,"RR5",900,false)
local integer S5I=GetHandleId(t)
call IO1(NF,GetUnitX(P8I),GetUnitY(P8I))
call UYI(GetObjectName(RN5),3.75,P8I,0.024,170,0,255,216)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(704),(RN5))
call SaveInteger(LY,(S5I),(5),(SUI))
set t=null
endfunction
function RU5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if RJ5(GetSpellAbilityId())==true then
else
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function P05 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer PI5
local integer P15=(LoadInteger(LY,(GetHandleId(P8I)),(705)))
if P15!=0 then
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Nebula.mdx",P8I,"origin"))
set PI5=RX5(P15)
if PI5!=-1 then
if GetSpellAbilityId()==1093809992 then
set P15=YTI[PI5]
else
set P15=YRI[PI5]
endif
endif
call RQ5(P7I,P8I,P15,(LoadInteger(LY,(GetHandleId(P8I)),(712))))
endif
set P7I=null
set P8I=null
endfunction
function SpellSteal takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local string fx=""
if IsPlayerAlly(GetOwningPlayer(P7I),GetLocalPlayer())or P0I(GetLocalPlayer())then
set fx="war3mapImported\\Nebula.mdx"
endif
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(fx,P8I,"origin")))
call TriggerRegisterTimerEvent(t,20,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function RU5))
set P7I=null
set P8I=null
endfunction
function PO5 takes nothing returns boolean
if(GetSpellAbilityId()==1093809992 or GetSpellAbilityId()==1093817913)and NNI(GetSpellTargetUnit())==false then
call P05()
endif
return false
endfunction
function P25 takes nothing returns nothing
call RY5(1093752648)
call RY5(1095656306)
call RY5(1093677895)
call RY5(1093679411)
call RY5(1093743946)
call RY5(1093681479)
call RY5(1093681733)
call RY5(1093751896)
call RY5(1093808697)
call RY5(1093751369)
call RY5(1093747504)
call RY5(1093742932)
call RY5(1093744986)
call RY5(1093815877)
call RY5(1093743428)
call RY5(1093815881)
call RY5(1093751126)
call RY5(1093751893)
call RY5(1093809217)
call RY5(1093809218)
call RY5(1093750344)
call RY5(1093808206)
call RY5(1093753394)
call RY5(1093753395)
call RY5(1093808181)
call RY5(1093752405)
call RY5(1093683011)
call RY5(1093809221)
call RY5(1093685844)
call RY5(1093751361)
call RY5(1093683265)
call RY5(1093686081)
call RY5(1093743153)
call RY5(1093752646)
call RY5(1093677652)
call RY5(1093751609)
call RY5(1093808456)
call RY5(1093750094)
call RY5(1093684056)
call RY5(1093684055)
call RY5(1093681461)
call RY5(1093681735)
call RY5(1093808471)
call RY5(1093808472)
call RY5(1093808470)
call RY5(1093808473)
call RY5(1093748565)
call RY5(1093752392)
call RY5(1093752391)
call RY5(1093815600)
call RY5(1093815618)
call RY5(1093816114)
call RY5(1093816121)
call RY5(1093751607)
call RY5(1093818443)
call RY5(1093685582)
call RY5(1093677622)
call RY5(1095263841)
call RY5(1093679446)
call RY5(1093682265)
call RY5(1093752642)
call RY5(1093684314)
call RY5(1093685065)
call RY5(1093817677)
call RY5(1093750337)
call RY5(1093748033)
call RY5(1093684819)
call RY5(1093747777)
call RY5(1093810257)
call RY5(1093687121)
call RY5(1093751864)
call RY5(1093742674)
call RY5(1093742926)
call RY5(1093682521)
call RY5(1093682760)
call RY5(1093686859)
call RY5(1093686865)
call RY5(1093678899)
call RY5(1093677898)
call RY5(1093678154)
call RY5(1093678157)
call RY5(1093678158)
call RY5(1093809990)
call RY5(1093810008)
call RY5(1093809991)
call RY5(1093809992)
call RY5(1093685557)
call RY5(1093686347)
call RY5(1095328363)
call RY5(1093683801)
call RY5(1093747011)
call RY5(1095331948)
call RY5(1095331954)
call RY5(1097163124)
call RY5(1093684016)
call RY5(1093683255)
call RY5(1093683254)
call RY5(1093682767)
call RY5(1093677656)
call RY5(1095332727)
call RY5(1095332962)
call RY5(1093681718)
call RY5(1093751349)
call RY5(1093808182)
call RY5(1093748292)
call RY5(1093748303)
call RY5(1093748305)
call RY5(1093749071)
call RY5(1093681720)
call RY5(1093752645)
call RY5(1093686328)
call RY5(1093686327)
call RY5(1093677367)
call RY5(1093751108)
call RY5(1093748304)
call RY5(1093683788)
call RY5(1094935400)
call RY5(1095333995)
call RY5(1095331943)
call RY5(1093742918)
call RY5(1093742917)
call RY5(1093686067)
call RY5(1093742916)
call RY5(1093742919)
call RY5(1093742920)
call RY5(1093686329)
call RY5(1093743959)
call RY5(1094936696)
call RY5(1093682756)
call RY5(1093686341)
call RY5(1093751863)
call RY5(1093744973)
call RY5(1093677647)
call RY5(1093679193)
call RY5(1093679194)
call RY5(1093679408)
call RY5(1093679410)
call RY5(1093683266)
call RY5(1093682227)
call RY5(1093682246)
call RY5(1093677655)
call RY5(1093681995)
call RY5(1093684023)
call RY5(1093683796)
call RY5(1095328865)
call RY5(1093809721)
call RY5(1093752655)
call RY5(1093748055)
call RY5(1093750095)
call RY5(1093753417)
call RY5(1093753416)
call RY5(1093753431)
call RY5(1093808945)
call RY5(1093743191)
call RY5(1093743681)
call RY5(1093751096)
call RY5(1093810265)
call RY5(1093810244)
call RY5(1093810246)
call RY5(1093815857)
call RY5(1093817925)
call RY5(1093818184)
call RY5(1093818185)
call RY5(1093814863)
call RY5(1093814865)
call RY5(1093814864)
call RY5(1093814866)
call RY5(1093814860)
call RY5(1093813848)
call RY5(1093815089)
call RY5(1093815092)
call RY5(1093815095)
call RY5(1093815111)
call RY5(1093815109)
call RY5(1093815112)
call RY5(1093815097)
call RY5(1093813569)
call RY5(1093817416)
call RY5(1093817418)
call RY5(1093817419)
call RY5(1093815369)
call RZ5(1093752632,1093752633)
call RZ5(1093808454,1093808455)
call RZ5(1093678420,1093679176)
call RZ5(1093677392,1093679450)
call RZ5(1093679413,1093679447)
call RZ5(1093684565,1093681458)
call RZ5(1093678388,1093677141)
call RZ5(1093678647,1093679184)
call RZ5(1093681987,1093677658)
call RZ5(1093810258,1093810259)
call RZ5(1093677128,1093681457)
call RZ5(1093677906,1093681494)
call RZ5(1093677363,1093681462)
call RZ5(1093684820,1093684824)
call RZ5(1093810503,1093810504)
call RZ5(1093678160,1093747029)
call RZ5(1093687864,1093747542)
call RZ5(1093683534,1093747031)
call RZ5(1093684529,1093747032)
call RZ5(1093677903,1093747033)
call RZ5(1093684308,1093747539)
call RZ5(1093677899,1093747248)
call RZ5(1093685045,1093747249)
call RZ5(1093678674,1093747252)
call RZ5(1093685586,1093747251)
call RZ5(1093808473,1093748565)
call RZ5(1093677401,1093747034)
call RZ5(1093684561,1093747254)
call RZ5(1093682764,1093747544)
call RZ5(1093743184,1093747766)
call RZ5(1093683761,1093747767)
call RZ5(1093682996,1093747768)
call RZ5(1093677649,1093747769)
call RZ5(1093684819,1093747777)
call RZ5(1093742673,1093747778)
call RZ5(1093681483,1093748313)
call RZ5(1093682482,1093750098)
call RZ5(1093744975,1093750102)
call RZ5(1093682248,1093750594)
call RZ5(1093686072,1093751120)
call RZ5(1395667000,1395667029)
call RZ5(1093747023,1093752150)
call RZ5(1093679152,1093752154)
call RZ5(1093685067,1093752407)
call RZ5(1093682265,1093752642)
call RZ5(1093685579,1093808465)
call RZ5(1093751861,1093808949)
call RZ5(1093684567,1093809987)
call RZ5(1093685042,1093810233)
call RZ5(1093750341,1093814599)
call RZ5(1093684275,1093816643)
call RZ5(1093750089,1093816645)
call RZ5(1093682514,1093817144)
call RZ5(1093812807,1093817429)
call RZ5(1093747288,1093817432)
call RZ5(1093809992,1093817913)
call RZ5(1093752118,1093817912)
call RZ5(1093678137,1093818178)
call RZ5(1093678405,1093818177)
endfunction
function P81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PO5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function RK5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function RH5))
set t=null
call P25()
endfunction
function P35 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093810003)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093810003)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093810001)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093810001)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093810002)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093810002)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093810004)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093810004)
endif
endfunction
function P45 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
if YQI==1 then
if GetUnitAbilityLevel(GetEnumUnit(),1093810003)==0 then
call IA1(GetEnumUnit(),1093810003)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093810003,false)
endif
elseif YQI==2 then
if GetUnitAbilityLevel(GetEnumUnit(),1093810001)==0 then
call UnitRemoveAbility(GetEnumUnit(),1093810003)
call IA1(GetEnumUnit(),1093810001)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093810001,false)
endif
elseif YQI==3 then
if GetUnitAbilityLevel(GetEnumUnit(),1093810002)==0 then
call UnitRemoveAbility(GetEnumUnit(),1093810003)
call UnitRemoveAbility(GetEnumUnit(),1093810001)
call IA1(GetEnumUnit(),1093810002)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093810002,false)
endif
elseif YQI==4 then
if GetUnitAbilityLevel(GetEnumUnit(),1093810004)==0 then
call UnitRemoveAbility(GetEnumUnit(),1093810003)
call UnitRemoveAbility(GetEnumUnit(),1093810001)
call UnitRemoveAbility(GetEnumUnit(),1093810002)
call IA1(GetEnumUnit(),1093810004)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093810004,false)
endif
endif
endfunction
function P55 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group RG3=(LoadGroupHandle(LY,(S5I),(340)))
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g=NTI()
if P7I==null or GetUnitTypeId(P7I)!=1160786520 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ForGroup(RG3,function P35)
call NSI(RG3)
call NSI(g)
return false
endif
set GK=P7I
set YQI=GetUnitAbilityLevel(P7I,1093810006)
if IC1(P7I)==false then
call GroupEnumUnitsInRange(g,x,y,925,Condition(function CU1))
endif
call GroupRemoveGroup(g,RG3)
call ForGroup(RG3,function P35)
if IC1(P7I)==false then
call ForGroup(g,function P45)
endif
call SaveGroupHandle(LY,(S5I),(340),(g))
call NSI(RG3)
set t=null
set P7I=null
set RG3=null
set g=null
return false
endfunction
function P65 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local integer i
local player p
call TriggerRegisterTimerEvent(t,0.3,true)
call TriggerAddCondition(t,Condition(function P55))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(340),(NTI()))
set i=0
loop
exitwhen i>5
set p=BO[i]
call SetPlayerAbilityAvailable(p,1093810003,false)
call SetPlayerAbilityAvailable(p,1093810001,false)
call SetPlayerAbilityAvailable(p,1093810002,false)
call SetPlayerAbilityAvailable(p,1093810004,false)
set p=CO[i]
call SetPlayerAbilityAvailable(p,1093810003,false)
call SetPlayerAbilityAvailable(p,1093810001,false)
call SetPlayerAbilityAvailable(p,1093810002,false)
call SetPlayerAbilityAvailable(p,1093810004,false)
set i=i+1
endloop
set t=null
set P7I=null
endfunction
function P75 takes nothing returns boolean
if GetLearnedSkill()==1093810006 and GetUnitAbilityLevel(GetTriggerUnit(),1093810006)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call P65()
endif
return false
endfunction
function P91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function P75))
set t=null
endfunction
function P85 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call AddUnitAnimationProperties(P7I,"alternate",false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function P95 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function P85))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function PA5 takes nothing returns boolean
if(GetSpellAbilityId()==1093678899 or GetSpellAbilityId()==1093677898 or GetSpellAbilityId()==1093678154 or GetSpellAbilityId()==1093678157 or GetSpellAbilityId()==1093678158)and GetUnitTypeId(GetTriggerUnit())==1160786520 then
call P95()
endif
return false
endfunction
function PA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PA5))
set t=null
endfunction
function PB5 takes nothing returns nothing
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetTriggerUnit(),"origin"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetTriggerUnit(),"origin"))
endfunction
function PC5 takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())==1211117651 then
call PB5()
endif
return false
endfunction
function SZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function PC5))
set t=null
endfunction
function PD5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093810518)
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093810519 then
call UnitRemoveAbility(P7I,1093810519)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810519,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810518,true)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DD1(P7I,P8I,0.5+0.5*SUI)
call SetUnitX(P7I,GetUnitX(P8I))
call SetUnitY(P7I,GetUnitY(P8I))
call IssueTargetOrder(P7I,"attack",P8I)
call UnitShareVision(P8I,GetOwningPlayer(P7I),false)
endif
else
call UnitRemoveAbility(P7I,1093810519)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810519,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810518,true)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call UnitShareVision(P8I,GetOwningPlayer(P7I),false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function PE5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEvalCount(GetTriggeringTrigger())>30 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call EO1(P7I)
endif
set t=null
set P7I=null
return false
endfunction
function PF5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer SUI=GetUnitAbilityLevel(P7I,1093810518)
if NPI>60 then
call UnitRemoveAbility(P7I,1110459734)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamage()>100 and IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==false then
call QGI(P7I,GetEventDamage())
set P8I=K1[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call EO1(P7I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if IC1(P8I)==false then
call UnitShareVision(P8I,GetOwningPlayer(P7I),true)
call IA1(P7I,1093810519)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810519,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093810518,false)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterTimerEvent(t,4,false)
call TriggerAddCondition(t,Condition(function PD5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\RetaliationTarget.mdx",P7I,"origin")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\RetaliationTarget.mdx",P8I,"origin")))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function PE5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
endif
else
call SaveInteger(LY,(S5I),(34),(NPI+1))
endif
set t=null
set P7I=null
return false
endfunction
function PG5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function PF5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\RetaliationShield.mdx",P7I,"chest")))
set P7I=null
set t=null
endfunction
function PH5 takes nothing returns boolean
if GetSpellAbilityId()==1093810518 then
call PG5()
endif
return false
endfunction
function Register_Retaliation takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PH5))
set t=null
endfunction
function PZ5 takes nothing returns nothing
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\ImmolationRed\\ImmolationRedDamage.mdl",GetEnumUnit(),"chest"))
call P6I(YUI,GetEnumUnit(),1,(20+10*J0I)/5)
endfunction
function PV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093814355)
local group g
if GetUnitAbilityLevel(P7I,1110459984)==0 and GetUnitAbilityLevel(P7I,1110459985)==0 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093814327)
call UnitRemoveAbility(P7I,1110459983)
call UnitRemoveAbility(P7I,1093814616)
call UnitRemoveAbility(P7I,1093814615)
call UnitRemoveAbility(P7I,1093814614)
call UnitRemoveAbility(P7I,1093814617)
else
set GK=P7I
set YUI=P7I
set J0I=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),400+25,Condition(function CA1))
call ForGroup(g,function PZ5)
call NSI(g)
endif
set g=null
set t=null
set P7I=null
return false
endfunction
function PW5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093814355)
call UnitAddAbility(I01,1093814325)
call SetUnitAbilityLevel(I01,1093814325,SUI)
call IssueTargetOrder(I01,"antimagicshell",P7I)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function PV5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\FlameGuard.mdx",P7I,"origin")))
if SUI==1 then
elseif SUI==2 then
elseif SUI==3 then
elseif SUI==4 then
endif
set P7I=null
set I01=null
set t=null
endfunction
function PX5 takes nothing returns boolean
if GetSpellAbilityId()==1093814355 then
call PW5()
endif
return false
endfunction
function PC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PX5))
set t=null
endfunction
function PY5 takes unit P7I returns nothing
call UnitRemoveAbility(P7I,1112500344)
call UnitRemoveAbility(P7I,1110454344)
endfunction
function PJ5 takes unit P7I returns nothing
call UnitRemoveAbility(P7I,1093814329)
call UnitRemoveAbility(P7I,1110459981)
endfunction
function PK5 takes unit P7I returns nothing
call UnitRemoveAbility(P7I,1093814856)
call UnitRemoveAbility(P7I,1093814855)
call UnitRemoveAbility(P7I,1093814858)
call UnitRemoveAbility(P7I,1093814857)
call UnitRemoveAbility(P7I,1110459980)
endfunction
function PL5 takes unit P7I returns nothing
call IA1(P7I,1093814329)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093814329,false)
endfunction
function PM5 takes unit P7I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093814320)
if SUI==1 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093814856,false)
call IA1(P7I,1093814856)
elseif SUI==2 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093814855,false)
call IA1(P7I,1093814855)
elseif SUI==3 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093814858,false)
call IA1(P7I,1093814858)
elseif SUI==4 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093814857,false)
call IA1(P7I,1093814857)
endif
endfunction
function PN5 takes unit P7I,unit P8I returns nothing
local real a=GetRandomReal(0,360)
local real x=GetUnitX(P8I)+50*Cos(a*bj_DEGTORAD)
local real y=GetUnitY(P8I)+50*Sin(a*bj_DEGTORAD)
call SetUnitPosition(P7I,x,y)
call SetUnitFacing(P7I,bj_RADTODEG*Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I)))
call SetUnitAnimation(P7I,"Attack")
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Fire_Blink_2.mdx",P7I,"chest"))
call PK5(P7I)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true or IsUnitIllusion(P8I)==true then
call PM5(P7I)
call UnitRemoveAbility(P7I,1093814854)
else
call IA1(P7I,1093814854)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093814854,false)
endif
call IssueTargetOrder(P7I,"attack",P8I)
endfunction
function PS5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local unit P8I=null
local boolean FW1=false
local fogmodifier I31=(LoadFogModifierHandle(LY,(S5I),(42)))
local integer SUI=GetUnitAbilityLevel(P7I,1093814320)
loop
exitwhen FirstOfGroup(g)==null or FW1
set P8I=FirstOfGroup(g)
call GroupRemoveUnit(g,P8I)
if IsUnitInGroup(P8I,PR2)and P8I!=null then
set P8I=null
set FW1=false
else
set FW1=true
endif
endloop
call SetUnitPathing(P7I,false)
call SetUnitInvulnerable(P7I,true)
call BF1(P7I)
if FW1==false or((LoadInteger(LY,(GetHandleId((P7I))),((4319))))==1)==true then
call SaveInteger(LY,(GetHandleId((P7I))),((4318)),(2))
call PJ5(P7I)
call UnitRemoveAbility(P7I,1093814854)
call PK5(P7I)
call BF1(P7I)
call PY5(P7I)
call UnitAddAbility(P7I,1093814322)
call UnitRemoveAbility(P7I,1093814322)
call BF1(P7I)
if((LoadInteger(LY,(GetHandleId((P7I))),((4319))))==1)==false then
call SetUnitX(P7I,QXI)
call SetUnitY(P7I,QYI)
endif
call SetUnitVertexColor(P7I,255,255,255,255)
call SetUnitPathing(P7I,true)
call SetUnitInvulnerable(P7I,false)
call SetUnitTimeScale(P7I,1)
call NSI(PR2)
call NSI(g)
call RemoveUnit((LoadUnitHandle(LY,(S5I),(19))))
call FogModifierStop(I31)
call DestroyFogModifier(I31)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call GroupAddUnit(PR2,P8I)
call PN5(P7I,P8I)
endif
set t=null
set P7I=null
set P8I=null
set g=null
set PR2=null
return false
endfunction
function PT5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local fogmodifier I31=CreateFogModifierRadius(GetOwningPlayer(P7I),FOG_OF_WAR_VISIBLE,x,y,600,true,true)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747993911,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093814320)
call SetUnitVertexColor(I01,255,255,255,100)
call FogModifierStart(I31)
call SaveInteger(LY,(GetHandleId((P7I))),((4318)),(1))
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,150+100*SUI+25,Condition(function CG1))
call BF1(P7I)
call PY5(P7I)
call UnitAddAbility(P7I,1093814321)
call UnitRemoveAbility(P7I,1093814321)
call SetUnitVertexColor(P7I,255,255,255,125)
call SetUnitPathing(P7I,false)
call SetUnitInvulnerable(P7I,true)
call SetUnitTimeScale(P7I,3)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function PS5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(189),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(190),((GetUnitY(P7I))*1.0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveFogModifierHandle(LY,(S5I),(42),(I31))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call PL5(P7I)
call TriggerEvaluate(t)
set P7I=null
set t=null
set I31=null
set I01=null
set g=null
endfunction
function PR5 takes nothing returns boolean
if GetSpellAbilityId()==1093814320 then
call PT5()
endif
return false
endfunction
function PP5 takes nothing returns boolean
local unit IYO=GetSummonedUnit()
if IsUnitIllusion(IYO)==true and GetUnitTypeId(IYO)==1311788360 then
call PJ5(IYO)
call UnitRemoveAbility(IYO,1093814854)
call PK5(IYO)
call UnitAddAbility(IYO,1093814322)
call UnitRemoveAbility(IYO,1093814322)
endif
set IYO=null
return false
endfunction
function PD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PR5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function PP5))
set t=null
endfunction
function PQ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093814323)
local integer MKO=1
local real PAI
if SUI==1 then
set MKO=1
set PAI=80
endif
if SUI==2 then
set MKO=2
set PAI=60
endif
if SUI==3 then
set MKO=2
set PAI=120
endif
if SUI==4 then
set MKO=3
set PAI=100
endif
if GetTriggerEvalCount(t)==MKO then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call P6I(P7I,P8I,1,PAI)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function PU5 takes nothing returns nothing
local unit P7I=GK
local unit P8I=HK
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093814323)
call UnitAddAbility(I01,1093814324)
call SetUnitAbilityLevel(I01,1093814324,SUI)
call IssueTargetOrder(I01,"ensnare",P8I)
call TriggerAddCondition(t,Condition(function PQ5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerRegisterTimerEvent(t,1,true)
set I01=null
set P7I=null
set P8I=null
endfunction
function Q05 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit u1=null
local unit u2=null
local unit u3=null
local integer VB2=0
local unit u
local trigger t
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,425,Condition(function CF1))
loop
exitwhen FirstOfGroup(g)==null or VB2==2
set u=GroupPickRandomUnit(g)
if u!=null then
if VB2==0 then
set u1=u
elseif VB2==1 then
set u2=u
elseif VB2==2 then
set u3=u
endif
set VB2=VB2+1
call GroupRemoveUnit(g,u)
endif
endloop
call NSI(g)
if u1!=null then
call IJ1(P7I,u1,1747993904,"PU5",9000,false)
endif
if u2!=null then
call IJ1(P7I,u2,1747993904,"PU5",9000,false)
endif
if u3!=null then
endif
set g=null
set P7I=null
set u=null
set u1=null
set u2=null
set u3=null
endfunction
function QI5 takes nothing returns boolean
if GetSpellAbilityId()==1093814323 then
call Q05()
endif
return false
endfunction
function PB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QI5))
set t=null
endfunction
function Q15 takes nothing returns boolean
local unit P7I=(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))
local integer S5I=GetHandleId(P7I)
local integer i=0
local real SOI=(TimerGetElapsed(M))
local integer QO5=(LoadInteger(LY,(S5I),(749)))
local real x
local real y
local real t
loop
exitwhen i>QO5
set t=(LoadReal(LY,(S5I),(10000+i)))
if t+10>SOI then
set x=(LoadReal(LY,(S5I),(11000+i)))
set y=(LoadReal(LY,(S5I),(12000+i)))
endif
set i=i+1
endloop
set P7I=null
return false
endfunction
function Q25 takes integer S5I,integer QO5,real IV1,real IW1 returns boolean
local real x
local real y
local real t
local integer i=0
local real SOI=(TimerGetElapsed(M))
loop
exitwhen i>QO5
set t=(LoadReal(LY,(S5I),(10000+i)))
if t+10>SOI then
set x=(LoadReal(LY,(S5I),(11000+i)))
set y=(LoadReal(LY,(S5I),(12000+i)))
if QNI(x,y,IV1,IW1)<75 then
return true
endif
endif
set i=i+1
endloop
return false
endfunction
function Q35 takes integer S5I,integer QO5 returns integer
local real t
local integer i=0
local real SOI=(TimerGetElapsed(M))
loop
exitwhen i>QO5
set t=(LoadReal(LY,(S5I),(10000+i)))
if t+10<SOI then
return i
endif
set i=i+1
endloop
return-1
endfunction
function Q45 takes unit P7I,integer Q55,real x,real y returns nothing
local integer S5I=GetHandleId(P7I)
local integer QO5=(LoadInteger(LY,(S5I),(749)))
local integer Q65
if Q25(S5I,QO5,x,y)then
return
endif
set Q65=Q35(S5I,QO5)
if Q65==-1 then
set Q65=QO5
set QO5=QO5+1
call SaveInteger(LY,(S5I),(749),(QO5))
endif
call SaveInteger(LY,(S5I),(13000),(Q55))
call SaveReal(LY,(S5I),(10000),(((TimerGetElapsed(M)))*1.0))
call SaveReal(LY,(S5I),(11000),((x)*1.0))
call SaveReal(LY,(S5I),(11000),((y)*1.0))
endfunction
function Q75 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function Q15))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function Q85 takes nothing returns nothing
call P6I(J1I,GetEnumUnit(),1,50+JII*50)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\LordofFlameMissile\\LordofFlameMissile.mdl",GetEnumUnit(),"origin"))
endfunction
function Q95 takes unit P7I,unit DX3,real x,real y returns nothing
local group g
call KillUnit(DX3)
call U7I("war3mapImported\\Firaga_2.mdx",x,y,2)
set g=NTI()
set GK=P7I
set J1I=P7I
set JII=GetUnitAbilityLevel(P7I,1093814859)
call GroupEnumUnitsInRange(g,x,y,450+25,Condition(function CA1))
call UnitRemoveAbility(P7I,1093678162)
call ForGroup(g,function Q85)
call IA1(P7I,1093678162)
call NSI(g)
set g=null
endfunction
function QA5 takes unit P7I,unit QB5 returns nothing
local integer S5I=GetHandleId(P7I)
local integer QC5=(LoadInteger(LY,(S5I),(746)))
local unit QD5
local integer i=1
local integer x
loop
exitwhen i>QC5
set QD5=(LoadUnitHandle(LY,(S5I),(1450+i)))
if QD5==QB5 then
set QC5=QC5-1
call SaveUnitHandle(LY,(S5I),(1450+i),((LoadUnitHandle(LY,(S5I),(1450+i+1)))))
call SaveInteger(LY,(S5I),(746),(QC5))
set x=i+1
loop
exitwhen x>QC5
call SaveUnitHandle(LY,(S5I),(1450+x),((LoadUnitHandle(LY,(S5I),(1450+x+1)))))
set x=x+1
endloop
endif
set i=i+1
endloop
set QD5=null
endfunction
function QE5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit DX3=(LoadUnitHandle(LY,(S5I),(19)))
local real IO3=GetUnitX(DX3)
local real I23=GetUnitY(DX3)
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real a=UEI(IO3,I23,QJI,QKI)*bj_DEGTORAD
local real IV1
local real IW1
local real d=QNI(IO3,I23,QJI,QKI)
local real JC3=GetUnitMoveSpeed(P7I)*2.5*0.02
local group g
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call QA5(P7I,DX3)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif d<2 then
call SetUnitAnimationByIndex(DX3,1)
else
if d<JC3 then
set IV1=QJI
set IW1=QKI
else
set IV1=IO3+JC3*Cos(a)
set IW1=I23+JC3*Sin(a)
endif
call SetUnitX(DX3,IV1)
call SetUnitY(DX3,IW1)
endif
set t=null
set P7I=null
set DX3=null
return false
endfunction
function QF5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
local integer S5I=GetHandleId(P7I)
local integer QC5=(LoadInteger(LY,(S5I),(746)))
local integer SUI=GetUnitAbilityLevel(P7I,1093814859)
local unit QD5=(LoadUnitHandle(LY,(S5I),(1450+1)))
local unit QG5=CreateUnit(GetOwningPlayer(P7I),1747993912,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
local trigger t
local integer i=1
set QC5=QC5+1
call SaveUnitHandle(LY,(S5I),(1450+QC5),(QG5))
call SaveInteger(LY,(S5I),(746),(QC5))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SetUnitVertexColor(QG5,255,255,255,75)
call SetUnitTimeScale(QG5,2)
call SetUnitAnimationByIndex(QG5,0)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function QE5))
call TriggerRegisterDeathEvent(t,QG5)
call UnitApplyTimedLife(QG5,1112820806,45)
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",QG5,"hand right alternate")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",QG5,"hand left alternate")))
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffectTarget("war3mapImported\\FlameDash_Ground.mdx",QG5,"origin")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(QG5))
call SaveReal(LY,(S5I),(47),((GetSpellTargetX())*1.0))
call SaveReal(LY,(S5I),(48),((GetSpellTargetY())*1.0))
set P7I=null
set t=null
set QD5=null
set QG5=null
endfunction
function QH5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(747)))
if JGO>0 then
call QF5()
call UnitRemoveAbility(P7I,J5I[JGO])
set JGO=JGO-1
call SaveInteger(LY,(GetHandleId(P7I)),(747),(JGO))
call IA1(P7I,J5I[JGO])
else
call PZI(GetOwningPlayer(GetTriggerUnit()),"No more charges")
endif
set P7I=null
endfunction
function QZ5 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1747993912
endfunction
function QV5 takes nothing returns nothing
local real QWI=QNI(GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),JOI,J2I)
if QWI>J3I and IC1(GetEnumUnit())==false then
set J4I=GetEnumUnit()
set J3I=QWI
endif
endfunction
function QW5 takes unit P7I,real x,real y returns unit
local group g=NTI()
set J4I=null
set J3I=-1
set JOI=x
set J2I=y
call GroupEnumUnitsOfPlayer(g,GetOwningPlayer(P7I),Condition(function QZ5))
call ForGroup(g,function QV5)
call NSI(g)
set g=null
return J4I
endfunction
function FireRemnant_FindTargetClosest takes nothing returns nothing
local real QWI=QNI(GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),JOI,J2I)
if QWI<J3I and IC1(GetEnumUnit())==false then
set J4I=GetEnumUnit()
set J3I=QWI
endif
endfunction
function QX5 takes unit u1,unit u2 returns real
local real IT3=QLI(u1,u2)
local real Q4I=IT3/1300.0
if Q4I>0.4 then
return IT3/0.4
endif
return 1300.0
endfunction
function QY5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real EN4=(LoadReal(LY,(S5I),(47)))
local real ES4=(LoadReal(LY,(S5I),(48)))
local unit DX3=(LoadUnitHandle(LY,(S5I),(19)))
local real IO3=GetUnitX(P7I)
local real I23=GetUnitY(P7I)
local real QJI=(LoadReal(LY,(S5I),(6)))
local real QKI=(LoadReal(LY,(S5I),(7)))
local real a
local real IV1
local real IW1
local real d
local real IF1=(LoadReal(LY,(S5I),(44)))
local real JC3=IF1*0.02
local group g
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if DX3!=null then
set QJI=GetUnitX(DX3)
set QKI=GetUnitY(DX3)
call SaveReal(LY,(S5I),(6),((QJI)*1.0))
call SaveReal(LY,(S5I),(7),((QKI)*1.0))
endif
set a=UEI(IO3,I23,QJI,QKI)*bj_DEGTORAD
set d=QNI(IO3,I23,QJI,QKI)
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call SaveInteger(LY,(GetHandleId((P7I))),((4319)),(2))
call SetUnitVertexColor(P7I,255,255,255,255)
call SetUnitTimeScale(P7I,1)
call SetUnitAnimationByIndex(P7I,0)
call SetUnitPathing(P7I,true)
call SetUnitInvulnerable(P7I,false)
call UnitRemoveAbility(P7I,1093678162)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif d<JC3 then
call SetUnitX(P7I,QJI)
call SetUnitY(P7I,QKI)
call Q95(P7I,DX3,QJI,QKI)
set DX3=QW5(P7I,EN4,ES4)
if DX3==null then
call SaveInteger(LY,(GetHandleId((P7I))),((4319)),(2))
call UPI(QJI,QKI,100)
call SetUnitVertexColor(P7I,255,255,255,255)
call SetUnitTimeScale(P7I,1)
call SetUnitAnimationByIndex(P7I,1)
call SetUnitPathing(P7I,true)
call SetUnitInvulnerable(P7I,false)
call UnitRemoveAbility(P7I,1093678162)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveInteger(LY,(S5I),(34),(NPI+1))
call SaveUnitHandle(LY,(S5I),(19),(DX3))
call SaveReal(LY,(S5I),(44),((QX5(P7I,DX3))*1.0))
call SaveReal(LY,(S5I),(6),((GetUnitX(DX3))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(DX3))*1.0))
endif
else
call SetUnitAnimationByIndex(P7I,0)
call SetUnitPathing(P7I,false)
set IV1=IO3+JC3*Cos(a)
set IW1=I23+JC3*Sin(a)
call SetUnitX(P7I,IV1)
call SetUnitY(P7I,IW1)
call SetUnitFacing(P7I,a*bj_RADTODEG)
call UPI(IV1,IW1,100)
endif
call Q45(P7I,NPI,GetUnitX(P7I),GetUnitY(P7I))
set t=null
set P7I=null
set DX3=null
return false
endfunction
function QJ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+150)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function QK5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t
local integer S5I=GetHandleId(P7I)
local integer QC5=(LoadInteger(LY,(S5I),(746)))
local unit DX3
if QC5>0 and((LoadInteger(LY,(GetHandleId((P7I))),((4319))))==1)==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SetUnitVertexColor(P7I,255,0,0,75)
call SetUnitTimeScale(P7I,2)
call SetUnitAnimationByIndex(P7I,0)
call SetUnitPathing(P7I,false)
call SetUnitInvulnerable(P7I,true)
call IA1(P7I,1093678162)
call SaveInteger(LY,(GetHandleId((P7I))),((4319)),(1))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function QY5))
call TriggerRegisterDeathEvent(t,P7I)
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",P7I,"hand right alternate")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",P7I,"hand left alternate")))
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffectTarget("war3mapImported\\FlameDash_Ground.mdx",P7I,"origin")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(47),((GetSpellTargetX())*1.0))
call SaveReal(LY,(S5I),(48),((GetSpellTargetY())*1.0))
set DX3=QW5(P7I,GetSpellTargetX(),GetSpellTargetY())
call SaveUnitHandle(LY,(S5I),(19),(DX3))
call SaveReal(LY,(S5I),(44),((QX5(P7I,DX3))*1.0))
call SaveReal(LY,(S5I),(6),((GetUnitX(DX3))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(DX3))*1.0))
call SaveInteger(LY,(S5I),(34),(1))
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.0,false)
call TriggerAddCondition(t,Condition(function QJ5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
set t=null
set P7I=null
set DX3=null
endfunction
function QL5 takes nothing returns boolean
if GetSpellAbilityId()==J5I[0]or GetSpellAbilityId()==J5I[1]or GetSpellAbilityId()==J5I[2]or GetSpellAbilityId()==J5I[3]then
call QH5()
elseif GetSpellAbilityId()==1093814860 then
call QK5()
endif
return false
endfunction
function QM5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(747)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if JGO<3 then
set NPI=NPI-1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==0 then
call UnitRemoveAbility(P7I,J5I[JGO])
set NPI=35
call SaveInteger(LY,(S5I),(34),(NPI))
set JGO=JGO+1
call SaveInteger(LY,(GetHandleId(P7I)),(747),(JGO))
call IA1(P7I,J5I[JGO])
endif
endif
set t=null
set P7I=null
return false
endfunction
function QN5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveInteger(LY,(GetHandleId(P7I)),(747),(3))
call IA1(P7I,J5I[3])
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function QM5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(30))
set P7I=null
set t=null
endfunction
function QS5 takes nothing returns boolean
if GetLearnedSkill()==1093814859 and IsUnitIllusion(GetTriggerUnit())==false then
call IA1(GetTriggerUnit(),1093814860)
call SetUnitAbilityLevel(GetTriggerUnit(),1093814860,GetUnitAbilityLevel(GetTriggerUnit(),1093814859))
if GetUnitAbilityLevel(GetTriggerUnit(),1093814859)==1 then
call QN5()
call Q75()
endif
endif
return false
endfunction
function PE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QL5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function QS5))
set t=null
set J5I[0]=1093814863
set J5I[1]=1093814865
set J5I[2]=1093814864
set J5I[3]=1093814866
endfunction
function QT5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamage()>2 and J6I then
set J6I=false
call P6I(GetEventDamageSource(),P8I,3,GetEventDamage()*0.25)
set J6I=true
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
function QR5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093812536)
set J6I=true
call UnitAddAbility(I01,1093812535)
call SetUnitAbilityLevel(I01,1093812535,SUI)
call IssueTargetOrder(I01,"soulburn",P8I)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,2+SUI,false)
call TriggerAddCondition(t,Condition(function QT5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set P7I=null
set P8I=null
set t=null
endfunction
function QP5 takes nothing returns boolean
if GetSpellAbilityId()==1093812536 then
call QR5()
endif
return false
endfunction
function Register_ArcaneSeal takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QP5))
set t=null
endfunction
function QQ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real a=(LoadReal(LY,(S5I),(137)))
local real d=(LoadReal(LY,(S5I),(138)))
local real x=PTI(GetUnitX(P8I)+d/10*Cos(a))
local real y=PUI(GetUnitY(P8I)+d/10*Sin(a))
if GetTriggerEvalCount(t)==11 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call DestroyEffect(AddSpecialEffect("war3mapImported\\ThrustMovement.mdx",x,y))
call UPI(x,y,150)
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
endif
set P8I=null
set t=null
return false
endfunction
function QU5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093812537)
local real a
local real x
local real y
local real d
local integer i=-1
local boolean K3O=false
if P7I==P8I then
set a=GetUnitFacing(P7I)*bj_DEGTORAD
else
set a=UDI(P7I,P8I)*bj_DEGTORAD
endif
loop
exitwhen K3O or i==23
set i=i+1
set x=PTI(GetUnitX(P8I)+(350-i*25)*Cos(a))
set y=PUI(GetUnitY(P8I)+(350-i*25)*Sin(a))
if(IsPointInRegion(LN,((x)*1.0),((y)*1.0)))==false then
set K3O=true
endif
endloop
set d=QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function QQ5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(138),((d)*1.0))
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==true then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+50+50*SUI)
else
call P6I(P7I,P8I,3,50+50*SUI)
endif
set P7I=null
set P8I=null
set t=null
endfunction
function UI5 takes nothing returns boolean
if GetSpellAbilityId()==1093812537 then
call QU5()
endif
return false
endfunction
function Register_Thrust takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UI5))
set t=null
endfunction
function U15 takes nothing returns nothing
call IssueTargetOrder(J7I,"ensnare",GetEnumUnit())
call P6I(GetTriggerUnit(),GetEnumUnit(),1,60*J8I)
endfunction
function UO5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g1=NTI()
local group g2=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093812534)
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
set J8I=SUI
set J7I=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call UnitAddAbility(J7I,1093812549)
call SetUnitAbilityLevel(J7I,1093812549,SUI)
call GroupEnumUnitsInRange(g1,x,y,425,Condition(function C51))
call GroupEnumUnitsInRange(g2,x,y,825,Condition(function C51))
call GroupRemoveGroup(g1,g2)
call ForGroup(g2,function U15)
call NSI(g1)
call NSI(g2)
call DestroyEffect(AddSpecialEffect("war3mapImported\\ConjureForceAoE.mdx",x,y))
set P7I=null
set g1=null
set g2=null
endfunction
function U25 takes nothing returns boolean
if GetSpellAbilityId()==1093812534 then
call UO5()
endif
return false
endfunction
function Register_ConjureForce takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function U25))
set t=null
endfunction
function U35 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),JAI)==false then
call GroupAddUnit(JAI,GetEnumUnit())
call P6I(J9I,GetEnumUnit(),3,JBI)
endif
endfunction
function U45 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real PAI=(LoadReal(LY,(S5I),(20)))
local group H03
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x
local real y
if GetTriggerEvalCount(t)>67 then
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(IG1)
else
set x=GetUnitX(IG1)
set y=GetUnitY(IG1)
set H03=NTI()
set JAI=g
set GK=IG1
set J9I=P7I
set JBI=PAI
call GroupEnumUnitsInRange(H03,x,y,225,Condition(function CH1))
call ForGroup(H03,function U35)
call NSI(H03)
call SetUnitX(IG1,PTI(x+15*Cos(RM2*bj_DEGTORAD)))
call SetUnitY(IG1,PUI(y+15*Sin(RM2*bj_DEGTORAD)))
endif
set t=null
set g=null
set H03=null
set P7I=null
set IG1=null
return false
endfunction
function U55 takes unit P7I,real PAI,real x,real y returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g=NTI()
local real x1=GetUnitX(P7I)
local real y1=GetUnitY(P7I)
local real x2=x
local real y2=y
local real RM2=UEI(x1,y1,x2,y2)
local integer SUI=GetUnitAbilityLevel(P7I,1093812545)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993673,x1,y1,RM2)
call SetUnitScale(IG1,1.5,1.5,1.5)
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call TriggerRegisterTimerEvent(t,0.015,true)
call TriggerAddCondition(t,Condition(function U45))
set t=null
set IG1=null
set g=null
endfunction
function U65 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local boolean PK2=(LoadBoolean(LY,(S5I),(95)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812546,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812545,true)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if PK2==false and GetEventDamage()>2 and GetEventDamage()<3000 and IsUnitIllusion(P8I)==false then
call SaveReal(LY,(S5I),(20),(((LoadReal(LY,(S5I),(20)))+GetEventDamage())*1.0))
call QGI(P8I,GetEventDamage())
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
if GetSpellAbilityId()==1093812545 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call SaveBoolean(LY,(S5I),(95),(true))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093812546 then
call U55(P7I,(LoadReal(LY,(S5I),(20))),GetSpellTargetX(),GetSpellTargetY())
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812546,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812545,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812546,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812545,true)
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
function U75 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(P7I,1093812546)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812546,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812545,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterTimerEvent(t,20,false)
call TriggerAddCondition(t,Condition(function U65))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveBoolean(LY,(S5I),(95),(false))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\WispShellBlue_2.mdx",P7I,"origin")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\DivineWrathTarget.mdx",P8I,"origin")))
set P7I=null
set P8I=null
set t=null
endfunction
function U85 takes nothing returns boolean
if GetSpellAbilityId()==1093812545 then
call U75()
endif
return false
endfunction
function Register_DivineWrath takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function U85))
set t=null
endfunction
function U95 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or GetSpellAbilityId()==1093812804 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812803,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812804,false)
call UnitRemoveAbility(P7I,1097167980)
call UnitRemoveAbility(P7I,1093812787)
call UnitRemoveAbility(P7I,1093812784)
call UnitRemoveAbility(P7I,1093812785)
call UnitRemoveAbility(P7I,1093812786)
call UnitRemoveAbility(P7I,1110459954)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function UA5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093812803)
call TriggerRegisterTimerEvent(t,5,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function U95))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call UnitAddAbility(P7I,1093812804)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812803,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812804,true)
call UnitAddAbility(P7I,1097167980)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1097167980,false)
if SUI==1 then
call UnitAddAbility(P7I,1093812787)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812787,false)
elseif SUI==2 then
call UnitAddAbility(P7I,1093812784)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812784,false)
elseif SUI==3 then
call UnitAddAbility(P7I,1093812785)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812785,false)
elseif SUI==4 then
call UnitAddAbility(P7I,1093812786)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093812786,false)
endif
set t=null
set P7I=null
endfunction
function UB5 takes nothing returns boolean
if GetSpellAbilityId()==1093812803 then
call UA5()
endif
return false
endfunction
function Register_Wraith takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UB5))
set t=null
endfunction
function UC5 takes unit P7I,unit VS5,unit P8I,integer SUI returns nothing
call GroupAddUnit(JCI,P8I)
call DD1(P7I,P8I,1.25+0.25*SUI)
call P6I(P7I,P8I,1,40*SUI)
call KillUnit(VS5)
endfunction
function UD5 takes nothing returns boolean
if(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GK))==true or BU1(GetFilterUnit())==false)then
return IsUnitInGroup(GetFilterUnit(),JCI)==false
endif
return false
endfunction
function UE5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g
local integer i=1
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local real a=(LoadReal(LY,(S5I),(137)))
local unit VS5
local unit P8I
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
set JCI=PR2
set x=PTI(x+12*Cos(a))
set y=PUI(y+12*Sin(a))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
if GetTriggerEvalCount(t)>39 then
loop
exitwhen i>3
call KillUnit((LoadUnitHandle(LY,(S5I),(393+i-1))))
set i=i+1
endloop
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,275,Condition(function UD5))
loop
exitwhen i>3
if(LoadBoolean(LY,(S5I),(511+i-1)))==false then
set VS5=(LoadUnitHandle(LY,(S5I),(393+i-1)))
set x=(LoadReal(LY,(S5I),(549+i-1)))
set y=(LoadReal(LY,(S5I),(567+i-1)))
set x=PTI(x+12*Cos(a))
set y=PUI(y+12*Sin(a))
call SaveReal(LY,(S5I),(549+i-1),((x)*1.0))
call SaveReal(LY,(S5I),(567+i-1),((y)*1.0))
call SetUnitX(VS5,x)
call SetUnitY(VS5,y)
set P8I=GroupPickRandomUnit(g)
if P8I!=null then
call GroupRemoveUnit(g,P8I)
call SaveInteger(LY,(GetHandleId((P8I))),((4314)),(1))
call SaveBoolean(LY,(S5I),(511+i-1),(true))
call UC5(P7I,VS5,P8I,GetUnitAbilityLevel(P7I,1093812788))
endif
endif
set i=i+1
endloop
call NSI(g)
set g=null
set VS5=null
set P8I=null
endif
set t=null
set P7I=null
return false
endfunction
function UF5 takes nothing returns nothing
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local real a=UEI(x,y,QJI,QKI)*bj_DEGTORAD
local real b
local unit I01
local real IV1=PTI(x+500*Cos(a))
local real IW1=PUI(y+500*Sin(a))
local integer i=0
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real DJ1
local integer SUI=GetUnitAbilityLevel(P7I,1093812788)
local integer RII=1747993678
set i=i+1
set b=a*bj_RADTODEG+90
if b>360 then
set b=b-360
endif
set b=b*bj_DEGTORAD
set I01=CreateUnit(GetOwningPlayer(P7I),RII,x+100*Cos(a)+100*Cos(b),y+100*Sin(a)+100*Sin(b),a*bj_RADTODEG)
call SaveUnitHandle(LY,(S5I),(393+i-1),(I01))
call SaveBoolean(LY,(S5I),(511+i-1),(false))
call SaveReal(LY,(S5I),(549+i-1),((GetUnitX(I01))*1.0))
call SaveReal(LY,(S5I),(567+i-1),((GetUnitY(I01))*1.0))
set i=i+1
set b=a*bj_RADTODEG-90
if b<0 then
set b=360+b
endif
set b=b*bj_DEGTORAD
set I01=CreateUnit(GetOwningPlayer(P7I),RII,x+100*Cos(a)+100*Cos(b),y+100*Sin(a)+100*Sin(b),a*bj_RADTODEG)
call SaveUnitHandle(LY,(S5I),(393+i-1),(I01))
call SaveBoolean(LY,(S5I),(511+i-1),(false))
call SaveReal(LY,(S5I),(549+i-1),((GetUnitX(I01))*1.0))
call SaveReal(LY,(S5I),(567+i-1),((GetUnitY(I01))*1.0))
set i=i+1
set I01=CreateUnit(GetOwningPlayer(P7I),RII,x+100*Cos(a),y+100*Sin(a),a*bj_RADTODEG)
call SaveUnitHandle(LY,(S5I),(393+i-1),(I01))
call SaveBoolean(LY,(S5I),(511+i-1),(false))
call SaveReal(LY,(S5I),(549+i-1),((GetUnitX(I01))*1.0))
call SaveReal(LY,(S5I),(567+i-1),((GetUnitY(I01))*1.0))
call TriggerRegisterTimerEvent(t,0.015,true)
call TriggerAddCondition(t,Condition(function UE5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(47),((IV1)*1.0))
call SaveReal(LY,(S5I),(48),((IW1)*1.0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
set P7I=null
set I01=null
set t=null
endfunction
function UG5 takes nothing returns boolean
if GetSpellAbilityId()==1093812788 then
call UF5()
endif
return false
endfunction
function Q31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UG5))
set t=null
endfunction
function UH5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=GetTriggerEvalCount(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093812789)
if NPI==6 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitShareVision(P8I,GetOwningPlayer(P7I),false)
endif
call P6I(P7I,P8I,1,20+10*SUI)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function UZ5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function UH5))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveUnitHandle(LY,(S5I),(17),(GetEnumUnit()))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\BansheeMissile\\BansheeMissile.mdl",GetEnumUnit(),"overhead")))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",GetEnumUnit(),"origin"))
call UnitShareVision(GetEnumUnit(),GetOwningPlayer(GetTriggerUnit()),true)
set t=null
endfunction
function UV5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitAddAbility(I01,1093812791)
call IssueImmediateOrderById(I01,852625)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",GetUnitX(P7I),GetUnitY(P7I)))
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),625,Condition(function C51))
call ForGroup(g,function UZ5)
call NSI(g)
set g=null
set P7I=null
set I01=null
endfunction
function UW5 takes nothing returns boolean
if GetSpellAbilityId()==1093812789 then
call UV5()
endif
return false
endfunction
function Register_Miasma takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UW5))
set t=null
endfunction
function GetTotalMinutes takes nothing returns integer
return R2I((TimerGetElapsed(M))/60)
endfunction
function UX5 takes unit P7I,integer ZO3 returns nothing
local integer JD3=GetHeroAgi(P7I,false)
local integer JE3=GetHeroStr(P7I,false)
local integer UY5=GetHeroInt(P7I,false)
call SetHeroAgi(P7I,JD3-ZO3,true)
call SetHeroStr(P7I,JE3-ZO3,true)
call SetHeroInt(P7I,UY5-ZO3,true)
endfunction
function UJ5 takes unit P7I,integer ZO3 returns nothing
local integer JD3=GetHeroAgi(P7I,false)
local integer JE3=GetHeroStr(P7I,false)
local integer UY5=GetHeroInt(P7I,false)
call SetHeroAgi(P7I,JD3+ZO3,true)
call SetHeroStr(P7I,JE3+ZO3,true)
call SetHeroInt(P7I,UY5+ZO3,true)
endfunction
function UK5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer UL5=(LoadInteger(LY,(S5I),(744)))
local integer SUI=GetUnitAbilityLevel(P7I,1093814066)
local integer BX1=(R2I((TimerGetElapsed(M))/60))
local real HJ3=SUI+1+(0.1+0.1*SUI)*BX1
local integer UM5=3+3*SUI+R2I((0.1+0.1*SUI)*BX1)
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093814066 then
if P8I!=null and P8I!=GetSpellTargetUnit()then
call UnitRemoveAbility(P8I,1093814607)
call UX5(P8I,UL5)
call UX5(P7I,UL5)
call SaveInteger(LY,(S5I),(744),(0))
endif
set P8I=GetSpellTargetUnit()
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(P8I,1093814607)
call U5I("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",P7I,"chest",1.9)
call U5I("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",P8I,"chest",1.9)
return false
else
return false
endif
endif
if P8I==null then
elseif IC1(P8I)or IC1(P7I)or QLI(P7I,P8I)>1400 then
call UX5(P7I,UL5)
call UX5(P8I,UL5)
call SaveInteger(LY,(S5I),(744),(0))
call UnitRemoveAbility(P7I,1093814607)
call UnitRemoveAbility(P8I,1093814607)
else
if GetUnitAbilityLevel(P7I,1093814607)==0 then
call IA1(P7I,1093814607)
endif
if GetUnitAbilityLevel(P8I,1093814607)==0 then
call IA1(P8I,1093814607)
endif
if UL5!=UM5 then
call UJ5(P7I,UM5-UL5)
call UJ5(P8I,UM5-UL5)
call SaveInteger(LY,(S5I),(744),(UM5))
endif
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+HJ3)
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+HJ3)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function UN5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UK5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(null))
call SaveInteger(LY,(S5I),(744),(0))
set t=null
set P7I=null
endfunction
function US5 takes nothing returns boolean
if GetLearnedSkill()==1093814066 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093814066)==1 then
call UN5()
endif
return false
endfunction
function Register_Brotherhood takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function US5))
set t=null
endfunction
function UT5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or(GetEventDamage()>30 and GetEventDamageSource()!=GetTriggerUnit()and T2I(GetOwningPlayer(GetEventDamageSource())))then
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
call QGI(P7I,GetEventDamage())
endif
call UnitRemoveAbility(P7I,1093814604)
call UnitRemoveAbility(P7I,1093814605)
call UnitRemoveAbility(P7I,1093812825)
call UnitRemoveAbility(P7I,1093814606)
call UnitRemoveAbility(P7I,1110459956)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function UR5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093812822)
local real d
local integer id
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if SUI==1 then
set d=4
set id=1093814604
elseif SUI==2 then
set d=5
set id=1093814605
elseif SUI==3 then
set d=6
set id=1093812825
elseif SUI==4 then
set d=7
set id=1093814606
endif
call IA1(P8I,id)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),id,false)
call TriggerAddCondition(t,Condition(function UT5))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,d,false)
call SaveUnitHandle(LY,(S5I),(2),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIsp\\SpeedTarget.mdl",P8I,"origin")))
set P7I=null
set P8I=null
set t=null
endfunction
function UP5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),375,Condition(function CR1))
call ForGroup(g,function UR5)
call NSI(g)
set g=null
set P7I=null
endfunction
function UQ5 takes nothing returns boolean
if GetSpellAbilityId()==1093812822 then
call UP5()
endif
return false
endfunction
function Register_Gallop takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UQ5))
endfunction
function UU5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit Z4O=(LoadUnitHandle(LY,(S5I),(17)))
local integer AF1=(LoadInteger(LY,(S5I),(59)))
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,AF1)
call UnitRemoveAbility(P7I,1110459978)
call UnitRemoveAbility(P7I,1110459979)
elseif GetEventDamageSource()==P7I and GetEventDamage()>0 then
call TriggerRegisterTimerEvent(t,0.3,false)
endif
set t=null
set P7I=null
set Z4O=null
return false
endfunction
function I06 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit Z4O=GetAttacker()
local integer SUI=GetUnitAbilityLevel(P7I,1093813593)
local integer id
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if P7I==GetTriggerUnit()and((LoadInteger(LY,(GetHandleId((P7I))),((4316))))==1)==false and IsUnitAlly(P7I,GetOwningPlayer(Z4O))==false then
if GetRandomReal(0,100)<(NPI+1)*JDI[SUI]then
call SaveInteger(LY,(S5I),(34),(0))
call SCI(P7I,4316,0.9)
if SUI==1 then
set id=1093814084
elseif SUI==2 then
set id=1093814085
elseif SUI==3 then
set id=1093814086
elseif SUI==4 then
set id=1093814083
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),id,false)
call IA1(P7I,id)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterUnitEvent(t,Z4O,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1.0,false)
call TriggerAddCondition(t,Condition(function UU5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(Z4O))
call SaveInteger(LY,(S5I),(59),(id))
else
call SaveInteger(LY,(S5I),(34),(NPI+1))
endif
endif
set t=null
set P7I=null
set Z4O=null
return false
endfunction
function II6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function I06))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function I16 takes nothing returns boolean
if GetLearnedSkill()==1093813593 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093813593)==1 then
call II6()
endif
return false
endfunction
function PH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function I16))
set t=null
set JDI[1]=3.646
set JDI[2]=4.562
set JDI[3]=5.570
set JDI[4]=6.668
endfunction
function IO6 takes unit u,integer d returns nothing
local integer array b
local integer a=d
local integer c=1
local integer i=0
local integer EU1
if d<1 then
call UnitRemoveAbility(u,JEI[0])
call UnitRemoveAbility(u,JEI[1])
call UnitRemoveAbility(u,JEI[2])
call UnitRemoveAbility(u,JEI[3])
call UnitRemoveAbility(u,JEI[4])
call UnitRemoveAbility(u,JEI[5])
call UnitRemoveAbility(u,JEI[6])
call UnitRemoveAbility(u,JEI[7])
call UnitRemoveAbility(u,JEI[8])
return
endif
loop
exitwhen c==0
set c=a/2
set b[i]=a-c*2
set a=c
set i=i+1
endloop
set EU1=8
set i=0
loop
exitwhen i>EU1
if b[i]==1 then
call IA1(u,JEI[i])
else
call UnitRemoveAbility(u,JEI[i])
endif
set i=i+1
endloop
endfunction
function I26 takes unit P7I,integer SUI,unit P8I returns nothing
local integer S5I=GetHandleId(P7I)
local integer I36=(LoadInteger(LY,(S5I),(739)))
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
set I36=I36+6+4*SUI
call SaveInteger(LY,(S5I),(739),(I36))
call UYI(GetUnitName(P7I)+" Won The Duel!!",5,P7I,0.03,255,0,0,255)
call IO6(P7I,I36)
endif
endfunction
function I46 takes unit u returns boolean
return GetUnitAbilityLevel(u,1113815395)==0 or PII(u)==false
endfunction
function I56 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real GW1=(LoadReal(LY,(S5I),(442)))
local unit I01
call BP1(P7I)
call BP1(P8I)
if GetTriggerEvalCount(t)==1 then
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093814069)
call IssueTargetOrder(I01,"doom",P8I)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitAddAbility(I01,1093814069)
call IssueTargetOrder(I01,"doom",P7I)
set I01=null
endif
if GetTriggerEventId()==EVENT_WIDGET_DEATH or GW1<(TimerGetElapsed(M))or I46(P7I)==false or I46(P8I)==false then
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
if GetTriggerUnit()==P7I then
call I26(P8I,SUI,GetTriggerUnit())
else
call I26(P7I,SUI,GetTriggerUnit())
endif
endif
call UnitRemoveAbility(P7I,1110459975)
call UnitRemoveAbility(P8I,1110459975)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitPathing(P7I,true)
call SetUnitPathing(P8I,true)
elseif GetIssuedOrderId()!=851973 then
call SetUnitPathing(P7I,false)
call SetUnitPathing(P8I,false)
call DisableTrigger(t)
call IssueTargetOrder(P7I,"attack",P8I)
call IssueTargetOrder(P8I,"attack",P7I)
call EnableTrigger(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function I66 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093813065)
local trigger t
local integer S5I
call SetUnitPathing(P7I,false)
call SetUnitPathing(P8I,false)
call IssueTargetOrder(P7I,"attack",P8I)
call IssueTargetOrder(P8I,"attack",P7I)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\DuelFX.mdx",P7I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\DuelFX.mdx",P8I,"overhead")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+0.75*SUI+3.25)*1.0))
call TriggerAddCondition(t,Condition(function I56))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_ISSUED_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_ORDER)
set P7I=null
set P8I=null
set t=null
endfunction
function I76 takes nothing returns boolean
if GetSpellAbilityId()==1093813065 and NNI(GetSpellTargetUnit())==false then
call I66()
endif
return false
endfunction
function PV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function I76))
set t=null
set JEI[0]=1093814091
set JEI[1]=1093814090
set JEI[2]=1093814089
set JEI[3]=1093814088
set JEI[4]=1093814094
set JEI[5]=1093814095
set JEI[6]=1093814093
set JEI[7]=1093814092
set JEI[8]=1093814096
endfunction
function I86 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real d
local unit Z4O
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
set d=GetEventDamage()
if RSI(d)and d>50 then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
set Z4O=GetEventDamageSource()
if IsUnitType(Z4O,UNIT_TYPE_HERO)==false and GetUnitAbilityLevel(Z4O,1093678162)!=0 then
set Z4O=K1[GetPlayerId(GetOwningPlayer(Z4O))]
endif
call QGI(P7I,d)
set d=d*(0.4+0.2*SUI)
if IsUnitAlly(P8I,GetOwningPlayer(P7I))==true then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+d)
else
call P6I(P7I,P8I,3,d)
endif
endif
endif
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or NPI==3 then
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
function I96 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093814609)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call U5I("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",P7I,"chest",1.9)
call U5I("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",P8I,"chest",1.9)
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkTarget.mdl",P7I,"chest")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkTarget.mdl",P8I,"chest")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
call TriggerAddCondition(t,Condition(function I86))
call TriggerRegisterTimerEvent(t,10,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
set P7I=null
set P8I=null
set t=null
endfunction
function IA6 takes nothing returns boolean
if GetSpellAbilityId()==1093814609 then
call I96()
endif
return false
endfunction
function Register_Deflection takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IA6))
set t=null
endfunction
function IB6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer MKO=5
if P7I==P8I then
set MKO=5
endif
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or NPI>MKO then
call UnitRemoveAbility(P8I,JFI[SUI])
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+20+10*SUI)
call U5I("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",P8I,"chest",1.9)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function IC6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093814834)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call EO1(P8I)
call DU1(P8I,0,0)
call IA1(P8I,JFI[SUI])
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),JFI[SUI],false)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl",P8I,"overhead")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
call TriggerAddCondition(t,Condition(function IB6))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerEvaluate(t)
set P7I=null
set P8I=null
set t=null
endfunction
function ID6 takes nothing returns boolean
if GetSpellAbilityId()==1093814834 then
call IC6()
endif
return false
endfunction
function PG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ID6))
set JFI[1]=1093814841
set JFI[2]=1093814849
set JFI[3]=1093814840
set JFI[4]=1093814839
set t=null
endfunction
function IE6 takes unit P7I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093814851)
call SetUnitAbilityLevel(I01,1093814851,SUI/3)
call IssueTargetOrder(I01,"bloodlust",P7I)
set I01=null
endfunction
function IF6 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_SUMMONED)==true or IsUnitIllusion(GetEnumUnit())==true then
call P6I(GetTriggerUnit(),GetEnumUnit(),1,GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*0.25)
endif
call P6I(GetTriggerUnit(),GetEnumUnit(),1,40*JZI+(12+2*JZI)*JGI+(5+15*JZI)*JHI)
endfunction
function IG6 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
set JHI=JHI+1
else
set JGI=JGI+1
endif
endfunction
function IH6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local integer SUI=GetUnitAbilityLevel(P7I,1093814850)
local group g=NTI()
call DestroyEffect(AddSpecialEffect("war3mapImported\\OverwhelmingOdds.mdx",x,y))
call GroupEnumUnitsInRange(g,x,y,330+25,Condition(function C51))
set JGI=0
set JHI=0
set JZI=SUI
call ForGroup(g,function IG6)
call ForGroup(g,function IF6)
call NSI(g)
call IE6(P7I,9*JHI+3*JGI)
set P7I=null
set g=null
endfunction
function IZ6 takes nothing returns boolean
if GetSpellAbilityId()==1093814850 then
call IH6()
endif
return false
endfunction
function PZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IZ6))
call Q1I(1093814851)
set t=null
endfunction
function IV6 takes nothing returns nothing
set JJI=true
call P6I(JVI,GetEnumUnit(),1,((200+400*JXI)/JWI)/22)
set JJI=false
endfunction
function IW6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g
if GetTriggerEvalCount(t)>22 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,170+25,Condition(function DO1))
set JXI=GetUnitAbilityLevel(P7I,1093812807)
if JXI==0 then
set JXI=GetUnitAbilityLevel(P7I,1093817429)
endif
set JVI=P7I
set JWI=CountUnitsInGroup(g)
call ForGroup(g,function IV6)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function IX6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local string s="war3mapImported\\DivineWrathTarget.mdx"
local location l=GetSpellTargetLoc()
call PlaySoundAtPointBJ(JYI,100,l,0)
call RemoveLocation(l)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function IW6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call DestroyEffect(AddSpecialEffect(s,x,y))
set t=null
set P7I=null
endfunction
function IY6 takes nothing returns boolean
if GetSpellAbilityId()==1093812807 or GetSpellAbilityId()==1093817429 then
call IX6()
endif
return false
endfunction
function PX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IY6))
set t=null
set JYI=CreateSound("Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget2.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(JYI,"StarfallTarget")
call SetSoundDuration(JYI,3000)
endfunction
function IJ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093812820)
local real d
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
set d=GetEventDamage()*(0.2+0.05*SUI)
else
call SaveInteger(LY,(GetHandleId((P8I))),((4317)),(2))
call UnitRemoveAbility(P8I,1093814582)
call UnitRemoveAbility(P8I,1093814581)
call UnitRemoveAbility(P8I,1093814583)
call UnitRemoveAbility(P8I,1093814584)
call UnitRemoveAbility(P8I,1110459987)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function IK6 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(P7I,1093812820)
local unit LastTarget=(LoadUnitHandle(LY,(GetHandleId(P7I)),(741)))
local integer NPI=(LoadInteger(LY,(GetHandleId(P8I)),(742)))
local integer id
if((LoadInteger(LY,(GetHandleId((P8I))),((4317))))==1)==true then
call SaveInteger(LY,(GetHandleId(P8I)),(742),(0))
call SaveReal(LY,(GetHandleId(P8I)),(743),(((TimerGetElapsed(M)))*1.0))
else
if(LoadReal(LY,(GetHandleId(P8I)),(743)))+10<(TimerGetElapsed(M))then
set NPI=1
else
set NPI=NPI+1
endif
if IsUnitType(P8I,UNIT_TYPE_HERO)==true or IsUnitIllusion(P8I)==true then
call UKI(GetOwningPlayer(P7I),I2S(NPI)+"!",2,P8I,0.026,50,0,255,216)
endif
call SaveInteger(LY,(GetHandleId(P8I)),(742),(NPI))
call SaveReal(LY,(GetHandleId(P8I)),(743),(((TimerGetElapsed(M)))*1.0))
if NPI==4 then
call SaveInteger(LY,(GetHandleId(P8I)),(742),(0))
call SaveInteger(LY,(GetHandleId((P8I))),((4317)),(1))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5+0.5*SUI,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function IJ6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
if SUI==1 then
set id=1093814582
elseif SUI==2 then
set id=1093814581
elseif SUI==3 then
set id=1093814583
elseif SUI==4 then
set id=1093814584
endif
call IA1(P8I,id)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),id,false)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\FarseerMissile_Purple_2.mdx",P8I,"chest"))
endif
endif
set t=null
endfunction
function IL6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call IK6(P7I,P8I)
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
function IM6 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1.2,false)
call TriggerAddCondition(t,Condition(function IL6))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function IN6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetAttacker()==P7I and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(P7I))then
if((LoadInteger(LY,(GetHandleId((P7I))),((4315))))==1)==false then
call SCI(P7I,4315,0.3)
call IM6()
endif
endif
set t=null
set P7I=null
return false
endfunction
function IS6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function IN6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function IT6 takes nothing returns boolean
if GetLearnedSkill()==1093812820 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093812820)==1 then
call IS6()
endif
return false
endfunction
function Register_Amp takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function IT6))
set t=null
endfunction
function IR6 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local integer SUI=GetUnitAbilityLevel(P7I,1093812805)
local real PAI=40+20*SUI+1.6*GetHeroInt(P7I,true)
set JJI=true
call P6I(P7I,P8I,1,PAI)
set JJI=false
set P7I=null
set P8I=null
endfunction
function IP6 takes nothing returns nothing
local trigger t=IJ1(GetTriggerUnit(),GetSpellTargetUnit(),1747993681,"IR6",500,false)
local integer S5I=GetHandleId(t)
set t=null
endfunction
function IQ6 takes nothing returns boolean
if GetSpellAbilityId()==1093812805 and NNI(GetSpellTargetUnit())==false then
call IP6()
endif
return false
endfunction
function PY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IQ6))
set t=null
endfunction
function IU6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real d
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
else
call UnitRemoveAbility(P8I,1093814360)
call UnitRemoveAbility(P8I,1093814576)
call UnitRemoveAbility(P8I,1093814361)
call UnitRemoveAbility(P8I,1093814362)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set P8I=null
set t=null
return false
endfunction
function O06 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093814350)
local real M5I=2+SUI
local integer id=1093814360
if SUI==1 then
set id=1093814360
elseif SUI==2 then
set id=1093814576
elseif SUI==3 then
set id=1093814361
elseif SUI==4 then
set id=1093814362
endif
call IA1(P8I,id)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),id,false)
call TriggerRegisterTimerEvent(t,M5I,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function IU6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set P7I=null
set P8I=null
set t=null
endfunction
function OI6 takes nothing returns boolean
if GetSpellAbilityId()==1093814350 and IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)==true and NNI(GetSpellTargetUnit())==false then
call O06()
endif
return false
endfunction
function PJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OI6))
set t=null
endfunction
function O16 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local integer SUI=GetUnitAbilityLevel(P7I,1093814612)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call UnitAddAbility(I01,1093814613)
call SetUnitAbilityLevel(I01,1093814613,SUI)
call IssueImmediateOrder(I01,"thunderclap")
set P7I=null
set P8I=null
set I01=null
endfunction
function OO6 takes unit P7I,group g returns unit
local unit O26=null
local real d=99999
local unit OF5=FirstOfGroup(g)
call GroupRemoveUnit(g,OF5)
loop
exitwhen OF5==null
if QLI(P7I,OF5)<d then
set d=QLI(P7I,OF5)
set O26=OF5
endif
set OF5=FirstOfGroup(g)
call GroupRemoveUnit(g,OF5)
endloop
return O26
endfunction
function O36 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=null
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1600+25,Condition(function D11))
set P8I=OO6(P7I,g)
call NSI(g)
if P8I!=null then
call IJ1(P7I,P8I,1747993910,"O16",800,false)
endif
set g=null
set P8I=null
set P7I=null
endfunction
function O46 takes nothing returns boolean
if GetSpellAbilityId()==1093814612 then
call O36()
endif
return false
endfunction
function PW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O46))
set t=null
endfunction
function O56 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer XT5=(LoadInteger(LY,(S5I),(422)))
local integer XR5=(LoadInteger(LY,(S5I),(423)))
local integer HJ4=(LoadInteger(LY,(S5I),(424)))
call SetHeroAgi(P8I,GetHeroAgi(P8I,false)+XT5,true)
call SetHeroStr(P8I,GetHeroStr(P8I,false)+XR5,true)
call SetHeroInt(P8I,GetHeroInt(P8I,false)+HJ4,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P8I=null
return false
endfunction
function O66 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093813835)
local trigger t
local integer S5I
local integer KBO
local integer XT5
local integer XR5
local integer HJ4
local real JC3
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
set KBO=SEI(P8I)
set JC3=0.15
if KBO==2 then
set XT5=R2I(JC3*GetHeroAgi(P8I,false))-1
set XR5=0
set HJ4=0
elseif KBO==3 then
set XT5=0
set XR5=R2I(JC3*GetHeroStr(P8I,false))-1
set HJ4=0
elseif KBO==1 then
set XT5=0
set XR5=0
set HJ4=R2I(JC3*GetHeroInt(P8I,false))-1
endif
call SetHeroAgi(P8I,GetHeroAgi(P8I,false)-XT5,true)
call SetHeroStr(P8I,GetHeroStr(P8I,false)-XR5,true)
call SetHeroInt(P8I,GetHeroInt(P8I,false)-HJ4,true)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,7,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function O56))
call SaveInteger(LY,(S5I),(422),(XT5))
call SaveInteger(LY,(S5I),(424),(HJ4))
call SaveInteger(LY,(S5I),(423),(XR5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
endif
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",P8I,"chest"))
call P6I(P7I,P8I,JLI,50+50*SUI)
set P7I=null
set P8I=null
endfunction
function O76 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),x,y)*bj_DEGTORAD
set x=GetUnitX(P7I)
set y=GetUnitY(P7I)
if UPI(x,y,JKI)>0 then
set JLI=3
else
set JLI=1
endif
call GroupEnumUnitsInRange(g,x,y,JKI+25,Condition(function C51))
call ForGroup(g,function O66)
call NSI(g)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\WhirlingDeath_01.mdx",P7I,"origin"))
set P7I=null
set g=null
endfunction
function O86 takes nothing returns boolean
if GetSpellAbilityId()==1093813835 then
call O76()
endif
return false
endfunction
function PK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O86))
set t=null
endfunction
function O96 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093813555)
call P6I(P7I,P8I,3,60+40*SUI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",P8I,"origin"))
endfunction
function OA6 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XK)==false then
call GroupAddUnit(XK,GetEnumUnit())
call O96(GK,GetEnumUnit())
endif
endfunction
function OB6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer CV3=(LoadInteger(LY,(S5I),(18)))
local integer NPI=GetTriggerEvalCount(t)
local unit CW3
local group CX3=(LoadGroupHandle(LY,(S5I),(16)))
local group g
local boolean UL1=(LoadBoolean(LY,(S5I),(727)))
local boolean OC6=(LoadBoolean(LY,(S5I),(740)))
if BG1(SFI)then
set OC6=true
call SaveBoolean(LY,(S5I),(740),(OC6))
endif
if UL1==false then
set CW3=(LoadUnitHandle(LY,(S5I),(700+CV3+1-NPI)))
call RemoveUnit(CW3)
else
set CW3=(LoadUnitHandle(LY,(S5I),(700+NPI)))
if OC6==false then
call SetUnitX(SFI,GetUnitX(CW3))
call SetUnitY(SFI,GetUnitY(CW3))
endif
call RemoveUnit(CW3)
set g=NTI()
set GK=SFI
set XK=CX3
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),250,Condition(function CD1))
call ForGroup(g,function OA6)
call NSI(g)
endif
if NPI==(CV3)then
call UPI(GetUnitX(SFI),GetUnitY(SFI),90)
call NSI(CX3)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
set CW3=null
set CX3=null
set g=null
return false
endfunction
function OD6 takes nothing returns nothing
if RJI(GetEnumDestructable())and IsDestructableDeadBJ(GetEnumDestructable())==false then
set JMI=JMI+1
endif
endfunction
function OE6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local integer MKO=(LoadInteger(LY,(S5I),(12)))
local integer NPI=GetTriggerEvalCount(t)
local real x=(LoadReal(LY,(S5I),(6)))+NPI*50*Cos(RM2*bj_DEGTORAD)
local real y=(LoadReal(LY,(S5I),(7)))+NPI*50*Sin(RM2*bj_DEGTORAD)
local boolean CK3=(LoadBoolean(LY,(S5I),(15)))
local unit CL3
local trigger CM3=(LoadTriggerHandle(LY,(S5I),(11)))
local integer CN3=GetHandleId(CM3)
local integer ID=1966092625
local real CY3=250
local rect r
local real d=90
set r=Rect(x-d,y-d,x+d,y+d)
set JMI=0
call EnumDestructablesInRect(r,Condition(function N1I),function OD6)
if JMI>0 or NPI==MKO or NPI==(MKO-1)or NPI==(MKO-2)then
set ID=1966092624
endif
set CL3=CreateUnit(GetOwningPlayer(SFI),ID,x,y,RM2)
call SaveUnitHandle(LY,(CN3),(700+NPI),(CL3))
if JMI>0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call TriggerRegisterTimerEvent(CM3,0.5/MKO,true)
call TriggerAddCondition(CM3,Condition(function OB6))
call SaveInteger(LY,(CN3),(18),(NPI))
call SaveBoolean(LY,(CN3),(727),(true))
call SaveUnitHandle(LY,(CN3),(14),(SFI))
call SaveGroupHandle(LY,(CN3),(16),(NTI()))
call SaveReal(LY,(CN3),(6),((x)*1.0))
call SaveReal(LY,(CN3),(7),((y)*1.0))
call SaveBoolean(LY,(CN3),(740),(false))
elseif NPI>MKO then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call TriggerRegisterTimerEvent(CM3,0.5/MKO,true)
call TriggerAddCondition(CM3,Condition(function OB6))
call SaveInteger(LY,(CN3),(18),(NPI))
call SaveBoolean(LY,(CN3),(727),(false))
call SaveUnitHandle(LY,(CN3),(14),(SFI))
call SaveGroupHandle(LY,(CN3),(16),(NTI()))
call SaveBoolean(LY,(CN3),(740),(false))
endif
set t=null
set SFI=null
set CL3=null
set CM3=null
return false
endfunction
function OF6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real RM2=UEI(GetUnitX(SFI),GetUnitY(SFI),GetLocationX(l),GetLocationY(l))
local integer SUI=GetUnitAbilityLevel(SFI,1093813555)
local integer CT3
local integer MKO
local trigger CR3=CreateTrigger()
set CT3=600+200*SUI
set MKO=CT3/50
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveInteger(LY,(S5I),(12),(MKO))
call SaveTriggerHandle(LY,(S5I),(11),(CR3))
call SaveReal(LY,(S5I),(6),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(SFI))*1.0))
call TriggerRegisterTimerEvent(t,0.5/MKO,true)
call TriggerAddCondition(t,Condition(function OE6))
call RemoveLocation(l)
set t=null
set SFI=null
set l=null
endfunction
function OG6 takes nothing returns boolean
if GetSpellAbilityId()==1093813555 then
call OF6()
endif
return false
endfunction
function PL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OG6))
set t=null
endfunction
function OH6 takes unit P7I returns nothing
local integer NPI=(LoadInteger(LY,(GetHandleId(P7I)),(728)))
local integer SUI=GetUnitAbilityLevel(P7I,1093813556)
local integer i=1
set NPI=IMinBJ(NPI,4*SUI)
loop
exitwhen i>20
if NPI==i then
call IA1(P7I,JNI[i])
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),JNI[i],false)
else
call UnitRemoveAbility(P7I,JNI[i])
endif
set i=i+1
endloop
endfunction
function OZ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(GetHandleId(P7I)),(728)))-1
call SaveInteger(LY,(GetHandleId(P7I)),(728),(NPI))
call OH6(P7I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function OV6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(GetHandleId(P7I)),(728)))+1
if IsUnitEnemy(GetAttacker(),GetOwningPlayer(P7I))==true then
call SaveInteger(LY,(GetHandleId(P7I)),(728),(NPI))
call OH6(P7I)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,16,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function OZ6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
set t=null
set P7I=null
return false
endfunction
function OW6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function OV6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function OX6 takes nothing returns boolean
if GetLearnedSkill()==1093813556 and GetUnitAbilityLevel(GetTriggerUnit(),1093813556)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call OW6()
endif
return false
endfunction
function PM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function OX6))
set t=null
set JNI[1]=1093813319
set JNI[2]=1093813318
set JNI[3]=1093813324
set JNI[4]=1093813325
set JNI[5]=1093813322
set JNI[6]=1093813321
set JNI[7]=1093813326
set JNI[8]=1093813327
set JNI[9]=1093813320
set JNI[10]=1093813333
set JNI[11]=1093813328
set JNI[12]=1093813329
set JNI[13]=1093813330
set JNI[14]=1093813331
set JNI[15]=1093813332
set JNI[16]=1093813323
set JNI[17]=1093816148
set JNI[18]=1093816147
set JNI[19]=1093816149
set JNI[20]=1093816150
endfunction
function OY6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1114663271)
call UnitRemoveAbility(P7I,1111845217)
call UnitRemoveAbility(P7I,1093813848)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function OJ6 takes unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer Z43=R2I(100*GetUnitState(P8I,UNIT_STATE_LIFE)/GetUnitState(P8I,UNIT_STATE_MAX_LIFE))
local integer SUI=QAI(Q9I(R2I(100-Z43)/5,20),1)
call UnitAddAbility(I01,1093813334)
call SetUnitAbilityLevel(I01,1093813334,SUI)
call IssueTargetOrder(I01,"slow",P8I)
set I01=null
endfunction
function OK6 takes nothing returns nothing
if Q2==false and((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((4349))))==1)==false then
call SCI(GetEnumUnit(),4348,0.49)
call P6I(JPI,GetEnumUnit(),3,(25+25*JQI)*0.5)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
call OJ6(JPI,GetEnumUnit())
endif
endfunction
function OL6 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),JRI)==false then
call GroupAddUnit(JRI,GetEnumUnit())
call P6I(JPI,GetEnumUnit(),3,60+40*JQI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
call OJ6(JPI,GetEnumUnit())
endif
endfunction
function OM6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(6)))
local real QKI=(LoadReal(LY,(S5I),(7)))
local real x
local real y
local real a
local integer ON6=(LoadInteger(LY,(S5I),(33)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real OS6
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093813848 then
call SaveInteger(LY,(S5I),(33),(2))
call GroupClear(PR2)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813848,false)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function OY6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
elseif GetTriggerEventId()==EVENT_WIDGET_DEATH or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==-1 then
call BP1(P7I)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093813557 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813557,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813848,false)
call UnitRemoveAbility(P7I,1093813848)
call UnitRemoveAbility(P7I,1114663271)
call UnitRemoveAbility(P7I,1111845217)
call KillUnit(IG1)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif ON6==0 then
set a=UEI(GetUnitX(IG1),GetUnitY(IG1),QJI,QKI)*bj_DEGTORAD
set x=GetUnitX(IG1)+18*Cos(a)
set y=GetUnitY(IG1)+18*Sin(a)
call UPI(x,y,175)
if QNI(x,y,QJI,QKI)<40 then
set x=QJI
set y=QKI
endif
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
set GK=P7I
set JPI=P7I
set JQI=GetUnitAbilityLevel(P7I,1093813557)
set JRI=PR2
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,JSI+25,Condition(function CA1))
call ForGroup(g,function OL6)
call NSI(g)
if x==QJI and y==QKI then
call SaveInteger(LY,(S5I),(33),(1))
call GroupClear(PR2)
endif
elseif ON6==1 then
set NPI=NPI+1
if NPI==25 then
set x=GetUnitX(IG1)
set y=GetUnitY(IG1)
call UPI(x,y,175)
set NPI=0
set GK=P7I
set JPI=P7I
set JQI=GetUnitAbilityLevel(P7I,1093813557)
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,JTI+25,Condition(function CA1))
call ForGroup(g,function OK6)
call NSI(g)
set OS6=(15+5*JQI)/2
if GetUnitState(P7I,UNIT_STATE_MANA)<OS6 or QLI(P7I,IG1)>2000 then
call SaveInteger(LY,(S5I),(33),(2))
call GroupClear(PR2)
call UnitRemoveAbility(P7I,1093813848)
call UnitRemoveAbility(P7I,1114663271)
call UnitRemoveAbility(P7I,1111845217)
else
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)-OS6)
endif
endif
call SaveInteger(LY,(S5I),(34),(NPI))
elseif ON6==2 then
set a=UEI(GetUnitX(IG1),GetUnitY(IG1),GetUnitX(P7I),GetUnitY(P7I))*bj_DEGTORAD
set x=GetUnitX(IG1)+16*Cos(a)
set y=GetUnitY(IG1)+16*Sin(a)
call UPI(x,y,175)
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
set GK=P7I
set JPI=P7I
set JQI=GetUnitAbilityLevel(P7I,1093813557)
set JRI=PR2
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,JSI+25,Condition(function CA1))
call ForGroup(g,function OL6)
call NSI(g)
if QNI(x,y,GetUnitX(P7I),GetUnitY(P7I))<40 then
call BP1(P7I)
call KillUnit(IG1)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093813557 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813557,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813848,false)
endif
endif
set t=null
set P7I=null
set IG1=null
set PR2=null
set g=null
return false
endfunction
function OT6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),x,y)*bj_DEGTORAD
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993683,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OM6))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveInteger(LY,(S5I),(33),(0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call BT1(P7I)
call IA1(P7I,1093813848)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813557,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813848,true)
set P7I=null
set t=null
set IG1=null
endfunction
function OR6 takes nothing returns boolean
if GetSpellAbilityId()==1093813557 then
call OT6()
endif
return false
endfunction
function PN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OR6))
call Q1I(1093813334)
set t=null
endfunction
function OP6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1114663271)
call UnitRemoveAbility(P7I,1111845217)
call UnitRemoveAbility(P7I,1093813558)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function OQ6 takes unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer Z43=R2I(100*GetUnitState(P8I,UNIT_STATE_LIFE)/GetUnitState(P8I,UNIT_STATE_MAX_LIFE))
local integer SUI=QAI(Q9I(R2I(100-Z43)/5,20),1)
call UnitAddAbility(I01,1093813334)
call SetUnitAbilityLevel(I01,1093813334,SUI)
call IssueTargetOrder(I01,"slow",P8I)
set I01=null
endfunction
function OU6 takes nothing returns nothing
if Q2==false and((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((4348))))==1)==false then
call SCI(GetEnumUnit(),4349,0.49)
call P6I(K1I,GetEnumUnit(),3,(25+25*KOI)*0.5)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
call OQ6(K1I,GetEnumUnit())
endif
endfunction
function A06 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),KII)==false then
call GroupAddUnit(KII,GetEnumUnit())
call P6I(K1I,GetEnumUnit(),3,60+40*KOI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",GetEnumUnit(),"origin"))
call OQ6(K1I,GetEnumUnit())
endif
endfunction
function AI6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(6)))
local real QKI=(LoadReal(LY,(S5I),(7)))
local real x
local real y
local real a
local integer ON6=(LoadInteger(LY,(S5I),(33)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real OS6
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093813558 then
call SaveInteger(LY,(S5I),(33),(2))
call GroupClear(PR2)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813558,false)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function OP6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
elseif GetTriggerEventId()==EVENT_WIDGET_DEATH or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==-1 then
call BP1(P7I)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093818703 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093818703,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813558,false)
call UnitRemoveAbility(P7I,1093813558)
call UnitRemoveAbility(P7I,1114663271)
call UnitRemoveAbility(P7I,1111845217)
call KillUnit(IG1)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif ON6==0 then
set a=UEI(GetUnitX(IG1),GetUnitY(IG1),QJI,QKI)*bj_DEGTORAD
set x=GetUnitX(IG1)+18*Cos(a)
set y=GetUnitY(IG1)+18*Sin(a)
call UPI(x,y,175)
if QNI(x,y,QJI,QKI)<40 then
set x=QJI
set y=QKI
endif
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
set GK=P7I
set K1I=P7I
set KOI=GetUnitAbilityLevel(P7I,1093818703)
set KII=PR2
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,JUI+25,Condition(function CA1))
call ForGroup(g,function A06)
call NSI(g)
if x==QJI and y==QKI then
call SaveInteger(LY,(S5I),(33),(1))
call GroupClear(PR2)
endif
elseif ON6==1 then
set NPI=NPI+1
if NPI==25 then
set x=GetUnitX(IG1)
set y=GetUnitY(IG1)
call UPI(x,y,175)
set NPI=0
set GK=P7I
set K1I=P7I
set KOI=GetUnitAbilityLevel(P7I,1093818703)
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,K0I+25,Condition(function CA1))
call ForGroup(g,function OU6)
call NSI(g)
set OS6=(15+5*KOI)/2
if GetUnitState(P7I,UNIT_STATE_MANA)<OS6 or QLI(P7I,IG1)>2000 then
call SaveInteger(LY,(S5I),(33),(2))
call GroupClear(PR2)
call UnitRemoveAbility(P7I,1093813558)
call UnitRemoveAbility(P7I,1114663271)
call UnitRemoveAbility(P7I,1111845217)
else
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)-OS6)
endif
endif
call SaveInteger(LY,(S5I),(34),(NPI))
elseif ON6==2 then
set a=UEI(GetUnitX(IG1),GetUnitY(IG1),GetUnitX(P7I),GetUnitY(P7I))*bj_DEGTORAD
set x=GetUnitX(IG1)+16*Cos(a)
set y=GetUnitY(IG1)+16*Sin(a)
call UPI(x,y,175)
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
set GK=P7I
set K1I=P7I
set KOI=GetUnitAbilityLevel(P7I,1093818703)
set KII=PR2
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,JUI+25,Condition(function CA1))
call ForGroup(g,function A06)
call NSI(g)
if QNI(x,y,GetUnitX(P7I),GetUnitY(P7I))<40 then
call BP1(P7I)
call KillUnit(IG1)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093818703 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093818703,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813558,false)
endif
endif
set t=null
set P7I=null
set IG1=null
set PR2=null
set g=null
return false
endfunction
function A16 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),x,y)*bj_DEGTORAD
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993683,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AI6))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveInteger(LY,(S5I),(33),(0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call BT1(P7I)
call IA1(P7I,1093813558)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093818703,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093813558,true)
set P7I=null
set t=null
set IG1=null
endfunction
function AO6 takes nothing returns boolean
if GetSpellAbilityId()==1093818703 then
call A16()
endif
return false
endfunction
function PS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AO6))
call Q1I(1093813334)
set t=null
endfunction
function A26 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerUnit()==P7I and GetLearnedSkill()==1093813557 then
call SetUnitAbilityLevel(P7I,1093818703,GetUnitAbilityLevel(P7I,1093813557))
endif
set t=null
set P7I=null
return false
endfunction
function XAO takes nothing returns nothing
local unit P7I=GK
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(P7I,1093818703)
call SetUnitAbilityLevel(P7I,1093818703,GetUnitAbilityLevel(P7I,1093813557))
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function A26))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function Trap_RemoveBonus takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if((LoadInteger(LY,(GetHandleId(P7I)),(754)))==(LoadInteger(LY,(S5I),(754))))then
call G21((P7I),(0))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function A36 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
set K3I=K3I+60
else
set K3I=K3I+20
endif
call UnitRemoveAbility(GetEnumUnit(),1093815365)
call UnitRemoveAbility(GetEnumUnit(),1110460209)
endfunction
function A46 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
set K3I=K3I+60
else
set K3I=K3I+20
endif
endfunction
function A56 takes nothing returns nothing
call DD1(K4I,GetEnumUnit(),0.5+K5I*0.5)
call P6I(K4I,GetEnumUnit(),1,K3I)
endfunction
function A66 takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1110460209)>0
endfunction
function A76 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
set K4I=P7I
set K5I=GetUnitAbilityLevel(P7I,1093815353)
set K3I=0
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function A66))
call ForGroup(g,function A36)
call ForGroup(g,function A56)
call NSI(g)
set g=null
set P7I=null
endfunction
function A86 takes nothing returns boolean
if GetSpellAbilityId()==1093815353 then
call A76()
endif
return false
endfunction
function A96 takes string UWI,unit P8I,unit SFI returns nothing
local texttag tt=CreateTextTag()
call SetTextTagText(tt,UWI,0.033)
call SetTextTagPosUnit(tt,P8I,64)
call SetTextTagColor(tt,0,75,255,255)
call SetTextTagVelocity(tt,0,0.0355)
call SetTextTagFadepoint(tt,0.15)
call SetTextTagPermanent(tt,false)
call SetTextTagLifespan(tt,1.0)
if IsUnitAlly(SFI,GetLocalPlayer())or P0I(GetLocalPlayer())then
call SetTextTagVisibility(tt,true)
else
call SetTextTagVisibility(tt,false)
endif
set tt=null
endfunction
function AA6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real Z7O=(LoadReal(LY,(GetHandleId(P8I)),(753)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or Z7O<(TimerGetElapsed(M))then
call UnitRemoveAbility(P8I,1093815365)
call UnitRemoveAbility(P8I,1110460209)
call SaveReal(LY,(GetHandleId(P8I)),(753),((0)*1.0))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function AB6 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local group g=NTI()
call SaveReal(LY,(GetHandleId(P8I)),(753),(((TimerGetElapsed(M))+K2I)*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function AA6))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(P8I,1093815365)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093815365,false)
set K4I=P7I
set K5I=GetUnitAbilityLevel(P7I,1093815353)
set K3I=0
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function A66))
call ForGroup(g,function A46)
call NSI(g)
call A96(I2S(K3I),P8I,P7I)
set t=null
endfunction
function AC6 takes nothing returns boolean
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
if BJ1(P8I)==false then
call AB6(P7I,P8I)
endif
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AD6 takes nothing returns nothing
local unit P7I=GetAttacker()
local unit P8I=GetTriggerUnit()
local trigger t
local integer S5I
if((LoadInteger(LY,(GetHandleId((P7I))),((4325))))==1)==false then
call SCI(P7I,4325,0.2)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function AC6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
set P7I=null
set P8I=null
endfunction
function AE6 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093815353)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitTypeId(GetTriggerUnit())!=1848651852 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call AD6()
endif
return false
endfunction
function PQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function A86))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function AE6))
set t=null
endfunction
function AF6 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit AG6=GK
local unit P8I=HK
local integer SUI=GetUnitAbilityLevel(P7I,1093815361)
if RKI(P8I)==false then
call P6I(P7I,P8I,1,20+80*SUI)
call AX1(P8I,1093815627,1,4,1110460212)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093815627,false)
call UnitMakeAbilityPermanent(P8I,true,1093815626)
endif
set P7I=null
set P8I=null
set AG6=null
endfunction
function AH6 takes nothing returns nothing
local unit P7I=K6I
local unit P8I=GetEnumUnit()
local trigger t=IJ1(K7I,P8I,1747993925,"AF6",600,false)
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set P8I=null
set t=null
endfunction
function AZ6 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093815361)
local group g=NTI()
set GK=P7I
set K6I=P7I
set K7I=P8I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),500+25,Condition(function CA1))
call GroupRemoveUnit(g,P8I)
call ForGroup(g,function AH6)
call NSI(g)
set P7I=null
set P8I=null
set g=null
endfunction
function AV6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real x=GetUnitX(IG1)
local real y=GetUnitY(IG1)
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real AW6=UTI(QJI,QKI,x,y)
local integer NPI=GetTriggerEvalCount(t)
local real IZ1=UEI(x,y,QJI,QKI)
local real IV1
local real IW1
local real IH1=AW6/((K8I/.02)-NPI)
if IH1<K9I*0.02 then
set IH1=K9I*0.02
endif
set IV1=x+IH1*Cos(IZ1*bj_DEGTORAD)
set IW1=y+IH1*Sin(IZ1*bj_DEGTORAD)
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
call SetUnitFacing(IG1,IZ1)
if UTI(QJI,QKI,IV1,IW1)<=IH1 then
call KillUnit(IG1)
call AZ6(P7I,P8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set P7I=null
set IG1=null
return false
endfunction
function AX6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993930,GetUnitX(P7I),GetUnitY(P7I),0)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function AV6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
set P7I=null
set P8I=null
set IG1=null
set t=null
endfunction
function AY6 takes nothing returns boolean
if GetSpellAbilityId()==1093815361 and NNI(GetSpellTargetUnit())==false then
call AX6()
endif
return false
endfunction
function PP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AY6))
set t=null
endfunction
function AJ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815362)
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+0.1*(20+GetUnitState(P8I,UNIT_STATE_MAX_LIFE)*(0.02+0.01*SUI)))
if GetTriggerEvalCount(t)>39 or(GetTriggerEvalCount(t)==1 and IsUnitHidden(P8I))then
call UnitRemoveAbility(P8I,1093815364)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(609))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(610))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(611))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(612))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(613))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(614))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(615))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(616))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(617))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AK6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t
local integer S5I
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093815367)
if IssueTargetOrder(I01,"thunderbolt",P8I)==true then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call IA1(P8I,1093815364)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function AJ6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(609),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"hand right")))
call SaveEffectHandle(LY,(S5I),(610),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"hand left")))
call SaveEffectHandle(LY,(S5I),(611),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"foot right")))
call SaveEffectHandle(LY,(S5I),(612),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"foot left")))
call SaveEffectHandle(LY,(S5I),(613),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"foot right mount rear")))
call SaveEffectHandle(LY,(S5I),(614),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"foot left mount rear")))
call SaveEffectHandle(LY,(S5I),(615),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"head")))
call SaveEffectHandle(LY,(S5I),(616),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"chest")))
call SaveEffectHandle(LY,(S5I),(617),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",P8I,"weapon")))
endif
set P7I=null
set P8I=null
set t=null
endfunction
function AL6 takes nothing returns boolean
if GetSpellAbilityId()==1093815362 then
call AK6()
endif
return false
endfunction
function PT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AL6))
set t=null
endfunction
function AM6 takes nothing returns nothing
local unit P8I=GetEnumUnit()
call DisableTrigger(KBI)
call UnitWakeUp(P8I)
call IssueTargetOrder(P8I,"attack",KCI)
call EnableTrigger(KBI)
set P8I=null
endfunction
function AN6 takes nothing returns nothing
call SCI(GetEnumUnit(),4328,0.75)
endfunction
function AS6 takes nothing returns nothing
local unit P8I=GetEnumUnit()
if IsUnitInGroup(P8I,KAI)==false then
call GroupAddUnit(KAI,P8I)
call TriggerRegisterUnitEvent(KBI,P8I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(KBI,P8I,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(KBI,P8I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call SaveInteger(LY,(GetHandleId((P8I))),((4328)),(1))
endif
set P8I=null
endfunction
function AT6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local group PR2=(LoadGroupHandle(LY,(S5I),(22)))
local group g
if GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_POINT_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
set KAI=PR2
set KBI=t
set g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),350+25,Condition(function CA1))
call GroupRemoveUnit(g,P8I)
call ForGroup(g,function AS6)
call NSI(g)
if NPI==(2.25+0.25*SUI)*20 or IC1(P8I)then
call ForGroup(PR2,function AN6)
call NSI(PR2)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set KBI=t
set KCI=P8I
call ForGroup(PR2,function AM6)
if ModuloInteger(NPI,20)==0 or NPI==0 then
endif
endif
else
if UnitIsSleeping(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1110454328)==0 and GetIssuedOrderId()!=851973 and FSI==false then
call DisableTrigger(t)
call ClearSelectionForPlayer(GetOwningPlayer(GetTriggerUnit()))
call IssueTargetOrder(GetTriggerUnit(),"attack",P8I)
call EnableTrigger(t)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AR6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093687856)
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093815882)
call SetUnitAbilityLevel(I01,1093815882,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
set KDI=P7I
call TriggerRegisterTimerEvent(t,0.05,true)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\WintersCurse.mdx",P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffect("war3mapImported\\WintersCurseAoE.mdx",GetUnitX(P8I),GetUnitY(P8I))))
call TriggerAddCondition(t,Condition(function AT6))
set P7I=null
set P8I=null
set t=null
endfunction
function AP6 takes nothing returns boolean
if GetSpellAbilityId()==1093687856 and NNI(GetSpellTargetUnit())==false then
call AR6()
endif
return false
endfunction
function PR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AP6))
set t=null
endfunction
function AQ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815859)
call P6I(P7I,P8I,3,(0.032+0.002*SUI)*GetUnitState(P8I,UNIT_STATE_MAX_LIFE))
if(TimerGetElapsed(M))>=(LoadReal(LY,(GetHandleId(P7I)),(782)))then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AU6 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)*0.8)
if(LoadReal(LY,(GetHandleId(P7I)),(782)))>(TimerGetElapsed(M))then
call SaveReal(LY,(GetHandleId(P7I)),(782),(((TimerGetElapsed(M))+KEI)*1.0))
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function AQ6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\BasicWaterFlash.mdx",P8I,"chest")))
call SaveReal(LY,(GetHandleId(P7I)),(782),(((TimerGetElapsed(M))+KEI)*1.0))
endif
set t=null
endfunction
function B06 takes nothing returns boolean
local real d
local real Z7O
local integer NPI
local unit P7I
local unit P8I
if GetUnitAbilityLevel(GetTriggerUnit(),1110460215)>0 and GetUnitAbilityLevel(GetEventDamageSource(),1093815859)>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
set P7I=GetEventDamageSource()
set P8I=GetTriggerUnit()
set NPI=(LoadInteger(LY,(GetHandleId(P7I)),(780)))
set Z7O=(LoadReal(LY,(GetHandleId(P7I)),(781)))
if Z7O+KEI<(TimerGetElapsed(M))then
set NPI=1
set Z7O=(TimerGetElapsed(M))
call SaveInteger(LY,(GetHandleId(P7I)),(780),(NPI))
call SaveReal(LY,(GetHandleId(P7I)),(781),((Z7O)*1.0))
else
set NPI=NPI+1
set Z7O=(TimerGetElapsed(M))
call SaveInteger(LY,(GetHandleId(P7I)),(780),(NPI))
call SaveReal(LY,(GetHandleId(P7I)),(781),((Z7O)*1.0))
endif
if NPI==4 then
set NPI=0
call SaveInteger(LY,(GetHandleId(P7I)),(780),(NPI))
call AU6(P7I,P8I)
endif
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function BI6 takes nothing returns nothing
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
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
call SaveBoolean(LY,(GetHandleId(t)),(264),(true))
else
call SaveBoolean(LY,(GetHandleId(t)),(264),(false))
endif
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function B06))
endif
set t=null
set P8I=null
set P7I=null
endfunction
function B16 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetUnitAbilityLevel(GetAttacker(),1093815859)>0 and(LoadBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))then
call BI6()
endif
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if(GetIssuedOrderId()==OrderId("poisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(true))
elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(false))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093815859 then
call BI6()
endif
return false
endfunction
function BO6 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function B16))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function B26 takes nothing returns boolean
if GetLearnedSkill()==1093815859 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093815859)==1 then
call BO6()
endif
return false
endfunction
function PU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function B26))
set t=null
endfunction
function B36 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set I01=null
return false
endif
if IC1(P7I)==false then
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
else
if IsUnitAlly(I01,BO[0])==true then
call SetUnitX(I01,QS)
call SetUnitY(I01,US)
else
call SetUnitX(I01,O50)
call SetUnitY(I01,O60)
endif
endif
set t=null
set P7I=null
set I01=null
return false
endfunction
function B46 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if IC1(P8I)==false then
call P6I(P7I,P8I,7,GetUnitState(P8I,UNIT_STATE_LIFE)*0.06)
endif
if GetTriggerEvalCount(t)==5 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function B56 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local integer SUI
local integer B66
local integer B76
if((LoadInteger(LY,(GetHandleId((P8I))),((4329))))==1)==false and GetUnitTypeId(P8I)!=1848651852 then
call SCI(P8I,4329,KFI)
set SUI=GetUnitAbilityLevel(P7I,1093815877)
if SUI==1 then
set B66=1093815874
set B76=1093815873
elseif SUI==2 then
set B66=1093815862
set B76=1093815864
elseif SUI==3 then
set B66=1093815875
set B76=1093815863
elseif SUI==4 then
set B66=1093815876
set B76=1093815865
endif
call AX1(P8I,B66,1,5,1110460225)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),B66,false)
call UnitMakeAbilityPermanent(P8I,true,B76)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function B46))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl",P8I,"chest")))
endif
endfunction
function B86 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call B56(P7I,P8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set P7I=null
return false
endfunction
function B96 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function B86))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P8I=null
set P7I=null
endfunction
function BA6 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false then
if GetUnitTypeId(GetAttacker())==1311788354 or GetUnitTypeId(GetAttacker())==1311788355 or GetUnitTypeId(GetAttacker())==1311788367 or GetUnitTypeId(GetAttacker())==1311788353 then
call B96()
endif
endif
else
call B36()
endif
return false
endfunction
function BB6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429337,GetUnitX(P7I),GetUnitY(P7I),0)
if IsUnitIllusion(P7I)==false then
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
else
call TriggerRegisterDeathEvent(t,P7I)
endif
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function BA6))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call SaveUnitHandle(LY,(GetHandleId(t)),(19),(I01))
set P7I=null
set I01=null
set t=null
endfunction
function BC6 takes nothing returns boolean
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
function BD6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
call SetTerrainPathable(x,y,PATHING_TYPE_WALKABILITY,true)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function BC6))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set P7I=null
set t=null
endfunction
function BE6 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
if GetLearnedSkill()==1093815877 and GetUnitAbilityLevel(GetTriggerUnit(),1093815877)==1 then
call BB6()
endif
else
if GetSpellAbilityId()==1093815877 then
if GetUnitTypeId(GetTriggerUnit())!=1311788343 then
call UPI(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),150)
if IsTerrainPathable(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),PATHING_TYPE_WALKABILITY)then
call BD6()
endif
endif
endif
endif
return false
endfunction
function Q01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BE6))
set t=null
endfunction
function BF6 takes nothing returns nothing
call DD1(KGI,GetEnumUnit(),1.5)
call P6I(KGI,GetEnumUnit(),2,50+50*KHI)
endfunction
function BG6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real a=(LoadReal(LY,(S5I),(137)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093813812)
set x=PTI(x+32*Cos(a))
set y=PUI(y+32*Sin(a))
if QNI(x,y,QJI,QKI)<40 then
set x=QJI
set y=QKI
endif
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
call SetUnitFacing(P7I,a*bj_RADTODEG)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,125+25,Condition(function CA1))
if FirstOfGroup(g)!=null or(x==QJI and y==QKI)or GetTriggerEvalCount(t)>200 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call DestroyEffect(AddSpecialEffect("war3mapImported\\BlackDragonMissile.mdx",x,y))
call GroupEnumUnitsInRange(g,x,y,300+25,Condition(function CA1))
set KHI=SUI
set KGI=P7I
if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
call ForGroup(g,function BF6)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call NSI(g)
set t=null
set P7I=null
set g=null
return false
endfunction
function BH6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local real a=UEI(x,y,QJI,QKI)*bj_DEGTORAD
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function BG6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
set P7I=null
set t=null
endfunction
function BZ6 takes nothing returns boolean
if GetSpellAbilityId()==1093813812 then
call BH6()
endif
return false
endfunction
function Register_SonicBoom takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BZ6))
set t=null
endfunction
function BV6 takes nothing returns nothing
local unit P7I=KZI
local unit P8I=GetEnumUnit()
call AH1(P8I,1093813811,1,10)
call P6I(P7I,P8I,2,50*KVI+2*GetHeroAgi(P7I,true))
set P7I=null
set P8I=null
endfunction
function BW6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real C54=QCI((TimerGetElapsed(M))-(LoadReal(LY,(GetHandleId(P7I)),(358))),5.0)
local integer SUI=GetUnitAbilityLevel(P7I,1093813573)
local real PAI=(40+80*SUI)*(C54)
local group g=NTI()
local real d=C54*600
local real a=(LoadReal(LY,(GetHandleId(P7I)),(736)))
local real x=GetUnitX(P7I)+d*Cos(a)
local real y=GetUnitY(P7I)+d*Sin(a)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,325,Condition(function CA1))
set KVI=SUI
set KZI=P7I
call ForGroup(g,function BV6)
call NSI(g)
call U7I("effects\\BasicWaterFlash.mdx",x,y,1)
set P7I=null
set g=null
endfunction
function BX6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
call SetUnitTimeScale(SFI,1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()!=EVENT_UNIT_DEATH then
call PJI(SFI)
endif
set t=null
set SFI=null
return false
endfunction
function BY6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=UEI(GetUnitX(SFI),GetUnitY(SFI),x,y)*bj_DEGTORAD
local real Q4I=RMaxBJ(QNI(GetUnitX(SFI),GetUnitY(SFI),x,y)/600,0.32)
call RemoveLocation(l)
call SaveReal(LY,(GetHandleId(SFI)),(356),((x)*1.0))
call SaveReal(LY,(GetHandleId(SFI)),(357),((y)*1.0))
call SaveReal(LY,(GetHandleId(SFI)),(736),((a)*1.0))
call SaveReal(LY,(GetHandleId(SFI)),(358),(((TimerGetElapsed(M)))*1.0))
call SetUnitTimeScale(SFI,0.75)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,Q4I-0.01,false)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function BX6))
set t=null
set SFI=null
endfunction
function BJ6 takes nothing returns boolean
if GetSpellAbilityId()==1093813573 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(360),(false))
call BY6()
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(360),(true))
elseif(LoadBoolean(LY,(GetHandleId(GetTriggerUnit())),(360)))==true then
call BW6()
endif
endif
return false
endfunction
function Register_WindBlast takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_ENDCAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BJ6))
set t=null
endfunction
function BK6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetUnitAbilityLevel(P7I,1110456374)==0 and GetUnitAbilityLevel(P7I,1110456375)==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093813810)
call UnitRemoveAbility(P7I,1110459959)
endif
set t=null
set P7I=null
return false
endfunction
function BL6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetSpellTargetUnit()
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093813810,false)
call IA1(P8I,1093813810)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function BK6))
call SaveUnitHandle(LY,(S5I),(2),(P8I))
set P7I=null
set t=null
endfunction
function BM6 takes nothing returns boolean
if GetSpellAbilityId()==1093813808 then
call BL6()
endif
return false
endfunction
function Register_WindBarrier takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BM6))
set t=null
endfunction
function BN6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093813813)
local integer id
local integer E11
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if IsUnitAlly(P8I,GetOwningPlayer(P7I))==true then
set E11=1110459960
if SUI==1 then
set id=1093813831
elseif SUI==2 then
set id=1093813830
elseif SUI==3 then
set id=1093813832
endif
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+100+50*SUI)
else
set E11=1110459961
if SUI==1 then
set id=1093813828
elseif SUI==2 then
set id=1093813827
elseif SUI==3 then
set id=1093813829
endif
call P6I(P7I,P8I,1,100+50*SUI)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),id,false)
call AX1(P8I,id,1,4,E11)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function BS6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call EO1(P8I)
call DU1(P8I,0,0)
call UnitAddAbility(I01,1093813833)
call IssueTargetOrder(I01,"cyclone",P8I)
call TriggerRegisterTimerEvent(t,4,false)
call TriggerAddCondition(t,Condition(function BN6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
set I01=null
endfunction
function BT6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local group g=NTI()
call I41(GetOwningPlayer(P7I),4,QJI,QKI,300)
call GroupEnumUnitsInRange(g,QJI,QKI,400+25,Condition(function CO1))
call ForGroup(g,function BS6)
call NSI(g)
set P7I=null
set g=null
endfunction
function BR6 takes nothing returns boolean
if GetSpellAbilityId()==1093813813 then
call BT6()
endif
return false
endfunction
function Register_PrevailingWinds takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BR6))
set t=null
endfunction
function BP6 takes nothing returns nothing
call UOI("war3mapImported\\FortunesEndTarget.mdx",GetEnumUnit(),"origin",3)
call IssueTargetOrder(KXI,"purge",GetEnumUnit())
if KJI!=null and GetUnitAbilityLevel(GetEnumUnit(),1093817396)>0 then
call TriggerEvaluate(KJI)
endif
call P6I(KWI,GetEnumUnit(),1,75*KYI)
endfunction
function BQ6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=(LoadUnitHandle(LY,(GetHandleId(P7I)),(796)))
local real C54=QCI((TimerGetElapsed(M))-(LoadReal(LY,(GetHandleId(P7I)),(358))),3)
local integer SUI=GetUnitAbilityLevel(P7I,1093816660)
local integer BU6=R2I(2.0*C54)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
local unit C06
local group g
if P8I!=null then
set C06=CreateUnit(GetOwningPlayer(P7I),1865429082,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitApplyTimedLife(C06,1112820806,0.5)
call UnitAddAbility(I01,1093817394)
call SetUnitAbilityLevel(I01,1093817394,BU6)
set GK=P7I
set KWI=P7I
set KXI=I01
set KYI=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),215+25,Condition(function CA1))
call ForGroup(g,function BP6)
call NSI(g)
endif
set P7I=null
set P8I=null
set I01=null
set C06=null
set g=null
endfunction
function CI6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call SaveReal(LY,(GetHandleId(SFI)),(356),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(GetHandleId(SFI)),(357),((GetUnitY(P8I))*1.0))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function C16 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
call SaveReal(LY,(GetHandleId(SFI)),(358),(((TimerGetElapsed(M)))*1.0))
call SaveUnitHandle(LY,(GetHandleId(SFI)),(796),(GetSpellTargetUnit()))
call DestroyEffect(AddSpecialEffect("war3mapImported\\CleanseTargetArea.mdx",GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit())))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(17),(GetSpellTargetUnit()))
call TriggerRegisterTimerEvent(t,10,false)
call TriggerRegisterDeathEvent(t,GetSpellTargetUnit())
call TriggerAddCondition(t,Condition(function CI6))
set t=null
set SFI=null
endfunction
function CO6 takes nothing returns boolean
if GetSpellAbilityId()==1093816660 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(360),(false))
call C16()
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if NNI(GetSpellTargetUnit())==false then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(360),(true))
endif
elseif(LoadBoolean(LY,(GetHandleId(GetTriggerUnit())),(360)))==true then
call BQ6()
endif
endif
return false
endfunction
function QF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_ENDCAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CO6))
set t=null
endfunction
function C26 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
call DisableTrigger(t)
call P6I(GetEventDamageSource(),P8I,3,0.5*GetEventDamage())
call EnableTrigger(t)
endif
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or IC1(P8I)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call BP1(P8I)
call UnitRemoveAbility(P8I,1093817396)
set KJI=null
endif
set t=null
set P8I=null
return false
endfunction
function C36 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093817397)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
set KJI=t
call BT1(P8I)
call IA1(P8I,1093817396)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093817396,false)
call TriggerRegisterTimerEvent(t,2+SUI,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function C26))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\FatesEdict.mdx",P8I,"origin")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl",P8I,"overhead")))
set P7I=null
set P8I=null
set t=null
endfunction
function C46 takes nothing returns boolean
if GetSpellAbilityId()==1093817397 then
if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or NNI(GetSpellTargetUnit())==false then
call C36()
endif
endif
return false
endfunction
function QE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function C46))
set t=null
endfunction
function C56 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093817159)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or NPI>9 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093817394 and GetSpellTargetUnit()==P8I then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+11*SUI)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function C66 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093817159)
local real PAI=SUI*90
local real IS5=0.75
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,1,true)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function C56))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\DarkMending.mdx",P8I,"origin")))
if IsUnitType(P8I,UNIT_TYPE_HERO)==false then
set IS5=1.0
endif
if GetUnitState(P8I,UNIT_STATE_LIFE)<=PAI*IS5 and IsUnitAlly(P8I,GetOwningPlayer(P7I))==true then
set PAI=GetUnitState(P8I,UNIT_STATE_LIFE)/0.75-10
endif
call P6I(P7I,P8I,1,PAI)
set t=null
set P7I=null
set P8I=null
endfunction
function C76 takes nothing returns boolean
if GetSpellAbilityId()==1093817159 then
if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or NNI(GetSpellTargetUnit())==false then
call C66()
endif
endif
return false
endfunction
function QG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function C76))
set t=null
endfunction
function C86 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer KO2=(LoadInteger(LY,(S5I),(25)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer i=0
local real C96=(LoadReal(LY,(S5I),(697)))
local real CA6=(LoadReal(LY,(S5I),(811)))
local real KMO=GetUnitState(P8I,UNIT_STATE_LIFE)
local real CB6=GetUnitState(P8I,UNIT_STATE_MAX_LIFE)
local real CC6=(LoadReal(LY,(S5I),(808)))
local real CD6
local real PAI
if KO2>(SUI+6)*50 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call DisableTrigger(t)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093817392)
call UnitRemoveAbility(P8I,1093817178)
if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
set CC6=CC6*2
loop
exitwhen i>NPI
set i=i+1
set KMO=GetUnitState(P8I,UNIT_STATE_LIFE)
set CD6=RMinBJ(CB6-KMO,CC6)
call SetUnitState(P8I,UNIT_STATE_LIFE,KMO+CD6)
set CC6=CC6-CD6
set PAI=(LoadReal(LY,(S5I),(20000+i)))
if(LoadUnitHandle(LY,(S5I),(22000+i)))==P7I or((LoadInteger(LY,(GetHandleId((P8I))),((2485))))==1)then
if GetUnitState(P8I,UNIT_STATE_LIFE)<=PAI+2 then
set PAI=GetUnitState(P8I,UNIT_STATE_LIFE)-2
endif
endif
call P6I((LoadUnitHandle(LY,(S5I),(22000+i))),P8I,6,PAI)
endloop
set KMO=GetUnitState(P8I,UNIT_STATE_LIFE)
set CD6=RMinBJ(CB6-KMO,CC6)
call SetUnitState(P8I,UNIT_STATE_LIFE,KMO+CD6)
set CC6=CC6-CD6
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED and RSI(GetEventDamage())then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call SaveUnitHandle(LY,(S5I),(22000+NPI),(GetEventDamageSource()))
call SaveReal(LY,(S5I),(20000+NPI),((GetEventDamage())*1.0))
call QGI(P8I,GetEventDamage())
elseif GetTriggerEventId()!=EVENT_UNIT_DAMAGED and GetTriggerEventId()!=EVENT_WIDGET_DEATH then
set KO2=KO2+1
call SaveInteger(LY,(S5I),(25),(KO2))
if CB6!=CA6 then
set CA6=CB6
set C96=KMO
call SaveReal(LY,(S5I),(697),((C96)*1.0))
call SaveReal(LY,(S5I),(811),((CA6)*1.0))
endif
if KMO>C96 then
if((LoadInteger(LY,(GetHandleId((P8I))),((4298))))==1)==false then
set CC6=CC6+KMO-C96
call SaveReal(LY,(S5I),(808),((CC6)*1.0))
else
call SetUnitState(P8I,UNIT_STATE_LIFE,KMO)
endif
endif
call SetUnitState(P8I,UNIT_STATE_LIFE,C96)
endif
set t=null
set P8I=null
set P7I=null
return false
endfunction
function CE6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093817414)
call UnitRemoveAbility(P8I,1110456665)
call IA1(P8I,1093817392)
call IA1(P8I,1093817178)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function C86))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(34),(0))
call SaveInteger(LY,(S5I),(25),(0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(808),((0)*1.0))
call SaveReal(LY,(S5I),(697),((GetUnitState(P8I,UNIT_STATE_LIFE))*1.0))
call SaveReal(LY,(S5I),(811),((GetUnitState(P8I,UNIT_STATE_MAX_LIFE))*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\FalsePromise.mdx",P8I,"chest")))
call EO1(P8I)
call DU1(P8I,0,0)
set P7I=null
set P8I=null
set t=null
endfunction
function CF6 takes nothing returns boolean
if GetSpellAbilityId()==1093817414 then
call CE6()
endif
return false
endfunction
function QH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CF6))
set t=null
endfunction
function CG6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real x
local real y
local real a
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(IG1)
else
set a=UEI(GetUnitX(IG1),GetUnitY(IG1),GetUnitX(P8I),GetUnitY(P8I))
set x=GetUnitX(IG1)+20*Cos(a*bj_DEGTORAD)
set y=GetUnitY(IG1)+20*Sin(a*bj_DEGTORAD)
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
call SetUnitFacing(IG1,a)
if QLI(IG1,P8I)<30 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P6I(IG1,P8I,1,100+50*SUI)
call KillUnit(IG1)
call SetUnitAnimationByIndex(IG1,3)
endif
endif
set t=null
set P8I=null
set IG1=null
return false
endfunction
function CH6 takes integer SUI,unit IG1,unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitAnimationByIndex(IG1,2)
call SetUnitVertexColor(IG1,255,255,255,150)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function CG6))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SetUnitAnimationByIndex(IG1,2)
set t=null
endfunction
function CZ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local group g
local unit P8I
if GetTriggerEvalCount(t)>KKI/0.05 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(IG1)
else
set GK=IG1
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(IG1),GetUnitY(IG1),375+25,Condition(function CE1))
set P8I=AU1(g,GetUnitX(IG1),GetUnitY(IG1))
call NSI(g)
if P8I!=null then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call CH6(SUI,IG1,P8I)
endif
set g=null
set P8I=null
endif
set t=null
set IG1=null
return false
endfunction
function CV6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function CZ6))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SetUnitAnimationByIndex(IG1,1)
set t=null
set IG1=null
return false
endfunction
function CW6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993927,x,y,270)
local integer SUI=GetUnitAbilityLevel(P7I,1093815372)
call SetUnitAnimationByIndex(IG1,0)
call TriggerRegisterTimerEvent(t,3,false)
call TriggerAddCondition(t,Condition(function CV6))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
set P7I=null
set IG1=null
set t=null
endfunction
function CX6 takes nothing returns boolean
if GetSpellAbilityId()==1093815372 then
call CW6()
endif
return false
endfunction
function QI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CX6))
set t=null
endfunction
function CY6 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815609)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815609)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815617)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815617)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815374)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815374)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815608)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815608)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815888)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815888)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815891)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815891)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815890)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815890)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093815889)>0 then
call UnitRemoveAbility(GetEnumUnit(),1093815889)
endif
endfunction
function CJ6 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
if KLI==1 then
set KMI=1093815609
elseif KLI==2 then
set KMI=1093815617
elseif KLI==3 then
set KMI=1093815374
elseif KLI==4 then
set KMI=1093815608
endif
if GetUnitAbilityLevel(GetEnumUnit(),KMI)==0 then
call IA1(GetEnumUnit(),KMI)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),KMI,false)
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1094935923)
if KMI==1093815609 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815604)
elseif KMI==1093815617 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815605)
elseif KMI==1093815374 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815606)
elseif KMI==1093815608 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815607)
elseif KMI==1093815888 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815885)
elseif KMI==1093815891 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815884)
elseif KMI==1093815890 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815886)
elseif KMI==1093815889 then
call UnitMakeAbilityPermanent(GetEnumUnit(),true,1093815887)
endif
endif
endfunction
function CK6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local real LVO=(LoadReal(LY,(S5I),(442)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815373)
local group RG3=(LoadGroupHandle(LY,(S5I),(340)))
local group g=NTI()
local group g1=NTI()
local group g2=NTI()
set KLI=SUI
if(TimerGetElapsed(M))>LVO then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ForGroup(RG3,function CY6)
call NSI(RG3)
call NSI(g)
call NSI(g1)
call NSI(g2)
return false
endif
set GK=P7I
call GroupEnumUnitsInRange(g1,x,y,275+25,Condition(function CU1))
call GroupEnumUnitsInRange(g2,x,y,275+144,Condition(function CX1))
call GroupAddGroup(g1,g)
call GroupAddGroup(g2,g)
call NSI(g1)
call NSI(g2)
call GroupRemoveGroup(g,RG3)
call ForGroup(RG3,function CY6)
call ForGroup(g,function CJ6)
call SaveGroupHandle(LY,(S5I),(340),(g))
call NSI(RG3)
set t=null
set P7I=null
set RG3=null
set g=null
return false
endfunction
function CL6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local integer i
local integer SUI=GetUnitAbilityLevel(P7I,1093815373)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function CK6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(340),(NTI()))
call SaveReal(LY,(S5I),(6),((QJI)*1.0))
call SaveReal(LY,(S5I),(7),((QKI)*1.0))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+3+0.5*SUI)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("war3mapImported\\MagneticField04.mdl",QJI,QKI)))
set i=0
loop
exitwhen i>5
call SetPlayerAbilityAvailable(BO[i],1093815609,false)
call SetPlayerAbilityAvailable(CO[i],1093815609,false)
call SetPlayerAbilityAvailable(BO[i],1093815617,false)
call SetPlayerAbilityAvailable(CO[i],1093815617,false)
call SetPlayerAbilityAvailable(BO[i],1093815617,false)
call SetPlayerAbilityAvailable(CO[i],1093815374,false)
call SetPlayerAbilityAvailable(BO[i],1093815608,false)
call SetPlayerAbilityAvailable(CO[i],1093815608,false)
set i=i+1
endloop
set P7I=null
set t=null
endfunction
function CM6 takes nothing returns boolean
if GetSpellAbilityId()==1093815373 then
call CL6()
endif
return false
endfunction
function Q11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CM6))
set t=null
endfunction
function CN6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815601)
local integer OO1=(LoadInteger(LY,(S5I),(758)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local group g
if GetTriggerEventId()==EVENT_WIDGET_DEATH or NPI>120 or RKI(P8I)then
call UnitRemoveAbility(P8I,1093815383)
call UnitRemoveAbility(P8I,1093815385)
call UnitRemoveAbility(P8I,1110460210)
call UnitRemoveAbility(P8I,1110460211)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),225+25,Condition(function CA1))
call GroupRemoveUnit(g,P8I)
if FirstOfGroup(g)==null then
if OO1==1093815383 then
if GetUnitAbilityLevel(P8I,1093815383)==0 then
call IA1(P8I,1093815383)
call UnitMakeAbilityPermanent(P8I,true,1093815381)
call UnitMakeAbilityPermanent(P8I,true,1093815621)
endif
else
if GetUnitAbilityLevel(P8I,1093815385)==0 then
call IA1(P8I,1093815385)
call UnitMakeAbilityPermanent(P8I,true,1093815380)
call UnitMakeAbilityPermanent(P8I,true,1093815621)
endif
endif
if ModuloInteger(NPI,10)==0 then
call P6I(P7I,P8I,1,SUI*15*0.5)
endif
else
if OO1==1093815383 then
if GetUnitAbilityLevel(P8I,1093815383)>0 then
call UnitRemoveAbility(P8I,1093815383)
call UnitRemoveAbility(P8I,1110460210)
endif
else
if GetUnitAbilityLevel(P8I,1093815385)>0 then
call UnitRemoveAbility(P8I,1093815385)
call UnitRemoveAbility(P8I,1110460211)
endif
endif
endif
call NSI(g)
set g=null
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function CS6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer OO1=1093815383
if GetUnitTypeId(P7I)==1311788365 then
set OO1=1093815385
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093815383,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093815385,false)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function CN6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(758),(OO1))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\Flux3.mdx",P8I,"origin")))
call TriggerEvaluate(t)
set P7I=null
set P8I=null
set t=null
endfunction
function CT6 takes nothing returns boolean
if GetSpellAbilityId()==1093815601 and NNI(GetSpellTargetUnit())==false then
call CS6()
endif
return false
endfunction
function QO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CT6))
set t=null
endfunction
function CR6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit CP6=(LoadUnitHandle(LY,(S5I),(17)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call FlushChildHashtable(LY,(GetHandleId(CP6)))
call RemoveUnit(CP6)
set t=null
set CP6=null
return false
endfunction
function CQ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit CP6=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call FlushChildHashtable(LY,(GetHandleId(CP6)))
call ShowUnit(CP6,false)
set t=null
set CP6=null
return false
endfunction
function CU6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit CP6=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815600)
if GetTriggerEvalCount(t)==200 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(CP6)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",GetUnitX(CP6),GetUnitX(CP6)))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(CP6))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function CQ6))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,3,false)
call TriggerAddCondition(t,Condition(function CR6))
call SaveUnitHandle(LY,(S5I),(17),(CP6))
else
call SuspendHeroXP(CP6,true)
call UnitModifySkillPoints(CP6,-25)
endif
set t=null
set P7I=null
set CP6=null
return false
endfunction
function D06 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit CP6=CreateUnit(GetOwningPlayer(P7I),1311788365,GetUnitX(P7I),GetUnitY(P7I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093815600)
local integer i=0
local item BA1
local integer DI6=1227895373
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",CP6,"chest"))
if TII(GetOwningPlayer(CP6))==false then
set DI6=1227903043
endif
call SelectUnitAddForPlayer(CP6,GetOwningPlayer(P7I))
call DisableTrigger(LY0)
loop
exitwhen i>5
if UnitItemInSlot(P7I,i)!=null and GetItemTypeId(UnitItemInSlot(P7I,i))!=FR0[VL0]and GetItemTypeId(UnitItemInSlot(P7I,i))!=FR0[WH0]and GetItemTypeId(UnitItemInSlot(P7I,i))!=FR0[ZA0]and GetItemTypeId(UnitItemInSlot(P7I,i))!=FR0[ZB0]and GetItemTypeId(UnitItemInSlot(P7I,i))!=FR0[ZZ0]then
set BA1=CreateItem(GetItemTypeId(UnitItemInSlot(P7I,i)),0,0)
if GetItemCharges(UnitItemInSlot(P7I,i))>0 then
call SetItemCharges(BA1,GetItemCharges(UnitItemInSlot(P7I,i)))
endif
call UnitAddItem(CP6,BA1)
call SetItemPlayer(BA1,GetOwningPlayer(CP6),false)
if GetItemTypeId(BA1)==FR0[W30]or GetItemTypeId(BA1)==FR0[W40]or GetItemTypeId(BA1)==FR0[GZ0]then
call SetItemDropOnDeath(BA1,false)
endif
else
call UnitAddItem(CP6,CreateItem(DI6,0,0))
endif
set i=i+1
endloop
call EnableTrigger(LY0)
call SetHeroLevel(CP6,GetHeroLevel(P7I),false)
set i=1
loop
exitwhen i>GetUnitAbilityLevel(P7I,1096904043)
call SelectHeroSkill(CP6,1096904043)
set i=i+1
endloop
set i=1
loop
exitwhen i>GetUnitAbilityLevel(P7I,1093815372)
call SelectHeroSkill(CP6,1093815372)
set i=i+1
endloop
set i=1
loop
exitwhen i>GetUnitAbilityLevel(P7I,1093815373)
call SelectHeroSkill(CP6,1093815373)
set i=i+1
endloop
set i=1
loop
exitwhen i>GetUnitAbilityLevel(P7I,1093815601)
call SelectHeroSkill(CP6,1093815601)
set i=i+1
endloop
set i=1
loop
exitwhen i>GetUnitAbilityLevel(P7I,1093812788)
call SelectHeroSkill(CP6,1093812788)
set i=i+1
endloop
set i=1
loop
exitwhen i>GetUnitAbilityLevel(P7I,1093815600)
call SelectHeroSkill(CP6,1093815600)
set i=i+1
endloop
call UnitRemoveAbility(CP6,1093815600)
call UnitModifySkillPoints(CP6,-25)
call SuspendHeroXP(CP6,true)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterDeathEvent(t,CP6)
call TriggerAddCondition(t,Condition(function CU6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(CP6))
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)*(1-(0.45-0.15*SUI)))
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)*(1-(0.45-0.15*SUI)))
call SetUnitState(CP6,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE))
call SetUnitState(CP6,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA))
set P7I=null
set CP6=null
set t=null
endfunction
function D16 takes nothing returns boolean
if GetSpellAbilityId()==1093815600 then
call D06()
endif
return false
endfunction
function Q21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function D16))
set t=null
endfunction
function DO6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093686851)
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),400+25,Condition(function DO1))
if FirstOfGroup(g)==null then
if GetUnitAbilityLevel(P7I,1093815896)!=SUI then
call IA1(P7I,1093815896)
call SetUnitAbilityLevel(P7I,1093815896,SUI)
endif
else
if GetUnitAbilityLevel(P7I,1093815896)>0 then
call UnitRemoveAbility(P7I,1093815896)
endif
endif
call NSI(g)
set P7I=null
set t=null
set g=null
return false
endfunction
function D26 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function DO6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function D36 takes nothing returns boolean
if GetLearnedSkill()==1093686851 and GetUnitAbilityLevel(GetTriggerUnit(),1093686851)==1 then
call D26()
endif
return false
endfunction
function Q61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function D36))
set t=null
endfunction
function D46 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=GetUnitAbilityLevel(P7I,1093816114)
local integer JJ3=GetHeroAgi(P7I,true)
local real D56=JJ3*(0.12+0.06*SUI)
local integer O93=R2I(D56/2.0+0.5)
local integer D66=(LoadInteger(LY,(S5I),(34)))
local real LVO=(LoadReal(LY,(S5I),(442)))
if LVO<(TimerGetElapsed(M))then
set D66=2
call SaveInteger(LY,(S5I),(34),(D66))
call UnitRemoveAbility(I01,1093816115)
endif
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093816114 then
set D66=1
call SaveInteger(LY,(S5I),(34),(D66))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+30)*1.0))
call UnitRemoveAbility(I01,1093815897)
call UnitRemoveAbility(I01,1093816115)
endif
if IC1(P7I)==true then
call UnitRemoveAbility(I01,1093815897)
call UnitRemoveAbility(I01,1093816115)
else
if GetUnitAbilityLevel(I01,1093815897)==0 then
call IA1(I01,1093815897)
if D66==1 then
call IA1(I01,1093816115)
else
endif
endif
call SetUnitAbilityLevel(I01,1093815897,O93)
call SetUnitAbilityLevel(I01,1093816115,O93)
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
endif
set P7I=null
set t=null
return false
endfunction
function D76 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697657174,0,0,0)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function D46))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(34),(2))
call IA1(I01,1093815897)
set t=null
set P7I=null
endfunction
function D86 takes nothing returns boolean
if GetLearnedSkill()==1093816114 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093816114)==1 then
call D76()
endif
return false
endfunction
function Q41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function D86))
call Q1I(1093815897)
call Q1I(1093816115)
set t=null
endfunction
function D96 takes unit P7I,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093818183)
call SetUnitAbilityLevel(I01,1093818183,SUI)
call IssueTargetOrder(I01,"drunkenhaze",P8I)
set I01=null
endfunction
function DA6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real d=(LoadReal(LY,(S5I),(138)))
local integer SUI=GetUnitAbilityLevel(P7I,1093818182)
local real DC1=(0.5+0.1*SUI)/(0.02)
local real RS2=d/DC1
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer NPI=GetTriggerEvalCount(t)
if NPI>DC1 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call UPI(GetUnitX(P8I),GetUnitY(P8I),100)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set x=PTI(x+RS2*Cos(RM2))
set y=PUI(y+RS2*Sin(RM2))
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function DB6 takes unit I01,unit P8I,unit P7I,real x,real y returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real RM2=Atan2(GetUnitY(P8I)-GetUnitY(I01),GetUnitX(P8I)-GetUnitX(I01))
local real IT3=QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))
local real d=RMaxBJ(1,350*(1-IT3/900))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveReal(LY,(S5I),(138),((d)*1.0))
call SaveReal(LY,(S5I),(6),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P8I))*1.0))
call D96(P7I,P8I,GetUnitAbilityLevel(P7I,1093818182))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function DA6))
set t=null
endfunction
function DC6 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XK)==false and RKI(GetEnumUnit())==false then
call GroupAddUnit(XK,GetEnumUnit())
call DB6(GK,GetEnumUnit(),KNI,KSI,KTI)
endif
endfunction
function DD6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real a=(LoadReal(LY,(S5I),(137)))
local real x1=(LoadReal(LY,(S5I),(64)))
local real y1=(LoadReal(LY,(S5I),(65)))
local real x2=(LoadReal(LY,(S5I),(66)))
local real y2=(LoadReal(LY,(S5I),(67)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local real x=GetUnitX(I01)
local real y=GetUnitY(I01)
local group g2
if QNI(x,y,x2,y2)<100 then
set x=x2
set y=y2
else
set x=x+40*Cos(a)
set y=y+40*Sin(a)
endif
call SetUnitX(I01,PTI(x))
call SetUnitY(I01,PUI(y))
set g2=NTI()
set GK=I01
set KNI=P7I
set KSI=x1
set KTI=y1
set XK=g
call GroupEnumUnitsInRange(g2,x,y,250+25,Condition(function CA1))
call ForGroup(g2,function DC6)
call NSI(g2)
if(x==x2 and y==y2)or GetTriggerEvalCount(t)>35 then
set g2=NTI()
set GK=I01
set KNI=P7I
set KSI=x1
set KTI=y1
set XK=g
call GroupEnumUnitsInRange(g2,x,y,250+25,Condition(function CA1))
call ForGroup(g2,function DC6)
call NSI(g2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
call NSI(g)
endif
set t=null
set I01=null
set g=null
set g2=null
return false
endfunction
function DE6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local location l=GetSpellTargetLoc()
local unit P7I=GetTriggerUnit()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1848659529,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function DD6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(64),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(65),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(66),((GetUnitX(P7I)+900*Cos(a))*1.0))
call SaveReal(LY,(S5I),(67),((GetUnitY(P7I)+900*Sin(a))*1.0))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
call RemoveLocation(l)
set t=null
set l=null
set P7I=null
endfunction
function DF6 takes nothing returns boolean
if GetSpellAbilityId()==1093818182 then
call DE6()
endif
return false
endfunction
function Q51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DF6))
set t=null
endfunction
function BoulderSmash_FindClosestMagnetizedTarget takes nothing returns nothing
local real d=QLI(GetEnumUnit(),LWI)
if d<AK then
set AK=d
set LFI=GetEnumUnit()
endif
endfunction
function DG6 takes nothing returns boolean
return IC1(GetFilterUnit())==false and IsUnitEnemy(KQI,GetOwningPlayer(GetFilterUnit()))and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((809))))==1)
endfunction
function DH6 takes unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093817415)
call SetUnitAbilityLevel(I01,1093817415,KUI)
call IssueTargetOrder(I01,"soulburn",P8I)
set I01=null
endfunction
function DZ6 takes nothing returns nothing
call DH6(GetEnumUnit())
endfunction
function DV6 takes unit P8I returns nothing
local group g=NTI()
if((LoadInteger(LY,(GetHandleId((P8I))),((809))))==1)==true then
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function DG6))
endif
call GroupAddUnit(g,P8I)
call ForGroup(g,function DZ6)
call NSI(g)
set g=null
endfunction
function DW6 takes nothing returns nothing
local unit P8I=GetEnumUnit()
if GetUnitTypeId(P8I)!=1865429336 then
call SetUnitPathing(P8I,true)
endif
call SaveInteger(LY,(GetHandleId((P8I))),((4336)),(2))
set P8I=null
endfunction
function DX6 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),KPI)==false then
call GroupAddUnit(KPI,GetEnumUnit())
call DV6(GetEnumUnit())
if L1I==1 then
call P6I(KQI,GetEnumUnit(),1,75*KUI-25)
endif
endif
endfunction
function DY6 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local real a=(LoadReal(LY,(GetHandleId(P8I)),(801)))
local real d=(LoadReal(LY,(GetHandleId(P8I)),(802)))
local real x=L0I+d*Cos(a)
local real y=LII+d*Sin(a)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",x,y))
if GetUnitTypeId(P8I)==1865429336 or GetUnitTypeId(P8I)==1865429552 then
set L1I=1
call SetUnitPosition(P8I,x,y)
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
else
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
call UPI(x,y,100)
endif
set P8I=null
endfunction
function DJ6 takes nothing returns nothing
local unit P8I=GetEnumUnit()
if IC1(P8I)==true or((LoadInteger(LY,(GetHandleId((P8I))),((4306))))==1)==true or GetUnitAbilityLevel(P8I,1110456406)>0 or((LoadInteger(LY,(GetHandleId((P8I))),((4335))))==1)==true then
call GroupRemoveUnit(KPI,P8I)
call SaveInteger(LY,(GetHandleId((P8I))),((4336)),(2))
if GetUnitTypeId(P8I)!=1865429336 then
call SetUnitPathing(P8I,true)
endif
endif
set P8I=null
endfunction
function DK6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group DL6=(LoadGroupHandle(LY,(S5I),(803)))
local real QJI=(LoadReal(LY,(S5I),(6)))
local real QKI=(LoadReal(LY,(S5I),(7)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real a=bj_DEGTORAD*UEI(II3,I13,QJI,QKI)
local real x
local real y
local boolean DM6=false
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
set L1I=0
set KPI=DL6
call ForGroup(DL6,function DJ6)
if GetTriggerEvalCount(t)>200 or FirstOfGroup(DL6)==null then
set DM6=true
else
set x=II3+KRI*0.03*Cos(a)
set y=I13+KRI*0.03*Sin(a)
if QNI(x,y,QJI,QKI)<30 then
set x=QJI
set y=QKI
set DM6=true
endif
set x=PTI(x)
set y=PUI(y)
set KPI=DL6
set L0I=x
set LII=y
call ForGroup(DL6,function DY6)
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
set g=NTI()
set GK=P7I
set KPI=PR2
set KQI=P7I
set KUI=GetUnitAbilityLevel(P7I,1093816649)
call GroupEnumUnitsInRange(g,x,y,180+25,Condition(function CA1))
call ForGroup(g,function DX6)
call NSI(g)
set g=null
endif
if DM6 then
call ForGroup(DL6,function DW6)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call NSI(PR2)
call NSI(DL6)
endif
set P7I=null
set t=null
set PR2=null
set DL6=null
return false
endfunction
function MagneticGrip_PullableTargetsFilter takes nothing returns boolean
return((GetUnitTypeId(GetFilterUnit())==1865429336 or GetUnitTypeId(GetFilterUnit())==1865429552)or(IsUnitEnemy(KQI,GetOwningPlayer(GetFilterUnit()))==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0))and IC1(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((4336))))==1)==false
endfunction
function DN6 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1865429336
endfunction
function DS6 takes nothing returns nothing
local unit P8I=GetEnumUnit()
call SetUnitPathing(P8I,false)
call SaveInteger(LY,(GetHandleId((P8I))),((4336)),(1))
call SaveReal(LY,(GetHandleId(P8I)),(801),((bj_DEGTORAD*UEI(L0I,LII,GetUnitX(P8I),GetUnitY(P8I)))*1.0))
call SaveReal(LY,(GetHandleId(P8I)),(802),((QNI(L0I,LII,GetUnitX(P8I),GetUnitY(P8I)))*1.0))
set P8I=null
endfunction
function DT6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t
local integer S5I
local real QJI=GetUnitX(GetSpellTargetUnit())
local real QKI=GetUnitY(GetSpellTargetUnit())
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local real a=UEI(x,y,QJI,QKI)
local unit P8I=GetSpellTargetUnit()
local group g
if P8I==null then
set g=NTI()
call GroupEnumUnitsInRange(g,GetSpellTargetX(),GetSpellTargetY(),240+25,Condition(function DN6))
if FirstOfGroup(g)==null then
call NSI(g)
set P7I=null
set g=null
return
endif
set P8I=FirstOfGroup(g)
call NSI(g)
endif
set g=NTI()
call GroupAddUnit(g,P8I)
set QJI=GetUnitX(P8I)
set QKI=GetUnitY(P8I)
set a=UEI(x,y,QJI,QKI)
set t=CreateTrigger()
set S5I=GetHandleId(t)
set L0I=QJI
set LII=QKI
call ForGroup(g,function DS6)
set x=x+100*Cos(a*bj_DEGTORAD)
set y=y+100*Sin(a*bj_DEGTORAD)
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function DK6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(23),((QJI)*1.0))
call SaveReal(LY,(S5I),(24),((QKI)*1.0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call SaveGroupHandle(LY,(S5I),(803),(g))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\MagneticGripTarget.mdx",P8I,"chest")))
set P7I=null
set t=null
set g=null
endfunction
function DR6 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local group g
if P8I==null then
set g=NTI()
call GroupEnumUnitsInRange(g,GetSpellTargetX(),GetSpellTargetY(),240+25,Condition(function DN6))
if FirstOfGroup(g)==null then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659509))
endif
call NSI(g)
endif
set g=null
set P8I=null
endfunction
function DP6 takes nothing returns boolean
if GetSpellAbilityId()==1093816649 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
call DR6()
else
call DT6()
endif
endif
return false
endfunction
function Q91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function DP6))
set t=null
endfunction
function DQ6 takes integer i returns boolean
return L7I[0]==i or L7I[1]==i or L7I[2]==i or L7I[3]==i or L7I[4]==i or L7I[5]==i or L7I[6]==i
endfunction
function DU6 takes nothing returns boolean
return IC1(GetFilterUnit())==false and IsUnitEnemy(L3I,GetOwningPlayer(GetFilterUnit()))and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((809))))==1)
endfunction
function E06 takes nothing returns nothing
call AX1((GetEnumUnit()),1093816654,1,2,1110460235)
endfunction
function EI6 takes unit P8I returns nothing
local group g=NTI()
if((LoadInteger(LY,(GetHandleId((P8I))),((809))))==1)==true then
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function DU6))
endif
call GroupAddUnit(g,P8I)
call ForGroup(g,function E06)
call NSI(g)
set g=null
endfunction
function RollingBoulder_FindClosestMagnetizedTarget takes nothing returns nothing
local real d=QLI(GetEnumUnit(),LBI)
if d<AK then
set AK=d
set L4I=GetEnumUnit()
endif
endfunction
function E16 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),L5I)==false then
call GroupAddUnit(L5I,GetEnumUnit())
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
set L8I=true
set L4I=GetEnumUnit()
if((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((809))))==1)then
set LBI=GetEnumUnit()
endif
if LAI==1 then
call P6I(L3I,GetEnumUnit(),1,L9I)
call EI6(GetEnumUnit())
else
call P6I(L3I,GetEnumUnit(),1,L9I)
endif
else
if LAI==1 then
call P6I(L3I,GetEnumUnit(),1,L9I)
else
call P6I(L3I,GetEnumUnit(),1,L9I)
endif
endif
endif
endfunction
function EO6 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1865429336 or GetUnitTypeId(GetFilterUnit())==1865429552
endfunction
function E26 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real H71=(LoadReal(LY,(S5I),(6)))
local real H81=(LoadReal(LY,(S5I),(7)))
local real IO3=GetUnitX(P7I)
local real I23=GetUnitY(P7I)
local real d=QNI(H71,H81,IO3,I23)
local real x
local real y
local real a=(LoadReal(LY,(S5I),(137)))
local real r=L2I
local integer E36=(LoadInteger(LY,(S5I),(34)))
local real E63=(LoadReal(LY,(S5I),(138)))
local boolean E46=false
local unit E56=(LoadUnitHandle(LY,(S5I),(810)))
set L8I=false
call SetUnitTimeScale(P7I,3)
call SetUnitFacing(P7I,a)
call SetUnitAnimationByIndex(P7I,0)
if GetTriggerEvalCount(t)>30 then
if E36==0 then
set g=NTI()
call GroupEnumUnitsInRange(g,IO3,I23,150+25,Condition(function EO6))
if FirstOfGroup(g)!=null then
if(GetUnitTypeId((FirstOfGroup(g)))==1865429552)==false then
call KillUnit(FirstOfGroup(g))
endif
set E36=1
call SaveInteger(LY,(S5I),(34),(E36))
endif
call NSI(g)
endif
if E36==1 then
set r=r*2
endif
if E56!=null then
set a=UDI(P7I,E56)
call SaveReal(LY,(S5I),(137),((a)*1.0))
endif
set x=H71+0.02*r*Cos(a*bj_DEGTORAD)
set y=H81+0.02*r*Sin(a*bj_DEGTORAD)
call SetUnitX(P7I,PTI(x))
call SetUnitY(P7I,PUI(y))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
call UPI(GetUnitX(P7I),GetUnitY(P7I),100)
set d=QNI(H71,H81,GetUnitX(P7I),GetUnitY(P7I))
set E63=E63+d
call SaveReal(LY,(S5I),(138),((E63)*1.0))
set g=NTI()
set GK=P7I
set L3I=P7I
set L5I=PR2
set L6I=1
set L4I=null
set L9I=100
set LAI=E36
set LBI=null
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),150+25,Condition(function CA1))
call ForGroup(g,function E16)
call NSI(g)
if LBI!=null then
set g=NTI()
set L4I=null
set AK=9999
call GroupEnumUnitsInRange(g,GetUnitX(LBI),GetUnitY(LBI),600+25,Condition(function DU6))
call NSI(g)
if L4I==null then
set E46=true
set L4I=LBI
else
set E56=L4I
call SaveUnitHandle(LY,(S5I),(810),(E56))
endif
endif
else
call SetUnitX(P7I,H71)
call SetUnitY(P7I,H81)
if BG1(P7I)then
set E46=true
endif
endif
if BG1(P7I)or GetTriggerEventId()==EVENT_WIDGET_DEATH or E46 or(E56==null and(GetTriggerEvalCount(t)>130 or L8I or(E36==0 and E63>800)or(E36==1 and E63>1600)))then
call KillUnit(I01)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitAddAbility(P7I,1093816658)
call UnitRemoveAbility(P7I,1093816658)
call SetUnitTimeScale(P7I,1)
if L8I==true then
set x=GetUnitX(L4I)+50*Cos(a*bj_DEGTORAD)
set y=GetUnitY(L4I)+50*Sin(a*bj_DEGTORAD)
call SetUnitX(P7I,PTI(x))
call SetUnitY(P7I,PUI(y))
call IssueTargetOrder(P7I,"attack",L4I)
endif
endif
set P7I=null
set t=null
set g=null
set PR2=null
return false
endfunction
function E66 takes unit P7I,unit E76 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429328,GetUnitX(P7I),GetUnitY(P7I),0)
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),GetSpellTargetX(),GetSpellTargetY())
call UnitAddAbility(P7I,1093816657)
call UnitRemoveAbility(P7I,1093816657)
call SetUnitTimeScale(P7I,3)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function E26))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveInteger(LY,(S5I),(34),(0))
call SaveReal(LY,(S5I),(138),((0)*1.0))
call SaveUnitHandle(LY,(S5I),(810),(null))
if E76!=null and GetUnitTypeId(E76)==1865429336 then
call KillUnit(E76)
endif
set t=null
endfunction
function E86 takes nothing returns boolean
return((GetUnitTypeId(GetFilterUnit())==1865429336 and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(L3I))or(GetUnitTypeId((GetFilterUnit()))==1865429552))and IC1(GetFilterUnit())==false
endfunction
function RollingBoulder_Loop takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g
if GetUnitTypeId(P7I)==1311788373 and IC1(P7I)==false then
set g=NTI()
set L3I=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),150+25,Condition(function E86))
if FirstOfGroup(g)!=null then
endif
call NSI(g)
set g=null
endif
set P7I=null
set t=null
return false
endfunction
function E96 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1311788373 and IsUnitIllusion(GetFilterUnit())==false
endfunction
function EA6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real GW1=(LoadReal(LY,(S5I),(442)))
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(800)))
local group g
if P7I==null then
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function E96))
set P7I=FirstOfGroup(g)
call NSI(g)
set g=null
if P7I!=null then
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(GetHandleId(P7I)),(800),(6))
call IA1(P7I,L7I[6])
endif
endif
if GetTriggerEventId()==EVENT_UNIT_SPELL_CAST then
if(DQ6(GetSpellAbilityId()))and JGO<=0 then
call PJI(P7I)
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if DQ6(GetSpellAbilityId())or GetSpellAbilityId()==1093817418 then
if GetSpellAbilityId()==1093817418 then
call E66(P7I,null)
endif
endif
elseif JGO<6 then
set GW1=GW1-0.2
call SaveReal(LY,(S5I),(442),((GW1)*1.0))
if GW1<=0.then
call UnitRemoveAbility(P7I,L7I[JGO])
set JGO=JGO+1
call IA1(P7I,L7I[JGO])
call SaveInteger(LY,(GetHandleId(P7I)),(800),(JGO))
call SaveReal(LY,(S5I),(442),((LOI)*1.0))
endif
endif
set P7I=null
set t=null
return false
endfunction
function EB6 takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_CAST)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EA6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(442),((LOI)*1.0))
call SaveInteger(LY,(GetHandleId(P7I)),(800),(6))
call IA1(P7I,L7I[6])
set t=null
endfunction
function QD1 takes nothing returns nothing
call EB6(GK)
endfunction
function EC6 takes unit ED6 returns nothing
local unit P7I=K1[GetPlayerId(GetOwningPlayer(ED6))]
local integer S5I=GetHandleId(P7I)
local integer EE6=(LoadInteger(LY,(S5I),(279)))
local integer i=1
local integer x=1
local unit E76
loop
exitwhen i>EE6
set E76=(LoadUnitHandle(LY,(S5I),(1400+i)))
if IC1(E76)==false then
call SaveUnitHandle(LY,(S5I),(1400+x),(E76))
set x=x+1
endif
set i=i+1
endloop
set EE6=EE6-1
call SaveInteger(LY,(S5I),(279),(EE6))
set E76=null
set P7I=null
endfunction
function EF6 takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())==1865429336 then
call EC6(GetTriggerUnit())
endif
return false
endfunction
function EG6 takes nothing returns nothing
local unit E76
local unit P7I=GetTriggerUnit()
local integer S5I=GetHandleId(P7I)
local integer EE6=(LoadInteger(LY,(S5I),(279)))
local unit EH6=(LoadUnitHandle(LY,(S5I),(1400+1)))
local real x
local real y
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(800)))
if JGO>0 then
if GetSpellTargetUnit()==null then
set x=GetSpellTargetX()
set y=GetSpellTargetY()
else
set x=GetUnitX(GetSpellTargetUnit())
set y=GetUnitY(GetSpellTargetUnit())
endif
call UnitRemoveAbility(P7I,L7I[JGO])
set JGO=IMaxBJ(0,JGO-1)
call IA1(P7I,L7I[JGO])
call SaveInteger(LY,(GetHandleId(P7I)),(800),(JGO))
set E76=CreateUnit(GetOwningPlayer(P7I),1865429336,x,y,0)
call UnitApplyTimedLife(E76,1112820806,120)
call SetUnitPathing(E76,false)
set EE6=EE6+1
call SaveUnitHandle(LY,(S5I),(1400+EE6),(E76))
call SaveInteger(LY,(S5I),(279),(EE6))
if(EE6>6)then
call KillUnit(EH6)
endif
endif
set E76=null
set P7I=null
set EH6=null
endfunction
function EZ6 takes nothing returns boolean
if DQ6(GetSpellAbilityId())then
call EG6()
endif
return false
endfunction
function QA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EZ6))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function EF6))
set L7I[0]=1093873992
set L7I[1]=1093873994
set L7I[2]=1093873991
set L7I[3]=1093817416
set L7I[4]=1093873996
set L7I[5]=1093873993
set L7I[6]=1093873995
set t=null
endfunction
function BoulderSmash_FindRock takes nothing returns boolean
if IsUnitInGroup(GetFilterUnit(),LDI)==false and(GetUnitTypeId(GetFilterUnit())==1865429336 or GetUnitTypeId(GetFilterUnit())==1865429552)and GetFilterUnit()!=LFI then
call GroupAddUnit(LDI,GetFilterUnit())
set LZI=LZI+1
if GetUnitTypeId(GetFilterUnit())==1865429336 then
call KillUnit(GetFilterUnit())
endif
endif
return false
endfunction
function EV6 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),LDI)==false then
call GroupAddUnit(LDI,GetEnumUnit())
call P6I(LEI,GetEnumUnit(),1,LHI)
if LVI==1 then
call DD1(LEI,GetEnumUnit(),0.25+0.5*LGI)
endif
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true and((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((809))))==1)then
set LWI=GetEnumUnit()
endif
endif
endfunction
function EW6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real QJI=(LoadReal(LY,(S5I),(6)))
local real QKI=(LoadReal(LY,(S5I),(7)))
local real a
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real x
local real y
local boolean DM6=false
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
local integer RockBonusCount=(LoadInteger(LY,(S5I),(34)))
local integer HeroSTR=GetHeroStr(P7I,true)
local unit E56=(LoadUnitHandle(LY,(S5I),(810)))
if E56!=null then
set QJI=GetUnitX(E56)
set QKI=GetUnitY(E56)
endif
set a=bj_DEGTORAD*UEI(GetUnitX(P8I),GetUnitY(P8I),QJI,QKI)
set x=II3+(LCI)*0.03*Cos(a)
set y=I13+(LCI)*0.03*Sin(a)
if QNI(x,y,QJI,QKI)<(5+(LCI)*0.03)then
set x=QJI
set y=QKI
set DM6=true
endif
set x=PTI(x)
set y=PUI(y)
set LDI=PR2
set LEI=P7I
set LGI=GetUnitAbilityLevel(P7I,1093817685)
set LHI=125
set LWI=null
if((LoadInteger(LY,(GetHandleId((P8I))),((4306))))==1)==true or GetTriggerEventId()==EVENT_UNIT_DEATH or GetUnitAbilityLevel(P8I,1110456406)>0 or((LoadInteger(LY,(GetHandleId((P8I))),((4336))))==1)==true or(E56==null and GetTriggerEvalCount(t)>200)then
set DM6=true
else
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",x,y))
if GetUnitTypeId(P8I)==1865429336 or GetUnitTypeId(P8I)==1865429552 then
set LVI=1
call SetUnitPosition(P8I,x,y)
call SetUnitX(P8I,PTI(x))
call SetUnitY(P8I,PUI(y))
else
set LVI=0
call SetUnitX(P8I,PTI(x))
call SetUnitY(P8I,PUI(y))
endif
call UPI(x,y,150)
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
set g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,200+25,Condition(function CA1))
call GroupRemoveUnit(g,P8I)
call ForGroup(g,function EV6)
call NSI(g)
if LWI!=null and LVI==1 then
set g=NTI()
set LFI=null
set AK=9999
call GroupEnumUnitsInRange(g,GetUnitX(LWI),GetUnitY(LWI),600+25,Condition(function DG6))
call NSI(g)
if LFI!=null then
set E56=LFI
call SaveUnitHandle(LY,(S5I),(810),(E56))
set DM6=false
endif
endif
set g=null
endif
if DM6 then
if GetUnitTypeId(P8I)!=1865429336 then
call SetUnitPathing(P8I,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call NSI(PR2)
call SaveInteger(LY,(GetHandleId((P8I))),((4335)),(2))
if GetTriggerEventId()!=EVENT_UNIT_DEATH then
if IsPlayerAlly(GetOwningPlayer(P7I),GetOwningPlayer(P8I))==false then
call P6I(LEI,P8I,1,LHI)
endif
endif
endif
set P8I=null
set t=null
set PR2=null
set P7I=null
return false
endfunction
function EX6 takes nothing returns boolean
if GetUnitTypeId(GetFilterUnit())==1865429336 then
return true
endif
return false
endfunction
function EY6 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093817685)
local trigger t
local integer S5I
local real a
local real x
local real y
local integer i=-1
local boolean K3O=false
local real d=400+100*SUI
local group g
if P8I==null then
set g=NTI()
call GroupEnumUnitsInRange(g,GetSpellTargetX(),GetSpellTargetY(),180+25,Condition(function EX6))
set P8I=FirstOfGroup(g)
call NSI(g)
set g=null
set a=GetUnitFacing(P7I)
else
set a=UDI(P7I,P8I)
endif
if P8I==null then
return
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
if P7I==P8I then
set a=GetUnitFacing(P7I)
endif
if GetUnitTypeId(P8I)==1865429336 or GetUnitTypeId(P8I)==1865429552 then
set d=2000
endif
loop
exitwhen K3O or i==23
set i=i+1
set x=PTI(GetUnitX(P8I)+(d-i*25)*Cos(a*bj_DEGTORAD))
set y=PUI(GetUnitY(P8I)+(d-i*25)*Sin(a*bj_DEGTORAD))
if(IsPointInRegion(LN,((x)*1.0),((y)*1.0)))==false then
set K3O=true
endif
endloop
call SetUnitPathing(P8I,false)
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function EW6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(23),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P8I))*1.0))
call SaveInteger(LY,(S5I),(34),(0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call SaveUnitHandle(LY,(S5I),(810),(null))
call SaveInteger(LY,(GetHandleId((P8I))),((4335)),(1))
set P8I=null
set P7I=null
set t=null
endfunction
function EJ6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local group g
if GetUnitTypeId(P8I)==1848651852 then
call PJI(P7I)
call PZI(GetOwningPlayer(P7I),GetObjectName(1848658745))
elseif P8I==null then
set g=NTI()
call GroupEnumUnitsInRange(g,GetSpellTargetX(),GetSpellTargetY(),180+25,Condition(function EX6))
if FirstOfGroup(g)==null then
call PJI(P7I)
call PZI(GetOwningPlayer(P7I),GetObjectName(1848658745))
endif
call NSI(g)
set g=null
endif
set P7I=null
set P8I=null
endfunction
function EK6 takes nothing returns boolean
if GetSpellAbilityId()==1093817685 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or NNI(GetSpellTargetUnit())==false then
call EY6()
endif
else
call EJ6()
endif
endif
return false
endfunction
function QB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function EK6))
set t=null
endfunction
function EL6 takes nothing returns nothing
call P6I(LXI,GetEnumUnit(),1,LYI)
endfunction
function EM6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local group g
local boolean EN6=false
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if DQ6(GetSpellAbilityId())and GetSpellTargetUnit()==I01 then
set EN6=true
endif
endif
if EN6==true or GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
set g=NTI()
call SetUnitX(P8I,GetUnitX(I01))
call SetUnitY(P8I,GetUnitY(I01))
call KillUnit(I01)
call SetUnitInvulnerable(P8I,false)
call PauseUnit(P8I,false)
call ShowUnit(P8I,true)
call ClearSelectionForPlayer(GetOwningPlayer(P8I))
call SelectUnitAddForPlayer(P8I,GetOwningPlayer(P8I))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set GK=P7I
set LXI=P7I
set LYI=300
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),300+25,Condition(function CA1))
call ForGroup(g,function EL6)
call NSI(g)
endif
set g=null
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function ES6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093817145)
local trigger t
local integer S5I
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429552,GetUnitX(P8I),GetUnitY(P8I),0)
local integer JGO=(LoadInteger(LY,(GetHandleId(GetTriggerUnit())),(800)))
if(IsUnitEnemy(P8I,GetOwningPlayer(P7I)))==false or NNI(GetSpellTargetUnit())==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SelectUnitRemoveForPlayer(P8I,GetOwningPlayer(P8I))
call SetUnitInvulnerable(P8I,true)
call PauseUnit(P8I,true)
call ShowUnit(P8I,false)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call TriggerRegisterTimerEvent(t,3,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EM6))
endif
set I01=CreateUnit(GetOwningPlayer(P8I),1865429553,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitApplyTimedLife(I01,1112820806,3)
set P7I=null
set P8I=null
set I01=null
set t=null
endfunction
function ET6 takes nothing returns boolean
if GetSpellAbilityId()==1093817145 then
call ES6()
endif
return false
endfunction
function ER6 takes nothing returns nothing
if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))and GetSpellTargetUnit()!=GetTriggerUnit()then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
endfunction
function EP6 takes nothing returns boolean
if GetSpellAbilityId()==1093817145 then
call ER6()
endif
return false
endfunction
function QC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ET6))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function EP6))
set t=null
endfunction
function XCO takes nothing returns nothing
call IA1(GK,1093817145)
endfunction
function EQ6 takes nothing returns nothing
set LKI=GetEnumUnit()
call ExecuteFunc("EU6")
endfunction
function F06 takes nothing returns boolean
return IC1(GetFilterUnit())==false and(GetUnitTypeId(GetFilterUnit())==1865429336 or GetUnitTypeId(GetFilterUnit())==1865429552)and((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((4335))))==1)==false and((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((4340))))==1)==false
endfunction
function FI6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local group g=NTI()
local integer NPI=GetTriggerEvalCount(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093817417)
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(807)))
if ModuloInteger(NPI,5)==0 then
call P6I(P7I,P8I,1,(25+25*SUI)/2)
endif
set LJI=P7I
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,400+25,Condition(function F06))
call ForGroup(g,function EQ6)
call NSI(g)
if(TimerGetElapsed(M))>LVO or IC1(P8I)then
call SaveInteger(LY,(GetHandleId((P8I))),((809)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function F16 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(807)))
call SaveReal(LY,(GetHandleId(P8I)),(807),(((TimerGetElapsed(M))+6)*1.0))
if LVO<(TimerGetElapsed(M))then
call SaveInteger(LY,(GetHandleId((P8I))),((809)),(1))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\MagnetizeTargetOverhead.mdx",P8I,"origin")))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function FI6))
endif
set t=null
endfunction
function FO6 takes nothing returns nothing
call F16(LJI,GetEnumUnit())
endfunction
function F26 takes unit P7I,unit P8I returns nothing
local group g=NTI()
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local real V83=300
if GetUnitTypeId(P8I)==1865429336 then
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherMissile\\DemolisherMissile.mdx",GetUnitX(P8I),GetUnitY(P8I)))
call UnitApplyTimedLife(P8I,1112820806,8)
call SaveInteger(LY,(GetHandleId((P8I))),((4340)),(1))
call SetUnitVertexColor(P8I,0,0,0,100)
set V83=600
else
call DestroyEffect(AddSpecialEffect("war3mapImported\\MagnetizeCastAoE.mdx",GetUnitX(P8I),GetUnitY(P8I)))
endif
set GK=P7I
set LJI=P7I
set LKI=P8I
call GroupEnumUnitsInRange(g,x,y,V83+25,Condition(function CA1))
call ForGroup(g,function FO6)
call NSI(g)
set P7I=null
set g=null
endfunction
function EU6 takes nothing returns nothing
call F26(LJI,LKI)
endfunction
function F36 takes nothing returns boolean
if GetSpellAbilityId()==1093817417 then
call F26(GetTriggerUnit(),GetTriggerUnit())
endif
return false
endfunction
function Q81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function F36))
set t=null
endfunction
function F46 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call SetUnitAnimationByIndex(P7I,8)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function F56 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitAnimationByIndex(P7I,7)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function F46))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function F66 takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())==1311788373 or GetUnitTypeId(GetTriggerUnit())==1311788375 then
call F56()
endif
return false
endfunction
function Q71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function F66))
set t=null
endfunction
function F76 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(804)))
if LVO>(TimerGetElapsed(M))or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093817168)
endif
set t=null
set P8I=null
return false
endfunction
function F86 takes unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveReal(LY,(GetHandleId(P8I)),(804),(((TimerGetElapsed(M))+10)*1.0))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function F76))
call IA1(P8I,1093817168)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093817168,false)
set t=null
endfunction
function F96 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)or IsUnitIllusion(GetEnumUnit())==true then
set LMI=true
call F86(GetEnumUnit())
endif
call P6I(LLI,GetEnumUnit(),1,75*LNI)
endfunction
function FA6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+200)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function FB6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g=NTI()
set LNI=GetUnitAbilityLevel(P7I,1093817167)
set GK=P7I
set LLI=P7I
set LMI=false
call GroupEnumUnitsInRange(g,x,y,175+25,Condition(function CA1))
call ForGroup(g,function F96)
call NSI(g)
call U7I("effects\\BasicWaterFlash.mdx",x,y,1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if LMI then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function FA6))
endif
set g=null
set t=null
set P7I=null
return false
endfunction
function FC6 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local integer SUI=GetUnitAbilityLevel(P7I,1093817167)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.6,false)
call TriggerAddCondition(t,Condition(function FB6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set P7I=null
set t=null
endfunction
function FD6 takes nothing returns boolean
if GetSpellAbilityId()==1093817167 then
call FC6()
endif
return false
endfunction
function Register_Pop takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FD6))
set t=null
endfunction
function FE6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetOwningPlayer(GetEventDamageSource())==GetOwningPlayer(P7I)or GetOwningPlayer(GetEventDamageSource())==GetOwningPlayer(P8I)then
call DisableTrigger(t)
call P6I(P7I,P8I,3,GetEventDamage()*(0.6+0.1*SUI))
call QGI(P7I,GetEventDamage()*(0.6+0.1*SUI))
call EnableTrigger(t)
endif
endif
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or IC1(P8I)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093817160)
call UnitRemoveAbility(P8I,1110460241)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function FF6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093817161)
call IA1(P8I,1093817160)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,3.5+0.5*SUI,false)
call TriggerAddCondition(t,Condition(function FE6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("effects\\PoisonHands.mdx",P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("effects\\PoisonHands.mdx",P8I,"hand,left")))
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffectTarget("effects\\PoisonHands.mdx",P8I,"hand,right")))
set t=null
set P7I=null
set P8I=null
endfunction
function FG6 takes nothing returns boolean
if GetSpellAbilityId()==1093817161 then
call FF6()
endif
return false
endfunction
function Register_SealedFate takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FG6))
set t=null
endfunction
function FH6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IYO=(LoadUnitHandle(LY,(S5I),(335)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
call SetUnitState(P8I,UNIT_STATE_LIFE,RMaxBJ(1,GetUnitState(P8I,UNIT_STATE_LIFE)-GetEventDamage()))
elseif GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerUnit()==P8I then
call KillUnit(IYO)
endif
else
call IssueTargetOrderById(IYO,851986,P8I)
endif
set t=null
set P7I=null
set P8I=null
set IYO=null
return false
endfunction
function FZ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IYO=GetSummonedUnit()
local unit I01
if GetUnitAbilityLevel(IYO,1110460239)>0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(335),(IYO))
call TriggerRegisterDeathEvent(t,IYO)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterUnitEvent(t,IYO,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function FH6))
set I01=CreateUnit(GetOwningPlayer(IYO),1697656901,GetUnitX(IYO),GetUnitY(IYO),0)
call UnitAddAbility(I01,1093816917)
call SetUnitAbilityLevel(I01,1093816917,GetUnitAbilityLevel(P7I,1093816663))
call IssueTargetOrder(I01,"banish",IYO)
call UnitShareVision(IYO,GetOwningPlayer(P7I),true)
call IssueTargetOrderById(IYO,851986,P8I)
endif
set t=null
set P7I=null
set P8I=null
set IYO=null
set I01=null
return false
endfunction
function FV6 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01
local player p
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function FZ6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
if IsUnitAlly(P8I,BO[0])==true then
set p=BO[0]
else
set p=CO[0]
endif
set I01=CreateUnit(p,1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093816916)
call SetUnitAbilityLevel(I01,1093816916,GetUnitAbilityLevel(P7I,1093816663))
call IssueTargetOrderById(I01,852274,P8I)
set t=null
set P7I=null
set P8I=null
endfunction
function FW6 takes nothing returns boolean
if GetSpellAbilityId()==1093816663 then
call FV6()
endif
return false
endfunction
function Register_SoulFragment takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FW6))
set t=null
endfunction
function FX6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093817169)
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+GetEventDamage()*(0.25+0.25*SUI))
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+GetEventDamage()*(0.25*SUI))
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function FY6 takes unit P7I,unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,4,false)
call TriggerAddCondition(t,Condition(function FX6))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
endfunction
function FJ6 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitAddAbility(P7I,1093817176)
call UnitRemoveAbility(P7I,1093817176)
set P7I=null
set t=null
return false
endfunction
function FK6 takes nothing returns nothing
if RKI(GetEnumUnit())==false then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\SpellShieldAmulet\\SpellShieldCaster.mdl",GetEnumUnit(),"overhead"))
call SetUnitOwner(LRI,GetOwningPlayer(GetEnumUnit()),false)
call IssueTargetOrder(LRI,"banish",GetEnumUnit())
call FY6(LPI,GetEnumUnit())
endif
endfunction
function RiftWalk_Move takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x2=(LoadReal(LY,(S5I),(66)))
local real y2=(LoadReal(LY,(S5I),(67)))
local real a=(LoadReal(LY,(S5I),(137)))
local integer NPI=GetTriggerEvalCount(t)
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local group g=NTI()
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local integer SUI=GetUnitAbilityLevel(SFI,1093817169)
if QNI(x,y,x2,y2)<=LSI then
set x=x2
set y=y2
else
set x=PTI(II3+65*Cos(a*bj_DEGTORAD))
set y=PUI(I13+65*Sin(a*bj_DEGTORAD))
endif
set GK=SFI
set LTI=PR2
set LRI=I01
set LPI=SFI
call GroupEnumUnitsInRange(g,x,y,200+25,Condition(function CA1))
call ForGroup(g,function FK6)
call NSI(g)
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
call SetUnitX(SFI,x)
call SetUnitY(SFI,y)
if(x==x2 and y==y2)or NPI>40 then
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
call UnitAddAbility(SFI,1093817175)
call UnitRemoveAbility(SFI,1093817175)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call TriggerRegisterTimerEvent(t,4,false)
call TriggerAddCondition(t,Condition(function FJ6))
call SetUnitAnimation(SFI,"stand")
call SetUnitPathing(SFI,true)
call SetUnitInvulnerable(SFI,false)
if GetUnitTypeId(SFI)==1160786520 then
call SetUnitVertexColor(SFI,255,255,255,255)
else
call SetUnitVertexColor(SFI,255,255,255,255)
endif
call SaveInteger(LY,(GetHandleId((SFI))),((4261)),(2))
endif
set t=null
set SFI=null
set I01=null
return false
endfunction
function FL6 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x1=GetUnitX(SFI)
local real y1=GetUnitY(SFI)
local real x2
local real y2
local real a
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,x1,y1,0)
local group g=NTI()
if GetSpellTargetUnit()==null then
set l=GetSpellTargetLoc()
else
set l=GetUnitLoc(GetSpellTargetUnit())
endif
set x2=GetLocationX(l)
set y2=GetLocationY(l)
set a=UEI(x1,y1,x2,y2)
call RemoveLocation(l)
call IA1(I01,1093817174)
call SetUnitAbilityLevel(I01,1093817174,GetUnitAbilityLevel(SFI,1093817169))
set LRI=I01
set LPI=SFI
call GroupEnumUnitsInRange(g,x2,y2,200+25,Condition(function C51))
call ForGroup(g,function FK6)
call NSI(g)
set g=null
call UnitAddAbility(SFI,1093817175)
call UnitRemoveAbility(SFI,1093817175)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call TriggerRegisterTimerEvent(t,4,false)
call TriggerAddCondition(t,Condition(function FJ6))
set SFI=null
set l=null
set t=null
set I01=null
endfunction
function FM6 takes nothing returns boolean
if GetSpellAbilityId()==1093817169 then
call FL6()
endif
return false
endfunction
function Register_RiftWalk takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FM6))
set t=null
endfunction
function InitCustomTeams takes nothing returns nothing
call SetPlayerTeam(Player(1),0)
call SetPlayerTeam(Player(2),0)
call SetPlayerTeam(Player(3),0)
call SetPlayerTeam(Player(4),0)
call SetPlayerTeam(Player(5),0)
call SetPlayerTeam(Player(7),1)
call SetPlayerTeam(Player(8),1)
call SetPlayerTeam(Player(9),1)
call SetPlayerTeam(Player(10),1)
call SetPlayerTeam(Player(11),1)
endfunction
function main takes nothing returns nothing
local weathereffect we
local integer i
local player p
local unit u
local integer MSI
local trigger t
local real life
local integer MLI
local integer MMI
local version v
local integer MGI
local real HE1
local real HF1
local real HG1
local real HH1
local real HZ1
local real HV1
local real HW1
local real HX1
local real HY1
local real HJ1
local real HK1
local real HL1
local real HM1
local real HN1
local real HS1
local real HT1
local real HR1
local real HP1
local real HQ1
local real HU1
local integer Z01
local player T4I
local real ZH1
local real ZZ1
local real ZV1
local real ZW1
local real ZX1
local real ZY1
local real ZJ1
local real ZK1
local real ZL1
local real ZM1
local real ZN1
local real ZS1
local real ZT1
local real ZR1
local real ZP1
local real ZQ1
local real ZU1
local real V01
local real VI1
local real V11
local real VO1
local real V21
local real V31
local real V41
local location BFO
local region S5O
local real d
local integer S5I
call SetCameraBounds(-7552.0+GetCameraMargin(CAMERA_MARGIN_LEFT),-7936.0+GetCameraMargin(CAMERA_MARGIN_BOTTOM),7552.0-GetCameraMargin(CAMERA_MARGIN_RIGHT),7424.0-GetCameraMargin(CAMERA_MARGIN_TOP),-7552.0+GetCameraMargin(CAMERA_MARGIN_LEFT),7424.0-GetCameraMargin(CAMERA_MARGIN_TOP),7552.0-GetCameraMargin(CAMERA_MARGIN_RIGHT),-7936.0+GetCameraMargin(CAMERA_MARGIN_BOTTOM))
call SetDayNightModels("Environment\\DNC\\DNCFelwood\\DNCFelwoodTerrain\\DNCFelwoodTerrain.mdl","Environment\\DNC\\DNCFelwood\\DNCFelwoodUnit\\DNCFelwoodUnit.mdl")
call SetWaterBaseColor(0,0,255,255)
call NewSoundEnvironment("Default")
call SetAmbientDaySound("FelwoodDay")
call SetAmbientNightSound("FelwoodNight")
call SetMapMusic("Music",true,0)
set BC=CreateSound("Abilities\\Spells\\Human\\Avatar\\Avatar.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(BC,"Avatar")
call SetSoundDuration(BC,3199)
set CC=CreateSound("Abilities\\Spells\\NightElf\\Blink\\BlinkArrival1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(CC,"BlinkTarget")
call SetSoundDuration(CC,1466)
call SetSoundPitch(CC,1.6)
set DC=CreateSound("Abilities\\Spells\\Human\\Blizzard\\BlizzardLoop1.wav",true,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(DC,"BlizzardLoop")
call SetSoundDuration(DC,4000)
set EC=CreateSound("Buildings\\Undead\\TempleOfTheDamned\\TempleOfTheDamnedWhat.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(EC,"TempleOfTheDamnedWhat")
call SetSoundDuration(EC,3518)
call SetSoundDistanceCutoff(EC,2000.0)
set FC=CreateSound("Abilities\\Spells\\Human\\Flare\\FlareTarget2.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(FC,"Flare2")
call SetSoundDuration(FC,1344)
call SetSoundDistanceCutoff(FC,2000.0)
set GC=CreateSound("Sounds\\Dominating.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(GC,1802)
call SetSoundChannel(GC,0)
call SetSoundVolume(GC,127)
call SetSoundPitch(GC,1.0)
set HC=CreateSound("Sounds\\Double_Kill.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(HC,2012)
call SetSoundChannel(HC,0)
call SetSoundVolume(HC,127)
call SetSoundPitch(HC,1.0)
set ZC=CreateSound("Sounds\\firstblood.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(ZC,1567)
call SetSoundChannel(ZC,0)
call SetSoundVolume(ZC,127)
call SetSoundPitch(ZC,1.0)
set VC=CreateSound("Units\\Creeps\\GoblinSapper\\GoblinSapperPissed1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(VC,"GoblinSapperPissed")
call SetSoundDuration(VC,1515)
call SetSoundChannel(VC,0)
set WC=CreateSound("Units\\Creeps\\GoblinSapper\\GoblinSapperYesAttack1.wav",false,false,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(WC,"GoblinSapperYesAttack")
call SetSoundDuration(WC,813)
call SetSoundChannel(WC,0)
set XC=CreateSound("Sounds\\GodLike.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(XC,1828)
call SetSoundChannel(XC,0)
call SetSoundVolume(XC,127)
call SetSoundPitch(XC,1.0)
set YC=CreateSound("Units\\Orc\\HeroBladeMaster\\HeroBladeMasterPissed1.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(YC,"HeroBladeMasterPissed")
call SetSoundDuration(YC,2235)
set JC=CreateSound("Sounds\\HolyShit.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(JC,2325)
call SetSoundChannel(JC,0)
call SetSoundVolume(JC,127)
call SetSoundPitch(JC,1.0)
set NC=CreateSound("Buildings\\NightElf\\MoonWell\\MoonWellWhat1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(NC,"MoonWellWhat")
call SetSoundDuration(NC,2972)
call SetSoundDistances(NC,600.0,10000.0)
call SetSoundDistanceCutoff(NC,2000.0)
set TC=CreateSound("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaos.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(TC,"MarkOfChaos")
call SetSoundDuration(TC,4000)
set RC=CreateSound("Sounds\\Killing_Spree.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(RC,2377)
call SetSoundChannel(RC,0)
call SetSoundVolume(RC,127)
call SetSoundPitch(RC,1.0)
set PC=CreateSound("Sound\\Buildings\\Death\\NightElfBuildingDeathSmall1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(PC,"DeathNightElfBuildingCancel")
call SetSoundDuration(PC,3675)
set QC=CreateSound("Sounds\\MegaKill.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(QC,2612)
call SetSoundChannel(QC,0)
call SetSoundVolume(QC,127)
call SetSoundPitch(QC,1.0)
set UC=CreateSound("Abilities\\Spells\\NightElf\\ShadowMeld\\ShadowMeld1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(UC,"ShadowMeld")
call SetSoundDuration(UC,941)
set OD=CreateSound("Sounds\\MonsterKill.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(OD,3344)
call SetSoundChannel(OD,0)
call SetSoundVolume(OD,127)
call SetSoundPitch(OD,1.0)
set ED=CreateSound("Units\\Creeps\\Ogre\\OgrePissed1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(ED,"OgrePissed")
call SetSoundDuration(ED,3309)
set JD=CreateSound("Sounds\\Ownage.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(JD,2586)
call SetSoundChannel(JD,0)
call SetSoundVolume(JD,127)
call SetSoundPitch(JD,1.0)
set KD=CreateSound("Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed1.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(KD,"PandarenBrewmasterPissed")
call SetSoundDuration(KD,2316)
set LD=CreateSound("Abilities\\Spells\\Human\\Polymorph\\PolymorphDone.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(LD,"PolymorphDone")
call SetSoundDuration(LD,1498)
set MD=CreateSound("Buildings\\Naga\\TempleofTides\\TempleOfTidesWhat1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(MD,"TempleOfTidesWhat")
call SetSoundDuration(MD,3483)
call SetSoundDistanceCutoff(MD,2000.0)
set ND=CreateSound("Buildings\\Undead\\TombOfRelics\\TombOfRelicsWhat1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(ND,"TombOfRelicsWhat")
call SetSoundDuration(ND,3065)
call SetSoundDistanceCutoff(ND,2000.0)
set TD=CreateSound("Abilities\\Spells\\Orc\\Disenchant\\Disenchant.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(TD,"Disenchant")
call SetSoundDuration(TD,2043)
set PD=CreateSound("Sound\\Interface\\Rescue.wav",false,false,false,10,10,"")
call SetSoundParamsFromLabel(PD,"Rescue")
call SetSoundDuration(PD,3796)
set QD=CreateSound("Abilities\\Spells\\Undead\\Sleep\\SleepBirth1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(QD,"Sleep")
call SetSoundDuration(QD,3203)
set UD=CreateSound("Abilities\\Spells\\Undead\\DevourMagic\\DevourMagic.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(UD,"DevourMagicLaunch")
call SetSoundDuration(UD,1225)
set IE=CreateSound("Abilities\\Spells\\Other\\BlackArrow\\TheBlackArrow.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(IE,"BlackArrowHit")
call SetSoundDuration(IE,1776)
call SetSoundVolume(IE,50)
set OE=CreateSound("Sound\\Ambient\\DoodadEffects\\TheHornOfCenarius.wav",false,false,false,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(OE,"HornOfCenariusSound")
call SetSoundDuration(OE,12121)
call SetSoundVolume(OE,115)
set AE=CreateSound("Sounds\\triple_kill.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(AE,1907)
call SetSoundChannel(AE,0)
call SetSoundVolume(AE,127)
call SetSoundPitch(AE,1.0)
set EE=CreateSound("Sounds\\Unstoppable.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(EE,2038)
call SetSoundChannel(EE,0)
call SetSoundVolume(EE,127)
call SetSoundPitch(EE,1.0)
set FE=CreateSound("Abilities\\Spells\\Human\\DivineShield\\PaladinDivineShieldDeath1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(FE,"DivineShieldDeath")
call SetSoundDuration(FE,1043)
call SetSoundDistanceCutoff(FE,1500.0)
set GE=CreateSound("Abilities\\Spells\\Items\\AIso\\SoulGem.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(GE,"SoulGem")
call SetSoundDuration(GE,4474)
set HE=CreateSound("Sounds\\WhickedSick.mp3",false,false,false,10,10,"DefaultEAXON")
call SetSoundDuration(HE,2612)
call SetSoundChannel(HE,0)
call SetSoundVolume(HE,127)
call SetSoundPitch(HE,1.0)
set ZE=CreateSound("Units\\Creeps\\GoblinSapper\\GoblinSapperYesAttack4.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(ZE,"GoblinSapperYesAttack")
call SetSoundDuration(ZE,1091)
call SetSoundChannel(ZE,0)
set VE=CreateSound("Abilities\\Spells\\NightElf\\shadowstrike\\ShadowStrikeBirth1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(VE,"ShadowStrikeBirth")
call SetSoundDuration(VE,2194)
call SetSoundPitch(VE,1.2)
set WE=CreateSound("Abilities\\Spells\\Other\\BlackArrow\\TheBlackArrow.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(WE,"BlackArrowHit")
call SetSoundDuration(WE,1776)
call SetSoundPitch(WE,1.6)
set XE=CreateSound("Abilities\\Spells\\NightElf\\CorrosiveBreath\\CorrosiveBreathMissileLaunch1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(XE,"CorrosiveBreathMissileLaunch")
call SetSoundDuration(XE,1301)
call SetSoundPitch(XE,1.2)
set YE=CreateSound("Sound\\Interface\\Warning\\NightElf\\SentinelAllyHeroDies1.wav",false,false,false,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(YE,"AllyHeroDiesNightElf")
call SetSoundDuration(YE,1963)
call SetSoundVolume(YE,127)
set JE=CreateSound("Sound\\Interface\\Warning\\Undead\\NecromancerAllyHeroDies1.wav",false,false,false,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(JE,"AllyHeroDiesUndead")
call SetSoundDuration(JE,1933)
call SetSoundVolume(JE,127)
set KE=CreateSound("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.wav",false,false,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(KE,"ReviveHuman")
call SetSoundDuration(KE,3196)
call SetSoundChannel(KE,8)
set LE=CreateSound("Sound\\Interface\\SecretFound.wav",false,false,false,10,10,"")
call SetSoundParamsFromLabel(LE,"SecretFound")
call SetSoundDuration(LE,2525)
set ME=CreateSound("Sounds\\UltraKill.mp3",false,false,false,10,10,"")
call SetSoundDuration(ME,1958)
call SetSoundChannel(ME,0)
call SetSoundVolume(ME,127)
call SetSoundPitch(ME,1.0)
set NE=CreateSound("Sounds\\Rampage.mp3",false,false,false,10,10,"")
call SetSoundDuration(NE,1195)
call SetSoundChannel(NE,0)
call SetSoundVolume(NE,127)
call SetSoundPitch(NE,1.0)
set SE=CreateSound("Buildings\\NightElf\\AltarOfElders\\AltarOfEldersWhat1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(SE,"AltarOfEldersWhat")
call SetSoundDuration(SE,3496)
set TE=CreateSound("Units\\Orc\\AncestralGuardian\\AncestralGuardianAttack1.wav",false,true,true,10,10,"CombatSoundsEAX")
call SetSoundParamsFromLabel(TE,"AncestralGuardianAttack1")
call SetSoundDuration(TE,1181)
set RE=CreateSound("Abilities\\Spells\\Human\\Feedback\\Feedback.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(RE,"Feedback")
call SetSoundDuration(RE,1222)
set PE=CreateSound("Units\\Undead\\Abomination\\AbominationPissed5.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(PE,"AbominationPissed")
call SetSoundDuration(PE,1735)
set QE=CreateSound("Units\\Undead\\Abomination\\AbominationDeath1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(QE,"AbominationDeath")
call SetSoundDuration(QE,2455)
set UE=CreateSound("Sound\\Units\\Death\\ArtilleryCorpseExplodeDeath1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(UE,"ArtilleryExplodeDeath")
call SetSoundDuration(UE,1486)
set IF=CreateSound("Units\\Undead\\CryptFiend\\CryptFiendPissed2.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(IF,"CryptFiendPissed")
call SetSoundDuration(IF,3541)
set OF=CreateSound("Units\\Undead\\Banshee\\BansheeDeath.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(OF,"BansheeDeath")
call SetSoundDuration(OF,2380)
set AF=CreateSound("Abilities\\Spells\\Human\\FlameStrike\\FlameStrikeTargetWaveNonLoop1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(AF,"FlameStrikeTarget")
call SetSoundDuration(AF,1927)
set BF=CreateSound("Abilities\\Spells\\Other\\Volcano\\VolcanoLoop.wav",false,false,false,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(BF,"VolcanoLoop")
call SetSoundDuration(BF,7616)
set CF=CreateSound("Abilities\\Spells\\Human\\ThunderClap\\ThunderClapCaster.wav",false,false,false,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(CF,"ThunderClap")
call SetSoundDuration(CF,3451)
set DF=CreateSound("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImage.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(DF,"MirrorImage")
call SetSoundDuration(DF,1756)
set EF=CreateSound("Abilities\\Spells\\Human\\CloudOfFog\\CloudOfFogLoop1.wav",true,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(EF,"CloudOfFogLoop")
call SetSoundDuration(EF,2038)
call SetSoundPitch(EF,0.9)
set FF=CreateSound("Units\\Human\\Gyrocopter\\GyrocopterPissed1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(FF,"GyrocopterPissed")
call SetSoundDuration(FF,3913)
set WF=CreateSound("Sound\\Interface\\SecretFound.wav",false,false,false,10,10,"")
call SetSoundParamsFromLabel(WF,"SecretFound")
call SetSoundDuration(WF,2525)
set XF=CreateSound("Sound\\Interface\\Hint.wav",false,false,false,10,10,"")
call SetSoundParamsFromLabel(XF,"Hint")
call SetSoundDuration(XF,2006)
set YF=CreateSound("war3mapImported\\pl_impact_stun.mp3",false,true,true,10,10,"SpellsEAX")
call SetSoundDuration(YF,1340)
call SetSoundChannel(YF,11)
call SetSoundVolume(YF,127)
call SetSoundPitch(YF,1.0)
call SetSoundDistances(YF,600.0,10000.0)
call SetSoundDistanceCutoff(YF,2000.0)
call SetSoundConeAngles(YF,0.0,0.0,127)
call SetSoundConeOrientation(YF,0.0,0.0,0.0)
set JF=CreateSound("Sound\\Buildings\\Fire\\OrcHumanLargeBuildingFire1.wav",true,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(JF,"HumanFireLarge")
call SetSoundDuration(JF,3471)
set KF=CreateSound("Units\\Human\\Phoenix\\PhoenixEggWhat1.wav",false,false,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(KF,"PhoenixEggWhat")
call SetSoundDuration(KF,1579)
call SetSoundChannel(KF,0)
set LF=CreateSound("Abilities\\Spells\\NightElf\\BattleRoar\\BattleRoar.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(LF,"BattleRoar")
call SetSoundDuration(LF,1991)
set MF=CreateSound("Buildings\\Undead\\Ziggurat\\ZigguratUpgrade.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(MF,"ZigguratUpgradeWhat")
call SetSoundDuration(MF,4203)
call SetSoundDistances(MF,600.0,10000.0)
call SetSoundDistanceCutoff(MF,3000.0)
set NF=CreateSound("Abilities\\Spells\\Human\\SpellSteal\\SpellStealMissile.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(NF,"SpellStealMissileLaunch")
call SetSoundDuration(NF,1541)
set SF=CreateSound("Abilities\\Spells\\Human\\SpellSteal\\SpellStealTarget.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(SF,"SpellStealTarget")
call SetSoundDuration(SF,984)
set TF=CreateSound("Abilities\\Spells\\Undead\\UndeadMine\\AcolyteMining.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(TF,"AcolyteMining")
call SetSoundDuration(TF,4233)
call SetSoundChannel(TF,0)
set RF=CreateSound("Abilities\\Weapons\\AvengerMissile\\DestroyerMissile.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(RF,"DestroyerMissileLaunch")
call SetSoundDuration(RF,817)
set PF=CreateSound("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouch.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(PF,"SpiritTouch")
call SetSoundDuration(PF,2043)
call SetSoundChannel(PF,11)
set QF=CreateSound("Abilities\\Spells\\Human\\FlameStrike\\FlameStrikeTargetWaveNonLoop1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(QF,"FlameStrikeTarget")
call SetSoundDuration(QF,1927)
set UF=CreateSound("Units\\Orc\\SentryWard\\SentryWard.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(UF,"SentryWardBirth")
call SetSoundDuration(UF,1499)
set IG=CreateSound("Buildings\\Orc\\TaurenTotem\\TaurenTotemWhat1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(IG,"TaurenTotemWhat")
call SetSoundDuration(IG,3785)
set OG=CreateSound("Abilities\\Weapons\\GargoyleMissile\\GargoyleMissileLaunch3.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(OG,"GargoyleMissileLaunch")
call SetSoundDuration(OG,919)
set AG=CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(AG,"ReceiveGold")
call SetSoundDuration(AG,589)
set BG=CreateSound("Abilities\\Spells\\Human\\InnerFire\\InnerFireBirth.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(BG,"InnerFire")
call SetSoundDuration(BG,2096)
set L3=Rect(6176.0,3136.0,6400.0,3392.0)
set M3=Rect(3616.0,3584.0,3872.0,3872.0)
set N3=Rect(2304.0,5280.0,2752.0,5728.0)
set S3=Rect(6176.0,5952.0,6624.0,6240.0)
set T3=Rect(-4224.0,-6848.0,-3968.0,-6592.0)
set R3=Rect(-6304.0,-4384.0,-6080.0,-4224.0)
set P3=Rect(-4928.0,-5760.0,-4736.0,-5536.0)
set Q3=Rect(6048.0,3424.0,6304.0,3776.0)
set U3=Rect(4128.0,3776.0,4352.0,4032.0)
set I4=Rect(2752.0,5408.0,3040.0,5632.0)
set O4=Rect(-7040.0,-6912.0,-6688.0,-6656.0)
set A4=Rect(-3648.0,-6880.0,-3424.0,-6688.0)
set B4=Rect(-6336.0,-4224.0,-5984.0,-3904.0)
set C4=Rect(-4896.0,-5504.0,-4608.0,-5184.0)
set D4=Rect(2912.0,-2944.0,3104.0,-2720.0)
set E4=Rect(5696.0,5504.0,7296.0,7392.0)
set F4=Rect(-7680.0,-8032.0,-6176.0,-6240.0)
set G4=Rect(-2464.0,1536.0,-2240.0,1760.0)
set H4=Rect(4512.0,-1120.0,4768.0,-832.0)
set Z4=Rect(-3328.0,-416.0,-3104.0,-96.0)
set V4=Rect(1440.0,-4096.0,1728.0,-3872.0)
set W4=Rect(-4576.0,3328.0,-4448.0,3488.0)
set X4=Rect(-3264.0,4192.0,-2912.0,4320.0)
set Y4=Rect(2848.0,-5088.0,3072.0,-4928.0)
set J4=Rect(-1824.0,2240.0,-1472.0,2464.0)
set K4=Rect(3008.0,-3776.0,3136.0,-3648.0)
set L4=Rect(1184.0,2976.0,1280.0,3104.0)
set M4=Rect(-512.0,-3648.0,-320.0,-3520.0)
set N4=Rect(-7104.0,6656.0,-6848.0,6912.0)
set S4=Rect(-7104.0,6656.0,-6880.0,6880.0)
set T4=Rect(-5952.0,-6432.0,-5248.0,-5728.0)
set R4=Rect(5088.0,7488.0,5792.0,8192.0)
set P4=Rect(4032.0,-2432.0,4320.0,-2144.0)
set Q4=Rect(3904.0,-1408.0,4960.0,-640.0)
set U4=Rect(-3552.0,-768.0,-2528.0,320.0)
set I5=Rect(1056.0,-5216.0,2368.0,-3744.0)
set O5=Rect(-5120.0,3008.0,-3648.0,4320.0)
set A5=Rect(-3456.0,3808.0,-2656.0,4864.0)
set B5=Rect(2272.0,-6080.0,3776.0,-4928.0)
set C5=Rect(-1888.0,2208.0,-992.0,3040.0)
set D5=Rect(416.0,2624.0,1632.0,3648.0)
set E5=Rect(2592.0,-4800.0,3744.0,-3328.0)
set F5=Rect(-1024.0,-3808.0,192.0,-2752.0)
set G5=Rect(-7936.0,-7776.0,-5920.0,-5760.0)
set H5=Rect(5504.0,5184.0,7744.0,7136.0)
set Z5=Rect(-800.0,3072.0,64.0,4032.0)
set V5=Rect(-384.0,3392.0,-192.0,3520.0)
set W5=Rect(-1728.0,-5056.0,-768.0,-3840.0)
set X5=Rect(-1152.0,-4704.0,-960.0,-4480.0)
set Y5=Rect(-480.0,-800.0,-256.0,-512.0)
set J5=Rect(3648.0,-2528.0,4384.0,-2208.0)
set K5=Rect(7264.0,-5504.0,7488.0,-5280.0)
set L5=Rect(-8160.0,6848.0,-7968.0,7040.0)
set M5=Rect(3744.0,-2464.0,4416.0,-1984.0)
set N5=Rect(3456.0,-2624.0,4416.0,-2112.0)
set S5=Rect(3584.0,-2560.0,4192.0,-2336.0)
set T5=Rect(4096.0,-2528.0,4192.0,-2144.0)
set R5=Rect(3968.0,-2624.0,4096.0,-1920.0)
set P5=Rect(3936.0,-2528.0,4192.0,-2240.0)
set Q5=Rect(3968.0,-2624.0,4032.0,-2048.0)
set U5=Rect(3872.0,-2592.0,4480.0,-2240.0)
set I6=Rect(3936.0,-2528.0,4448.0,-1984.0)
set O6=Rect(-8160.0,-8192.0,-3712.0,-4352.0)
set A6=Rect(-8192.0,-4960.0,-4640.0,-3552.0)
set B6=Rect(-4000.0,-7744.0,-3072.0,-5152.0)
set C6=Rect(2304.0,4064.0,8032.0,7776.0)
set D6=Rect(4640.0,1952.0,8000.0,4384.0)
set E6=Rect(3136.0,2816.0,5216.0,4960.0)
set F6=Rect(-7968.0,5216.0,-7456.0,5920.0)
set G6=Rect(-8064.0,2880.0,-7648.0,4512.0)
set H6=Rect(-3296.0,3712.0,-2688.0,3968.0)
set Z6=Rect(-2400.0,2016.0,-1952.0,2624.0)
set V6=Rect(-2016.0,1600.0,-1216.0,2048.0)
set W6=Rect(-2144.0,2528.0,-1888.0,2944.0)
set X6=Rect(-1280.0,1728.0,-736.0,2176.0)
set Y6=Rect(-1696.0,-768.0,-1376.0,-448.0)
set J6=Rect(-576.0,0.0,-352.0,256.0)
set K6=Rect(3872.0,-1984.0,4448.0,-1504.0)
set L6=Rect(3456.0,-2048.0,4064.0,-1664.0)
set M6=Rect(4992.0,-3072.0,5664.0,-2784.0)
set N6=Rect(4896.0,-3744.0,5280.0,-3456.0)
set S6=Rect(7488.0,-3520.0,8192.0,-2336.0)
set T6=Rect(6656.0,-3328.0,7808.0,-2656.0)
set R6=Rect(7104.0,-8192.0,8192.0,-5920.0)
set P6=Rect(5952.0,-8192.0,7200.0,-7712.0)
set Q6=Rect(7168.0,-6240.0,8128.0,-5184.0)
set U6=Rect(5824.0,-8032.0,6400.0,-7776.0)
set I7=Rect(6976.0,-6560.0,7488.0,-5920.0)
set O7=Rect(-5856.0,2944.0,-5600.0,3200.0)
set A7=Rect(6784.0,-7776.0,7264.0,-7456.0)
set B7=Rect(-8128.0,-8192.0,5536.0,-7744.0)
set C7=Rect(2368.0,-7904.0,2688.0,-7584.0)
set D7=Rect(-1664.0,-7808.0,-1344.0,-7552.0)
set E7=Rect(-2944.0,-8192.0,-1664.0,-7680.0)
set F7=Rect(-4000.0,-8192.0,-3168.0,-7616.0)
set G7=Rect(-5760.0,-8000.0,-5184.0,-7584.0)
set H7=Rect(-3296.0,3744.0,-3104.0,3872.0)
set Z7=Rect(-8192.0,-8192.0,-6720.0,-7744.0)
set V7=Rect(-8192.0,-6432.0,-7456.0,-4928.0)
set W7=Rect(-8192.0,-8128.0,-7904.0,8160.0)
set X7=Rect(-7744.0,3936.0,-7328.0,5600.0)
set Y7=Rect(-7680.0,1984.0,-6560.0,2816.0)
set J7=Rect(-7776.0,1696.0,-6944.0,2176.0)
set K7=Rect(-8032.0,-3040.0,-7680.0,-2720.0)
set L7=Rect(-7904.0,-2656.0,-7552.0,-2336.0)
set M7=Rect(-3936.0,-2720.0,-3584.0,-2400.0)
set N7=Rect(-3168.0,-1952.0,-2912.0,-1696.0)
set S7=Rect(-4128.0,-1632.0,-3776.0,-1152.0)
set T7=Rect(-4992.0,-1792.0,-3968.0,-1440.0)
set R7=Rect(-5536.0,-1664.0,-4832.0,-1280.0)
set P7=Rect(-2304.0,3872.0,-2048.0,4096.0)
set Q7=Rect(-5664.0,-1440.0,-5344.0,0.0)
set U7=Rect(-5824.0,-1504.0,-5472.0,-544.0)
set I8=Rect(-5216.0,-1216.0,-4480.0,-384.0)
set O8=Rect(-5632.0,448.0,-5152.0,1856.0)
set A8=Rect(-5856.0,1440.0,-5248.0,2592.0)
set B8=Rect(-5408.0,1888.0,-4928.0,2368.0)
set C8=Rect(-5056.0,1664.0,-4064.0,2144.0)
set D8=Rect(-4320.0,1344.0,-3808.0,1952.0)
set E8=Rect(-4224.0,1440.0,-3200.0,2016.0)
set F8=Rect(-2112.0,3424.0,-1856.0,3744.0)
set G8=Rect(-2400.0,640.0,-2208.0,896.0)
set H8=Rect(-3392.0,640.0,-3200.0,896.0)
set Z8=Rect(-3744.0,-1024.0,-3232.0,384.0)
set V8=Rect(-2016.0,-5504.0,-1664.0,-4768.0)
set W8=Rect(-1760.0,-5248.0,-1312.0,-4800.0)
set X8=Rect(896.0,-3328.0,1088.0,-3072.0)
set Y8=Rect(2368.0,-3808.0,2688.0,-3360.0)
set J8=Rect(1952.0,-3744.0,2208.0,-3456.0)
set K8=Rect(-768.0,-1344.0,-480.0,-1024.0)
set L8=Rect(1152.0,-6560.0,1376.0,-6272.0)
set M8=Rect(1216.0,-6368.0,1504.0,-6176.0)
set N8=Rect(-1376.0,-6784.0,-1184.0,-6528.0)
set S8=Rect(7616.0,-6528.0,8192.0,8160.0)
set T8=Rect(7072.0,-2304.0,7264.0,-2048.0)
set R8=Rect(-7872.0,7872.0,8192.0,8192.0)
set P8=Rect(1792.0,7776.0,2112.0,8192.0)
set Q8=Rect(-2656.0,0.0,-2496.0,256.0)
set U8=Rect(-768.0,7232.0,-416.0,7424.0)
set I9=Rect(-7968.0,5472.0,-7648.0,5792.0)
set O9=Rect(1120.0,7904.0,1312.0,8160.0)
set A9=Rect(736.0,4480.0,1120.0,4800.0)
set B9=Rect(2208.0,4928.0,2400.0,5152.0)
set C9=Rect(576.0,4384.0,1120.0,4928.0)
set D9=Rect(2560.0,4160.0,2784.0,4576.0)
set E9=Rect(-5984.0,-3776.0,-5504.0,-3232.0)
set F9=Rect(576.0,4256.0,1024.0,4672.0)
set G9=Rect(544.0,4352.0,992.0,4768.0)
set H9=Rect(704.0,2496.0,1376.0,2784.0)
set Z9=Rect(-2240.0,1792.0,-1856.0,2240.0)
set V9=Rect(-1472.0,1472.0,-992.0,1728.0)
set W9=Rect(2368.0,-3200.0,2656.0,-2880.0)
set X9=Rect(2624.0,-3584.0,2816.0,-2848.0)
set Y9=Rect(2464.0,-3392.0,2656.0,-3136.0)
set J9=Rect(2784.0,-3232.0,2976.0,-2976.0)
set K9=Rect(2784.0,-3424.0,2976.0,-3168.0)
set L9=Rect(7328.0,7808.0,8192.0,8192.0)
set M9=Rect(1984.0,7584.0,3296.0,8192.0)
set N9=Rect(2240.0,7392.0,2560.0,8192.0)
set S9=Rect(-1888.0,416.0,-1696.0,576.0)
set T9=Rect(7776.0,2720.0,8192.0,3648.0)
set R9=Rect(5280.0,640.0,5664.0,1184.0)
set P9=Rect(-3104.0,2720.0,-2624.0,3232.0)
set Q9=Rect(7584.0,-7072.0,7776.0,-6880.0)
set Y8=Rect(2816.0,-3488.0,3008.0,-3232.0)
set J8=Rect(1568.0,-2976.0,1760.0,-2656.0)
set W9=Rect(2368.0,-3264.0,2656.0,-2944.0)
set X9=Rect(2624.0,-3648.0,2816.0,-2912.0)
set Y9=Rect(2464.0,-3456.0,2656.0,-3200.0)
set B7=Rect(-8192.0,-8128.0,5472.0,-7648.0)
set U9=Rect(-8192.0,-3712.0,-7008.0,-2144.0)
set IA=Rect(-3360.0,-8192.0,-1472.0,-7648.0)
set OA=Rect(-2528.0,-7840.0,-1696.0,-7488.0)
set BA=Rect(-2336.0,-7584.0,-1600.0,-7456.0)
set CA=Rect(-8192.0,2016.0,-6816.0,2880.0)
set DA=Rect(6880.0,-3328.0,8000.0,-2624.0)
set EA=Rect(-7520.0,-7040.0,-7360.0,-6912.0)
set FA=Rect(-7520.0,-6912.0,-7360.0,-6784.0)
set GA=Rect(-7520.0,-6656.0,-7360.0,-6528.0)
set HA=Rect(-7520.0,-6528.0,-7360.0,-6400.0)
set ZA=Rect(-7520.0,-6784.0,-7360.0,-6656.0)
set VA=Rect(6944.0,6208.0,7104.0,6336.0)
set WA=Rect(6944.0,6080.0,7104.0,6208.0)
set XA=Rect(6944.0,5952.0,7104.0,6080.0)
set YA=Rect(6944.0,5824.0,7104.0,5952.0)
set JA=Rect(6944.0,5696.0,7104.0,5824.0)
set KA=Rect(3904.0,2976.0,4160.0,3264.0)
set LA=Rect(2336.0,5952.0,2592.0,6240.0)
set MA=Rect(6304.0,1984.0,6560.0,2272.0)
set NA=Rect(-3328.0,-6912.0,-3072.0,-6624.0)
set SA=Rect(-4384.0,-4800.0,-4128.0,-4512.0)
set TA=Rect(-6432.0,-3840.0,-6176.0,-3552.0)
set RA=Rect(-7584.0,6176.0,-6304.0,7552.0)
set PA=Rect(3616.0,-2656.0,3968.0,-2080.0)
set QA=Rect(4000.0,-2592.0,4416.0,-2016.0)
set UA=Rect(-1088.0,5376.0,768.0,6624.0)
set IB=Rect(1600.0,1024.0,3456.0,2432.0)
set OB=Rect(5504.0,-1056.0,7200.0,512.0)
set AB=Rect(-6944.0,-1792.0,-5248.0,-224.0)
set BB=Rect(-1536.0,-7424.0,640.0,-6048.0)
set CB=Rect(-3328.0,-7200.0,-2464.0,-6368.0)
set DB=Rect(-4288.0,-4544.0,-3424.0,-3712.0)
set EB=Rect(-6784.0,-3616.0,-5920.0,-2784.0)
set FB=Rect(1472.0,5440.0,2336.0,6272.0)
set GB=Rect(2656.0,2336.0,3520.0,3168.0)
set HB=Rect(5984.0,1152.0,6848.0,1984.0)
set ZB=Rect(-4128.0,-3712.0,-2496.0,-2272.0)
set VB=Rect(-8192.0,-8128.0,-5120.0,-5536.0)
set WB=Rect(4608.0,4352.0,8192.0,8192.0)
set XB=Rect(-8096.0,-7104.0,-8064.0,-7072.0)
set YB=Rect(-8096.0,-7104.0,-8064.0,-7072.0)
set JB=Rect(-8096.0,-7104.0,-8064.0,-7072.0)
set E9=Rect(6208.0,7488.0,8192.0,8192.0)
set KB=Rect(-2784.0,1280.0,-1952.0,2048.0)
set LB=Rect(2528.0,-3168.0,3360.0,-2464.0)
set MB=Rect(-3936.0,4480.0,-3136.0,5120.0)
set SB=Rect(3680.0,-6016.0,4416.0,-5376.0)
set TB=Rect(3424.0,-352.0,4224.0,320.0)
set RB=Rect(-4608.0,-448.0,-3872.0,192.0)
set PB=Rect(3456.0,-2624.0,4384.0,-2112.0)
set QB=Rect(608.0,4320.0,1120.0,4768.0)
set IC=Rect(-3840.0,1440.0,-3328.0,1888.0)
set OC=Rect(2400.0,-3360.0,2912.0,-2912.0)
set AC=Rect(-1888.0,-5280.0,-1376.0,-4832.0)
set p=Player(15)
set WY=CreateUnit(p,1966092378,7360.0,-4416.0,270.000)
call SetUnitColor(WY,ConvertPlayerColor(12))
set VY=CreateUnit(p,1966092378,-7296.0,4224.0,270.000)
call SetUnitColor(VY,ConvertPlayerColor(12))
set NZ=CreateUnit(p,1848657231,-7168.0,6464.0,270.000)
call SetUnitColor(NZ,ConvertPlayerColor(0))
set TZ=CreateUnit(p,1848652102,-7424.0,-6976.0,270.000)
set LZ=CreateUnit(p,1848657231,-7360.0,6464.0,270.000)
call SetUnitColor(LZ,ConvertPlayerColor(0))
set RZ=CreateUnit(p,1848652102,-7424.0,-6592.0,270.000)
set PZ=CreateUnit(p,1848652102,-7424.0,-6464.0,270.000)
set VX=CreateUnit(p,1848657231,-7360.0,6784.0,270.000)
call SetUnitColor(VX,ConvertPlayerColor(0))
set HX=CreateUnit(p,1848657231,-6848.0,6784.0,270.000)
call SetUnitColor(HX,ConvertPlayerColor(0))
set QZ=CreateUnit(p,1848652102,-7424.0,-6720.0,270.000)
set UZ=CreateUnit(p,1848652102,-7424.0,-6848.0,270.000)
set IV=CreateUnit(p,1852206952,-7296.0,-7200.0,270.000)
set u=CreateUnit(p,1967339316,3200.0,-64.0,270.000)
set IZ=CreateUnit(p,1848657231,-6848.0,6464.0,270.000)
call SetUnitColor(IZ,ConvertPlayerColor(0))
set BX=CreateUnit(p,1848652102,7040.0,6272.0,270.000)
set CX=CreateUnit(p,1848652102,7040.0,5888.0,270.000)
set DX=CreateUnit(p,1848652102,7040.0,5760.0,270.000)
set EX=CreateUnit(p,1848652102,7040.0,6016.0,270.000)
set AX=CreateUnit(p,1848652102,7040.0,6144.0,270.000)
set GX=CreateUnit(p,1852073580,6784.0,6368.0,270.000)
set EZ=CreateUnit(p,1848657231,-7360.0,7104.0,270.000)
call SetUnitColor(EZ,ConvertPlayerColor(0))
set ZX=CreateUnit(p,1848657231,-7168.0,7104.0,270.000)
call SetUnitColor(ZX,ConvertPlayerColor(0))
set u=CreateUnit(p,1967339316,-4544.0,1152.0,270.000)
set MZ=CreateUnit(p,1848657231,-7168.0,6784.0,270.000)
call SetUnitColor(MZ,ConvertPlayerColor(0))
set HY=CreateUnit(p,1848657231,-6848.0,7104.0,270.000)
call SetUnitColor(HY,ConvertPlayerColor(0))
set KZ=CreateUnit(p,1966092592,-7296.0,4416.0,270.000)
call SetUnitColor(KZ,ConvertPlayerColor(12))
set XY=CreateUnit(p,1966092592,7360.0,-4224.0,270.000)
call SetUnitColor(XY,ConvertPlayerColor(12))
set JY=CreateUnit(p,1848657231,-6656.0,7104.0,270.000)
call SetUnitColor(JY,ConvertPlayerColor(0))
set KY=CreateUnit(p,1848657231,-6656.0,6464.0,270.000)
call SetUnitColor(KY,ConvertPlayerColor(0))
set YY=CreateUnit(p,1848657231,-6656.0,6784.0,270.000)
call SetUnitColor(YY,ConvertPlayerColor(0))
set p=Player(0)
set OV=CreateUnit(p,1849897784,-7264.0,-6944.0,270.000)
call SetUnitColor(OV,ConvertPlayerColor(12))
set AV=CreateUnit(p,1848652107,-7264.0,-6752.0,270.000)
call SetUnitColor(AV,ConvertPlayerColor(12))
set DV=CreateUnit(p,1848651833,-6624.0,-6560.0,270.000)
call SetUnitColor(DV,ConvertPlayerColor(12))
set VZ=CreateUnit(p,1848651864,-7136.0,-6496.0,270.000)
call SetUnitColor(VZ,ConvertPlayerColor(1))
set HZ=CreateUnit(p,1848651862,-6880.0,-6496.0,270.000)
call SetUnitColor(HZ,ConvertPlayerColor(12))
set FZ=CreateUnit(p,1848651863,-7264.0,-6560.0,270.000)
call SetUnitColor(FZ,ConvertPlayerColor(12))
set AZ=CreateUnit(p,1848651826,-6752.0,-6496.0,270.000)
call SetUnitColor(AZ,ConvertPlayerColor(12))
set HW=CreateUnit(p,1697657397,-6624.0,-7200.0,270.000)
set CV=CreateUnit(p,1749236021,-6944.0,-7200.0,270.000)
call SetUnitColor(CV,ConvertPlayerColor(0))
set UH=CreateUnit(p,1702129516,-5632.0,-6144.0,270.000)
set VV=CreateUnit(p,1697656915,-4448.0,-4960.0,270.000)
set XV=CreateUnit(p,1697656915,-5280.0,-6112.0,270.000)
set VW=CreateUnit(p,1701080930,-6400.0,-5696.0,270.000)
set WV=CreateUnit(p,1697656915,-6368.0,-4256.0,270.000)
set YV=CreateUnit(p,1697656915,-5600.0,-5728.0,270.000)
set JV=CreateUnit(p,1700884333,-6080.0,-4480.0,270.000)
set KV=CreateUnit(p,1700884325,-6656.0,-4480.0,270.000)
set MV=CreateUnit(p,1700884333,-4416.0,-5312.0,270.000)
set TV=CreateUnit(p,1700884325,-4864.0,-4992.0,270.000)
set NV=CreateUnit(p,1697656915,-3744.0,-6816.0,270.000)
set LV=CreateUnit(p,1700884333,-4032.0,-7040.0,270.000)
set SV=CreateUnit(p,1700884325,-4032.0,-6528.0,270.000)
set UV=CreateUnit(p,1701670775,-5792.0,-5408.0,270.000)
set QV=CreateUnit(p,1701670775,-6624.0,-5088.0,270.000)
set PV=CreateUnit(p,1701670775,-5088.0,-5536.0,270.000)
set IW=CreateUnit(p,1701670775,-5344.0,-3936.0,270.000)
set OW=CreateUnit(p,1701670775,-5088.0,-4576.0,270.000)
set AW=CreateUnit(p,1701670775,-3936.0,-5344.0,270.000)
set BW=CreateUnit(p,1701670775,-4512.0,-7072.0,270.000)
set CW=CreateUnit(p,1701670775,-4896.0,-6240.0,270.000)
set DW=CreateUnit(p,1701670775,-3808.0,-5856.0,270.000)
set EW=CreateUnit(p,1701670775,-5472.0,-4704.0,270.000)
set FW=CreateUnit(p,1701670775,-4512.0,-5856.0,270.000)
set GW=CreateUnit(p,1700884343,-4544.0,-6528.0,270.000)
set ZV=CreateUnit(p,1697656915,-6112.0,-1248.0,270.000)
set BV=CreateUnit(p,1700884343,-6080.0,-5120.0,270.000)
set HV=CreateUnit(p,1697656915,-6112.0,1568.0,270.000)
set GV=CreateUnit(p,1697656915,-1504.0,-1824.0,270.000)
set FV=CreateUnit(p,1697656915,-544.0,-6688.0,270.000)
set EV=CreateUnit(p,1697656915,4960.0,-6752.0,270.000)
set WZ=CreateUnit(p,1697656915,-3488.0,-3296.0,270.000)
set ZW=CreateUnit(p,1701080930,-5248.0,-6848.0,270.000)
set ZY=CreateUnit(p,1848657989,-7008.0,-6496.0,270.000)
call SetUnitColor(ZY,ConvertPlayerColor(12))
set p=Player(6)
set MW=CreateUnit(p,1848651826,5984.0,6112.0,270.000)
call SetUnitColor(MW,ConvertPlayerColor(12))
set SW=CreateUnit(p,1848651863,6048.0,6624.0,270.000)
call SetUnitColor(SW,ConvertPlayerColor(12))
set TW=CreateUnit(p,1848651862,5984.0,6240.0,270.000)
call SetUnitColor(TW,ConvertPlayerColor(12))
set RW=CreateUnit(p,1848651864,5984.0,6496.0,270.000)
call SetUnitColor(RW,ConvertPlayerColor(1))
set OX=CreateUnit(p,1849897784,6560.0,6624.0,270.000)
call SetUnitColor(OX,ConvertPlayerColor(12))
set IX=CreateUnit(p,1848652107,6368.0,6624.0,270.000)
call SetUnitColor(IX,ConvertPlayerColor(12))
set WX=CreateUnit(p,1970496880,4352.0,3584.0,270.000)
set QW=CreateUnit(p,1848651833,6048.0,5984.0,270.000)
call SetUnitColor(QW,ConvertPlayerColor(12))
set UW=CreateUnit(p,1849897781,6816.0,5984.0,270.000)
call SetUnitColor(UW,ConvertPlayerColor(12))
set PW=CreateUnit(p,1966092369,6816.0,5664.0,270.000)
set YZ=CreateUnit(p,1966092365,6240.0,-2080.0,270.000)
set XZ=CreateUnit(p,1966092356,6304.0,-96.0,270.000)
set RX=CreateUnit(p,1970956647,4384.0,4256.0,270.000)
set KX=CreateUnit(p,1970172012,5184.0,4864.0,270.000)
set LX=CreateUnit(p,1970564964,3904.0,3904.0,270.000)
set MX=CreateUnit(p,1966092365,1056.0,-96.0,270.000)
set NX=CreateUnit(p,1966092356,2528.0,1824.0,270.000)
set SX=CreateUnit(p,1966092366,3936.0,3488.0,270.000)
set TX=CreateUnit(p,1966092372,4832.0,4832.0,270.000)
set XX=CreateUnit(p,1966092372,5152.0,4512.0,270.000)
set PX=CreateUnit(p,1970956647,3168.0,4064.0,270.000)
set QX=CreateUnit(p,1970956647,5728.0,4000.0,270.000)
set LW=CreateUnit(p,1966092366,2976.0,5792.0,270.000)
set KW=CreateUnit(p,1970496880,3392.0,5504.0,270.000)
set JW=CreateUnit(p,1970564964,3392.0,6080.0,270.000)
set YW=CreateUnit(p,1970956647,4128.0,6240.0,270.000)
set XW=CreateUnit(p,1970495856,3968.0,5888.0,270.000)
set UX=CreateUnit(p,1969385326,4992.0,5952.0,270.000)
set IY=CreateUnit(p,1970956647,2656.0,4704.0,270.000)
set OY=CreateUnit(p,1970956647,5536.0,2464.0,270.000)
set AY=CreateUnit(p,1970956647,4064.0,5280.0,270.000)
set BY=CreateUnit(p,1970956647,3488.0,4832.0,270.000)
set CY=CreateUnit(p,1970495856,6400.0,3584.0,270.000)
set DY=CreateUnit(p,1970564964,6080.0,2944.0,270.000)
set EY=CreateUnit(p,1970496880,6656.0,2880.0,270.000)
set FY=CreateUnit(p,1966092366,6368.0,2528.0,270.000)
set GY=CreateUnit(p,1970956647,5024.0,3744.0,270.000)
set WW=CreateUnit(p,1970956647,6880.0,3936.0,270.000)
set JX=CreateUnit(p,1969385326,6464.0,4608.0,270.000)
set YX=CreateUnit(p,1970956647,4640.0,2848.0,270.000)
set GZ=CreateUnit(p,1966092365,-4704.0,5920.0,270.000)
set SZ=CreateUnit(p,1966092356,32.0,5920.0,270.000)
set JZ=CreateUnit(p,1848657989,5984.0,6368.0,270.000)
call SetUnitColor(JZ,ConvertPlayerColor(12))
set p=Player(15)
set BZ=CreateUnit(p,1697656900,-6005.1,5458.6,212.150)
set ZZ=CreateUnit(p,1697656898,-561.7,-651.7,325.600)
set DZ=CreateUnit(p,1697656897,5901.5,-6198.9,64.000)
set CZ=CreateUnit(p,1697656888,-5467.9,-5891.1,307.304)
set OZ=CreateUnit(p,1697656881,4901.8,4536.6,212.110)
call ConfigureNeutralVictim()
set M2I=Filter(function MJI)
set filterIssueHauntOrderAtLocBJ=Filter(function IssueHauntOrderAtLocBJFilter)
set filterEnumDestructablesInCircleBJ=Filter(function MBI)
set filterGetUnitsInRectOfPlayer=Filter(function GetUnitsInRectOfPlayerFilter)
set filterGetUnitsOfTypeIdAll=Filter(function GetUnitsOfTypeIdAllFilter)
set filterGetUnitsOfPlayerAndTypeId=Filter(function GetUnitsOfPlayerAndTypeIdFilter)
set filterMeleeTrainedUnitIsHeroBJ=Filter(function MeleeTrainedUnitIsHeroBJFilter)
set filterLivingPlayerUnitsOfTypeId=Filter(function LivingPlayerUnitsOfTypeIdFilter)
set MLI=0
loop
exitwhen MLI==16
set bj_FORCE_PLAYER[MLI]=CreateForce()
call ForceAddPlayer(bj_FORCE_PLAYER[MLI],Player(MLI))
set MLI=MLI+1
endloop
set bj_FORCE_ALL_PLAYERS=CreateForce()
call ForceEnumPlayers(bj_FORCE_ALL_PLAYERS,null)
set bj_cineModePriorSpeed=GetGameSpeed()
set bj_cineModePriorFogSetting=IsFogEnabled()
set bj_cineModePriorMaskSetting=IsFogMaskEnabled()
set MLI=0
loop
exitwhen MLI>=bj_MAX_QUEUED_TRIGGERS
set bj_queuedExecTriggers[MLI]=null
set bj_queuedExecUseConds[MLI]=false
set MLI=MLI+1
endloop
set bj_isSinglePlayer=false
set MMI=0
set MLI=0
loop
exitwhen MLI>=12
if(GetPlayerController(Player(MLI))==MAP_CONTROL_USER and GetPlayerSlotState(Player(MLI))==PLAYER_SLOT_STATE_PLAYING)then
set MMI=MMI+1
endif
set MLI=MLI+1
endloop
set bj_isSinglePlayer=(MMI==1)
set bj_rescueSound=CreateSoundFromLabel("Rescue",false,false,false,10000,10000)
set bj_questDiscoveredSound=CreateSoundFromLabel("QuestNew",false,false,false,10000,10000)
set bj_questUpdatedSound=CreateSoundFromLabel("QuestUpdate",false,false,false,10000,10000)
set bj_questCompletedSound=CreateSoundFromLabel("QuestCompleted",false,false,false,10000,10000)
set bj_questFailedSound=CreateSoundFromLabel("QuestFailed",false,false,false,10000,10000)
set bj_questHintSound=CreateSoundFromLabel("Hint",false,false,false,10000,10000)
set bj_questSecretSound=CreateSoundFromLabel("SecretFound",false,false,false,10000,10000)
set bj_questItemAcquiredSound=CreateSoundFromLabel("ItemReward",false,false,false,10000,10000)
set bj_questWarningSound=CreateSoundFromLabel("Warning",false,false,false,10000,10000)
set bj_victoryDialogSound=CreateSoundFromLabel("QuestCompleted",false,false,false,10000,10000)
set bj_defeatDialogSound=CreateSoundFromLabel("QuestFailed",false,false,false,10000,10000)
call DelayedSuspendDecayCreate()
set v=VersionGet()
if(v==VERSION_REIGN_OF_CHAOS)then
set bj_MELEE_MAX_TWINKED_HEROES=bj_MELEE_MAX_TWINKED_HEROES_V0
else
set bj_MELEE_MAX_TWINKED_HEROES=bj_MELEE_MAX_TWINKED_HEROES_V1
endif
call InitQueuedTriggers()
call InitRescuableBehaviorBJ()
call InitDNCSounds()
call InitMapRects()
call InitSummonableCaps()
set MGI=0
loop
set bj_stockAllowedPermanent[MGI]=false
set bj_stockAllowedCharged[MGI]=false
set bj_stockAllowedArtifact[MGI]=false
set MGI=MGI+1
exitwhen MGI>10
endloop
call SetAllItemTypeSlots(11)
call SetAllUnitTypeSlots(11)
set bj_stockUpdateTimer=CreateTimer()
call TimerStart(bj_stockUpdateTimer,bj_STOCK_RESTOCK_INITIAL_DELAY,false,function MXI)
set bj_stockItemPurchased=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(bj_stockItemPurchased,Player(15),EVENT_PLAYER_UNIT_SELL_ITEM,null)
call TriggerAddAction(bj_stockItemPurchased,function RemovePurchasedItem)
call DetectGameStarted()
set i=0
set i=0
loop
exitwhen(i>16)
set T[i]=0
set P[i]=0
set Q[i]=0
set V0[i]=0
set i=i+1
endloop
set i=0
loop
exitwhen(i>100)
set R[i]=false
set H1[i]=0
set Z1[i]=0
set V1[i]=0
set W1[i]=0
set Y1[i]=0
set J1[i]=0
set VO[i]=0
set i=i+1
endloop
set i=0
loop
exitwhen(i>4)
set I0[i]=0
set i=i+1
endloop
set i=0
loop
exitwhen(i>2)
set A0[i]=false
set W0[i]=0
set T1[i]=0
set i=i+1
endloop
set i=0
loop
exitwhen(i>12)
set C0[i]=""
set E0[i]=CreateTimer()
set i=i+1
endloop
set i=0
loop
exitwhen(i>13)
set D0[i]=false
set F0[i]=CreateTimer()
set S0[i]=false
set IO[i]=0
set F3[i]=false
set i=i+1
endloop
set i=0
loop
exitwhen(i>1)
set G0[i]=0
set M2[i]=""
set S2[i]=false
set T2[i]=0
set E3[i]=false
set i=i+1
endloop
set T0=150
set EI=true
set FI=true
set GI=true
set HI=true
set ZI=true
set VI=true
set WI=true
set XI=true
set YI=true
set JI=true
set KI=true
set LI=true
set NI=3
set SI=1
set X1=80
set i=0
loop
exitwhen(i>17)
set K1[i]=null
set i=i+1
endloop
set i=0
loop
exitwhen(i>40)
set R1[i]=0
set P1[i]=0
set Q1[i]=0
set i=i+1
endloop
set OO=CreateForce()
set AO=CreateForce()
set B2=CreateGroup()
set X2=CreateTimer()
set P2=CreateForce()
set U2=0.00
set O3=true
set A3=true
set i=0
loop
exitwhen(i>14)
set C3[i]=false
set i=i+1
endloop
set i=0
loop
exitwhen(i>15)
set K3[i]="Here"
set i=i+1
endloop
call NOI()
call NQI()
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,15,true)
call TriggerAddCondition(t,Condition(function S1I))
set t=null
set HJ[0]=false
set HJ[1]=false
set HJ[2]=false
set HJ[3]=false
set HJ[4]=false
set HJ[5]=false
set HJ[6]=false
set HJ[7]=false
set HJ[8]=false
set HJ[9]=false
set HJ[10]=false
set HJ[11]=false
set HJ[12]=false
set HJ[13]=false
set HJ[14]=false
set HJ[15]=false
set HJ[16]=false
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function B11))
set t=null
set YN=CreateRegion()
call RegionAddRect(YN,G5)
set KN=CreateRegion()
call RegionAddRect(KN,H5)
set XN=CreateRegion()
call RegionAddRect(XN,O6)
call RegionAddRect(XN,A6)
call RegionAddRect(XN,B6)
set JN=CreateRegion()
call RegionAddRect(JN,C6)
call RegionAddRect(JN,D6)
call RegionAddRect(JN,E6)
set LN=CreateRegion()
call RegionAddRect(LN,F6)
call RegionAddRect(LN,G6)
call RegionAddRect(LN,H6)
call RegionAddRect(LN,Z6)
call RegionAddRect(LN,V6)
call RegionAddRect(LN,W6)
call RegionAddRect(LN,X6)
call RegionAddRect(LN,Y6)
call RegionAddRect(LN,J6)
call RegionAddRect(LN,K6)
call RegionAddRect(LN,L6)
call RegionAddRect(LN,M6)
call RegionAddRect(LN,N6)
call RegionAddRect(LN,S6)
call RegionAddRect(LN,T6)
call RegionAddRect(LN,R6)
call RegionAddRect(LN,P6)
call RegionAddRect(LN,Q6)
call RegionAddRect(LN,U6)
call RegionAddRect(LN,I7)
call RegionAddRect(LN,O7)
call RegionAddRect(LN,A7)
call RegionAddRect(LN,B7)
call RegionAddRect(LN,C7)
call RegionAddRect(LN,D7)
call RegionAddRect(LN,E7)
call RegionAddRect(LN,F7)
call RegionAddRect(LN,G7)
call RegionAddRect(LN,H7)
call RegionAddRect(LN,Z7)
call RegionAddRect(LN,V7)
call RegionAddRect(LN,W7)
call RegionAddRect(LN,X7)
call RegionAddRect(LN,Y7)
call RegionAddRect(LN,J7)
call RegionAddRect(LN,K7)
call RegionAddRect(LN,L7)
call RegionAddRect(LN,M7)
call RegionAddRect(LN,N7)
call RegionAddRect(LN,S7)
call RegionAddRect(LN,T7)
call RegionAddRect(LN,R7)
call RegionAddRect(LN,P7)
call RegionAddRect(LN,Q7)
call RegionAddRect(LN,U7)
call RegionAddRect(LN,I8)
call RegionAddRect(LN,O8)
call RegionAddRect(LN,A8)
call RegionAddRect(LN,B8)
call RegionAddRect(LN,C8)
call RegionAddRect(LN,D8)
call RegionAddRect(LN,E8)
call RegionAddRect(LN,F8)
call RegionAddRect(LN,G8)
call RegionAddRect(LN,H8)
call RegionAddRect(LN,Z8)
call RegionAddRect(LN,V8)
call RegionAddRect(LN,W8)
call RegionAddRect(LN,X8)
call RegionAddRect(LN,Y8)
call RegionAddRect(LN,J8)
call RegionAddRect(LN,K8)
call RegionAddRect(LN,L8)
call RegionAddRect(LN,M8)
call RegionAddRect(LN,N8)
call RegionAddRect(LN,S8)
call RegionAddRect(LN,T8)
call RegionAddRect(LN,R8)
call RegionAddRect(LN,P8)
call RegionAddRect(LN,Q8)
call RegionAddRect(LN,U8)
call RegionAddRect(LN,I9)
call RegionAddRect(LN,O9)
call RegionAddRect(LN,A9)
call RegionAddRect(LN,B9)
call RegionAddRect(LN,C9)
call RegionAddRect(LN,D9)
call RegionAddRect(LN,E9)
call RegionAddRect(LN,F9)
call RegionAddRect(LN,G9)
call RegionAddRect(LN,H9)
call RegionAddRect(LN,Z9)
call RegionAddRect(LN,V9)
call RegionAddRect(LN,W9)
call RegionAddRect(LN,X9)
call RegionAddRect(LN,Y9)
call RegionAddRect(LN,J9)
call RegionAddRect(LN,K9)
call RegionAddRect(LN,L9)
call RegionAddRect(LN,M9)
call RegionAddRect(LN,N9)
call RegionAddRect(LN,S9)
call RegionAddRect(LN,T9)
call RegionAddRect(LN,R9)
call RegionAddRect(LN,P9)
set MN=CreateRegion()
call RegionAddRect(MN,QB)
call RegionAddRect(MN,IC)
call RegionAddRect(MN,OC)
call RegionAddRect(MN,AC)
call EI1(1110455898)
call EI1(1112560453)
call EI1(1110455889)
call EI1(1112757326)
call EI1(1112044643)
call EI1(1110458957)
call EI1(1110458962)
call EI1(1110459185)
call EI1(1111844210)
call EI1(1110454869)
call EI1(1110456133)
call EI1(1110459206)
call EI1(1110455885)
call EI1(1110456142)
call EI1(1110456403)
call EI1(1110454353)
call EI1(1110456114)
call EI1(1112891758)
call EI1(1110456629)
call EI1(1110456371)
call EI1(1110454870)
call EI1(1110454617)
call EI1(1112432994)
call EI1(1110456402)
call EI1(1110455862)
call EI1(1110455113)
call EI1(1110455859)
call EI1(1113943649)
call EI1(1113943655)
call EI1(1110455107)
call EI1(1110454348)
call EI1(1112040289)
call EI1(1113813860)
call EI1(1110456121)
call EI1(1110458961)
call EI1(1110458937)
call EI1(1114665575)
call EI1(1110456397)
call EI1(1110454855)
call EI1(1110454616)
call EI1(1110454596)
call EI1(1110456626)
call EI1(1110458705)
call EI1(1111847784)
call EI1(1110454583)
call EI1(1110458693)
call EI1(1110458692)
call EI1(1110456399)
call EI1(1114010223)
call EI1(1110454839)
call EI1(1110454840)
call EI1(1110455624)
call EI1(1110458963)
call EI1(1113813609)
call EI1(1110458950)
call EI1(1110458949)
call EI1(1110456624)
call EI1(1110454328)
call EI1(1110455362)
call EI1(1110454854)
call EI1(1112896368)
call EI1(1114993524)
call EI1(1110459203)
call EI1(1111716457)
call EI1(1110455114)
call EI1(1111847784)
call EI1(1110458705)
call EI1(1113943649)
call EI1(1113943655)
call EI1(1110456120)
call EI1(1113875828)
call EI1(1110454356)
call EI1(1114860655)
call EI1(1112433768)
call EI1(1110459192)
call EI1(1110456399)
call EI1(1110456150)
call EI1(1110456149)
call EI1(1110454616)
call EI1(1112437609)
call EI1(1110455089)
call EI1(1112437615)
call EI1(1110454352)
call EI1(1110454861)
call EI1(1093749828)
call EI1(1110459204)
call EI1(1093749313)
call EI1(1110455347)
call EI1(1112436833)
call EI1(1110454606)
call EI1(1112105826)
call EI1(1110455377)
call EI1(1110454339)
call EI1(1110456651)
call EI1(1110455091)
call EI1(1110456390)
call EI1(1110456389)
call EI1(1114664809)
call EI1(1110458701)
call EI1(1112437348)
call EI1(1110454344)
call EI1(1112500344)
call EI1(1110455110)
call EI1(1110454862)
call EI1(1110459703)
call EI1(1110455876)
call EI1(1110458958)
call EI1(1110456657)
call EI1(1110459465)
call EI1(1110458946)
call EI1(1110456650)
call EI1(1110458694)
call EI1(1110456386)
call EI1(1110456113)
call EI1(1110456398)
call EI1(1110454857)
call EI1(1110456401)
call EI1(1110459186)
call EI1(1110455891)
call EI1(1110454867)
call EI1(1110454871)
call EI1(1110455633)
call EI1(1110454852)
call EI1(1110458969)
call EI1(1110454864)
call EI1(1110455622)
call EI1(1110459728)
call EI1(1110459730)
call EI1(1110459732)
call EI1(1110459982)
call EI1(1110459993)
call EI1(1110459988)
call EI1(1110459994)
call EI1(1110460208)
call EI1(1110460244)
call EI1(1110459957)
call EI1(1093752627)
call EI1(1110459471)
call EI1(1110454869)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function E51))
set t=null
call FlushGameCache(InitGameCache("dr.x"))
set OS=InitGameCache("dr.x")
set BS[0]=1093744454
set BS[1]=1093744455
set BS[2]=1093744456
set BS[3]=1093744451
set BS[4]=1093744452
set BS[5]=1093744453
set BS[6]=1093744458
set BS[7]=1093744457
set BS[8]=1093744460
set CS[0]=1093818457
set CS[1]=1093818456
set CS[2]=1093818455
set CS[3]=1093818454
set CS[4]=1093818674
set CS[5]=1093818672
set CS[6]=1093818673
set CS[7]=1093818458
set CS[8]=1093818675
set DS[0]=1093751109
set DS[1]=1093751110
set DS[2]=1093751113
set DS[3]=1093751115
set DS[4]=1093751114
set DS[5]=1093751112
set DS[6]=1093751119
set DS[7]=1093751118
set DS[8]=1093751117
set DS[9]=1093751111
set DS[10]=1093751121
set ES[0]=1093748555
set ES[1]=1093748556
set ES[2]=1093748554
set ES[3]=1093748560
set ES[4]=1093748557
set ES[5]=1093748558
set ES[6]=1093748559
set ES[7]=1093748553
set ES[8]=1093748561
set FS[0]=1093747533
set FS[1]=1093747531
set FS[2]=1093747526
set FS[3]=1093747529
set FS[4]=1093747527
set FS[5]=1093747528
set HS=CreateTrigger()
call TriggerAddCondition(HS,Condition(function GL1))
set ZS[0]=1747990855
set WS[0]=50
set ZS[1]=1747990868
set WS[1]=100
set ZS[2]=1747990854
set WS[2]=150
set ZS[3]=1747990856
set WS[3]=200
set ZS[4]=1747990853
set WS[4]=250
set ZS[5]=1747990852
set WS[5]=300
set ZS[6]=1747990851
set WS[6]=350
set ZS[7]=1747990850
set WS[7]=400
set ZS[8]=1747990841
set WS[8]=450
set ZS[9]=1747990849
set WS[9]=500
set ZS[10]=1747990858
set WS[10]=550
set ZS[11]=1747990859
set WS[11]=600
set ZS[12]=1747990860
set WS[12]=650
set ZS[13]=1747990861
set WS[13]=700
set ZS[14]=1747990862
set WS[14]=750
set ZS[15]=1747990863
set WS[15]=800
set ZS[16]=1747990864
set WS[16]=850
set ZS[17]=1747990865
set WS[17]=900
set ZS[18]=1747990866
set WS[18]=950
set ZS[19]=1747990867
set WS[19]=1000
set ZS[20]=1747990857
set WS[20]=1050
set ZS[21]=1747990874
set WS[21]=1100
set ZS[22]=1747990872
set WS[22]=1150
set ZS[23]=1747992881
set WS[23]=1200
set ZS[24]=1747992882
set WS[24]=1250
set ZS[25]=1747992886
set WS[25]=1300
set ZS[26]=1747992883
set WS[26]=1350
set ZS[27]=1747992884
set WS[27]=1400
set ZS[28]=1747990873
set WS[28]=1450
set ZS[29]=1747990870
set WS[29]=1500
set ZS[30]=1747992880
set WS[30]=1550
set ZS[31]=1747990869
set WS[31]=1600
set ZS[32]=1747992902
set WS[32]=1650
set ZS[33]=1747992900
set WS[33]=1700
set ZS[34]=1747992901
set WS[34]=1750
set ZS[35]=1747992899
set WS[35]=1800
set ZS[36]=1747992898
set WS[36]=1850
set ZS[37]=1747992897
set WS[37]=1900
set ZS[38]=1747992889
set WS[38]=1950
set ZS[39]=1747992903
set WS[39]=2000
set ZS[40]=1747992887
set WS[40]=2050
set ZS[41]=1747992911
set WS[41]=2100
set ZS[42]=1747992921
set WS[42]=2150
set ZS[43]=1747992904
set WS[43]=2200
set ZS[44]=1747992905
set WS[44]=2250
set ZS[45]=1747992906
set WS[45]=2300
set ZS[46]=1747992912
set WS[46]=2350
set ZS[47]=1747992913
set WS[47]=2400
set ZS[48]=1747992907
set WS[48]=2450
set ZS[49]=1747992914
set WS[49]=2500
set ZS[50]=1747992908
set WS[50]=2550
set ZS[51]=1747992915
set WS[51]=2600
set ZS[52]=1747990871
set WS[52]=2650
set ZS[53]=1747992909
set WS[53]=2700
set ZS[54]=1747992888
set WS[54]=2750
set ZS[55]=1747992916
set WS[55]=2800
set ZS[56]=1747992917
set WS[56]=2850
set ZS[57]=1747992910
set WS[57]=2900
set ZS[58]=1747992918
set WS[58]=2950
set ZS[59]=1747992919
set WS[59]=3000
set VS[0]=ZS[GV1(1)]
set VS[1]=ZS[GV1(1)]
set VS[2]=ZS[GV1(1)]
set VS[3]=ZS[GV1(1)]
set VS[4]=ZS[GV1(1)]
set VS[5]=ZS[GV1(1)]
set VS[6]=ZS[GV1(1)]
set VS[7]=ZS[GV1(1)]
set VS[8]=ZS[GV1(1)]
set VS[9]=ZS[GV1(1)]
set VS[10]=ZS[GV1(1)]
set VS[11]=ZS[GV1(1)]
set VS[12]=ZS[GV1(1)]
set VS[13]=ZS[GV1(1)]
set VS[14]=ZS[GV1(1)]
set XS[0]=false
set XS[1]=false
set XS[2]=false
set XS[3]=false
set XS[4]=false
set XS[5]=false
set XS[6]=false
set XS[7]=false
set XS[8]=false
set XS[9]=false
set XS[10]=false
set XS[11]=false
set XS[12]=false
set XS[13]=false
set XS[14]=false
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function H01))
set t=null
set LY=InitHashtable()
set M=CreateTimer()
set MS=Rect(-7040,-7680,7040,7168)
call SetFloatGameState(GAME_STATE_TIME_OF_DAY,6.00)
call SuspendTimeOfDay(false)
call SetTimeOfDayScale(0.5)
call SetSkyModel("Environment\\Sky\\FoggedSky\\FoggedSky.mdl")
call SetCreepCampFilterState(true)
set D3="Normal Mode"
call TimerStart(M,99999.00,false,null)
set V3=AddWeatherEffect(bj_mapInitialPlayableArea,1380018290)
set Z3=AddWeatherEffect(bj_mapInitialPlayableArea,1397645939)
set KS=AddWeatherEffect(bj_mapInitialPlayableArea,1280470369)
set LS=AddWeatherEffect(bj_mapInitialPlayableArea,1464822903)
set BO[0]=Player(0)
set BO[1]=Player(1)
set BO[2]=Player(2)
set BO[3]=Player(3)
set BO[4]=Player(4)
set BO[5]=Player(5)
set CO[0]=Player(6)
set CO[1]=Player(7)
set CO[2]=Player(8)
set CO[3]=Player(9)
set CO[4]=Player(10)
set CO[5]=Player(11)
set DO=Player(12)
set EO=Player(15)
call SetUnitPathing(CZ,false)
call SetUnitPathing(DZ,false)
call SetUnitPathing(ZZ,false)
call SetUnitPathing(BZ,false)
call SetUnitPathing(OZ,false)
call BK1(OZ,true)
call BK1(BZ,true)
call BK1(ZZ,true)
call BK1(DZ,true)
call BK1(CZ,true)
set U0=GetUnitLoc(OZ)
set II=GetUnitLoc(CZ)
set BI=GetUnitLoc(ZZ)
set CI=GetUnitLoc(BZ)
set DI=GetUnitLoc(DZ)
set I2=1093678663
set O2[1]=II
set O2[2]=CI
set O2[3]=BI
set O2[4]=DI
set O2[5]=U0
set TI=GetRectCenter(M3)
set RI=GetRectCenter(N3)
set PI=GetRectCenter(L3)
set QI=GetRectCenter(U3)
set I1=GetRectCenter(I4)
set UI=GetRectCenter(Q3)
set O1=GetRectCenter(C4)
set B1=GetRectCenter(B4)
set A1=GetRectCenter(A4)
set C1=GetRectCenter(P3)
set E1=GetRectCenter(R3)
set D1=GetRectCenter(T3)
set F1=GetRectCenter(G4)
set G1=GetRectCenter(D4)
set J2=true
set QS=GetUnitX(IV)
set US=GetUnitY(IV)
set IT=GetUnitX(CV)
set OT=GetUnitY(CV)
set AT=GetUnitX(AV)
set BT=GetUnitY(AV)
set CT=GetUnitX(OV)
set DT=GetUnitY(OV)
set ET=GetUnitX(HW)
set FT=GetUnitY(HW)
set GT=GetUnitX(HZ)
set HT=GetUnitY(HZ)
set ZT=GetUnitX(FZ)
set VT=GetUnitY(FZ)
set WT=GetUnitX(AZ)
set XT=GetUnitY(AZ)
set YT=GetUnitX(VZ)
set JT=GetUnitY(VZ)
set KT=GetUnitX(DV)
set LT=GetUnitY(DV)
set KT=GetUnitX(DV)
set LT=GetUnitY(DV)
set MT=GetUnitX(ZY)
set ST=GetUnitY(ZY)
set RT=GetUnitX(UH)
set PT=GetUnitY(UH)
set QT=GetUnitX(HV)
set UT=GetUnitY(HV)
set IR=GetUnitX(GV)
set OR=GetUnitY(GV)
set BR=GetUnitX(EV)
set CR=GetUnitY(EV)
set DR=GetUnitX(ZV)
set GR=GetUnitY(ZV)
set HR=GetUnitX(WZ)
set ZR=GetUnitY(WZ)
set WR=GetUnitX(FV)
set XR=GetUnitY(FV)
set YR=GetUnitX(WV)
set JR=GetUnitY(WV)
set KR=GetUnitX(VV)
set LR=GetUnitY(VV)
set SR=GetUnitX(NV)
set RR=GetUnitY(NV)
set PR=GetUnitX(YV)
set QR=GetUnitY(YV)
set UR=GetUnitX(XV)
set IP=GetUnitY(XV)
set OP=GetUnitX(JV)
set BP=GetUnitY(JV)
set DP=GetUnitX(MV)
set EP=GetUnitY(MV)
set FP=GetUnitX(LV)
set GP=GetUnitY(LV)
set ZP=GetUnitX(KV)
set VP=GetUnitY(KV)
set WP=GetUnitX(TV)
set YP=GetUnitY(TV)
set JP=GetUnitX(SV)
set KP=GetUnitY(SV)
set LP=GetUnitX(UV)
set MP=GetUnitY(UV)
set TP=GetUnitX(QV)
set RP=GetUnitY(QV)
set PP=GetUnitX(IW)
set QP=GetUnitY(IW)
set UP=GetUnitX(OW)
set IQ=GetUnitY(OW)
set OQ=GetUnitX(AW)
set AQ=GetUnitY(AW)
set BQ=GetUnitX(PV)
set CQ=GetUnitY(PV)
set DQ=GetUnitX(CW)
set EQ=GetUnitY(CW)
set FQ=GetUnitX(DW)
set GQ=GetUnitY(DW)
set HQ=GetUnitX(BW)
set ZQ=GetUnitY(BW)
set VQ=GetUnitX(EW)
set WQ=GetUnitY(EW)
set XQ=GetUnitX(FW)
set YQ=GetUnitY(FW)
set JQ=GetUnitX(BV)
set KQ=GetUnitY(BV)
set LQ=GetUnitX(GW)
set MQ=GetUnitY(GW)
set NQ=GetUnitX(VW)
set SQ=GetUnitY(VW)
set TQ=GetUnitX(ZW)
set RQ=GetUnitY(ZW)
call RemoveUnit(WV)
call RemoveUnit(KV)
call RemoveUnit(JV)
call RemoveUnit(VV)
call RemoveUnit(TV)
call RemoveUnit(MV)
call RemoveUnit(NV)
call RemoveUnit(SV)
call RemoveUnit(LV)
call RemoveUnit(BV)
call RemoveUnit(GW)
call RemoveUnit(UH)
call RemoveUnit(YV)
call RemoveUnit(XV)
call RemoveUnit(UV)
call RemoveUnit(QV)
call RemoveUnit(IW)
call RemoveUnit(OW)
call RemoveUnit(AW)
call RemoveUnit(PV)
call RemoveUnit(CW)
call RemoveUnit(DW)
call RemoveUnit(BW)
call RemoveUnit(EW)
call RemoveUnit(FW)
call RemoveUnit(DV)
call RemoveUnit(ZY)
call RemoveUnit(VZ)
call RemoveUnit(AZ)
call RemoveUnit(FZ)
call RemoveUnit(HZ)
call RemoveUnit(AV)
call RemoveUnit(OV)
call RemoveUnit(IV)
call RemoveUnit(CV)
call RemoveUnit(HW)
call RemoveUnit(HV)
call RemoveUnit(GV)
call RemoveUnit(EV)
call RemoveUnit(ZV)
call RemoveUnit(WZ)
call RemoveUnit(FV)
call RemoveUnit(VW)
call RemoveUnit(ZW)
set PQ=CreateUnit(BO[0],1852206952,QS,US,270)
set QQ=CreateUnit(EO,1749236021,IT,OT,270)
set UQ=CreateUnit(EO,1848652107,AT,BT,270)
set I00=CreateUnit(EO,1849897784,CT,DT,270)
set II0=CreateUnit(EO,1697657397,ET,FT,270)
set I10=CreateUnit(EO,1848651862,GT,HT,270)
set IO0=CreateUnit(EO,1848651863,ZT,VT,270)
set I20=CreateUnit(EO,1848651826,WT,XT,270)
set I30=CreateUnit(EO,1848651864,YT,JT,270)
set I40=CreateUnit(EO,1848651833,KT,LT,270)
set I50=CreateUnit(EO,1848657989,MT,ST,270)
set I60=CreateUnit(BO[0],1702129516,RT,PT,270)
set I70=CreateUnit(BO[0],1697656914,QT,UT,90)
set I80=CreateUnit(BO[0],1697656914,IR,OR,45)
set I90=CreateUnit(BO[0],1697656914,BR,CR,0)
set IA0=CreateUnit(BO[0],1697657137,DR,GR,90)
set IB0=CreateUnit(BO[0],1697657137,HR,ZR,45)
set IC0=CreateUnit(BO[0],1697657137,WR,XR,0)
set ID0=CreateUnit(BO[0],1697656915,YR,JR,90)
set IE0=CreateUnit(BO[0],1697656915,KR,LR,45)
set IF0=CreateUnit(BO[0],1697656915,SR,RR,0)
set IG0=CreateUnit(BO[0],1697657145,PR,QR,45)
set IH0=CreateUnit(BO[0],1697657145,UR,IP,45)
set IZ0=CreateUnit(BO[0],1700884333,OP,BP,90)
set IV0=CreateUnit(BO[0],1700884333,DP,EP,45)
set IW0=CreateUnit(BO[0],1700884333,FP,GP,0)
set IX0=CreateUnit(BO[0],1700884325,ZP,VP,90)
set IY0=CreateUnit(BO[0],1700884325,WP,YP,45)
set IJ0=CreateUnit(BO[0],1700884325,JP,KP,0)
set IK0=CreateUnit(BO[0],1701670775,LP,MP,270)
set IL0=CreateUnit(BO[0],1701670775,TP,RP,270)
set IM0=CreateUnit(BO[0],1701670775,PP,QP,270)
set IN0=CreateUnit(BO[0],1701670775,UP,IQ,270)
set IS0=CreateUnit(BO[0],1701670775,OQ,AQ,270)
set IT0=CreateUnit(BO[0],1701670775,BQ,CQ,270)
set IR0=CreateUnit(BO[0],1701670775,DQ,EQ,270)
set IP0=CreateUnit(BO[0],1701670775,FQ,GQ,270)
set IQ0=CreateUnit(BO[0],1701670775,HQ,ZQ,270)
set IU0=CreateUnit(BO[0],1701670775,VQ,WQ,270)
set O00=CreateUnit(BO[0],1701670775,XQ,YQ,270)
set OI0=CreateUnit(BO[0],1700884343,JQ,KQ,270)
set O10=CreateUnit(BO[0],1700884343,LQ,MQ,270)
set OO0=CreateUnit(BO[0],1701080930,NQ,SQ,270)
set O20=CreateUnit(BO[0],1701080930,TQ,RQ,270)
call SetPlayerAbilityAvailable(EO,1098018609,false)
call SetUnitColor(QQ,TS)
call SetUnitColor(II0,TS)
call SetUnitColor(I00,PS)
call SetUnitColor(UQ,PS)
call SetUnitColor(I10,PS)
call SetUnitColor(IO0,PS)
call SetUnitColor(I20,PS)
call SetUnitColor(I30,PS)
call SetUnitColor(I40,PS)
call BK1(I70,true)
call BK1(I80,true)
call BK1(I90,true)
call BK1(IA0,true)
call BK1(IB0,true)
call BK1(IC0,true)
call BK1(ID0,true)
call BK1(IE0,true)
call BK1(IF0,true)
call BK1(IG0,true)
call BK1(IH0,true)
call BK1(I60,true)
call BK1(IZ0,true)
call BK1(IV0,true)
call BK1(IW0,true)
call BK1(IX0,true)
call BK1(IY0,true)
call BK1(IJ0,true)
call BK1(OI0,true)
call BK1(O10,true)
call BK1(OO0,true)
call BK1(O20,true)
call BK1(IK0,true)
call BK1(IL0,true)
call BK1(IM0,true)
call BK1(IN0,true)
call BK1(IS0,true)
call BK1(IT0,true)
call BK1(IR0,true)
call BK1(IP0,true)
call BK1(IQ0,true)
call BK1(IU0,true)
call BK1(O00,true)
call AddUnitToStock(II0,1747989059,0,0)
set O50=GetUnitX(GX)
set O60=GetUnitY(GX)
set O70=GetUnitX(UW)
set O80=GetUnitY(UW)
set O90=GetUnitX(IX)
set OA0=GetUnitY(IX)
set OB0=GetUnitX(OX)
set OC0=GetUnitY(OX)
set OD0=GetUnitX(PW)
set OE0=GetUnitY(PW)
set OF0=GetUnitX(TW)
set OG0=GetUnitY(TW)
set OH0=GetUnitX(SW)
set OZ0=GetUnitY(SW)
set OV0=GetUnitX(MW)
set OW0=GetUnitY(MW)
set OX0=GetUnitX(RW)
set OY0=GetUnitY(RW)
set OJ0=GetUnitX(QW)
set OK0=GetUnitY(QW)
set OL0=GetUnitX(JZ)
set OM0=GetUnitY(JZ)
set ON0=GetUnitX(KX)
set OS0=GetUnitY(KX)
set OT0=GetUnitX(GZ)
set OR0=GetUnitY(GZ)
set OP0=GetUnitX(MX)
set OQ0=GetUnitY(MX)
set OU0=GetUnitX(YZ)
set A00=GetUnitY(YZ)
set AI0=GetUnitX(SZ)
set A10=GetUnitY(SZ)
set AO0=GetUnitX(NX)
set A20=GetUnitY(NX)
set A30=GetUnitX(XZ)
set A40=GetUnitY(XZ)
set A50=GetUnitX(LW)
set A60=GetUnitY(LW)
set A70=GetUnitX(SX)
set A80=GetUnitY(SX)
set A90=GetUnitX(FY)
set AA0=GetUnitY(FY)
set AB0=GetUnitX(TX)
set AC0=GetUnitY(TX)
set AD0=GetUnitX(XX)
set AE0=GetUnitY(XX)
set AF0=GetUnitX(KW)
set AG0=GetUnitY(KW)
set AH0=GetUnitX(WX)
set AZ0=GetUnitY(WX)
set AV0=GetUnitX(EY)
set AW0=GetUnitY(EY)
set AX0=GetUnitX(JW)
set AY0=GetUnitY(JW)
set AJ0=GetUnitX(LX)
set AK0=GetUnitY(LX)
set AL0=GetUnitX(DY)
set AM0=GetUnitY(DY)
set AN0=GetUnitX(IY)
set AS0=GetUnitY(IY)
set AT0=GetUnitX(PX)
set AR0=GetUnitY(PX)
set AP0=GetUnitX(BY)
set AQ0=GetUnitY(BY)
set AU0=GetUnitX(YW)
set B00=GetUnitY(YW)
set BI0=GetUnitX(AY)
set B10=GetUnitY(AY)
set BO0=GetUnitX(RX)
set B20=GetUnitY(RX)
set B30=GetUnitX(QX)
set B40=GetUnitY(QX)
set B50=GetUnitX(OY)
set B60=GetUnitY(OY)
set B70=GetUnitX(GY)
set B80=GetUnitY(GY)
set B90=GetUnitX(WW)
set BA0=GetUnitY(WW)
set BB0=GetUnitX(YX)
set BC0=GetUnitY(YX)
set BD0=GetUnitX(XW)
set BE0=GetUnitY(XW)
set BF0=GetUnitX(CY)
set BG0=GetUnitY(CY)
set BH0=GetUnitX(UX)
set BZ0=GetUnitY(UX)
set BV0=GetUnitX(JX)
set BW0=GetUnitY(JX)
call RemoveUnit(IY)
call RemoveUnit(PX)
call RemoveUnit(BY)
call RemoveUnit(YW)
call RemoveUnit(AY)
call RemoveUnit(RX)
call RemoveUnit(QX)
call RemoveUnit(OY)
call RemoveUnit(GY)
call RemoveUnit(WW)
call RemoveUnit(YX)
call RemoveUnit(GZ)
call RemoveUnit(SZ)
call RemoveUnit(LW)
call RemoveUnit(MX)
call RemoveUnit(NX)
call RemoveUnit(SX)
call RemoveUnit(YZ)
call RemoveUnit(XZ)
call RemoveUnit(FY)
call RemoveUnit(TX)
call RemoveUnit(XX)
call RemoveUnit(KW)
call RemoveUnit(WX)
call RemoveUnit(EY)
call RemoveUnit(JW)
call RemoveUnit(LX)
call RemoveUnit(DY)
call RemoveUnit(XW)
call RemoveUnit(CY)
call RemoveUnit(UX)
call RemoveUnit(JX)
call RemoveUnit(KX)
call RemoveUnit(TW)
call RemoveUnit(SW)
call RemoveUnit(MW)
call RemoveUnit(RW)
call RemoveUnit(QW)
call RemoveUnit(JZ)
call RemoveUnit(OX)
call RemoveUnit(IX)
call RemoveUnit(GX)
call RemoveUnit(UW)
call RemoveUnit(PW)
set BX0=CreateUnit(CO[0],1852073580,O50,O60,270)
set BY0=CreateUnit(EO,1849897781,O70,O80,270)
set BJ0=CreateUnit(EO,1848652107,O90,OA0,270)
set BK0=CreateUnit(EO,1849897784,OB0,OC0,270)
set BL0=CreateUnit(EO,1966092369,OD0,OE0,270)
set BM0=CreateUnit(EO,1848651862,OF0,OG0,0)
set BN0=CreateUnit(EO,1848651863,OH0,OZ0,0)
set BS0=CreateUnit(EO,1848651826,OV0,OW0,0)
set BT0=CreateUnit(EO,1848651864,OX0,OY0,0)
set BR0=CreateUnit(EO,1848651833,OJ0,OK0,0)
set BP0=CreateUnit(EO,1848657989,OL0,OM0,0)
set BQ0=CreateUnit(CO[0],1970172012,ON0,OS0,220)
set BU0=CreateUnit(CO[0],1966092365,OT0,OR0,270)
set C00=CreateUnit(CO[0],1966092365,OP0,OQ0,270)
set CI0=CreateUnit(CO[0],1966092365,OU0,A00,270)
set C10=CreateUnit(CO[0],1966092356,AI0,A10,270)
set CO0=CreateUnit(CO[0],1966092356,AO0,A20,270)
set C20=CreateUnit(CO[0],1966092356,A30,A40,270)
set C30=CreateUnit(CO[0],1966092366,A50,A60,270)
set C40=CreateUnit(CO[0],1966092366,A70,A80,270)
set C50=CreateUnit(CO[0],1966092366,A90,AA0,270)
set C60=CreateUnit(CO[0],1966092372,AB0,AC0,270)
set C70=CreateUnit(CO[0],1966092372,AD0,AE0,270)
set C80=CreateUnit(CO[0],1970496880,AF0,AG0,270)
set C90=CreateUnit(CO[0],1970496880,AH0,AZ0,270)
set CA0=CreateUnit(CO[0],1970496880,AV0,AW0,270)
set CB0=CreateUnit(CO[0],1970564964,AX0,AY0,270)
set CC0=CreateUnit(CO[0],1970564964,AJ0,AK0,270)
set CD0=CreateUnit(CO[0],1970564964,AL0,AM0,270)
set CE0=CreateUnit(CO[0],1970956647,AN0,AS0,270)
set CF0=CreateUnit(CO[0],1970956647,AT0,AR0,270)
set CG0=CreateUnit(CO[0],1970956647,AP0,AQ0,270)
set CH0=CreateUnit(CO[0],1970956647,AU0,B00,270)
set CZ0=CreateUnit(CO[0],1970956647,BI0,B10,270)
set CV0=CreateUnit(CO[0],1970956647,BO0,B20,270)
set CW0=CreateUnit(CO[0],1970956647,B30,B40,270)
set CX0=CreateUnit(CO[0],1970956647,B50,B60,270)
set CY0=CreateUnit(CO[0],1970956647,B70,B80,270)
set CJ0=CreateUnit(CO[0],1970956647,B90,BA0,270)
set CK0=CreateUnit(CO[0],1970956647,BB0,BC0,270)
set CL0=CreateUnit(CO[0],1970495856,BD0,BE0,270)
set CM0=CreateUnit(CO[0],1970495856,BF0,BG0,270)
set CN0=CreateUnit(CO[0],1969385326,BH0,BZ0,270)
set CS0=CreateUnit(CO[0],1969385326,BV0,BW0,270)
call SetUnitColor(BY0,O30)
call SetUnitColor(BK0,O40)
call SetUnitColor(BJ0,O40)
call SetUnitColor(BM0,O40)
call SetUnitColor(BN0,O40)
call SetUnitColor(BS0,O40)
call SetUnitColor(BT0,O40)
call SetUnitColor(BR0,O40)
call BK1(BU0,true)
call BK1(C00,true)
call BK1(CI0,true)
call BK1(C10,true)
call BK1(CO0,true)
call BK1(C20,true)
call BK1(C30,true)
call BK1(C40,true)
call BK1(C50,true)
call BK1(C60,true)
call BK1(C70,true)
call BK1(BQ0,true)
call BK1(C80,true)
call BK1(C90,true)
call BK1(CA0,true)
call BK1(CB0,true)
call BK1(CC0,true)
call BK1(CD0,true)
call BK1(CL0,true)
call BK1(CM0,true)
call BK1(CN0,true)
call BK1(CS0,true)
call BK1(CE0,true)
call BK1(CF0,true)
call BK1(CG0,true)
call BK1(CH0,true)
call BK1(CZ0,true)
call BK1(CV0,true)
call BK1(CW0,true)
call BK1(CX0,true)
call BK1(CY0,true)
call BK1(CJ0,true)
call BK1(CK0,true)
call AddUnitToStock(BL0,1747989059,0,0)
set HE1=GetUnitX(TZ)
set HF1=GetUnitY(TZ)
set HG1=GetUnitX(UZ)
set HH1=GetUnitY(UZ)
set HZ1=GetUnitX(QZ)
set HV1=GetUnitY(QZ)
set HW1=GetUnitX(RZ)
set HX1=GetUnitY(RZ)
set HY1=GetUnitX(PZ)
set HJ1=GetUnitY(PZ)
set HK1=GetUnitX(BX)
set HL1=GetUnitY(BX)
set HM1=GetUnitX(AX)
set HN1=GetUnitY(AX)
set HS1=GetUnitX(EX)
set HT1=GetUnitY(EX)
set HR1=GetUnitX(CX)
set HP1=GetUnitY(CX)
set HQ1=GetUnitX(DX)
set HU1=GetUnitY(DX)
set Z01=25
call RemoveUnit(TZ)
call RemoveUnit(UZ)
call RemoveUnit(QZ)
call RemoveUnit(RZ)
call RemoveUnit(PZ)
call RemoveUnit(BX)
call RemoveUnit(AX)
call RemoveUnit(EX)
call RemoveUnit(CX)
call RemoveUnit(DX)
set CT0=CreateUnit(Player(1),1852010352,HE1,HF1,270)
call UnitAddAbility(CT0,1093743665)
call ClearSelectionForPlayer(Player(1))
call SelectUnitAddForPlayer(CT0,Player(1))
if GetLocalPlayer()==Player(1)then
call SetUnitVertexColor(CT0,255,255,255,255)
else
call SetUnitVertexColor(CT0,255,255,255,Z01)
endif
set CR0=CreateUnit(Player(2),1852010352,HG1,HH1,270)
call UnitAddAbility(CR0,1093743665)
call ClearSelectionForPlayer(Player(2))
call SelectUnitAddForPlayer(CR0,Player(2))
if GetLocalPlayer()==Player(2)then
call SetUnitVertexColor(CR0,255,255,255,255)
else
call SetUnitVertexColor(CR0,255,255,255,Z01)
endif
set CP0=CreateUnit(Player(3),1852010352,HZ1,HV1,270)
call UnitAddAbility(CP0,1093743665)
call ClearSelectionForPlayer(Player(3))
call SelectUnitAddForPlayer(CP0,Player(3))
if GetLocalPlayer()==Player(3)then
call SetUnitVertexColor(CP0,255,255,255,255)
else
call SetUnitVertexColor(CP0,255,255,255,Z01)
endif
set CQ0=CreateUnit(Player(4),1852010352,HW1,HX1,270)
call UnitAddAbility(CQ0,1093743665)
call ClearSelectionForPlayer(Player(4))
call SelectUnitAddForPlayer(CQ0,Player(4))
if GetLocalPlayer()==Player(4)then
call SetUnitVertexColor(CQ0,255,255,255,255)
else
call SetUnitVertexColor(CQ0,255,255,255,Z01)
endif
set CU0=CreateUnit(Player(5),1852010352,HY1,HJ1,270)
call UnitAddAbility(CU0,1093743665)
call ClearSelectionForPlayer(Player(5))
call SelectUnitAddForPlayer(CU0,Player(5))
if GetLocalPlayer()==Player(5)then
call SetUnitVertexColor(CU0,255,255,255,255)
else
call SetUnitVertexColor(CU0,255,255,255,Z01)
endif
set D00=CreateUnit(Player(7),1852010352,HK1,HL1,270)
call UnitAddAbility(D00,1093752649)
call ClearSelectionForPlayer(Player(7))
call SelectUnitAddForPlayer(D00,Player(7))
if GetLocalPlayer()==Player(7)then
call SetUnitVertexColor(D00,255,255,255,255)
else
call SetUnitVertexColor(D00,255,255,255,Z01)
endif
set DI0=CreateUnit(Player(8),1852010352,HM1,HN1,270)
call UnitAddAbility(DI0,1093752649)
call ClearSelectionForPlayer(Player(8))
call SelectUnitAddForPlayer(DI0,Player(8))
if GetLocalPlayer()==Player(8)then
call SetUnitVertexColor(DI0,255,255,255,255)
else
call SetUnitVertexColor(DI0,255,255,255,Z01)
endif
set D10=CreateUnit(Player(9),1852010352,HS1,HT1,270)
call UnitAddAbility(D10,1093752649)
call ClearSelectionForPlayer(Player(9))
call SelectUnitAddForPlayer(D10,Player(9))
if GetLocalPlayer()==Player(9)then
call SetUnitVertexColor(D10,255,255,255,255)
else
call SetUnitVertexColor(D10,255,255,255,Z01)
endif
set DO0=CreateUnit(Player(10),1852010352,HR1,HP1,270)
call UnitAddAbility(DO0,1093752649)
call ClearSelectionForPlayer(Player(10))
call SelectUnitAddForPlayer(DO0,Player(10))
if GetLocalPlayer()==Player(10)then
call SetUnitVertexColor(DO0,255,255,255,255)
else
call SetUnitVertexColor(DO0,255,255,255,Z01)
endif
set D20=CreateUnit(Player(11),1852010352,HQ1,HU1,270)
call UnitAddAbility(D20,1093752649)
call ClearSelectionForPlayer(Player(11))
call SelectUnitAddForPlayer(D20,Player(11))
if GetLocalPlayer()==Player(11)then
call SetUnitVertexColor(D20,255,255,255,255)
else
call SetUnitVertexColor(D20,255,255,255,Z01)
endif
set D30[1]=CT0
set D30[2]=CR0
set D30[3]=CP0
set D30[4]=CQ0
set D30[5]=CU0
set D30[7]=D00
set D30[8]=DI0
set D30[9]=D10
set D30[10]=DO0
set D30[11]=D20
set D40[1]=GetUnitX(CT0)
set D40[2]=GetUnitX(CR0)
set D40[3]=GetUnitX(CP0)
set D40[4]=GetUnitX(CQ0)
set D40[5]=GetUnitX(CU0)
set D40[7]=GetUnitX(D00)
set D40[8]=GetUnitX(DI0)
set D40[9]=GetUnitX(D10)
set D40[10]=GetUnitX(DO0)
set D40[11]=GetUnitX(D20)
set D50[1]=GetUnitY(CT0)
set D50[2]=GetUnitY(CR0)
set D50[3]=GetUnitY(CP0)
set D50[4]=GetUnitY(CQ0)
set D50[5]=GetUnitY(CU0)
set D50[7]=GetUnitY(D00)
set D50[8]=GetUnitY(DI0)
set D50[9]=GetUnitY(D10)
set D50[10]=GetUnitY(DO0)
set D50[11]=GetUnitY(D20)
call Z91()
call ZE1()
call SNI(1702061422,"stand 4")
call SNI(1697656918,"stand 4")
call SNI(1701081721,"spell")
call SNI(1697656919,"spell")
call SNI(1969711215,"stand victory")
call SNI(1966092337,"stand victory")
call SNI(1970169187,"stand channel")
call SNI(1966092338,"stand channel")
call SYI(1848651853,0.4,1848651853)
call SYI(1697657426,0.5,1697657426)
call SYI(1697657428,1.2,1697657428)
call SYI(1697657427,0.5,1697657427)
call SYI(1697657648,0.5,1697657648)
call SYI(1848659027,1,1848659027)
set t=CreateTrigger()
set T4I=Player(15)
set ZH1=GetUnitX(VX)
set ZZ1=GetUnitY(VX)
set ZV1=GetUnitX(MZ)
set ZW1=GetUnitY(MZ)
set ZX1=GetUnitX(HX)
set ZY1=GetUnitY(HX)
set ZJ1=GetUnitX(YY)
set ZK1=GetUnitY(YY)
set ZL1=GetUnitX(LZ)
set ZM1=GetUnitY(LZ)
set ZN1=GetUnitX(NZ)
set ZS1=GetUnitY(NZ)
set ZT1=GetUnitX(IZ)
set ZR1=GetUnitY(IZ)
set ZP1=GetUnitX(KY)
set ZQ1=GetUnitY(KY)
set ZU1=GetUnitX(EZ)
set V01=GetUnitY(EZ)
set VI1=GetUnitX(ZX)
set V11=GetUnitY(ZX)
set VO1=GetUnitX(HY)
set V21=GetUnitY(HY)
set V31=GetUnitX(JY)
set V41=GetUnitY(JY)
call RemoveUnit(VX)
call RemoveUnit(NZ)
call RemoveUnit(MZ)
call RemoveUnit(LZ)
call RemoveUnit(HX)
call RemoveUnit(IZ)
call RemoveUnit(EZ)
call RemoveUnit(ZX)
call RemoveUnit(HY)
call RemoveUnit(YY)
call RemoveUnit(KY)
call RemoveUnit(JY)
set EI0=CreateUnit(T4I,1848651832,ZL1,ZM1,270)
set E10=CreateUnit(T4I,1848657738,ZN1,ZS1,270)
set EO0=CreateUnit(T4I,1848652100,ZT1,ZR1,270)
set E20=CreateUnit(T4I,1848659016,ZP1,ZQ1,270)
set E30=CreateUnit(T4I,1848652110,ZH1,ZZ1,270)
set E40=CreateUnit(T4I,1848651831,ZV1,ZW1,270)
set E50=CreateUnit(T4I,1848651829,ZX1,ZY1,270)
set E60=CreateUnit(T4I,1848659017,ZJ1,ZK1,270)
set E70=CreateUnit(T4I,1848652098,ZU1,V01,270)
set E80=CreateUnit(T4I,1848652112,VI1,V11,270)
set E90=CreateUnit(T4I,1848657739,VO1,V21,270)
set EA0=CreateUnit(T4I,1848659018,V31,V41,270)
call SetUnitColor(EI0,ConvertPlayerColor(1))
call SetUnitColor(E10,ConvertPlayerColor(1))
call SetUnitColor(EO0,ConvertPlayerColor(9))
call SetUnitColor(E20,ConvertPlayerColor(9))
call SetUnitColor(E30,ConvertPlayerColor(6))
call SetUnitColor(E40,ConvertPlayerColor(6))
call SetUnitColor(E50,ConvertPlayerColor(10))
call SetUnitColor(E60,ConvertPlayerColor(10))
call SetUnitColor(E70,ConvertPlayerColor(0))
call SetUnitColor(E80,ConvertPlayerColor(0))
call SetUnitColor(E90,ConvertPlayerColor(11))
call SetUnitColor(EA0,ConvertPlayerColor(11))
set t=null
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function VB1))
set CG=CreateTrigger()
call TriggerRegisterTimerEventSingle(CG,0.01)
call TriggerAddAction(CG,function VD1)
set t=CreateTrigger()
call TriggerRegisterPlayerEventLeave(t,BO[1])
call TriggerRegisterPlayerEventLeave(t,BO[2])
call TriggerRegisterPlayerEventLeave(t,BO[3])
call TriggerRegisterPlayerEventLeave(t,BO[4])
call TriggerRegisterPlayerEventLeave(t,BO[5])
call TriggerRegisterPlayerEventLeave(t,CO[1])
call TriggerRegisterPlayerEventLeave(t,CO[2])
call TriggerRegisterPlayerEventLeave(t,CO[3])
call TriggerRegisterPlayerEventLeave(t,CO[4])
call TriggerRegisterPlayerEventLeave(t,CO[5])
call TriggerAddAction(t,function VJ1)
if C2 then
call VG1()
set t=CreateTrigger()
if IsPlayerObserver(D60)then
call TriggerRegisterPlayerEventLeave(t,D60)
endif
if IsPlayerObserver(D70)then
call TriggerRegisterPlayerEventLeave(t,D70)
endif
call TriggerAddAction(t,function VH1)
endif
set EF0[0]=false
set EF0[1]=false
set EF0[2]=false
set EF0[3]=false
set EF0[4]=false
set EF0[5]=false
set EF0[6]=false
set EF0[7]=false
set EF0[8]=false
set EF0[9]=false
set EF0[10]=false
set EF0[11]=false
set EF0[12]=false
set EF0[13]=false
set EF0[14]=false
set EF0[15]=false
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_REVIVE_FINISH)
call TriggerAddAction(t,function WD1)
set t=CreateTrigger()
call TriggerRegisterEnterRectSimple(t,bj_mapInitialPlayableArea)
call TriggerAddCondition(t,Condition(function QX1))
call TriggerAddAction(t,function QP1)
set DN=t
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerAddAction(t,function UO1)
call TriggerAddCondition(t,Condition(function U11))
set EV0=t
set EW0=CreateTrigger()
call TriggerRegisterTimerEvent(EW0,0.6,true)
call TriggerAddCondition(EW0,Condition(function U31))
call DisableTrigger(EW0)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,.5,true)
call TriggerAddAction(t,function U51)
set EX0=t
call BW1(0,0,false)
call U81()
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.5,true)
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerAddCondition(t,Condition(function UD1))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function UB1))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PAWN_ITEM)
call TriggerAddCondition(t,Condition(function UA1))
set t=null
call Q1I(1093809990)
call Q1I(1093810008)
call Q1I(1093809992)
call Q1I(1093817913)
call Q1I(1093810006)
call Q1I(1093809991)
call Q1I(1093809993)
call Q1I(1093809995)
call Q1I(1093809994)
set DG=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(DG,BO[0],EVENT_PLAYER_UNIT_DEATH,Condition(function ULI))
call TriggerRegisterPlayerUnitEvent(DG,CO[0],EVENT_PLAYER_UNIT_DEATH,Condition(function ULI))
call TriggerRegisterPlayerUnitEvent(DG,DO,EVENT_PLAYER_UNIT_DEATH,Condition(function ULI))
call TriggerAddAction(DG,function UP1)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function I7O))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function O3O))
call TriggerAddAction(t,function OPO)
set EG=t
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function ARO))
set t=null
call AXO(1853060204,62)
call AXO(1853060200,119)
call AXO(1848652342,88)
call AXO(1852077175,119)
call AXO(1701212014,30)
call AXO(1848651828,300)
call AXO(1848652088,300)
call AXO(1848652099,300)
call AXO(1848652103,300)
call AXO(1865429076,20)
call AXO(1865429077,25)
call AXO(1865429078,30)
call AXO(1865429079,35)
call AXO(1848651848,200)
call AXO(1848651847,300)
call AXO(1848651851,400)
call AXO(1848651850,200)
call AXO(1848651841,300)
call AXO(1848651830,400)
call AXO(1848657461,0)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function AUO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function B1O))
set t=null
set FL0=CreateTrigger()
call TriggerAddCondition(FL0,Condition(function B8O))
set FG=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(FG,DO,EVENT_PLAYER_UNIT_DEATH,Condition(function N1I))
call TriggerAddCondition(FG,Condition(function BDO))
call TriggerAddAction(FG,function BGO)
set t=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(t,BO[0],EVENT_PLAYER_UNIT_DEATH,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,CO[0],EVENT_PLAYER_UNIT_DEATH,Condition(function N1I))
call TriggerAddCondition(t,Condition(function BLO))
set t=null
set t=CreateTrigger()
call TriggerAddCondition(t,Condition(function C3O))
call TriggerRegisterTimerEvent(t,6,false)
set t=null
set GO0=GO0+1
set FT0[GO0]=1227900486
set FR0[GO0]=1227900487
set FP0[GO0]=0
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp"
set GI0[GO0]=0
set FU0[GO0]=500
set GO0=GO0+1
set FT0[GO0]=1227895377
set FR0[GO0]=1227895375
set FP0[GO0]=1747988785
set FQ0[GO0]=1227894849
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBootsOfSpeed.blp"
set GI0[GO0]=0
set FU0[GO0]=450
set G40=GO0
set GO0=GO0+1
set FT0[GO0]=1227895379
set FR0[GO0]=1227895376
set FP0[GO0]=1747988786
set FQ0[GO0]=1227899713
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGlove.blp"
set GI0[GO0]=0
set FU0[GO0]=500
set G50=GO0
set GO0=GO0+1
set FT0[GO0]=1227895374
set FR0[GO0]=1227895378
set FP0[GO0]=1747988787
set FQ0[GO0]=1227899731
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBoots.blp"
set GI0[GO0]=0
set FU0[GO0]=450
set G60=GO0
set GO0=GO0+1
set FT0[GO0]=1227895384
set FR0[GO0]=1227895385
set FP0[GO0]=1747988789
set FQ0[GO0]=1227899956
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNCirclet.blp"
set GI0[GO0]=0
set FU0[GO0]=165
set G70=GO0
set GO0=GO0+1
set FT0[GO0]=1227895386
set FR0[GO0]=1227895859
set FP0[GO0]=1747988790
set FQ0[GO0]=1227899734
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBelt.blp"
set GI0[GO0]=0
set FU0[GO0]=450
set G80=GO0
set GO0=GO0+1
set FT0[GO0]=1227895600
set FR0[GO0]=1227895860
set FP0[GO0]=1747988791
set FQ0[GO0]=1227899954
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_ThrowingKnife_03.blp"
set GI0[GO0]=0
set FU0[GO0]=1000
set G90=GO0
set GO0=GO0+1
set FT0[GO0]=1227895601
set FR0[GO0]=1227895861
set FP0[GO0]=1747988792
set FQ0[GO0]=1227899957
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNClawsOfAttack.blp"
set GI0[GO0]=0
set FU0[GO0]=450
set GA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895602
set FR0[GO0]=1227895862
set FP0[GO0]=1747988793
set FQ0[GO0]=1227899738
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp"
set GI0[GO0]=0
set FU0[GO0]=1200
set GB0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895603
set FR0[GO0]=1227895863
set FP0[GO0]=1747988801
set FQ0[GO0]=1227899959
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Chest_Chain_12.blp"
set GI0[GO0]=0
set FU0[GO0]=550
set GC0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895604
set FR0[GO0]=1227895864
set FP0[GO0]=1747988802
set FQ0[GO0]=1227899736
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Sword_19.blp"
set GI0[GO0]=0
set FU0[GO0]=1400
set GD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895605
set FR0[GO0]=1227895865
set FP0[GO0]=1747988803
set FQ0[GO0]=1227899721
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNFrostMourne.blp"
set GI0[GO0]=0
set FU0[GO0]=2400
set GE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895606
set FR0[GO0]=1227895873
set FP0[GO0]=1747988804
set FQ0[GO0]=1227899720
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Weapon_Bow_06.blp"
set GI0[GO0]=0
set FU0[GO0]=3300
set GF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895607
set FR0[GO0]=1227895874
set FP0[GO0]=1747988805
set FQ0[GO0]=1227899730
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNEnchantedGemstone.blp"
set GI0[GO0]=0
set FU0[GO0]=1000
set GG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895608
set FR0[GO0]=1227895875
set FP0[GO0]=1747988806
set FQ0[GO0]=1227899722
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGauntletsOfOgrePower.blp"
set GI0[GO0]=0
set FU0[GO0]=150
set GH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895609
set FR0[GO0]=1227895876
set FP0[GO0]=1747988807
set FQ0[GO0]=1227899975
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGem.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set GZ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902291
set FR0[GO0]=1227902290
set FP0[GO0]=0
set FQ0[GO0]=1227902292
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGem.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set GV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895618
set FR0[GO0]=1227895877
set FP0[GO0]=1747988808
set FQ0[GO0]=1227899969
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHelmutPurple.blp"
set GI0[GO0]=0
set FU0[GO0]=950
set GW0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895619
set FR0[GO0]=1227895878
set FP0[GO0]=1747988809
set FQ0[GO0]=1227899729
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPeriapt1.blp"
set GI0[GO0]=0
set FU0[GO0]=2000
set GX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895620
set FR0[GO0]=1227895879
set FP0[GO0]=1747988810
set FQ0[GO0]=1227899733
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNNatureTouchGrow.blp"
set GI0[GO0]=0
set FU0[GO0]=50
set GY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895621
set FR0[GO0]=1227895880
set FP0[GO0]=1747988811
set FQ0[GO0]=1227899703
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp"
set GI0[GO0]=12
set FU0[GO0]=2250
set GJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895621
set FR0[GO0]=1227895881
set FP0[GO0]=1747988811
set FQ0[GO0]=1227899976
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp"
set GI0[GO0]=0
set FU0[GO0]=2250
set GK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895622
set FR0[GO0]=1227895882
set FP0[GO0]=1747988812
set FQ0[GO0]=1227899725
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNMantleOfIntelligence.blp"
set GI0[GO0]=0
set FU0[GO0]=150
set GL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895623
set FR0[GO0]=1227895883
set FP0[GO0]=1747988813
set FQ0[GO0]=1227899716
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNUndeadShrine.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set GM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895624
set FR0[GO0]=1227895884
set FP0[GO0]=1747988814
set FQ0[GO0]=1227899719
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSpiritWalkerMasterTraining.blp"
set GI0[GO0]=0
set FU0[GO0]=3200
set GN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895625
set FR0[GO0]=1227895885
set FP0[GO0]=1747988815
set FQ0[GO0]=1227899952
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHammer.blp"
set GI0[GO0]=0
set FU0[GO0]=1600
set GS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895626
set FR0[GO0]=1227895886
set FP0[GO0]=1747988816
set FQ0[GO0]=1227899726
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNStaffOfNegation.blp"
set GI0[GO0]=0
set FU0[GO0]=2700
set GT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895627
set FR0[GO0]=1227895887
set FP0[GO0]=1747988817
set FQ0[GO0]=1227899960
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSpiritWalkerAdeptTraining.tga"
set GI0[GO0]=0
set FU0[GO0]=1000
set GR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895628
set FR0[GO0]=1227895888
set FP0[GO0]=1747988818
set FQ0[GO0]=1227899717
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Misc_Cape_08.blp"
set GI0[GO0]=0
set FU0[GO0]=550
set GP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895629
set FR0[GO0]=1227895889
set FP0[GO0]=1747988819
set FQ0[GO0]=1227899970
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Chest_Plate13.blp"
set GI0[GO0]=0
set FU0[GO0]=1400
set GQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895630
set FR0[GO0]=1227895890
set FP0[GO0]=1747988820
set FQ0[GO0]=1227899724
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNUsedSoulGem.blp"
set GI0[GO0]=0
set FU0[GO0]=1200
set GU0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895632
set FR0[GO0]=1227895891
set FP0[GO0]=1747988821
set FQ0[GO0]=1227899737
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAlleriaFlute.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set H00=GO0
set GO0=GO0+1
set FT0[GO0]=1227895633
set FR0[GO0]=1227895892
set FP0[GO0]=1747988822
set FQ0[GO0]=1227899977
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGoldRing.blp"
set GI0[GO0]=0
set FU0[GO0]=875
set HI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895634
set FR0[GO0]=1227895893
set FP0[GO0]=1747988823
set FQ0[GO0]=1227899735
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRingPurple.blp"
set GI0[GO0]=0
set FU0[GO0]=200
set H10=GO0
set GO0=GO0+1
set FT0[GO0]=1227895635
set FR0[GO0]=1227895894
set FP0[GO0]=1747988824
set FQ0[GO0]=1227899978
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRingSkull.blp"
set GI0[GO0]=0
set FU0[GO0]=350
set HO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895636
set FR0[GO0]=1227895895
set FP0[GO0]=1747988825
set FQ0[GO0]=1227899728
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRobeOfTheMagi.blp"
set GI0[GO0]=0
set FU0[GO0]=450
set H20=GO0
set GO0=GO0+1
set FT0[GO0]=1227895637
set FR0[GO0]=1227895896
set FP0[GO0]=1747988826
set FQ0[GO0]=1227899715
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNStaffOfTeleportation.blp"
set GI0[GO0]=0
set FU0[GO0]=3800
set H30=GO0
set GO0=GO0+1
set FT0[GO0]=1227895638
set FR0[GO0]=1227895897
set FP0[GO0]=1747989040
set FQ0[GO0]=1227899701
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSlippersOfAgility.blp"
set GI0[GO0]=0
set FU0[GO0]=150
set H40=GO0
set GO0=GO0+1
set FT0[GO0]=1227895639
set FR0[GO0]=1227895898
set FP0[GO0]=1747989041
set FQ0[GO0]=1227899979
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSobiMask.blp"
set GI0[GO0]=0
set FU0[GO0]=325
set H50=GO0
set GO0=GO0+1
set FT0[GO0]=1227895640
set FR0[GO0]=1227896112
set FP0[GO0]=1747989042
set FQ0[GO0]=1227899953
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWandOfCyclone.blp"
set GI0[GO0]=0
set FU0[GO0]=1000
set H60=GO0
set GO0=GO0+1
set FT0[GO0]=1227895617
set FR0[GO0]=1227896113
set FP0[GO0]=1747989043
set FQ0[GO0]=1227899961
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSteelArmor.blp"
set GI0[GO0]=0
set FU0[GO0]=250
set H70=GO0
set GO0=GO0+1
set FT0[GO0]=1227901762
set FR0[GO0]=1227901761
set FP0[GO0]=0
set FQ0[GO0]=1227901763
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSteelArmor.blp"
set GI0[GO0]=0
set FU0[GO0]=250
set H80=GO0
set GO0=GO0+1
set FT0[GO0]=1227895641
set FR0[GO0]=1227896114
set FP0[GO0]=1747989044
set FQ0[GO0]=1227899705
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrbofSlowness.blp"
set GI0[GO0]=0
set FU0[GO0]=2100
set H90=GO0
set GO0=GO0+1
set FT0[GO0]=1227895642
set FR0[GO0]=1227896115
set FP0[GO0]=1747989045
set FQ0[GO0]=1227899723
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSoulGem.blp"
set GI0[GO0]=0
set FU0[GO0]=1100
set HA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895856
set FR0[GO0]=1227896116
set FP0[GO0]=1747989046
set FQ0[GO0]=1227899980
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPeriapt.blp"
set GI0[GO0]=0
set FU0[GO0]=875
set HB0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895857
set FR0[GO0]=1227896117
set FP0[GO0]=1747989047
set FQ0[GO0]=1227899958
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSteelRanged.blp"
set GI0[GO0]=0
set FU0[GO0]=1500
set HC0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894860
set FR0[GO0]=1227899222
set FP0[GO0]=1747989058
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle0.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896133
set FR0[GO0]=1227899213
set FP0[GO0]=0
set FQ0[GO0]=1227899982
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle0.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899221
set FR0[GO0]=1227899214
set FP0[GO0]=0
set FQ0[GO0]=1227899983
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle1.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899219
set FR0[GO0]=1227899215
set FP0[GO0]=0
set FQ0[GO0]=1227899984
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle2.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899220
set FR0[GO0]=1227899216
set FP0[GO0]=0
set FQ0[GO0]=1227899985
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle3.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900759
set FR0[GO0]=1227900761
set FP0[GO0]=0
set FQ0[GO0]=1227900979
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle_Illusion.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900978
set FR0[GO0]=1227900760
set FP0[GO0]=0
set FQ0[GO0]=1227899986
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle_Regeneration.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900758
set FR0[GO0]=1227900977
set FP0[GO0]=0
set FQ0[GO0]=1227900980
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle_Haste.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HW0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903556
set FR0[GO0]=1227903557
set FP0[GO0]=0
set FQ0[GO0]=1227903558
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle_Illusion.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899218
set FR0[GO0]=1227900976
set FP0[GO0]=0
set FQ0[GO0]=1227900982
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle_DoubleDamage.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899217
set FR0[GO0]=1227900762
set FP0[GO0]=0
set FQ0[GO0]=1227900981
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBottle_Invisibility.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set HZ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900740
set FR0[GO0]=1227900739
set FP0[GO0]=1747990324
set FQ0[GO0]=1227900741
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWand.blp"
set GI0[GO0]=17
set FU0[GO0]=200
set HK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900995
set FR0[GO0]=1227900994
set FP0[GO0]=0
set FQ0[GO0]=1227900993
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNStarWand.blp"
set GI0[GO0]=17
set FU0[GO0]=500
set X10=GO0
set GO0=GO0+1
set FT0[GO0]=1227901012
set FR0[GO0]=1227901010
set FP0[GO0]=1747990359
set FQ0[GO0]=1227901014
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrcMeleeUpTwo.blp"
set GI0[GO0]=5
set FU0[GO0]=225
set HL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901013
set FR0[GO0]=1227901008
set FP0[GO0]=0
set FQ0[GO0]=1227901015
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrcMeleeUpTwo.blp"
set GI0[GO0]=5
set FU0[GO0]=225
set HM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902516
set FR0[GO0]=1227902515
set FP0[GO0]=0
set FQ0[GO0]=1227902517
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPoisonBlade.blp"
set GI0[GO0]=30
set FU0[GO0]=775
set HT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902519
set FR0[GO0]=1227902518
set FP0[GO0]=0
set FQ0[GO0]=1227902520
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPoisonBlade.blp"
set GI0[GO0]=30
set FU0[GO0]=775
set HR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901495
set FR0[GO0]=1227901494
set FP0[GO0]=1747990579
set FQ0[GO0]=1227901496
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAmulet.blp"
set GI0[GO0]=0
set FU0[GO0]=1800
set HN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901514
set FR0[GO0]=1227901513
set FP0[GO0]=1747990583
set FQ0[GO0]=1227901515
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGreenStaff.blp"
set GI0[GO0]=30
set FU0[GO0]=1600
set X50=GO0
set GO0=GO0+1
set FT0[GO0]=1227903033
set FR0[GO0]=1227903042
set FP0[GO0]=1747993929
set FQ0[GO0]=1227903041
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPendantOfMana.blp"
set GI0[GO0]=0
set FU0[GO0]=1400
set XE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903054
set FR0[GO0]=1227903053
set FP0[GO0]=0
set FQ0[GO0]=1227903055
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPendantOfMana.blp"
set GI0[GO0]=10
set FU0[GO0]=2150
set XF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903301
set FR0[GO0]=1227903302
set FP0[GO0]=0
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNStone.blp"
set GI0[GO0]=10
set FU0[GO0]=0
set XG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903303
set FR0[GO0]=1227903304
set FP0[GO0]=0
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNThunderLizardEgg.blp"
set GI0[GO0]=10
set FU0[GO0]=0
set XH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902273
set FR0[GO0]=1227902265
set FP0[GO0]=1747993421
set FQ0[GO0]=1227902274
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp"
set GI0[GO0]=0
set FU0[GO0]=275
set G20=GO0
set GO0=GO0+1
set FT0[GO0]=1227902276
set FR0[GO0]=1227902277
set FP0[GO0]=0
set FQ0[GO0]=1227902275
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp"
set GI0[GO0]=0
set FU0[GO0]=275
set G30=GO0
set GO0=GO0+1
set FT0[GO0]=1227896119
set FR0[GO0]=1227896131
set FP0[GO0]=1747989057
set FQ0[GO0]=1227903288
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAncientOfTheEarth.blp"
set GI0[GO0]=0
set FU0[GO0]=125
set Z80=GO0
set GO0=GO0+1
set FT0[GO0]=1227903287
set FR0[GO0]=1227903286
set FP0[GO0]=0
set FQ0[GO0]=1227903289
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAncientOfTheEarth.blp"
set GI0[GO0]=0
set FU0[GO0]=0
set Z90=GO0
set GO0=GO0+1
set FT0[GO0]=1227895858
set FR0[GO0]=1227896132
set FP0[GO0]=1747989048
set FQ0[GO0]=1227903065
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNLesserClarityPotion.blp"
set GI0[GO0]=0
set FU0[GO0]=50
set Z50=GO0
set GO0=GO0+1
set FT0[GO0]=1227901007
set FR0[GO0]=1227901006
set FP0[GO0]=1747990358
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNVialFull.blp"
set GI0[GO0]=0
set FU0[GO0]=200
set Z60=GO0
set GO0=GO0+1
set FT0[GO0]=1227896118
set FR0[GO0]=1227896134
set FP0[GO0]=1747989049
set FQ0[GO0]=1227903066
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHealingSalve.blp"
set GI0[GO0]=0
set FU0[GO0]=110
set Z70=GO0
set GO0=GO0+1
set FT0[GO0]=1227896120
set FR0[GO0]=1227896135
set FP0[GO0]=1747989059
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSentryWard.blp"
set GI0[GO0]=0
set FU0[GO0]=150
set ZA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896121
set FR0[GO0]=1227896136
set FP0[GO0]=1747989060
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBlueSentryWard.blp"
set GI0[GO0]=0
set FU0[GO0]=200
set ZB0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896129
set FR0[GO0]=1227896137
set FP0[GO0]=1747989061
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNScrollUber.blp"
set GI0[GO0]=0
set FU0[GO0]=100
set ZC0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896130
set FR0[GO0]=1227896138
set FP0[GO0]=1747989062
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNCritterChicken.blp"
set GI0[GO0]=0
set FU0[GO0]=120
set ZD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899440
set FR0[GO0]=1227899441
set FP0[GO0]=0
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNCheese.blp"
set GI0[GO0]=0
set FU0[GO0]=1000
set ZE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900743
set FR0[GO0]=1227900742
set FP0[GO0]=1747990325
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPotionOfDivinity.blp"
set GI0[GO0]=30
set FU0[GO0]=160
set ZF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900745
set FR0[GO0]=1227900744
set FP0[GO0]=1747990326
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNDustOfAppearance.blp"
set GI0[GO0]=60
set FU0[GO0]=180
set ZG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901780
set FR0[GO0]=1227901779
set FP0[GO0]=1747993145
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWandOfManaSteal.blp"
set GI0[GO0]=0
set FU0[GO0]=600
set ZH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902534
set FR0[GO0]=1227902535
set FP0[GO0]=1747993651
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSmokePotion.blp"
set GI0[GO0]=90
set FU0[GO0]=100
set ZZ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896369
set FR0[GO0]=1227896370
set FP0[GO0]=0
set FQ0[GO0]=1227895114
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrbOfFire.blp"
set GI0[GO0]=0
set FU0[GO0]=1750
set ZV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896372
set FR0[GO0]=1227896371
set FP0[GO0]=0
set FQ0[GO0]=1227895115
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Helmet_17.blp"
set GI0[GO0]=0
set FU0[GO0]=600
set ZW0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896373
set FR0[GO0]=1227896374
set FP0[GO0]=0
set FQ0[GO0]=1227895116
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNThoriumArmor.blp"
set GI0[GO0]=25
set FU0[GO0]=800
set ZX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896376
set FR0[GO0]=1227896375
set FP0[GO0]=0
set FQ0[GO0]=1227895117
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRingVioletSpider.tga"
set GI0[GO0]=0
set FU0[GO0]=525
set ZY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896377
set FR0[GO0]=1227896385
set FP0[GO0]=0
set FQ0[GO0]=1227899702
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRingVioletSpider.tga"
set GI0[GO0]=0
set FU0[GO0]=525
set ZJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896387
set FR0[GO0]=1227896386
set FP0[GO0]=0
set FQ0[GO0]=1227895120
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAbility_Rogue_Sprint.blp"
set GI0[GO0]=50
set FU0[GO0]=2450
set ZK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895631
set FR0[GO0]=1227895380
set FP0[GO0]=0
set FQ0[GO0]=1227895122
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWirtsLegGreen.blp"
set GI0[GO0]=0
set FU0[GO0]=1400
set ZL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895381
set FR0[GO0]=1227896153
set FP0[GO0]=0
set FQ0[GO0]=1227895121
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWirtsLeg.blp"
set GI0[GO0]=0
set FU0[GO0]=1400
set ZM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896368
set FR0[GO0]=1227896154
set FP0[GO0]=0
set FQ0[GO0]=1227895123
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWirtsLegBlue.blp"
set GI0[GO0]=0
set FU0[GO0]=1400
set ZN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896389
set FR0[GO0]=1227896388
set FP0[GO0]=0
set FQ0[GO0]=1227895124
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGoldGloves.BLP"
set GI0[GO0]=100
set FU0[GO0]=2050
set ZS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902543
set FR0[GO0]=1227902542
set FP0[GO0]=0
set FQ0[GO0]=1227902544
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGoldGloves.BLP"
set GI0[GO0]=100
set FU0[GO0]=2050
set ZT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896391
set FR0[GO0]=1227896390
set FP0[GO0]=0
set FQ0[GO0]=1227895125
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Mace_10.blp"
set GI0[GO0]=0
set FU0[GO0]=1675
set ZR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896393
set FR0[GO0]=1227896392
set FP0[GO0]=0
set FQ0[GO0]=1227895126
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRunedBracers.blp"
set GI0[GO0]=0
set FU0[GO0]=525
set ZP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896395
set FR0[GO0]=1227896394
set FP0[GO0]=0
set FQ0[GO0]=1227895127
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRevenant.blp"
set GI0[GO0]=0
set FU0[GO0]=485
set ZQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896397
set FR0[GO0]=1227896396
set FP0[GO0]=0
set FQ0[GO0]=1227895128
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNTalisman.tga"
set GI0[GO0]=0
set FU0[GO0]=470
set ZU0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896902
set FR0[GO0]=1227896903
set FP0[GO0]=0
set FQ0[GO0]=1227895129
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Sword_10.blp"
set GI0[GO0]=0
set FU0[GO0]=2050
set V00=GO0
set GO0=GO0+1
set FT0[GO0]=1227896905
set FR0[GO0]=1227896904
set FP0[GO0]=0
set FQ0[GO0]=1227895130
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNJapaneseSword.BLP"
set GI0[GO0]=0
set FU0[GO0]=2050
set VI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896906
set FR0[GO0]=1227896907
set FP0[GO0]=0
set FQ0[GO0]=1227895344
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Hammer_10.blp"
set GI0[GO0]=0
set FU0[GO0]=2950
set V10=GO0
set GO0=GO0+1
set FT0[GO0]=1227896909
set FR0[GO0]=1227896908
set FP0[GO0]=0
set FQ0[GO0]=1227899704
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Hammer_10.blp"
set GI0[GO0]=0
set FU0[GO0]=2950
set VO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896910
set FR0[GO0]=1227896911
set FP0[GO0]=0
set FQ0[GO0]=1227895345
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Chest_Plate06.blp"
set GI0[GO0]=17
set FU0[GO0]=2200
set V20=GO0
set GO0=GO0+1
set FT0[GO0]=1227896913
set FR0[GO0]=1227896912
set FP0[GO0]=0
set FQ0[GO0]=1227895346
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNStormHammer.blp"
set GI0[GO0]=0
set FU0[GO0]=2800
set V30=GO0
set GO0=GO0+1
set FT0[GO0]=1227896915
set FR0[GO0]=1227896914
set FP0[GO0]=0
set FQ0[GO0]=1227895347
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Sword_11.blp"
set GI0[GO0]=12
set FU0[GO0]=3150
set V40=GO0
set GO0=GO0+1
set FT0[GO0]=1227901506
set FR0[GO0]=1227901497
set FP0[GO0]=0
set FQ0[GO0]=1227901508
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNDiffusal2.blp"
set GI0[GO0]=12
set FU0[GO0]=3850
set V50=GO0
set GO0=GO0+1
set FT0[GO0]=1227900247
set FR0[GO0]=1227900246
set FP0[GO0]=0
set FQ0[GO0]=1227900248
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Sword_11.blp"
set GI0[GO0]=0
set FU0[GO0]=0
set V60=GO0
set GO0=GO0+1
set FT0[GO0]=1227901507
set FR0[GO0]=1227901505
set FP0[GO0]=0
set FQ0[GO0]=1227901509
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNDiffusal2.blp"
set GI0[GO0]=0
set FU0[GO0]=0
set V70=GO0
set GO0=GO0+1
set FT0[GO0]=1227896917
set FR0[GO0]=1227896916
set FP0[GO0]=0
set FQ0[GO0]=1227895348
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Helmet_13.blp"
set GI0[GO0]=60
set FU0[GO0]=1850
set V80=GO0
set GO0=GO0+1
set FT0[GO0]=1227896919
set FR0[GO0]=1227896918
set FP0[GO0]=0
set FQ0[GO0]=1227899727
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Helmet_13.blp"
set GI0[GO0]=0
set FU0[GO0]=1850
set V90=GO0
set GO0=GO0+1
set FT0[GO0]=1227896920
set FR0[GO0]=1227896921
set FP0[GO0]=0
set FQ0[GO0]=1227895349
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHelmOfValor.blp"
set GI0[GO0]=22
set FU0[GO0]=1800
set VA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897136
set FR0[GO0]=1227896922
set FP0[GO0]=0
set FQ0[GO0]=1227895350
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNStaffofpurification.blp"
set GI0[GO0]=23
set FU0[GO0]=2850
set VB0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897138
set FR0[GO0]=1227897137
set FP0[GO0]=0
set FQ0[GO0]=1227895351
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPhilosophersStone.blp"
set GI0[GO0]=0
set FU0[GO0]=3300
set VC0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897140
set FR0[GO0]=1227897139
set FP0[GO0]=0
set FQ0[GO0]=1227895352
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSpellShieldAmulet.blp"
set GI0[GO0]=45
set FU0[GO0]=2300
set VD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897142
set FR0[GO0]=1227897141
set FP0[GO0]=0
set FQ0[GO0]=1227895353
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSpell_Holy_BlessingOfStrength.blp"
set GI0[GO0]=0
set FU0[GO0]=4100
set VE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897144
set FR0[GO0]=1227897143
set FP0[GO0]=0
set FQ0[GO0]=1227895361
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAbility_Gouge.blp"
set GI0[GO0]=0
set FU0[GO0]=4100
set VF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897153
set FR0[GO0]=1227897145
set FP0[GO0]=0
set FQ0[GO0]=1227895362
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_ThrowingAxe_06.blp"
set GI0[GO0]=0
set FU0[GO0]=4350
set VG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897154
set FR0[GO0]=1227897155
set FP0[GO0]=0
set FQ0[GO0]=1227895363
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp"
set GI0[GO0]=0
set FU0[GO0]=2150
set VH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900722
set FR0[GO0]=1227900506
set FP0[GO0]=0
set FQ0[GO0]=1227900728
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRodOfNecromancy.blp"
set GI0[GO0]=80
set FU0[GO0]=3975
set VZ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900726
set FR0[GO0]=1227900720
set FP0[GO0]=0
set FQ0[GO0]=1227900729
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRodOfNecromancy.blp"
set GI0[GO0]=75
set FU0[GO0]=3975
set VV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897157
set FR0[GO0]=1227900505
set FP0[GO0]=0
set FQ0[GO0]=1227900727
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRodOfNecromancy.blp"
set GI0[GO0]=70
set FU0[GO0]=3975
set VW0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900725
set FR0[GO0]=1227900499
set FP0[GO0]=0
set FQ0[GO0]=1227895364
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRodOfNecromancy.blp"
set GI0[GO0]=65
set FU0[GO0]=3975
set VX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900723
set FR0[GO0]=1227897156
set FP0[GO0]=0
set FQ0[GO0]=1227900738
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRodOfNecromancy.blp"
set GI0[GO0]=60
set FU0[GO0]=3975
set VY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900724
set FR0[GO0]=1227900721
set FP0[GO0]=0
set FQ0[GO0]=1227900737
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRodOfNecromancy.blp"
set GI0[GO0]=55
set FU0[GO0]=3975
set VJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903030
set FR0[GO0]=1227903032
set FP0[GO0]=0
set FQ0[GO0]=1227903031
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRodOfNecromancy.blp"
set GI0[GO0]=50
set FU0[GO0]=3975
set VK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899224
set FR0[GO0]=1227899223
set FP0[GO0]=0
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNArcaniteArmor.blp"
set GI0[GO0]=0
set FU0[GO0]=0
set VL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897159
set FR0[GO0]=1227897158
set FP0[GO0]=0
set FQ0[GO0]=1227895365
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_ThrowingAxe_02.blp"
set GI0[GO0]=35
set FU0[GO0]=4950
set VM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902294
set FR0[GO0]=1227902293
set FP0[GO0]=0
set FQ0[GO0]=1227902295
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_ThrowingAxe_02.blp"
set GI0[GO0]=50
set FU0[GO0]=4950
set VN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897161
set FR0[GO0]=1227897160
set FP0[GO0]=0
set FQ0[GO0]=1227895366
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNLothars.BLP"
set GI0[GO0]=22
set FU0[GO0]=2800
set VS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897163
set FR0[GO0]=1227897165
set FP0[GO0]=0
set FQ0[GO0]=1227895111
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_06.blp"
set GI0[GO0]=40
set FU0[GO0]=2720
set VT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897162
set FR0[GO0]=1227897168
set FP0[GO0]=0
set FQ0[GO0]=1227895367
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_06.blp"
set GI0[GO0]=36
set FU0[GO0]=3970
set VR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897169
set FR0[GO0]=1227897166
set FP0[GO0]=0
set FQ0[GO0]=1227899971
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_06.blp"
set GI0[GO0]=32
set FU0[GO0]=5220
set VP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897171
set FR0[GO0]=1227897167
set FP0[GO0]=0
set FQ0[GO0]=1227899972
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_06.blp"
set GI0[GO0]=28
set FU0[GO0]=6470
set VQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897170
set FR0[GO0]=1227897164
set FP0[GO0]=0
set FQ0[GO0]=1227899955
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_06.blp"
set GI0[GO0]=24
set FU0[GO0]=7720
set VU0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897173
set FR0[GO0]=1227897172
set FP0[GO0]=0
set FQ0[GO0]=1227895368
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNNecromancerAdept.blp"
set GI0[GO0]=95
set FU0[GO0]=2700
set W00=GO0
set GO0=GO0+1
set FT0[GO0]=1227897174
set FR0[GO0]=1227897176
set FP0[GO0]=0
set FQ0[GO0]=1227895369
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBookOfTheDead.blp"
set GI0[GO0]=95
set FU0[GO0]=3950
set WI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227897175
set FR0[GO0]=1227897177
set FP0[GO0]=0
set FQ0[GO0]=1227895370
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNNecromancerMaster.blp"
set GI0[GO0]=95
set FU0[GO0]=5200
set W10=GO0
set GO0=GO0+1
set FT0[GO0]=1227899184
set FR0[GO0]=1227897178
set FP0[GO0]=0
set FQ0[GO0]=1227899471
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrb of Water.blp"
set GI0[GO0]=0
set FU0[GO0]=5175
set WO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901003
set FR0[GO0]=1227901002
set FP0[GO0]=0
set FQ0[GO0]=1227901004
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrb of Water.blp"
set GI0[GO0]=0
set FU0[GO0]=5175
set W20=GO0
set GO0=GO0+1
set FT0[GO0]=1227899186
set FR0[GO0]=1227899185
set FP0[GO0]=0
set FQ0[GO0]=1227899472
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Sword_25.blp"
set GI0[GO0]=0
set FU0[GO0]=7800
set W30=GO0
set GO0=GO0+1
set FT0[GO0]=1227902025
set FR0[GO0]=1227902026
set FP0[GO0]=0
set FQ0[GO0]=1227902027
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Sword_25.blp"
set GI0[GO0]=0
set FU0[GO0]=7800
set W40=GO0
set GO0=GO0+1
set FT0[GO0]=1227899188
set FR0[GO0]=1227899187
set FP0[GO0]=0
set FQ0[GO0]=1227899473
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Weapon_Crossbow_10.blp"
set GI0[GO0]=0
set FU0[GO0]=5550
set W50=GO0
set GO0=GO0+1
set FT0[GO0]=1227899190
set FR0[GO0]=1227899189
set FP0[GO0]=0
set FQ0[GO0]=1227899474
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Weapon_Halberd_10.blp"
set GI0[GO0]=0
set FU0[GO0]=5400
set W60=GO0
set GO0=GO0+1
set FT0[GO0]=1227901752
set FR0[GO0]=1227901751
set FP0[GO0]=0
set FQ0[GO0]=1227901753
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Weapon_Halberd_10.blp"
set GI0[GO0]=0
set FU0[GO0]=5400
set W70=GO0
set GO0=GO0+1
set FT0[GO0]=1227899191
set FR0[GO0]=1227899192
set FP0[GO0]=0
set FQ0[GO0]=1227899475
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNTransmute.blp"
set GI0[GO0]=0
set FU0[GO0]=5150
set W80=GO0
set GO0=GO0+1
set FT0[GO0]=1227901777
set FR0[GO0]=1227901776
set FP0[GO0]=0
set FQ0[GO0]=1227901778
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNTransmute.blp"
set GI0[GO0]=0
set FU0[GO0]=5150
set W90=GO0
set GO0=GO0+1
set FT0[GO0]=1227899201
set FR0[GO0]=1227899193
set FP0[GO0]=0
set FQ0[GO0]=1227899476
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHeartOfAszune.blp"
set GI0[GO0]=0
set FU0[GO0]=5500
set WA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899201
set FR0[GO0]=1227901772
set FQ0[GO0]=1227901773
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHeartOfAszune.blp"
set GI0[GO0]=0
set FU0[GO0]=5500
set WB0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899203
set FR0[GO0]=1227899202
set FP0[GO0]=0
set FQ0[GO0]=1227899477
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHornOfDoom.blp"
set GI0[GO0]=35
set FU0[GO0]=6150
set WC0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899204
set FR0[GO0]=1227899205
set FP0[GO0]=0
set FQ0[GO0]=1227899478
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNIceShard.blp"
set GI0[GO0]=0
set FU0[GO0]=5675
set WD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899207
set FR0[GO0]=1227899206
set FP0[GO0]=0
set FQ0[GO0]=1227899732
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNIceShard.blp"
set GI0[GO0]=0
set FU0[GO0]=5675
set WE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899208
set FR0[GO0]=1227899209
set FP0[GO0]=0
set FQ0[GO0]=1227899479
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_ThrowingKnife_04.blp"
set GI0[GO0]=0
set FU0[GO0]=6000
set WF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903559
set FR0[GO0]=1227903560
set FP0[GO0]=0
set FQ0[GO0]=1227903561
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_ThrowingKnife_04.blp"
set GI0[GO0]=0
set FU0[GO0]=6000
set WG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899448
set FR0[GO0]=1227899225
set FP0[GO0]=0
set FQ0[GO0]=1227894850
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set FU0[GO0]=4200
set JD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899211
set FR0[GO0]=1227899210
set FP0[GO0]=0
set FQ0[GO0]=1227899480
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHeartOfSearinox.blp"
set GI0[GO0]=210
set FU0[GO0]=5225
set WH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896651
set FR0[GO0]=1227899212
set FP0[GO0]=0
set FQ0[GO0]=1227899481
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Sword_09.blp"
set GI0[GO0]=35
set FU0[GO0]=5675
set WZ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899458
set FR0[GO0]=1227899457
set FP0[GO0]=0
set FQ0[GO0]=1227899482
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAdvancedUnholyArmor.blp"
set GI0[GO0]=0
set FU0[GO0]=2275
set WV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902021
set FR0[GO0]=1227902019
set FP0[GO0]=0
set FQ0[GO0]=1227902020
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAdvancedUnholyArmor.blp"
set GI0[GO0]=0
set FU0[GO0]=2275
set WW0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899459
set FR0[GO0]=1227899460
set FP0[GO0]=0
set FQ0[GO0]=1227894851
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNArcaneRing.blp"
set GI0[GO0]=33
set FU0[GO0]=1700
set WX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899462
set FR0[GO0]=1227899461
set FQ0[GO0]=1227899696
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNThunderMallet.blp"
set GI0[GO0]=35
set FU0[GO0]=5700
set WY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895092
set FR0[GO0]=1227895108
set FP0[GO0]=0
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRavenForm.blp"
set GI0[GO0]=0
set FU0[GO0]=370
set WJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899464
set FR0[GO0]=1227899463
set FP0[GO0]=0
set FQ0[GO0]=1227899697
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNCloakOfFlames.blp"
set GI0[GO0]=0
set FU0[GO0]=2075
set WK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899465
set FR0[GO0]=1227899466
set FP0[GO0]=0
set FQ0[GO0]=1227899698
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Chest_Chain_14.blp"
set GI0[GO0]=0
set FU0[GO0]=5250
set WL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899468
set FR0[GO0]=1227899467
set FP0[GO0]=0
set FQ0[GO0]=1227899699
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Misc_Gem_Bloodstone_02.blp"
set GI0[GO0]=70
set FU0[GO0]=5075
set WM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903320
set FR0[GO0]=1227903321
set FP0[GO0]=0
set FQ0[GO0]=1227903322
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNCrimsonGuard.blp"
set GI0[GO0]=70
set FU0[GO0]=5075
set Z40=GO0
set GO0=GO0+1
set FT0[GO0]=1227899470
set FR0[GO0]=1227899469
set FP0[GO0]=0
set FQ0[GO0]=1227899700
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHoodOfCunning.blp"
set GI0[GO0]=0
set FU0[GO0]=2125
set WN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894867
set FR0[GO0]=1227894861
set FP0[GO0]=0
set FQ0[GO0]=1227895107
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyStrength.blp"
set GI0[GO0]=0
set FU0[GO0]=2400
set WS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894868
set FR0[GO0]=1227894865
set FP0[GO0]=0
set FQ0[GO0]=1227895109
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNUnholyStrength.blp"
set GI0[GO0]=0
set FU0[GO0]=2400
set WT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894870
set FR0[GO0]=1227894862
set FP0[GO0]=0
set FQ0[GO0]=1227895110
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyStrength.blp"
set GI0[GO0]=0
set FU0[GO0]=2400
set WR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894871
set FR0[GO0]=1227894866
set FP0[GO0]=0
set FQ0[GO0]=1227899973
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNUnholyStrength.blp"
set GI0[GO0]=0
set FU0[GO0]=2400
set WP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894872
set FR0[GO0]=1227894874
set FP0[GO0]=0
set FQ0[GO0]=1227899718
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAdvancedMoonArmor.blp"
set GI0[GO0]=30
set FU0[GO0]=5060
set WQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894873
set FR0[GO0]=1227895088
set FP0[GO0]=0
set FQ0[GO0]=1227899974
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAdvancedMoonArmor.blp"
set GI0[GO0]=0
set FU0[GO0]=5060
set WU0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895091
set FR0[GO0]=1227895090
set FP0[GO0]=0
set FQ0[GO0]=1227899714
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNStaffOfSilence.blp"
set GI0[GO0]=18
set FU0[GO0]=4125
set X00=GO0
set GO0=GO0+1
set FT0[GO0]=1227900747
set FR0[GO0]=1227900746
set FP0[GO0]=0
set FQ0[GO0]=1227900748
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPhaseBoots.blp"
set GI0[GO0]=8
set FU0[GO0]=1350
set XI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900999
set FR0[GO0]=1227901001
set FP0[GO0]=0
set FQ0[GO0]=1227901000
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNForceStaff.blp"
set GI0[GO0]=20
set FU0[GO0]=2250
set XO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901232
set FR0[GO0]=1227901750
set FP0[GO0]=0
set FQ0[GO0]=1227901234
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPipeOfInsight.blp"
set GI0[GO0]=25
set FU0[GO0]=3525
set X20=GO0
set FU0[GO0]=1960
set GO0=GO0+1
set FT0[GO0]=1227901511
set FR0[GO0]=1227901510
set FP0[GO0]=0
set FQ0[GO0]=1227901512
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyArmor.blp"
set GI0[GO0]=12
set FU0[GO0]=550
set X30=GO0
set GO0=GO0+1
set FT0[GO0]=1227901764
set FR0[GO0]=1227901766
set FP0[GO0]=0
set FQ0[GO0]=1227901765
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyArmor.blp"
set GI0[GO0]=12
set FU0[GO0]=550
set X40=GO0
set GO0=GO0+1
set FT0[GO0]=1227901784
set FR0[GO0]=1227901785
set FP0[GO0]=0
set FQ0[GO0]=1227901786
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNUrnOfKelThuzad.blp"
set GI0[GO0]=8
set FU0[GO0]=875
set X60=GO0
set GO0=GO0+1
set FT0[GO0]=1227902023
set FR0[GO0]=1227902022
set FP0[GO0]=0
set FQ0[GO0]=1227902024
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNUrnOfKelThuzad.blp"
set GI0[GO0]=0
set FU0[GO0]=875
set X70=GO0
set GO0=GO0+1
set FT0[GO0]=1227902032
set FR0[GO0]=1227902028
set FP0[GO0]=0
set FQ0[GO0]=1227902033
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSoulRing.blp"
set GI0[GO0]=30
set FU0[GO0]=800
set X80=GO0
set GO0=GO0+1
set FT0[GO0]=1227902034
set FR0[GO0]=1227902036
set FP0[GO0]=0
set FQ0[GO0]=1227902035
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGhostBlade.blp"
set GI0[GO0]=30
set FU0[GO0]=4900
set HS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902282
set FR0[GO0]=1227902281
set FP0[GO0]=0
set FQ0[GO0]=1227902283
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNArcaneBoots.blp"
set GI0[GO0]=45
set FU0[GO0]=1450
set X90=GO0
set GO0=GO0+1
set FT0[GO0]=1227902513
set FR0[GO0]=1227902512
set FP0[GO0]=0
set FQ0[GO0]=1227902514
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNMedalionOfCourage.blp"
set GI0[GO0]=7
set FU0[GO0]=1200
set XA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902532
set FR0[GO0]=1227902533
set FP0[GO0]=0
set FQ0[GO0]=1227902531
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNJanggo.blp"
set GI0[GO0]=30
set FU0[GO0]=1850
set HP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902540
set FR0[GO0]=1227902539
set FP0[GO0]=0
set FQ0[GO0]=1227902541
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNJanggo.blp"
set GI0[GO0]=0
set FU0[GO0]=0
set HQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902770
set FR0[GO0]=1227902771
set FP0[GO0]=0
set FQ0[GO0]=1227902772
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBoneChimes.blp"
set GI0[GO0]=30
set FU0[GO0]=2670
set XB0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902787
set FR0[GO0]=1227902789
set FP0[GO0]=0
set FQ0[GO0]=1227902788
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBoneChimes.blp"
set GI0[GO0]=30
set FU0[GO0]=5475
set HU0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902790
set FR0[GO0]=1227902791
set FP0[GO0]=0
set FQ0[GO0]=1227902792
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNTranquilBoots.blp"
set GI0[GO0]=60
set FU0[GO0]=1000
set Z00=GO0
set GO0=GO0+1
set FT0[GO0]=1227902794
set FR0[GO0]=1227902793
set FP0[GO0]=0
set FQ0[GO0]=1227902795
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNTranquilBoots.blp"
set GI0[GO0]=60
set FU0[GO0]=1000
set ZI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902797
set FR0[GO0]=1227902796
set FP0[GO0]=0
set FQ0[GO0]=1227902798
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWitchDoctorMaster.blp"
set GI0[GO0]=10
set FU0[GO0]=3100
set Z10=GO0
set GO0=GO0+1
set FT0[GO0]=1227902800
set FR0[GO0]=1227902799
set FP0[GO0]=0
set FQ0[GO0]=1227902801
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNPendantOfMana.blp"
set GI0[GO0]=20
set FU0[GO0]=4200
set ZO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902805
set FR0[GO0]=1227902806
set FP0[GO0]=0
set FQ0[GO0]=1227902807
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHalberd.blp"
set GI0[GO0]=30
set FU0[GO0]=3850
set XC0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902809
set FR0[GO0]=1227902808
set FP0[GO0]=0
set FQ0[GO0]=1227902810
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAnnihilator.blp"
set GI0[GO0]=60
set FU0[GO0]=6750
set XD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903024
set FR0[GO0]=1227903025
set FP0[GO0]=0
set FQ0[GO0]=1227903026
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRingJadeFalcon.blp"
set GI0[GO0]=0
set FU0[GO0]=1010
set Z20=GO0
set GO0=GO0+1
set FT0[GO0]=1227903027
set FR0[GO0]=1227903028
set FP0[GO0]=0
set FQ0[GO0]=1227903029
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRingJadeFalcon.blp"
set GI0[GO0]=0
set FU0[GO0]=1010
set Z30=GO0
set GO0=GO0+1
set FT0[GO0]=1227903305
set FR0[GO0]=1227903306
set FP0[GO0]=0
set FQ0[GO0]=1227903307
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Weapon_Halberd_10.blp"
set GI0[GO0]=0
set FU0[GO0]=100000
set XZ0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989063
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747990582
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896140
set FR0[GO0]=1227896146
set FP0[GO0]=1747989064
set FQ0[GO0]=1227899987
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=200
set XV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896141
set FR0[GO0]=1227896147
set FP0[GO0]=1747989065
set FQ0[GO0]=1227899988
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=200
set XW0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989066
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896143
set FR0[GO0]=1227896148
set FP0[GO0]=1747989067
set FQ0[GO0]=1227899989
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=2000
set XX0=GO0
set GO0=GO0+1
set FP0[GO0]=1747988788
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=0
set XY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896144
set FR0[GO0]=1227896149
set FP0[GO0]=1747989068
set FQ0[GO0]=1227899991
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1550
set XJ0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989069
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896139
set FR0[GO0]=1227896150
set FP0[GO0]=1747989070
set FQ0[GO0]=1227899992
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=210
set XK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896142
set FR0[GO0]=1227896151
set FP0[GO0]=1747989071
set FQ0[GO0]=1227899993
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=170
set XL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896145
set FR0[GO0]=1227896152
set FP0[GO0]=1747989072
set FQ0[GO0]=1227899994
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=155
set XM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896398
set FR0[GO0]=1227896399
set FP0[GO0]=1747989073
set FQ0[GO0]=1227900208
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=600
set XN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896401
set FR0[GO0]=1227896400
set FP0[GO0]=1747989074
set FQ0[GO0]=1227900209
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=600
set XS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896402
set FR0[GO0]=1227896403
set FP0[GO0]=1747989075
set FQ0[GO0]=1227900210
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1000
set XT0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989076
set G00[GO0]=""
set GI0[GO0]=0
set FU0[GO0]=500
set GO0=GO0+1
set FT0[GO0]=1227896407
set FR0[GO0]=1227896406
set FP0[GO0]=1747989077
set FQ0[GO0]=1227900212
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set XR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896408
set FR0[GO0]=1227896409
set FP0[GO0]=1747989078
set FQ0[GO0]=1227900213
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=700
set XP0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989079
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896624
set FR0[GO0]=1227896410
set FP0[GO0]=1747989080
set FQ0[GO0]=1227900214
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set XQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896625
set FR0[GO0]=1227896626
set FP0[GO0]=1747989081
set FQ0[GO0]=1227900215
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=650
set XU0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989082
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896628
set FR0[GO0]=1227896627
set FP0[GO0]=1747989296
set FQ0[GO0]=1227900216
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set Y00=GO0
set GO0=GO0+1
set FP0[GO0]=1747989297
set G00[GO0]=""
set GI0[GO0]=0
set FU0[GO0]=500
set YI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896630
set FR0[GO0]=1227896662
set FP0[GO0]=1747989298
set FQ0[GO0]=1227900225
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set Y10=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989299
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896631
set FR0[GO0]=1227896663
set FP0[GO0]=1747989300
set FQ0[GO0]=1227900226
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=500
set YO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896632
set FR0[GO0]=1227896664
set FP0[GO0]=1747989301
set FQ0[GO0]=1227900227
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1375
set Y20=GO0
set GO0=GO0+1
set FT0[GO0]=1227896633
set FR0[GO0]=1227896665
set FP0[GO0]=1747989302
set FQ0[GO0]=1227900228
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=800
set Y30=GO0
set GO0=GO0+1
set FT0[GO0]=1227896641
set FR0[GO0]=1227896666
set FP0[GO0]=0
set FQ0[GO0]=1227900229
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1000
set Y40=GO0
set GO0=GO0+1
set FT0[GO0]=1227896642
set FR0[GO0]=1227896880
set FP0[GO0]=1747989304
set FQ0[GO0]=1227900230
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1250
set Y50=GO0
set GO0=GO0+1
set FT0[GO0]=1227896643
set FR0[GO0]=1227896881
set FP0[GO0]=1747989305
set FQ0[GO0]=1227900231
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1250
set Y60=GO0
set GO0=GO0+1
set FT0[GO0]=1227896644
set FR0[GO0]=1227896882
set FP0[GO0]=1747989313
set FQ0[GO0]=1227900232
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1325
set Y70=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989315
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896645
set FR0[GO0]=1227896883
set FP0[GO0]=1747989316
set FQ0[GO0]=1227900233
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1200
set Y80=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989317
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896647
set FR0[GO0]=1227896646
set FP0[GO0]=1747989318
set FQ0[GO0]=1227900234
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1350
set Y90=GO0
set GO0=GO0+1
set FT0[GO0]=1227896648
set FR0[GO0]=1227896884
set FP0[GO0]=1747989319
set FQ0[GO0]=1227900235
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1200
set YA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896655
set FR0[GO0]=1227896885
set FP0[GO0]=1747989320
set FQ0[GO0]=1227900236
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1100
set YB0=GO0
set GO0=GO0+1
set FP0[GO0]=1747989321
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=480
set YC0=GO0
set GO0=GO0+1
set FP0[GO0]=1747989322
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1800
set YD0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989323
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1760
set YK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896650
set FR0[GO0]=1227896888
set FP0[GO0]=1747989324
set FQ0[GO0]=1227900239
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1800
set YE0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989325
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989326
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896653
set FR0[GO0]=1227896889
set FP0[GO0]=1747989327
set FQ0[GO0]=1227900240
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=840
set YF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896656
set FR0[GO0]=1227896897
set FP0[GO0]=1747989329
set FQ0[GO0]=1227900241
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=220
set YG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896657
set FR0[GO0]=1227896898
set FP0[GO0]=1747989330
set FQ0[GO0]=1227900242
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=300
set YH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896658
set FR0[GO0]=1227896899
set FP0[GO0]=1747989331
set FQ0[GO0]=1227900243
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1300
set YZ0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747989333
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227896659
set FR0[GO0]=1227896900
set FP0[GO0]=1747989334
set FQ0[GO0]=1227900244
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=500
set YV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896660
set FR0[GO0]=1227896901
set FP0[GO0]=1747989335
set FQ0[GO0]=1227900245
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=600
set YW0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747990329
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=1227900984
set FR0[GO0]=1227900983
set FP0[GO0]=1747990355
set FQ0[GO0]=1227900985
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=150
set YX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227900996
set FR0[GO0]=1227900998
set FP0[GO0]=1747990356
set FQ0[GO0]=1227900997
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set YY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903314
set FR0[GO0]=1227903315
set FP0[GO0]=1747989332
set FQ0[GO0]=1227903316
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=800
set J10=GO0
set GO0=GO0+1
set FT0[GO0]=1227903317
set FR0[GO0]=1227903318
set FP0[GO0]=1747993941
set FQ0[GO0]=1227903319
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=825
set JO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903044
set FR0[GO0]=1227903045
set FP0[GO0]=0
set FQ0[GO0]=1227903046
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=300
set JI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901016
set FR0[GO0]=1227901018
set FP0[GO0]=1747990360
set FQ0[GO0]=1227901017
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=800
set YJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227896652
set FR0[GO0]=1227901774
set FP0[GO0]=1747989328
set FQ0[GO0]=1227901775
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=900
set YL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901783
set FR0[GO0]=1227901782
set FP0[GO0]=1747993153
set FQ0[GO0]=1227901781
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=250
set YM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902029
set FR0[GO0]=1227902030
set FP0[GO0]=1747993169
set FQ0[GO0]=1227902031
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=125
set YN0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=0
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=480
set YS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902521
set FR0[GO0]=1227902529
set FP0[GO0]=1747993649
set FQ0[GO0]=1227902530
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=875
set YT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902536
set FR0[GO0]=1227902537
set FP0[GO0]=1747993433
set FQ0[GO0]=1227902538
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=325
set YR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902773
set FR0[GO0]=1227902774
set FP0[GO0]=1747993668
set FQ0[GO0]=1227902775
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=1270
set YP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902786
set FR0[GO0]=1227902785
set FP0[GO0]=1747989336
set FQ0[GO0]=1227902777
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp"
set GI0[GO0]=0
set FU0[GO0]=775
set YQ0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747993684
set G00[GO0]=""
set GI0[GO0]=0
set YU0=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747993685
set G00[GO0]=""
set GI0[GO0]=0
set J00=GO0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747993913
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747993921
set G00[GO0]=""
set GI0[GO0]=0
set GO0=GO0+1
set FT0[GO0]=0
set FR0[GO0]=0
set FP0[GO0]=1747993923
set G00[GO0]=""
set GI0[GO0]=0
set MT0=CreateRegion()
call RegionAddRect(MT0,VB)
call RegionAddRect(MT0,WB)
set t=CreateTrigger()
call TriggerAddCondition(t,Condition(function CBO))
set J20=t
set t=null
set JC0=JC0+1
set J50[JC0]=HI0
set J60[JC0]=HB0
set JB0[JC0]=ZV0
set JC0=JC0+1
set J50[JC0]=HO0
set J60[JC0]=GY0
set J70[JC0]=XV0
set JB0[JC0]=ZW0
set JC0=JC0+1
set J50[JC0]=GC0
set J60[JC0]=GY0
set J70[JC0]=XW0
set JB0[JC0]=ZX0
set JC0=JC0+1
set J50[JC0]=H10
set J60[JC0]=H50
set JB0[JC0]=ZY0
set JC0=JC0+1
set J50[JC0]=G40
set J60[JC0]=XX0
set JB0[JC0]=ZK0
set JC0=JC0+1
set J50[JC0]=G40
set J60[JC0]=G60
set J70[JC0]=G50
set JB0[JC0]=ZL0
set JC0=JC0+1
set J50[JC0]=G40
set J60[JC0]=G80
set J70[JC0]=G50
set JB0[JC0]=ZM0
set JC0=JC0+1
set J50[JC0]=G40
set J60[JC0]=H20
set J70[JC0]=G50
set JB0[JC0]=ZN0
set JC0=JC0+1
set J50[JC0]=G50
set J60[JC0]=XJ0
set JB0[JC0]=ZS0
set JC0=JC0+1
set J50[JC0]=H00
set J60[JC0]=H20
set J70[JC0]=H50
set JB0[JC0]=ZR0
set JC0=JC0+1
set J50[JC0]=G70
set J60[JC0]=GH0
set J70[JC0]=XK0
set JB0[JC0]=ZP0
set JC0=JC0+1
set J50[JC0]=G70
set J60[JC0]=H40
set J70[JC0]=XL0
set JB0[JC0]=ZQ0
set JC0=JC0+1
set J50[JC0]=G70
set J60[JC0]=GL0
set J70[JC0]=XM0
set JB0[JC0]=ZU0
set JC0=JC0+1
set J50[JC0]=G90
set J60[JC0]=G60
set J70[JC0]=XN0
set JB0[JC0]=V00
set JC0=JC0+1
set J50[JC0]=GR0
set J60[JC0]=G80
set J70[JC0]=XS0
set JB0[JC0]=VI0
set JC0=JC0+1
set J50[JC0]=HC0
set J60[JC0]=G80
set J70[JC0]=XT0
set JB0[JC0]=V10
set JC0=JC0+1
set J50[JC0]=GB0
set J60[JC0]=GC0
set J70[JC0]=H20
set JB0[JC0]=V20
set JC0=JC0+1
set J50[JC0]=GS0
set J60[JC0]=G50
set J70[JC0]=XR0
set JB0[JC0]=V30
set JC0=JC0+1
set J50[JC0]=G90
set J60[JC0]=G90
set J70[JC0]=H20
set J80[JC0]=XP0
set JB0[JC0]=V40
set JC0=JC0+1
set J50[JC0]=V40
set J60[JC0]=XP0
set JB0[JC0]=V50
set JC0=JC0+1
set J50[JC0]=V60
set J60[JC0]=XP0
set JB0[JC0]=V50
set JC0=JC0+1
set J50[JC0]=GW0
set J60[JC0]=GM0
set JB0[JC0]=V80
set JC0=JC0+1
set J50[JC0]=GM0
set J60[JC0]=XQ0
set JB0[JC0]=VA0
set JC0=JC0+1
set J50[JC0]=H50
set J60[JC0]=H60
set J70[JC0]=HB0
set J80[JC0]=XU0
set JB0[JC0]=VB0
set JC0=JC0+1
set J50[JC0]=GU0
set J60[JC0]=GG0
set J70[JC0]=HA0
set JB0[JC0]=VC0
set JC0=JC0+1
set J50[JC0]=ZW0
set J60[JC0]=ZX0
set J70[JC0]=Y00
set JB0[JC0]=VD0
set JC0=JC0+1
set J50[JC0]=VI0
set J60[JC0]=V00
set JB0[JC0]=VE0
set JC0=JC0+1
set J50[JC0]=GS0
set J60[JC0]=GS0
set J70[JC0]=Y10
set JB0[JC0]=VF0
set JC0=JC0+1
set J50[JC0]=ZV0
set J60[JC0]=GB0
set J70[JC0]=GD0
set JB0[JC0]=VG0
set JC0=JC0+1
set J50[JC0]=GA0
set J60[JC0]=GB0
set J70[JC0]=YO0
set JB0[JC0]=VH0
set JC0=JC0+1
set J50[JC0]=GS0
set J60[JC0]=GR0
set J70[JC0]=Y20
set JB0[JC0]=VZ0
set JC0=JC0+1
set J50[JC0]=V00
set J60[JC0]=H90
set J70[JC0]=Y30
set JB0[JC0]=VN0
set JC0=JC0+1
set J50[JC0]=GD0
set J60[JC0]=XE0
set JB0[JC0]=VS0
set JC0=JC0+1
set J50[JC0]=H60
set J60[JC0]=ZU0
set J70[JC0]=Y50
set JB0[JC0]=VT0
set JC0=JC0+1
set J50[JC0]=VT0
set J60[JC0]=Y50
set JB0[JC0]=VR0
set JC0=JC0+1
set J50[JC0]=VR0
set J60[JC0]=Y50
set JB0[JC0]=VP0
set JC0=JC0+1
set J50[JC0]=VP0
set J60[JC0]=Y50
set JB0[JC0]=VQ0
set JC0=JC0+1
set J50[JC0]=VQ0
set J60[JC0]=Y50
set JB0[JC0]=VU0
set JC0=JC0+1
set J50[JC0]=H60
set J60[JC0]=G80
set J70[JC0]=Y60
set JB0[JC0]=W00
set JC0=JC0+1
set J50[JC0]=W00
set J60[JC0]=Y60
set JB0[JC0]=WI0
set JC0=JC0+1
set J50[JC0]=WI0
set J60[JC0]=Y60
set JB0[JC0]=W10
set JC0=JC0+1
set J50[JC0]=H90
set J60[JC0]=ZV0
set J70[JC0]=Y70
set JB0[JC0]=WO0
set JC0=JC0+1
set J50[JC0]=GE0
set J60[JC0]=H30
set JB0[JC0]=W30
set JC0=JC0+1
set J50[JC0]=VH0
set J60[JC0]=GE0
set J70[JC0]=Y80
set JB0[JC0]=W50
set JC0=JC0+1
set J50[JC0]=GE0
set J60[JC0]=HC0
set J70[JC0]=HC0
set JB0[JC0]=W60
set JC0=JC0+1
set J50[JC0]=H30
set J60[JC0]=Y90
set JB0[JC0]=W80
set JC0=JC0+1
set J50[JC0]=GN0
set J60[JC0]=HA0
set J70[JC0]=YA0
set JB0[JC0]=WA0
set JC0=JC0+1
set J50[JC0]=GN0
set J60[JC0]=V80
set J70[JC0]=YB0
set JB0[JC0]=WC0
set JC0=JC0+1
set J50[JC0]=GN0
set J60[JC0]=V90
set J70[JC0]=YB0
set JB0[JC0]=WC0
set JC0=JC0+1
set J50[JC0]=H90
set J60[JC0]=H90
set J70[JC0]=GU0
set J80[JC0]=G20
set JB0[JC0]=WD0
set JC0=JC0+1
set J50[JC0]=H90
set J60[JC0]=H90
set J70[JC0]=GU0
set J80[JC0]=G30
set JB0[JC0]=WD0
set JC0=JC0+1
set J50[JC0]=GF0
set J60[JC0]=H00
set J70[JC0]=HN0
set JB0[JC0]=WF0
set JC0=JC0+1
set J50[JC0]=H50
set J60[JC0]=GC0
set J70[JC0]=YR0
set JB0[JC0]=XA0
set JC0=JC0+1
set J50[JC0]=GU0
set J60[JC0]=GR0
set J70[JC0]=G90
set J80[JC0]=H60
set JB0[JC0]=JD0
set JC0=JC0+1
set J50[JC0]=ZV0
set J60[JC0]=ZR0
set J70[JC0]=YE0
set JB0[JC0]=WH0
set JC0=JC0+1
set J50[JC0]=H90
set J60[JC0]=GT0
set J70[JC0]=HB0
set JB0[JC0]=WZ0
set JC0=JC0+1
set J50[JC0]=HA0
set J60[JC0]=HI0
set J70[JC0]=H70
set JB0[JC0]=WV0
set JC0=JC0+1
set J50[JC0]=HA0
set J60[JC0]=HI0
set J70[JC0]=H80
set JB0[JC0]=WV0
set JC0=JC0+1
set J50[JC0]=GG0
set J60[JC0]=H10
set J70[JC0]=YF0
set JB0[JC0]=WX0
set JC0=JC0+1
set J50[JC0]=GX0
set J60[JC0]=V30
set J70[JC0]=YL0
set JB0[JC0]=WY0
set JC0=JC0+1
set J50[JC0]=ZD0
set J70[JC0]=YG0
set JB0[JC0]=WJ0
set JC0=JC0+1
set J50[JC0]=HO0
set J60[JC0]=ZY0
set J70[JC0]=GM0
set J80[JC0]=YH0
set JB0[JC0]=WK0
set JC0=JC0+1
set J50[JC0]=HO0
set J60[JC0]=ZJ0
set J70[JC0]=GM0
set J80[JC0]=YH0
set JB0[JC0]=WK0
set JC0=JC0+1
set J50[JC0]=GX0
set J60[JC0]=GQ0
set J70[JC0]=GC0
set J80[JC0]=YZ0
set JB0[JC0]=WL0
set JC0=JC0+1
set J50[JC0]=VC0
set J60[JC0]=X80
set J70[JC0]=J10
set JB0[JC0]=WM0
set JC0=JC0+1
set J50[JC0]=WV0
set J60[JC0]=ZX0
set J70[JC0]=JO0
set JB0[JC0]=Z40
set JC0=JC0+1
set J50[JC0]=WW0
set J60[JC0]=ZX0
set J70[JC0]=JO0
set JB0[JC0]=Z40
set JC0=JC0+1
set J50[JC0]=HO0
set J60[JC0]=HO0
set J70[JC0]=HI0
set J80[JC0]=GP0
set JB0[JC0]=WN0
set JC0=JC0+1
set J50[JC0]=G50
set J60[JC0]=GW0
set J70[JC0]=GA0
set J80[JC0]=YV0
set JB0[JC0]=WP0
set JC0=JC0+1
set J50[JC0]=GT0
set J60[JC0]=GQ0
set J70[JC0]=YW0
set JB0[JC0]=WQ0
set JC0=JC0+1
set J50[JC0]=ZR0
set J60[JC0]=ZR0
set J70[JC0]=YQ0
set JB0[JC0]=X00
set JC0=JC0+1
set J50[JC0]=G40
set J60[JC0]=GA0
set J70[JC0]=GA0
set JB0[JC0]=XI0
set JC0=JC0+1
set J50[JC0]=HK0
set J60[JC0]=GY0
set J70[JC0]=GY0
set J80[JC0]=GY0
set J90[JC0]=YX0
set JB0[JC0]=X10
set JC0=JC0+1
set J50[JC0]=H60
set J60[JC0]=HO0
set J70[JC0]=YY0
set JB0[JC0]=XO0
set JC0=JC0+1
set J50[JC0]=WN0
set J60[JC0]=ZW0
set J70[JC0]=YJ0
set JB0[JC0]=X20
set JC0=JC0+1
set J50[JC0]=H70
set J60[JC0]=H40
set J70[JC0]=H40
set JB0[JC0]=X30
set JC0=JC0+1
set J50[JC0]=H80
set J60[JC0]=H40
set J70[JC0]=H40
set JB0[JC0]=X30
set JC0=JC0+1
set J50[JC0]=H50
set J60[JC0]=GH0
set J70[JC0]=GH0
set J80[JC0]=YM0
set JB0[JC0]=X60
set JC0=JC0+1
set J50[JC0]=H50
set J60[JC0]=HO0
set J70[JC0]=YN0
set JB0[JC0]=X80
set JC0=JC0+1
set J50[JC0]=GF0
set J60[JC0]=X50
set JB0[JC0]=HS0
set JC0=JC0+1
set J50[JC0]=G40
set J60[JC0]=GG0
set JB0[JC0]=X90
set JC0=JC0+1
set J50[JC0]=H20
set J60[JC0]=ZP0
set J70[JC0]=YT0
set JB0[JC0]=HP0
set JC0=JC0+1
set J50[JC0]=HP0
set J60[JC0]=YT0
set JB0[JC0]=HP0
set JC0=JC0+1
set J50[JC0]=HQ0
set J60[JC0]=YT0
set JB0[JC0]=HP0
set JC0=JC0+1
set J50[JC0]=GW0
set J60[JC0]=ZU0
set J70[JC0]=YP0
set JB0[JC0]=XB0
set JC0=JC0+1
set J50[JC0]=G40
set J60[JC0]=H10
set J70[JC0]=HO0
set JB0[JC0]=Z00
set JC0=JC0+1
set J50[JC0]=H60
set J60[JC0]=H60
set J70[JC0]=HA0
set JB0[JC0]=Z10
set JC0=JC0+1
set J50[JC0]=VI0
set J60[JC0]=HN0
set JB0[JC0]=XC0
set JC0=JC0+1
set J50[JC0]=V10
set J60[JC0]=H30
set JB0[JC0]=XD0
set JC0=JC0+1
set J50[JC0]=ZQ0
set J60[JC0]=ZY0
set JB0[JC0]=Z20
set JC0=JC0+1
set J50[JC0]=ZQ0
set J60[JC0]=ZJ0
set JB0[JC0]=Z30
set JC0=JC0+1
set J50[JC0]=XG0
set J60[JC0]=XG0
set J70[JC0]=XG0
set J80[JC0]=XG0
set J90[JC0]=XG0
set JA0[JC0]=XG0
set JB0[JC0]=XH0
set GO0=GO0+1
set FT0[GO0]=1227899226
set FR0[GO0]=1227895089
set FP0[GO0]=0
set FQ0[GO0]=1227900249
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227894854
set FR0[GO0]=1227894852
set FP0[GO0]=0
set FQ0[GO0]=1227900250
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903545
set FR0[GO0]=1227903553
set FP0[GO0]=0
set FQ0[GO0]=1227903554
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L60=GO0
set GO0=GO0+1
set FT0[GO0]=1227903542
set FR0[GO0]=1227903543
set FP0[GO0]=0
set FQ0[GO0]=1227903544
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L50=GO0
set GO0=GO0+1
set FT0[GO0]=1227895096
set FR0[GO0]=1227894841
set FP0[GO0]=0
set FQ0[GO0]=1227900464
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895097
set FR0[GO0]=1227894837
set FP0[GO0]=0
set FQ0[GO0]=1227900470
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895105
set FR0[GO0]=1227894855
set FP0[GO0]=0
set FQ0[GO0]=1227900465
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JZ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895106
set FR0[GO0]=1227894836
set FP0[GO0]=0
set FQ0[GO0]=1227900466
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903539
set FR0[GO0]=1227903540
set FP0[GO0]=0
set FQ0[GO0]=1227903541
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L40=GO0
set GO0=GO0+1
set FT0[GO0]=1227895112
set FR0[GO0]=1227894835
set FP0[GO0]=0
set FQ0[GO0]=1227900467
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JW0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895113
set FR0[GO0]=1227894834
set FP0[GO0]=0
set FQ0[GO0]=1227900469
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895371
set FR0[GO0]=1227894833
set FP0[GO0]=0
set FQ0[GO0]=1227900468
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227895372
set FR0[GO0]=1227894857
set FP0[GO0]=0
set FQ0[GO0]=1227900485
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903537
set FR0[GO0]=1227903536
set FP0[GO0]=0
set FQ0[GO0]=1227903538
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899442
set FR0[GO0]=1227894856
set FP0[GO0]=0
set FQ0[GO0]=1227900473
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899443
set FR0[GO0]=1227894864
set FP0[GO0]=0
set FQ0[GO0]=1227900481
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899444
set FR0[GO0]=1227894869
set FP0[GO0]=0
set FQ0[GO0]=1227900471
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899447
set FR0[GO0]=1227894832
set FP0[GO0]=0
set FQ0[GO0]=1227900484
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899446
set FR0[GO0]=1227895094
set FP0[GO0]=0
set FQ0[GO0]=1227900483
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899445
set FR0[GO0]=1227895095
set FP0[GO0]=0
set FQ0[GO0]=1227900482
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227899449
set FR0[GO0]=1227894863
set FP0[GO0]=0
set FQ0[GO0]=1227900472
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901493
set FR0[GO0]=1227901268
set FP0[GO0]=0
set FQ0[GO0]=1227901258
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JU0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901270
set FR0[GO0]=1227901269
set FP0[GO0]=0
set FQ0[GO0]=1227901241
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K00=GO0
set GO0=GO0+1
set FT0[GO0]=1227901271
set FR0[GO0]=1227901267
set FP0[GO0]=0
set FQ0[GO0]=1227901257
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901272
set FR0[GO0]=1227901266
set FP0[GO0]=0
set FQ0[GO0]=1227901249
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K10=GO0
set GO0=GO0+1
set FT0[GO0]=1227901273
set FR0[GO0]=1227901265
set FP0[GO0]=0
set FQ0[GO0]=1227901256
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901274
set FR0[GO0]=1227901259
set FP0[GO0]=0
set FQ0[GO0]=1227901255
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K20=GO0
set GO0=GO0+1
set FT0[GO0]=1227901488
set FR0[GO0]=1227901260
set FP0[GO0]=0
set FQ0[GO0]=1227901254
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K30=GO0
set GO0=GO0+1
set FT0[GO0]=1227901489
set FR0[GO0]=1227901261
set FP0[GO0]=0
set FQ0[GO0]=1227901253
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K40=GO0
set GO0=GO0+1
set FT0[GO0]=1227901490
set FR0[GO0]=1227901264
set FP0[GO0]=0
set FQ0[GO0]=1227901252
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K50=GO0
set GO0=GO0+1
set FT0[GO0]=1227901491
set FR0[GO0]=1227901263
set FP0[GO0]=0
set FQ0[GO0]=1227901251
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K60=GO0
set GO0=GO0+1
set FT0[GO0]=1227901492
set FR0[GO0]=1227901262
set FP0[GO0]=0
set FQ0[GO0]=1227901250
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K70=GO0
set GO0=GO0+1
set FT0[GO0]=1227901238
set FR0[GO0]=1227901239
set FP0[GO0]=0
set FQ0[GO0]=1227901240
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K80=GO0
set GO0=GO0+1
set FT0[GO0]=1227901530
set FR0[GO0]=1227901523
set FP0[GO0]=0
set FQ0[GO0]=1227901522
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set K90=GO0
set GO0=GO0+1
set FT0[GO0]=1227901744
set FR0[GO0]=1227901524
set FP0[GO0]=0
set FQ0[GO0]=1227901516
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KA0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901745
set FR0[GO0]=1227901525
set FP0[GO0]=0
set FQ0[GO0]=1227901517
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KB0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901746
set FR0[GO0]=1227901527
set FP0[GO0]=0
set FQ0[GO0]=1227901518
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KC0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901747
set FR0[GO0]=1227901526
set FP0[GO0]=0
set FQ0[GO0]=1227901521
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KD0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901748
set FR0[GO0]=1227901529
set FP0[GO0]=0
set FQ0[GO0]=1227901520
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KE0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901749
set FR0[GO0]=1227901528
set FP0[GO0]=0
set FQ0[GO0]=1227901519
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KF0=GO0
set GO0=GO0+1
set FT0[GO0]=1227901769
set FR0[GO0]=1227901768
set FP0[GO0]=0
set FQ0[GO0]=1227901770
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KG0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902004
set FR0[GO0]=1227902005
set FP0[GO0]=0
set FQ0[GO0]=1227902008
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set JL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902003
set FR0[GO0]=1227902000
set FP0[GO0]=0
set FQ0[GO0]=1227902009
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KH0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902002
set FR0[GO0]=1227902007
set FP0[GO0]=0
set FQ0[GO0]=1227902017
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KZ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902037
set FR0[GO0]=1227902038
set FP0[GO0]=0
set FQ0[GO0]=1227902039
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KV0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902257
set FR0[GO0]=1227902256
set FP0[GO0]=0
set FQ0[GO0]=1227902258
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KW0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902261
set FR0[GO0]=1227902260
set FP0[GO0]=0
set FQ0[GO0]=1227902259
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KX0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902262
set FR0[GO0]=1227902263
set FP0[GO0]=0
set FQ0[GO0]=1227902264
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KY0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902278
set FR0[GO0]=1227902279
set FP0[GO0]=0
set FQ0[GO0]=1227902280
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KJ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902285
set FR0[GO0]=1227902284
set FP0[GO0]=0
set FQ0[GO0]=1227902286
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KK0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902287
set FR0[GO0]=1227902288
set FP0[GO0]=0
set FQ0[GO0]=1227902289
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KL0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902545
set FR0[GO0]=1227902546
set FP0[GO0]=0
set FQ0[GO0]=1227902547
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KM0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902548
set FR0[GO0]=1227902549
set FP0[GO0]=0
set FQ0[GO0]=1227902550
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KN0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902551
set FR0[GO0]=1227902552
set FP0[GO0]=0
set FQ0[GO0]=1227902553
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KS0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902554
set FR0[GO0]=1227902768
set FP0[GO0]=0
set FQ0[GO0]=1227902769
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KT0=GO0
set GO0=GO0+1
set FT0[GO0]=1227902802
set FR0[GO0]=1227902803
set FP0[GO0]=0
set FQ0[GO0]=1227902804
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KR0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903047
set FR0[GO0]=1227903048
set FP0[GO0]=0
set FQ0[GO0]=1227903049
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KP0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903050
set FR0[GO0]=1227903051
set FP0[GO0]=0
set FQ0[GO0]=1227903052
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KQ0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903056
set FR0[GO0]=1227903057
set FP0[GO0]=0
set FQ0[GO0]=1227903058
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set KU0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903059
set FR0[GO0]=1227903060
set FP0[GO0]=0
set FQ0[GO0]=1227903061
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L00=GO0
set GO0=GO0+1
set FT0[GO0]=1227903062
set FR0[GO0]=1227903063
set FP0[GO0]=0
set FQ0[GO0]=1227903064
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set LI0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903280
set FR0[GO0]=1227903282
set FP0[GO0]=0
set FQ0[GO0]=1227903284
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set LO0=GO0
set GO0=GO0+1
set FT0[GO0]=1227903281
set FR0[GO0]=1227903283
set FP0[GO0]=0
set FQ0[GO0]=1227903285
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L10=GO0
set GO0=GO0+1
set FT0[GO0]=1227903308
set FR0[GO0]=1227903309
set FP0[GO0]=0
set FQ0[GO0]=1227903310
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L20=GO0
set GO0=GO0+1
set FT0[GO0]=1227903311
set FR0[GO0]=1227903312
set FP0[GO0]=0
set FQ0[GO0]=1227903313
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L30=GO0
set GO0=GO0+1
set FT0[GO0]=1227903562
set FR0[GO0]=1227903563
set FP0[GO0]=0
set FQ0[GO0]=1227903564
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L70=GO0
set GO0=GO0+1
set FT0[GO0]=1227903565
set FR0[GO0]=1227903566
set FP0[GO0]=0
set FQ0[GO0]=1227903567
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Wand_05.blp"
set GI0[GO0]=60
set L80=GO0
set GO0=GO0+1
set FT0[GO0]=1227895617
set FR0[GO0]=1227896113
set FP0[GO0]=1747990603
set FQ0[GO0]=1227899961
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSteelArmor.blp"
set GI0[GO0]=0
set G10[GO0]=H70
set GO0=GO0+1
set FT0[GO0]=1227895641
set FR0[GO0]=1227896114
set FP0[GO0]=1747990616
set FQ0[GO0]=1227899705
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrbofSlowness.blp"
set GI0[GO0]=0
set G10[GO0]=H90
set GO0=GO0+1
set FT0[GO0]=1227895379
set FR0[GO0]=1227895376
set FP0[GO0]=1747990611
set FQ0[GO0]=1227899713
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGlove.blp"
set GI0[GO0]=0
set G10[GO0]=G50
set GO0=GO0+1
set FT0[GO0]=1227895374
set FR0[GO0]=1227895378
set FP0[GO0]=1747990608
set FQ0[GO0]=1227899731
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBoots.blp"
set GI0[GO0]=0
set G10[GO0]=G60
set GO0=GO0+1
set FT0[GO0]=1227895386
set FR0[GO0]=1227895859
set FP0[GO0]=1747990609
set FQ0[GO0]=1227899734
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNBelt.blp"
set GI0[GO0]=0
set G10[GO0]=G80
set GO0=GO0+1
set FT0[GO0]=1227895601
set FR0[GO0]=1227895861
set FP0[GO0]=1747990612
set FQ0[GO0]=1227899957
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNClawsOfAttack.blp"
set GI0[GO0]=0
set G10[GO0]=GA0
set GO0=GO0+1
set FT0[GO0]=1227895618
set FR0[GO0]=1227895877
set FP0[GO0]=1747990606
set FQ0[GO0]=1227899969
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNHelmutPurple.blp"
set GI0[GO0]=0
set G10[GO0]=GW0
set GO0=GO0+1
set FT0[GO0]=1227895621
set FR0[GO0]=1227895880
set FP0[GO0]=1747990615
set FQ0[GO0]=1227899703
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp"
set GI0[GO0]=18
set G10[GO0]=GJ0
set GO0=GO0+1
set FT0[GO0]=1227895623
set FR0[GO0]=1227895883
set FP0[GO0]=1747990607
set FQ0[GO0]=1227899716
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNUndeadShrine.blp"
set GI0[GO0]=0
set G10[GO0]=GM0
set GO0=GO0+1
set FT0[GO0]=1227895632
set FR0[GO0]=1227895891
set FP0[GO0]=1747990613
set FQ0[GO0]=1227899737
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAlleriaFlute.blp"
set GI0[GO0]=0
set G10[GO0]=H00
set GO0=GO0+1
set FT0[GO0]=1227895633
set FR0[GO0]=1227895892
set FP0[GO0]=1747990599
set FQ0[GO0]=1227899977
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGoldRing.blp"
set GI0[GO0]=0
set G10[GO0]=HI0
set GO0=GO0+1
set FT0[GO0]=1227895635
set FR0[GO0]=1227895894
set FP0[GO0]=1747990604
set FQ0[GO0]=1227899978
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRingSkull.blp"
set GI0[GO0]=0
set G10[GO0]=HO0
set GO0=GO0+1
set FT0[GO0]=1227895636
set FR0[GO0]=1227895895
set FP0[GO0]=1747990610
set FQ0[GO0]=1227899728
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNRobeOfTheMagi.blp"
set GI0[GO0]=0
set G10[GO0]=H20
set GO0=GO0+1
set FT0[GO0]=1227895638
set FR0[GO0]=1227895897
set FP0[GO0]=1747990597
set FQ0[GO0]=1227899701
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSlippersOfAgility.blp"
set GI0[GO0]=0
set G10[GO0]=H40
set GO0=GO0+1
set FT0[GO0]=1227895639
set FR0[GO0]=1227895898
set FP0[GO0]=1747990602
set FQ0[GO0]=1227899979
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSobiMask.blp"
set GI0[GO0]=0
set G10[GO0]=H50
set GO0=GO0+1
set FT0[GO0]=1227900740
set FR0[GO0]=1227900739
set FP0[GO0]=1747990601
set FQ0[GO0]=1227900741
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNWand.blp"
set GI0[GO0]=0
set G10[GO0]=HK0
set GO0=GO0+1
set FT0[GO0]=1227901012
set FR0[GO0]=1227901010
set FP0[GO0]=1747990598
set FQ0[GO0]=1227901015
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrcMeleeUpTwo.blp"
set GI0[GO0]=0
set G10[GO0]=HL0
set GO0=GO0+1
set FT0[GO0]=1227901495
set FR0[GO0]=1227901494
set FP0[GO0]=1747990614
set FQ0[GO0]=1227901496
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNAmulet.blp"
set GI0[GO0]=0
set G10[GO0]=HN0
set GO0=GO0+1
set FT0[GO0]=1227895628
set FR0[GO0]=1227895888
set FP0[GO0]=1747990605
set FQ0[GO0]=1227899717
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Misc_Cape_08.blp"
set GI0[GO0]=0
set G10[GO0]=GP0
set GO0=GO0+1
set FT0[GO0]=1227896129
set FR0[GO0]=1227896137
set FP0[GO0]=1747990600
set FQ0[GO0]=0
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNScrollUber.blp"
set GI0[GO0]=0
set G10[GO0]=ZC0
set GO0=GO0+1
set FT0[GO0]=1227895607
set FR0[GO0]=1227895874
set FP0[GO0]=1747990835
set FQ0[GO0]=1227899730
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNEnchantedGemstone.blp"
set GI0[GO0]=0
set G10[GO0]=GG0
set GO0=GO0+1
set FT0[GO0]=1227895377
set FR0[GO0]=1227895375
set FP0[GO0]=1747993167
set FQ0[GO0]=1227894849
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNINV_Misc_Cape_08.blp"
set GI0[GO0]=0
set G10[GO0]=G40
set GO0=GO0+1
set GO0=GO0+1
set FT0[GO0]=1227895602
set FR0[GO0]=1227895862
set FP0[GO0]=1747993942
set FQ0[GO0]=1227899738
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp"
set GI0[GO0]=0
set G10[GO0]=GB0
set GO0=GO0+1
set FT0[GO0]=1227902273
set FR0[GO0]=1227902265
set FP0[GO0]=1747993422
set FQ0[GO0]=1227902274
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNOrbOfVenom.blp"
set GI0[GO0]=0
set G10[GO0]=G20
set GO0=GO0+1
set FT0[GO0]=1227895603
set FR0[GO0]=1227895863
set FP0[GO0]=1747993648
set FQ0[GO0]=1227899959
set G00[GO0]="ReplaceableTextures\\CommandButtons\\BTNGlove.blp"
set GI0[GO0]=0
set G10[GO0]=GC0
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerAddCondition(t,Condition(function ENO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_DROP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_PAWN_ITEM)
call TriggerAddCondition(t,Condition(function FYO))
set LY0=t
set t=null
set t=CreateTrigger()
call TriggerAddCondition(t,Condition(function FKO))
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_DROP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_PAWN_ITEM)
call TriggerAddCondition(t,Condition(function G5O))
set MO0=t
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_USE_ITEM)
call TriggerAddCondition(t,Condition(function G9O))
set M20=t
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function G7O))
set t=null
set t=CreateTrigger()
call USI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GGO))
set t=null
set t=CreateTrigger()
call USI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call USI(t,EVENT_PLAYER_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function GWO))
set M60=t
set t=null
set t=CreateTrigger()
set t=CreateTrigger()
call USI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(t,function GNO)
call TriggerAddCondition(t,Condition(function GJO))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function GPO))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddAction(t,function H3O)
call TriggerAddCondition(t,Condition(function HIO))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.33,true)
call TriggerAddCondition(t,Condition(function HTO))
set t=null
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.75,true)
call TriggerAddCondition(t,Condition(function Z0O))
set t=null
call SetPlayerAbilityAvailable(BO[1],1093744436,false)
call SetPlayerAbilityAvailable(BO[2],1093744436,false)
call SetPlayerAbilityAvailable(BO[3],1093744436,false)
call SetPlayerAbilityAvailable(BO[4],1093744436,false)
call SetPlayerAbilityAvailable(BO[5],1093744436,false)
call SetPlayerAbilityAvailable(CO[1],1093744436,false)
call SetPlayerAbilityAvailable(CO[2],1093744436,false)
call SetPlayerAbilityAvailable(CO[3],1093744436,false)
call SetPlayerAbilityAvailable(CO[4],1093744436,false)
call SetPlayerAbilityAvailable(CO[5],1093744436,false)
set t=CreateTrigger()
call USI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function ZNO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call TriggerAddCondition(t,Condition(function ZRO))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function ZTO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function ZUO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call TriggerAddCondition(t,Condition(function V4O))
set MG0[0]=1093817936
set MG0[1]=1093817937
set MG0[2]=1093817938
set MG0[3]=1093817939
set MG0[4]=1093817940
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function V9O))
set t=null
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function VWO))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VJO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VNO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call TriggerAddCondition(t,Condition(function X8O))
set t=null
call L2O()
call SetAltMinimapIcon("war3mapImported\\black.blp")
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function LNO))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function LJO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NAO))
call SetPlayerAbilityAvailable(BO[1],1093752406,false)
call SetPlayerAbilityAvailable(BO[2],1093752406,false)
call SetPlayerAbilityAvailable(BO[3],1093752406,false)
call SetPlayerAbilityAvailable(BO[4],1093752406,false)
call SetPlayerAbilityAvailable(BO[5],1093752406,false)
call SetPlayerAbilityAvailable(CO[1],1093752406,false)
call SetPlayerAbilityAvailable(CO[2],1093752406,false)
call SetPlayerAbilityAvailable(CO[3],1093752406,false)
call SetPlayerAbilityAvailable(CO[4],1093752406,false)
call SetPlayerAbilityAvailable(CO[5],1093752406,false)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_USE_ITEM)
call TriggerAddCondition(t,Condition(function NNO))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(t,function NRO)
call TriggerAddCondition(t,Condition(function NTO))
set BFO=GetRectCenter(P4)
set N0=CreateUnitAtLoc(Player(12),1848651852,BFO,bj_UNIT_FACING)
call SetUnitAcquireRange(N0,150)
call B5O(N0)
call RemoveLocation(BFO)
call UnitAddItem(N0,CreateItem(FR0[VL0],0,0))
call UnitAddAbility(N0,1093743666)
set BFO=GetRectCenter(H4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(Z4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(V4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(W4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(X4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(Y4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(J4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(K4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(L4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(M4)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(V5)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set BFO=GetRectCenter(X5)
call RemoveUnit(CreateUnitAtLoc(DO,1966092337,BFO,0))
call RemoveLocation(BFO)
set t=CreateTrigger()
call TriggerRegisterUnitInRange(t,DZ,300,Condition(function ULI))
call TriggerRegisterUnitInRange(t,ZZ,300,Condition(function ULI))
call TriggerRegisterUnitInRange(t,BZ,300,Condition(function ULI))
call TriggerAddCondition(t,Condition(function NUO))
set t=null
set GG=CreateTrigger()
call TriggerAddAction(GG,function SIO)
set HG=CreateTrigger()
call TriggerAddAction(HG,function SOO)
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,C4)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,P3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,SA)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function S3O))
set t=null
set S5O=null
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,U3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,M3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,KA)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function S6O))
set t=null
set S5O=null
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,B4)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,R3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,TA)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function S8O))
set t=null
set S5O=null
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,I4)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,N3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,LA)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function SAO))
set t=null
set S5O=null
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,T3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,A4)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,NA)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function SCO))
set t=null
set S5O=null
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,Q3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,L3)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
set S5O=CreateRegion()
call RegionAddRect(S5O,MA)
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function SEO))
set t=null
set S5O=null
set ZG=CreateTrigger()
call TriggerAddAction(ZG,function SPO)
set VG=CreateTrigger()
call TriggerRegisterUnitEvent(VG,IX0,EVENT_UNIT_DEATH)
call TriggerAddAction(VG,function T0O)
set WG=CreateTrigger()
call TriggerRegisterUnitEvent(WG,IY0,EVENT_UNIT_DEATH)
call TriggerAddAction(WG,function T1O)
set XG=CreateTrigger()
call TriggerRegisterUnitEvent(XG,IJ0,EVENT_UNIT_DEATH)
call TriggerAddAction(XG,function T2O)
set YG=CreateTrigger()
call TriggerRegisterUnitEvent(YG,IZ0,EVENT_UNIT_DEATH)
call TriggerAddAction(YG,function T4O)
set JG=CreateTrigger()
call TriggerRegisterUnitEvent(JG,IV0,EVENT_UNIT_DEATH)
call TriggerAddAction(JG,function T6O)
set KG=CreateTrigger()
call TriggerRegisterUnitEvent(KG,IW0,EVENT_UNIT_DEATH)
call TriggerAddAction(KG,function T8O)
set LG=CreateTrigger()
call TriggerRegisterUnitEvent(LG,CB0,EVENT_UNIT_DEATH)
call TriggerAddAction(LG,function TAO)
set MG=CreateTrigger()
call TriggerRegisterUnitEvent(MG,CC0,EVENT_UNIT_DEATH)
call TriggerAddAction(MG,function TCO)
set NG=CreateTrigger()
call TriggerRegisterUnitEvent(NG,CD0,EVENT_UNIT_DEATH)
call TriggerAddAction(NG,function TEO)
set SG=CreateTrigger()
call TriggerRegisterUnitEvent(SG,C80,EVENT_UNIT_DEATH)
call TriggerAddAction(SG,function TGO)
set TG=CreateTrigger()
call TriggerRegisterUnitEvent(TG,C90,EVENT_UNIT_DEATH)
call TriggerAddAction(TG,function TZO)
set RG=CreateTrigger()
call TriggerRegisterUnitEvent(RG,CA0,EVENT_UNIT_DEATH)
call TriggerAddAction(RG,function TWO)
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,I60,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function TYO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,BQ0,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function TKO))
set t=null
set PG=CreateTrigger()
call UMI(PG,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(PG,Condition(function TMO))
call TriggerAddAction(PG,function TNO)
set QG=CreateTrigger()
call UMI(QG,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(QG,Condition(function TTO))
call TriggerAddAction(QG,function TRO)
set UG=CreateTrigger()
call TriggerAddAction(UG,function TQO)
set IH=CreateTrigger()
call TriggerRegisterTimerEventSingle(IH,75.00)
call TriggerAddAction(IH,function R0O)
set OH=CreateTrigger()
call TriggerAddCondition(OH,Condition(function P3O))
set BH=CreateTrigger()
call TriggerAddAction(BH,function P5O)
set CH=CreateTrigger()
call TriggerAddAction(CH,function PAO)
set DH=CreateTrigger()
call UMI(DH,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(DH,Condition(function PCO))
call TriggerAddAction(DH,function PDO)
set EH=CreateTrigger()
call UMI(EH,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(EH,Condition(function PFO))
call TriggerAddAction(EH,function PGO)
set FH=CreateTrigger()
call TriggerRegisterTimerEventPeriodic(FH,1.00)
call TriggerAddAction(FH,function PXO)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELECTED)
call TriggerAddCondition(t,Condition(function UVO))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DESELECTED)
call TriggerAddCondition(t,Condition(function UZO))
set t=null
if GetRandomInt(0,10)<11 then
set t=CreateTrigger()
set d=GetRandomReal(60,90)
call TriggerRegisterTimerEvent(t,d,false)
set t=null
endif
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IA0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IA0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I62))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IB0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IB0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I72))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IC0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IC0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I82))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,ID0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,ID0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I92))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IE0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IE0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IA2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IF0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IF0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IB2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IG0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IG0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IC2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IH0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IH0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function ID2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IZ0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IZ0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IE2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IV0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IV0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IF2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IW0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IW0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IG2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IX0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IX0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IH2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IY0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IY0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IZ2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,IJ0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,IJ0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IV2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,I60,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,I60,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IW2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C10,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C10,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function UNO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,CO0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,CO0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function USO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C20,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C20,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function UTO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C30,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C30,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function URO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C40,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C40,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function UPO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C50,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C50,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function UQO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C60,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C60,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function UUO))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C70,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C70,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I02))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C80,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C80,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function II2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,C90,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,C90,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I12))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,CA0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,CA0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IO2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,CB0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,CB0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I22))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,CC0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,CC0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I32))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,CD0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,CD0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I42))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,BQ0,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,BQ0,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I52))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function UKO))
set t=null
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,5,true)
call TriggerAddCondition(t,Condition(function IR2))
set t=null
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,4,true)
call TriggerAddCondition(t,Condition(function O22))
set t=null
set TR0=NTI()
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,bj_mapInitialPlayableArea)
call TriggerRegisterEnterRegion(t,S5O,Condition(function N1I))
call TriggerAddCondition(t,Condition(function O72))
set t=null
set S5O=null
set t=CreateTrigger()
call TriggerAddCondition(t,Condition(function O92))
call TriggerRegisterTimerEvent(t,5,true)
set t=null
call DestroyFogModifier(CreateFogModifierRadius(BO[0],FOG_OF_WAR_VISIBLE,-4550,1250,300,true,true))
call DestroyFogModifier(CreateFogModifierRadius(CO[0],FOG_OF_WAR_VISIBLE,-4550,1250,300,true,true))
call DestroyFogModifier(CreateFogModifierRadius(BO[0],FOG_OF_WAR_VISIBLE,3200,1,300,true,true))
call DestroyFogModifier(CreateFogModifierRadius(CO[0],FOG_OF_WAR_VISIBLE,3200,1,300,true,true))
call DestroyFogModifier(CreateFogModifierRadius(BO[0],FOG_OF_WAR_VISIBLE,-7292,4186,450,true,true))
call DestroyFogModifier(CreateFogModifierRadius(CO[0],FOG_OF_WAR_VISIBLE,-7292,4186,450,true,true))
call DestroyFogModifier(CreateFogModifierRadius(BO[0],FOG_OF_WAR_VISIBLE,7348,-4334,450,true,true))
call DestroyFogModifier(CreateFogModifierRadius(CO[0],FOG_OF_WAR_VISIBLE,7348,-4334,450,true,true))
call DestroyFogModifier(CreateFogModifierRect(BO[0],FOG_OF_WAR_VISIBLE,MS,true,true))
call DestroyFogModifier(CreateFogModifierRect(CO[0],FOG_OF_WAR_VISIBLE,MS,true,true))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,3.5,true)
call TriggerAddCondition(t,Condition(function OX2))
set t=null
set RK=CreateTrigger()
call TriggerRegisterUnitEvent(RK,BQ0,EVENT_UNIT_DEATH)
call TriggerAddAction(RK,function OR2)
set PK=CreateTrigger()
call TriggerRegisterUnitEvent(PK,I60,EVENT_UNIT_DEATH)
call TriggerAddAction(PK,function OS2)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function A02))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function A12))
set t=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(t,function A22)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function A62))
set t=null
set R50=CreateTrigger()
call TriggerAddAction(R50,function AB2)
set t=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(t,DO,EVENT_PLAYER_UNIT_ATTACKED,Condition(function N1I))
call TriggerAddCondition(t,Condition(function AD2))
set t=null
set R60=CreateRegion()
call RegionAddRect(R60,M5)
call RegionAddRect(R60,N5)
call RegionAddRect(R60,S5)
call RegionAddRect(R60,T5)
call RegionAddRect(R60,R5)
call RegionAddRect(R60,P5)
call RegionAddRect(R60,Q5)
call RegionAddRect(R60,U5)
call RegionAddRect(R60,I6)
set GH=CreateTrigger()
call TriggerRegisterEnterRectSimple(GH,bj_mapInitialPlayableArea)
call TriggerAddCondition(GH,Condition(function AF2))
call TriggerAddAction(GH,function AG2)
set HH=CreateTrigger()
call UMI(HH,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(HH,Condition(function AZ2))
call TriggerAddAction(HH,function AJ2)
set ZH=CreateTrigger()
call UMI(ZH,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(ZH,Condition(function AL2))
call TriggerAddAction(ZH,function AS2)
if(bj_isSinglePlayer and AR2())then
call BK2()
endif
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,WO,"-wtf",true)
call TriggerAddAction(t,function BT2)
call TriggerAddCondition(t,Condition(function BM2))
set t=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(t,BO[1],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,BO[2],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,BO[3],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,BO[4],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,BO[5],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,CO[1],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,CO[2],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,CO[3],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,CO[4],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,CO[5],EVENT_PLAYER_HERO_LEVEL,Condition(function N1I))
call TriggerAddCondition(t,Condition(function BQ2))
set t=null
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,WO,"-test",true)
call TriggerAddCondition(t,Condition(function CI2))
set t=null
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,GetWorldBounds())
call TriggerRegisterEnterRegion(t,S5O,Condition(function ULI))
call TriggerAddCondition(t,Condition(function CJ2))
set t=null
set S5O=null
set t=CreateTrigger()
call TriggerRegisterUnitInRange(t,DZ,300,Condition(function ULI))
call TriggerRegisterUnitInRange(t,ZZ,300,Condition(function ULI))
call TriggerRegisterUnitInRange(t,BZ,300,Condition(function ULI))
call TriggerAddCondition(t,Condition(function CL2))
set t=null
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,25,false)
call TriggerAddAction(t,function CT2)
set t=null
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,2,false)
call TriggerAddCondition(t,Condition(function DO2))
set t=null
set QK=CreateRegion()
call RegionAddRect(QK,F4)
call RegionAddRect(QK,E4)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,25,false)
call TriggerAddAction(t,function D92)
set t=null
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-",false)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-",false)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-",false)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-",false)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-",false)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-",false)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-",false)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-",false)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-",false)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-",false)
call TriggerAddAction(t,function DB2)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_FINISH)
call TriggerAddCondition(t,Condition(function GQ2))
call TriggerAddAction(t,function H12)
set VM[0]=false
set VM[1]=false
set VM[2]=false
set VM[3]=false
set VM[4]=false
set VM[5]=false
set VM[6]=false
set VM[7]=false
set VM[8]=false
set VM[9]=false
set VM[10]=false
set VM[11]=false
set VM[12]=false
set VM[13]=false
set VM[14]=false
set VM[15]=false
set VM[16]=false
set RV0[0]=false
set RV0[1]=false
set RV0[2]=false
set RV0[3]=false
set RV0[4]=false
set RV0[5]=false
set RV0[6]=false
set RV0[7]=false
set RV0[8]=false
set RV0[9]=false
set RV0[10]=false
set RV0[11]=false
set RV0[12]=false
set RV0[13]=false
set RV0[14]=false
set RV0[15]=false
set RV0[16]=false
set RW0[0]=true
set RW0[1]=true
set RW0[2]=true
set RW0[3]=true
set RW0[4]=true
set RW0[5]=true
set RW0[6]=true
set RW0[7]=true
set RW0[8]=true
set RW0[9]=true
set RW0[10]=true
set RW0[11]=true
set RW0[12]=true
set RW0[13]=true
set RW0[14]=true
set RW0[15]=true
set RW0[16]=true
set RX0[0]=false
set RX0[1]=false
set RX0[2]=false
set RX0[3]=false
set RX0[4]=false
set RX0[5]=false
set RX0[6]=false
set RX0[7]=false
set RX0[8]=false
set RX0[9]=false
set RX0[10]=false
set RX0[11]=false
set RX0[12]=false
set RX0[13]=false
set RX0[14]=false
set RX0[15]=false
set RX0[16]=false
set RL0[0]=false
set RL0[1]=false
set RL0[2]=false
set RL0[3]=false
set RL0[4]=false
set RL0[5]=false
set RL0[6]=false
set RL0[7]=false
set RL0[8]=false
set RL0[9]=false
set RL0[10]=false
set RL0[11]=false
set RL0[12]=false
set RL0[13]=false
set RL0[14]=false
set RL0[15]=false
set RL0[16]=false
set RL0[GetPlayerId(BO[1])]=true
set RL0[GetPlayerId(BO[2])]=true
set RL0[GetPlayerId(BO[3])]=true
set RL0[GetPlayerId(BO[4])]=true
set RL0[GetPlayerId(BO[5])]=true
set RL0[GetPlayerId(CO[1])]=true
set RL0[GetPlayerId(CO[2])]=true
set RL0[GetPlayerId(CO[3])]=true
set RL0[GetPlayerId(CO[4])]=true
set RL0[GetPlayerId(CO[5])]=true
call HM2()
set GM[0]=true
set GM[1]=true
set GM[2]=true
set GM[3]=true
set GM[4]=true
set GM[5]=true
set GM[6]=true
set GM[7]=true
set GM[8]=true
set GM[9]=true
set GM[10]=true
set GM[11]=true
set GM[12]=true
set GM[13]=true
set GM[14]=true
set GM[15]=true
set RP0[0]=false
set RP0[1]=false
set RP0[2]=false
set RP0[3]=false
set RP0[4]=false
set RP0[5]=false
set RP0[6]=false
set RP0[7]=false
set RP0[8]=false
set RP0[9]=false
set RP0[10]=false
set RP0[11]=false
set RP0[12]=false
set RP0[13]=false
set RP0[14]=false
set HM[GetPlayerId(BO[1])]=false
set HM[GetPlayerId(BO[2])]=false
set HM[GetPlayerId(BO[3])]=false
set HM[GetPlayerId(BO[4])]=false
set HM[GetPlayerId(BO[5])]=false
set HM[GetPlayerId(CO[1])]=false
set HM[GetPlayerId(CO[2])]=false
set HM[GetPlayerId(CO[3])]=false
set HM[GetPlayerId(CO[4])]=false
set HM[GetPlayerId(CO[5])]=false
set RQ0[GetPlayerId(BO[1])]=false
set RQ0[GetPlayerId(BO[2])]=false
set RQ0[GetPlayerId(BO[3])]=false
set RQ0[GetPlayerId(BO[4])]=false
set RQ0[GetPlayerId(BO[5])]=false
set RQ0[GetPlayerId(CO[1])]=false
set RQ0[GetPlayerId(CO[2])]=false
set RQ0[GetPlayerId(CO[3])]=false
set RQ0[GetPlayerId(CO[4])]=false
set RQ0[GetPlayerId(CO[5])]=false
set t=CreateTrigger()
call USI(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
call USI(t,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
call USI(t,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
call TriggerAddCondition(t,Condition(function Z72))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,5,true)
call TriggerAddCondition(t,Condition(function Z62))
set P00[GetPlayerId(BO[1])]=false
set P00[GetPlayerId(BO[2])]=false
set P00[GetPlayerId(BO[3])]=false
set P00[GetPlayerId(BO[4])]=false
set P00[GetPlayerId(BO[5])]=false
set P00[GetPlayerId(CO[1])]=false
set P00[GetPlayerId(CO[2])]=false
set P00[GetPlayerId(CO[3])]=false
set P00[GetPlayerId(CO[4])]=false
set P00[GetPlayerId(CO[5])]=false
set t=null
set WM[GetPlayerId(BO[1])]=false
set WM[GetPlayerId(BO[2])]=false
set WM[GetPlayerId(BO[3])]=false
set WM[GetPlayerId(BO[4])]=false
set WM[GetPlayerId(BO[5])]=false
set WM[GetPlayerId(CO[1])]=false
set WM[GetPlayerId(CO[2])]=false
set WM[GetPlayerId(CO[3])]=false
set WM[GetPlayerId(CO[4])]=false
set WM[GetPlayerId(CO[5])]=false
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function ZG2))
set P20[0]=false
set P20[1]=false
set P20[2]=false
set P20[3]=false
set P20[4]=false
set P20[5]=false
set P20[6]=false
set P20[7]=false
set P20[8]=false
set P20[9]=false
set P20[10]=false
set P20[11]=false
set P20[12]=false
set P20[13]=false
set P20[14]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\WitchDoctor\\WitchDoctorPissed1.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\WitchDoctor\\WitchDoctorPissed2.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\WitchDoctor\\WitchDoctorPissed3.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\WitchDoctor\\WitchDoctorPissed4.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\WitchDoctor\\WitchDoctorPissed5.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\WitchDoctor\\WitchDoctorPissed6.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Undead\\HeroDreadLord\\HeroDreadlordPissed1.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Undead\\HeroDreadLord\\HeroDreadlordPissed2.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Undead\\HeroDreadLord\\HeroDreadlordPissed3.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Undead\\HeroDreadLord\\HeroDreadlordPissed4.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Undead\\HeroDreadLord\\HeroDreadlordPissed5.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Undead\\HeroDreadLord\\HeroDreadlordPissed6.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Undead\\HeroDreadLord\\HeroDreadlordPissed7.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Creeps\\HEROGoblinALCHEMIST\\HeroAlchemistPissed1.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Creeps\\HEROGoblinALCHEMIST\\HeroAlchemistPissed2.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Creeps\\HEROGoblinALCHEMIST\\HeroAlchemistPissed3.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Creeps\\HEROGoblinALCHEMIST\\HeroAlchemistPissed4.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Creeps\\HEROGoblinALCHEMIST\\HeroAlchemistPissed5.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Creeps\\HEROGoblinALCHEMIST\\HeroAlchemistPissed6.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\BloodElfSpellThief\\SpellbreakerPissed1.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\BloodElfSpellThief\\SpellbreakerPissed2.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\BloodElfSpellThief\\SpellbreakerPissed3.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\BloodElfSpellThief\\SpellbreakerPissed4.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\BloodElfSpellThief\\SpellbreakerPissed5.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed1.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed2.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed3.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed4.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed5.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed6.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed7.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Human\\Rifleman\\RiflemanPissed8.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed1.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed2.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed3.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed4.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed5.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed6.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed7.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed8.wav"
set P70[P80]=false
set P80=P80+1
set P60[P80]="Units\\Orc\\HeroShadowHunter\\ShadowHunterPissed9.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\Ogre\\OgrePissed1.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\Ogre\\OgrePissed2.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\Ogre\\OgrePissed3.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\Ogre\\OgrePissed4.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\Ogre\\OgrePissed5.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\GoblinSapper\\GoblinSapperPissed1.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\GoblinSapper\\GoblinSapperPissed2.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\GoblinSapper\\GoblinSapperPissed3.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\GoblinSapper\\GoblinSapperPissed4.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\GoblinSapper\\GoblinSapperPissed5.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\GoblinSapper\\GoblinSapperPissed6.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\GoblinSapper\\GoblinSapperPissed7.wav"
set P70[P80]=false
set P60[P80]="Units\\Orc\\HeroBladeMaster\\HeroBladeMasterPissed1.wav"
set P70[P80]=false
set P60[P80]="Units\\Orc\\HeroBladeMaster\\HeroBladeMasterPissed2.wav"
set P70[P80]=false
set P60[P80]="Units\\Orc\\HeroBladeMaster\\HeroBladeMasterPissed3.wav"
set P70[P80]=false
set P60[P80]="Units\\Orc\\HeroBladeMaster\\HeroBladeMasterPissed4.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed1.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed2.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed3.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed4.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed5.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed6.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed7.wav"
set P70[P80]=false
set P60[P80]="Units\\Creeps\\PandarenBrewmaster\\PandarenBrewmasterPissed8.wav"
set P70[P80]=false
set PB0[0]=false
set PB0[1]=false
set PB0[2]=false
set PB0[3]=false
set PB0[4]=false
set PB0[5]=false
set PB0[6]=false
set PB0[7]=false
set PB0[8]=false
set PB0[9]=false
set PB0[10]=false
set PB0[11]=false
set PB0[12]=false
set PB0[13]=false
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function VP2))
call SaveReal(LY,(S5I),(149),((0)*1.0))
call SaveReal(LY,(S5I),(150),((0)*1.0))
call SaveReal(LY,(S5I),(151),((160)*1.0))
set LL[0]=false
set LL[1]=false
set LL[2]=false
set LL[3]=false
set LL[4]=false
set LL[5]=false
set LL[6]=false
set LL[7]=false
set LL[8]=false
set LL[9]=false
set LL[10]=false
set LL[11]=false
set LL[12]=false
set t=null
set t=CreateTrigger()
call TriggerAddAction(t,function XX2)
call TriggerAddCondition(t,Condition(function WI2))
set PF0=t
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function XY2))
set t=null
if C2 then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function S62))
endif
set t=null
set VH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(VH,E0[1])
call TriggerAddAction(VH,function TD2)
set WH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(WH,E0[2])
call TriggerAddAction(WH,function TF2)
set XH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(XH,E0[3])
call TriggerAddAction(XH,function TH2)
set YH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(YH,E0[4])
call TriggerAddAction(YH,function TV2)
set JH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(JH,E0[5])
call TriggerAddAction(JH,function TX2)
set KH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(KH,E0[7])
call TriggerAddAction(KH,function TJ2)
set LH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(LH,E0[8])
call TriggerAddAction(LH,function TL2)
set MH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(MH,E0[9])
call TriggerAddAction(MH,function TN2)
set NH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(NH,E0[10])
call TriggerAddAction(NH,function TT2)
set TH=CreateTrigger()
call TriggerRegisterTimerExpireEvent(TH,E0[11])
call TriggerAddAction(TH,function TP2)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,14,false)
call TriggerAddCondition(t,Condition(function RI2))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,15,false)
call TriggerAddCondition(t,Condition(function R02))
set RH=CreateTrigger()
call TriggerRegisterTimerEventSingle(RH,65.00)
call TriggerAddAction(RH,function RO2)
set PH=CreateTrigger()
call TriggerRegisterTimerEventSingle(PH,90.00)
call TriggerAddAction(PH,function R32)
set QH=CreateTrigger()
call TriggerRegisterTimerEventSingle(QH,120.00)
call TriggerAddAction(QH,function R52)
set t=CreateTrigger()
set S5O=CreateRegion()
call RegionAddRect(S5O,GetWorldBounds())
call TriggerRegisterEnterRegion(t,S5O,Condition(function N1I))
call TriggerAddCondition(t,Condition(function K14))
set HLI[1]=1093686867
set HLI[2]=1093686859
set HLI[3]=1093686865
set HLI[4]=1093687372
set HLI[5]=1093686861
set HLI[6]=1093686862
set HLI[7]=1093686863
set HLI[8]=1093686864
set HLI[9]=1093686855
set HLI[10]=1093686874
set t=null
set S5O=null
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function E44))
call TriggerAddAction(t,function E54)
endfunction
function config takes nothing returns nothing
call SetMapName("TRIGSTR_50000")
call SetMapDescription("TRIGSTR_50001")
call SetPlayers(10)
call SetTeams(10)
call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
call DefineStartLocation(0,-6990.0,6840.0)
call DefineStartLocation(1,-6990.0,6840.0)
call DefineStartLocation(2,-6990.0,6840.0)
call DefineStartLocation(3,-6990.0,6840.0)
call DefineStartLocation(4,-6990.0,6840.0)
call DefineStartLocation(5,-6990.0,6840.0)
call DefineStartLocation(6,-6990.0,6840.0)
call DefineStartLocation(7,-6990.0,6840.0)
call DefineStartLocation(8,-6990.0,6840.0)
call DefineStartLocation(9,-6990.0,6840.0)
call SetPlayerStartLocation(Player(1),0)
call ForcePlayerStartLocation(Player(1),0)
call SetPlayerColor(Player(1),ConvertPlayerColor(1))
call SetPlayerRacePreference(Player(1),RACE_PREF_NIGHTELF)
call SetPlayerRaceSelectable(Player(1),false)
call SetPlayerController(Player(1),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(2),1)
call ForcePlayerStartLocation(Player(2),1)
call SetPlayerColor(Player(2),ConvertPlayerColor(2))
call SetPlayerRacePreference(Player(2),RACE_PREF_NIGHTELF)
call SetPlayerRaceSelectable(Player(2),false)
call SetPlayerController(Player(2),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(3),2)
call ForcePlayerStartLocation(Player(3),2)
call SetPlayerColor(Player(3),ConvertPlayerColor(3))
call SetPlayerRacePreference(Player(3),RACE_PREF_NIGHTELF)
call SetPlayerRaceSelectable(Player(3),false)
call SetPlayerController(Player(3),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(4),3)
call ForcePlayerStartLocation(Player(4),3)
call SetPlayerColor(Player(4),ConvertPlayerColor(4))
call SetPlayerRacePreference(Player(4),RACE_PREF_NIGHTELF)
call SetPlayerRaceSelectable(Player(4),false)
call SetPlayerController(Player(4),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(5),4)
call ForcePlayerStartLocation(Player(5),4)
call SetPlayerColor(Player(5),ConvertPlayerColor(5))
call SetPlayerRacePreference(Player(5),RACE_PREF_NIGHTELF)
call SetPlayerRaceSelectable(Player(5),false)
call SetPlayerController(Player(5),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(7),5)
call ForcePlayerStartLocation(Player(7),5)
call SetPlayerColor(Player(7),ConvertPlayerColor(7))
call SetPlayerRacePreference(Player(7),RACE_PREF_UNDEAD)
call SetPlayerRaceSelectable(Player(7),false)
call SetPlayerController(Player(7),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(8),6)
call ForcePlayerStartLocation(Player(8),6)
call SetPlayerColor(Player(8),ConvertPlayerColor(8))
call SetPlayerRacePreference(Player(8),RACE_PREF_UNDEAD)
call SetPlayerRaceSelectable(Player(8),false)
call SetPlayerController(Player(8),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(9),7)
call ForcePlayerStartLocation(Player(9),7)
call SetPlayerColor(Player(9),ConvertPlayerColor(9))
call SetPlayerRacePreference(Player(9),RACE_PREF_UNDEAD)
call SetPlayerRaceSelectable(Player(9),false)
call SetPlayerController(Player(9),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(10),8)
call ForcePlayerStartLocation(Player(10),8)
call SetPlayerColor(Player(10),ConvertPlayerColor(10))
call SetPlayerRacePreference(Player(10),RACE_PREF_UNDEAD)
call SetPlayerRaceSelectable(Player(10),false)
call SetPlayerController(Player(10),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(11),9)
call ForcePlayerStartLocation(Player(11),9)
call SetPlayerColor(Player(11),ConvertPlayerColor(11))
call SetPlayerRacePreference(Player(11),RACE_PREF_UNDEAD)
call SetPlayerRaceSelectable(Player(11),false)
call SetPlayerController(Player(11),MAP_CONTROL_USER)
call InitCustomTeams()
call SetPlayerAlliance(Player(15),Player(1),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(2),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(3),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(4),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(5),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(7),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(8),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(9),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(10),ConvertAllianceType(6),true)
call SetPlayerAlliance(Player(15),Player(11),ConvertAllianceType(6),true)
call SetStartLocPrioCount(0,9)
call SetStartLocPrio(0,0,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,1,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,2,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,3,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,4,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,5,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,6,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(1,9)
call SetStartLocPrio(1,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,1,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,2,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,3,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,4,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,5,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,6,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(2,9)
call SetStartLocPrio(2,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,2,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,3,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,4,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,5,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,6,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(3,9)
call SetStartLocPrio(3,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,2,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,3,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,4,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,5,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,6,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(4,9)
call SetStartLocPrio(4,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,2,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,3,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,4,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,5,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,6,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(5,9)
call SetStartLocPrio(5,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,2,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,3,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,4,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,5,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,6,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(6,9)
call SetStartLocPrio(6,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,2,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,3,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,4,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,5,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,6,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(6,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(7,9)
call SetStartLocPrio(7,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,2,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,3,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,4,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,5,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,6,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,7,8,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(7,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(8,9)
call SetStartLocPrio(8,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,2,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,3,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,4,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,5,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,6,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,7,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(8,8,9,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(9,9)
call SetStartLocPrio(9,0,0,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,1,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,2,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,3,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,4,4,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,5,5,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,6,6,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,7,7,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(9,8,8,MAP_LOC_PRIO_HIGH)
endfunction