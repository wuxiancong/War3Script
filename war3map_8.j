function AT5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1747990834,x,y,0)
local integer i=0
local integer VB2=36
local group JAO=NTI()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\Lightning_Ball_Tail_FX.mdx",SFI,"origin")))
call SaveGroupHandle(LY,(S5I),(133),(JAO))
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call TriggerRegisterTimerEvent(t,0.06,true)
call TriggerAddCondition(t,Condition(function AS5))
set t=null
set I01=null
set SFI=null
endfunction
function AR5 takes nothing returns boolean
if GetSpellAbilityId()==1093748023 then
call AT5()
endif
return false
endfunction
function NM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AR5))
set t=null
endfunction
function AP5 takes integer AQ5 returns boolean
return AQ5!=1093679446 and AQ5!=1093677622 and AQ5!=1093684314 and AQ5!=1093685582 and AQ5!=1093685065 and AQ5!=1093682265 and AQ5!=1093752642 and AQ5!=1095263841
endfunction
function AU5 takes unit R5I,unit P7I,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(R5I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093747019)
call SetUnitAbilityLevel(I01,1093747019,SUI)
call IssueTargetOrder(I01,"chainlightning",P8I)
call IA1(I01,1093744708)
call SetUnitAbilityLevel(I01,1093744708,SUI)
call IssueTargetOrder(I01,"purge",P8I)
set I01=null
endfunction
function B05 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI
if GetSpellTargetUnit()==P7I and AP5(GetSpellAbilityId())==true and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(P7I))==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
set SUI=GetUnitAbilityLevel(P7I,1093748022)
call AU5(P7I,P7I,GetTriggerUnit(),SUI)
endif
set t=null
set P7I=null
return false
endfunction
function BI5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function B05))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function B15 takes nothing returns boolean
if GetLearnedSkill()==1093748022 and GetUnitAbilityLevel(GetTriggerUnit(),1093748022)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call BI5()
endif
return false
endfunction
function NN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function B15))
set t=null
endfunction
function BO5 takes unit u,integer d returns nothing
local integer array b
local integer a=d
local integer c=1
local integer i=0
local integer EU1
if d<1 then
call UnitRemoveAbility(u,V4I[0])
call UnitRemoveAbility(u,V4I[1])
call UnitRemoveAbility(u,V4I[2])
call UnitRemoveAbility(u,V4I[3])
call UnitRemoveAbility(u,V4I[4])
call UnitRemoveAbility(u,V4I[5])
call UnitRemoveAbility(u,V4I[6])
call UnitRemoveAbility(u,V4I[7])
return
endif
loop
exitwhen c==0
set c=a/2
set b[i]=a-c*2
set a=c
set i=i+1
endloop
set EU1=i
set i=0
loop
exitwhen i>EU1
if b[i]==1 then
call IA1(u,V4I[i])
else
call UnitRemoveAbility(u,V4I[i])
endif
set i=i+1
endloop
endfunction
function B25 takes unit u,integer d returns nothing
local integer array b
local integer a=d
local integer c=1
local integer i=0
local integer EU1
if d<1 then
call UnitRemoveAbility(u,V5I[0])
call UnitRemoveAbility(u,V5I[1])
call UnitRemoveAbility(u,V5I[2])
call UnitRemoveAbility(u,V5I[3])
call UnitRemoveAbility(u,V5I[4])
call UnitRemoveAbility(u,V5I[5])
call UnitRemoveAbility(u,V5I[6])
call UnitRemoveAbility(u,V5I[7])
return
endif
loop
exitwhen c==0
set c=a/2
set b[i]=a-c*2
set a=c
set i=i+1
endloop
set EU1=i
set i=0
loop
exitwhen i>EU1
if b[i]==1 then
call IA1(u,V5I[i])
else
call UnitRemoveAbility(u,V5I[i])
endif
set i=i+1
endloop
endfunction
function B35 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
if GetTriggerUnit()==P7I then
call BO5(P7I,0)
call SaveUnitHandle(LY,(S5I),(2),(null))
else
call B25(P8I,0)
call SaveUnitHandle(LY,(S5I),(17),(null))
endif
else
if P7I!=null then
call BO5(P7I,0)
endif
if P8I!=null then
call B25(P8I,0)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function B45 takes unit P7I,unit P8I,unit QB2 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if QB2==null then
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
elseif QB2==P8I then
call B25(P8I,0)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(null))
else
call BO5(P7I,0)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call SaveUnitHandle(LY,(S5I),(2),(null))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
call TriggerRegisterTimerEvent(t,18,false)
call TriggerAddCondition(t,Condition(function B35))
endfunction
function B55 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local lightning UZI=(LoadLightningHandle(LY,(S5I),(196)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=GetTriggerEvalCount(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
call MoveLightning(UZI,true,GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
if QNI(GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))>700 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyLightning(UZI)
call KillUnit(I01)
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call B45(P7I,P8I,GetTriggerUnit())
else
call B45(P7I,P8I,null)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif NPI>160 then
call DestroyLightning(UZI)
call KillUnit(I01)
call B45(P7I,P8I,null)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif ModuloInteger(NPI,20)==0 or NPI==1 then
call BO5(P7I,(SUI*7)*R2I(NPI/20))
call B25(P8I,(SUI*7)*R2I(NPI/20))
endif
set t=null
set P7I=null
set P8I=null
set UZI=null
set I01=null
return false
endfunction
function B65 takes unit P7I,unit P8I,lightning UZI,unit I01 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093747792)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function B55))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveLightningHandle(LY,(S5I),(196),(UZI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
set t=null
endfunction
function B75 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local lightning UZI=(LoadLightningHandle(LY,(S5I),(196)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real x0=GetUnitX(P7I)
local real y0=GetUnitY(P7I)
local real x1=(LoadReal(LY,(S5I),(64)))
local real y1=(LoadReal(LY,(S5I),(65)))
local real a=(LoadReal(LY,(S5I),(137)))
local unit P8I=null
local group g=NTI()
set x1=PTI(x1+25*Cos(a))
set y1=PUI(y1+25*Sin(a))
call SaveReal(LY,(S5I),(64),((x1)*1.0))
call SaveReal(LY,(S5I),(65),((y1)*1.0))
call MoveLightning(UZI,true,x0,y0,x1,y1)
call SetUnitX(I01,x1)
call SetUnitY(I01,y1)
set GK=P7I
call GroupEnumUnitsInRange(g,x1,y1,225,Condition(function DO1))
set P8I=FirstOfGroup(g)
call NSI(g)
if P8I!=null then
call B65(P7I,P8I,UZI,I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)>25 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyLightning(UZI)
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set UZI=null
set P8I=null
set g=null
set I01=null
return false
endfunction
function B85 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t
local integer S5I
local location l
local lightning UZI=AddLightning("CLSB",true,GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P7I),GetUnitY(P7I))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747990584,GetUnitX(P7I),GetUnitY(P7I),0)
call SetLightningColor(UZI,0.3,0.5,1,1)
if P8I==null then
set l=GetSpellTargetLoc()
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function B75))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveLightningHandle(LY,(S5I),(196),(UZI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(137),((Atan2(GetLocationY(l)-GetUnitY(P7I),GetLocationX(l)-GetUnitX(P7I)))*1.0))
call SaveReal(LY,(S5I),(64),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(65),((GetUnitY(P7I))*1.0))
call RemoveLocation(l)
set l=null
set t=null
else
call B65(P7I,P8I,UZI,I01)
endif
set P8I=null
endfunction
function B95 takes nothing returns boolean
if GetSpellAbilityId()==1093747792 and NNI(GetSpellTargetUnit())==false then
call B85()
endif
return false
endfunction
function NS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function B95))
set t=null
set V4I[0]=1093747798
set V4I[1]=1093747793
set V4I[2]=1093747794
set V4I[3]=1093747795
set V4I[4]=1093747796
set V4I[5]=1093747797
set V4I[6]=1093747799
set V4I[7]=1093747800
set V5I[0]=1093748020
set V5I[1]=1093748019
set V5I[2]=1093748018
set V5I[3]=1093748017
set V5I[4]=1093748016
set V5I[5]=1093748021
set V5I[6]=1093747802
set V5I[7]=1093747801
endfunction
function BA5 takes integer S5I returns nothing
local integer i=1
local integer PY2=(LoadInteger(LY,(S5I),(136)))
local unit P8I
local integer PCI
if PY2==0 then
return
endif
loop
exitwhen i>PY2
set PCI=(LoadInteger(LY,(S5I),(2200+i)))
set P8I=NYI(PCI)
call NXI(PCI)
call UnitRemoveAbility(P8I,WN[0])
call UnitRemoveAbility(P8I,WN[1])
call UnitRemoveAbility(P8I,WN[2])
call UnitRemoveAbility(P8I,WN[3])
call UnitRemoveAbility(P8I,WN[4])
call UnitRemoveAbility(P8I,WN[5])
set i=i+1
endloop
set P8I=null
endfunction
function BB5 takes unit P8I,integer S5I returns nothing
local integer PCI=NKI(P8I)
local integer PY2=(LoadInteger(LY,(S5I),(136)))
set PY2=PY2+1
call SaveInteger(LY,(S5I),(136),(PY2))
call SaveInteger(LY,(S5I),(2200+PY2),(PCI))
endfunction
function BC5 takes unit u returns integer
return GetUnitAbilityLevel(u,WN[0])*1+GetUnitAbilityLevel(u,WN[1])*2+GetUnitAbilityLevel(u,WN[2])*4+GetUnitAbilityLevel(u,WN[3])*8+GetUnitAbilityLevel(u,WN[4])*16
endfunction
function BD5 takes unit u,integer d returns nothing
local integer array b
local integer a=d
local integer c=1
local integer i=0
local integer EU1
if d<1 then
call UnitRemoveAbility(u,WN[0])
call UnitRemoveAbility(u,WN[1])
call UnitRemoveAbility(u,WN[2])
call UnitRemoveAbility(u,WN[3])
call UnitRemoveAbility(u,WN[4])
call UnitRemoveAbility(u,WN[5])
return
endif
loop
exitwhen c==0
set c=a/2
set b[i]=a-c*2
set a=c
set i=i+1
endloop
set EU1=i
set i=0
loop
exitwhen i>EU1
if b[i]==1 then
call IA1(u,WN[i])
else
call UnitRemoveAbility(u,WN[i])
endif
set i=i+1
endloop
endfunction
function BE5 takes unit u,integer d returns nothing
if IsUnitType(u,UNIT_TYPE_STRUCTURE)==false then
call BD5(u,d+BC5(u))
call BB5(u,VAI)
endif
endfunction
function BF5 takes unit P7I,unit I01,unit P8I,integer SUI returns nothing
call IssueTargetOrder(I01,"chainlightning",P8I)
call PDI(P7I,P8I,2,(50+25*SUI)/2.0,0.3)
call BE5(P8I,1)
endfunction
function BG5 takes nothing returns boolean
if(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GK))and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false))and GetUnitTypeId(GetFilterUnit())!=1848651852 then
if GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)<V9I then
set V9I=GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)
set V8I=GetFilterUnit()
endif
endif
return false
endfunction
function BH5 takes nothing returns boolean
if(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GK))and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IC1(GetFilterUnit())==false))and GetUnitTypeId(GetFilterUnit())!=1701670775 and GetUnitTypeId(GetFilterUnit())!=1970956647 and GetUnitTypeId(GetFilterUnit())!=1848651852 then
if GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)<V9I then
set V9I=GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)
set V8I=GetFilterUnit()
endif
endif
return false
endfunction
function BZ5 takes unit P7I,unit I01,integer SUI returns nothing
local group g=NTI()
set V8I=null
set V9I=999999
set V6I=30+30*SUI
set V7I=P7I
set GK=P7I
if GetUnitAbilityLevel(P7I,1093752150)>0 then
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),525,Condition(function BH5))
else
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),525,Condition(function BG5))
endif
call NSI(g)
if V8I!=null then
call BF5(P7I,I01,V8I,SUI)
endif
set g=null
endfunction
function BV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=GetTriggerEvalCount(t)
local real JV3
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call BA5(S5I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerUnit()==P7I then
call KillUnit(I01)
endif
else
if GetUnitAbilityLevel(P7I,1093752150)>0 then
if SUI==1 then
set JV3=0.55
elseif SUI==2 then
set JV3=0.45
else
set JV3=0.35
endif
else
if SUI==1 then
set JV3=0.7
elseif SUI==2 then
set JV3=0.6
else
set JV3=0.5
endif
endif
set JV3=JV3/0.05
if ModuloInteger(NPI,R2I(JV3))==0 or NPI==1 then
set VAI=S5I
call BZ5(P7I,I01,SUI)
endif
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
endif
set t=null
set P7I=null
return false
endfunction
function BW5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093747023)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747990577,GetUnitX(P7I),GetUnitY(P7I),0)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093752150)
endif
call UnitApplyTimedLife(I01,1112820806,30)
call SetUnitAbilityLevel(I01,1093747786,SUI)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterDeathEvent(t,I01)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function BV5))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
set P7I=null
set t=null
endfunction
function BX5 takes nothing returns boolean
if GetSpellAbilityId()==1093747023 or GetSpellAbilityId()==1093752150 then
call BW5()
endif
return false
endfunction
function NT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BX5))
set t=null
set WN[0]=1093747787
set WN[1]=1093747788
set WN[2]=1093747790
set WN[3]=1093747789
set WN[4]=1093747791
endfunction
function BY5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
call SetUnitPosition(SFI,x,y)
call SetUnitAnimation(SFI,"morph ALTERNATE")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function BJ5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093678671)
local location l
local real RM2
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local real QJI
local real QKI
local real EN4
local real ES4
local real CasterX
local real CasterY
local integer CasterAbility
local unit I01
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real PAI
local real DC1=1.65
local unit DT1=null
if SUI==1 then
set PAI=100
elseif SUI==2 then
set PAI=160
elseif SUI==3 then
set PAI=220
elseif SUI==4 then
set PAI=280
endif
if GetSpellTargetUnit()!=null then
set l=GetUnitLoc(GetSpellTargetUnit())
else
set l=GetSpellTargetLoc()
endif
set QJI=GetLocationX(l)
set QKI=GetLocationY(l)
call RemoveLocation(l)
set RM2=UEI(x,y,QJI,QKI)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((QJI)*1.0))
call SaveReal(LY,(S5I),(7),((QKI)*1.0))
call TriggerRegisterTimerEvent(t,QNI(x,y,QJI,QKI)/2000,false)
call TriggerAddCondition(t,Condition(function BY5))
if QNI(x,y,QJI,QKI)<150 then
set QJI=x+150*Cos(RM2*bj_DEGTORAD)
set QKI=y+150*Sin(RM2*bj_DEGTORAD)
endif
if GetSpellTargetUnit()!=null and NNI(GetSpellTargetUnit())then
set DT1=GetSpellTargetUnit()
endif
call DS1(SFI,DT1,PAI,DC1,0.52,x,y,QJI,QKI,175,null,true,1600)
set I01=null
set l=null
set SFI=null
set t=null
endfunction
function BK5 takes nothing returns boolean
if GetSpellAbilityId()==1093678671 then
call BJ5()
endif
return false
endfunction
function LM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BK5))
call Q1I(1093687350)
set t=null
endfunction
function BL5 takes nothing returns nothing
call P6I(VCI,GetEnumUnit(),1,110)
call IssueTargetOrder(VDI,"slow",GetEnumUnit())
endfunction
function BM5 takes unit P7I,real x,real y,integer SUI,integer BN5 returns nothing
local group g=NTI()
local real r
local string fx
if BN5==8 then
set r=675
elseif BN5==9 then
set r=700
elseif BN5==10 then
set r=725
else
set r=250+50*BN5
endif
if BN5<4 then
set fx="war3mapImported\\EpiPulse_1_4.mdx"
elseif BN5<8 then
set fx="war3mapImported\\EpiPulse_5_8.mdx"
else
set fx="war3mapImported\\EpiPulse_9_12.mdx"
endif
call DestroyEffect(AddSpecialEffect(fx,x,y))
set GK=P7I
set VCI=P7I
set VDI=VBI[GetPlayerId(GetOwningPlayer(P7I))]
call GroupEnumUnitsInRange(g,x,y,r,Condition(function CA1))
call ForGroup(g,function BL5)
call NSI(g)
call OF1(0.03,false,x,y,150+100*BN5,150+100*BN5,72,0.03,512)
set g=null
endfunction
function BS5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local boolean CK3=(LoadBoolean(LY,(S5I),(15)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer KO2=(LoadInteger(LY,(S5I),(25)))
local integer BT5=4+SUI*2
local real x=II3
local real y=I13
if CK3 then
set BT5=BT5+2
endif
if KO2>BT5 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if SFI!=null and IC1(SFI)==false then
set x=GetUnitX(SFI)
set y=GetUnitY(SFI)
endif
call BM5(SFI,x,y,SUI,KO2)
call SaveInteger(LY,(S5I),(25),(KO2+1))
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
endif
set t=null
set p=null
set SFI=null
return false
endfunction
function BR5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local player p=GetOwningPlayer(SFI)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(SFI,1093678674)
local boolean CK3=false
if SUI==0 then
set CK3=true
set SUI=GetUnitAbilityLevel(SFI,1093747252)
endif
if TII(p)then
set VBI[GetPlayerId(p)]=CreateUnit(CO[0],1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
else
set VBI[GetPlayerId(p)]=CreateUnit(BO[0],1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
endif
call IA1(VBI[GetPlayerId(p)],1093744450)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(SFI)))
call SaveReal(LY,(S5I),(23),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(SFI))*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(25),(2))
call SaveBoolean(LY,(S5I),(15),(CK3))
call TriggerRegisterTimerEvent(t,0.35,true)
call TriggerAddCondition(t,Condition(function BS5))
call BM5(SFI,GetUnitX(SFI),GetUnitY(SFI),SUI,1)
set SFI=null
set t=null
endfunction
function BP5 takes nothing returns boolean
if GetSpellAbilityId()==1093678674 or GetSpellAbilityId()==1093747252 then
call BR5()
endif
return false
endfunction
function LN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_FINISH)
call TriggerAddCondition(t,Condition(function BP5))
call Q1I(1093744450)
set t=null
endfunction
function BQ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if((LoadInteger(LY,(GetHandleId((SFI))),((4299))))==1)==false then
call UnitRemoveAbility(SFI,1110455378)
endif
call RemoveUnit((LoadUnitHandle(LY,(S5I),(379))))
call RemoveUnit((LoadUnitHandle(LY,(S5I),(380))))
call RemoveUnit((LoadUnitHandle(LY,(S5I),(381))))
call RemoveUnit((LoadUnitHandle(LY,(S5I),(382))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function BU5 takes unit SFI,integer SUI,unit C05,unit CI5,unit C15,unit CO5 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real DC1
set DC1=1.5
call SaveInteger(LY,(GetHandleId((SFI))),((4299)),(2))
call TriggerRegisterTimerEvent(t,DC1,false)
call TriggerAddCondition(t,Condition(function BQ5))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(379),(C05))
call SaveUnitHandle(LY,(S5I),(380),(CI5))
call SaveUnitHandle(LY,(S5I),(381),(C15))
call SaveUnitHandle(LY,(S5I),(382),(CO5))
set t=null
endfunction
function C25 takes nothing returns boolean
if(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))then
call P6I(VFI,GetFilterUnit(),1,VEI)
endif
return false
endfunction
function C35 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit C05=(LoadUnitHandle(LY,(S5I),(379)))
local unit CI5=(LoadUnitHandle(LY,(S5I),(380)))
local unit C15=(LoadUnitHandle(LY,(S5I),(381)))
local unit CO5=(LoadUnitHandle(LY,(S5I),(382)))
local integer SUI=GetUnitAbilityLevel(SFI,1093683248)
local integer NPI=GetTriggerEvalCount(t)
local group g
local integer C45=550
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST or NPI>SUI*20/0.5 then
call BU5(SFI,SUI,C05,CI5,C15,CO5)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=SFI
set VFI=SFI
set VEI=SUI*25*0.5
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),C45,Condition(function C25))
call NSI(g)
endif
set t=null
set SFI=null
set C05=null
set CI5=null
set C15=null
set CO5=null
set g=null
return false
endfunction
function C55 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit C05=CreateUnit(GetOwningPlayer(SFI),1697656913,GetUnitX(SFI)+150,GetUnitY(SFI)+150,0)
local unit CI5=CreateUnit(GetOwningPlayer(SFI),1697656913,GetUnitX(SFI)+150,GetUnitY(SFI)-150,0)
local unit C15=CreateUnit(GetOwningPlayer(SFI),1697656913,GetUnitX(SFI)-150,GetUnitY(SFI)+150,0)
local unit CO5=CreateUnit(GetOwningPlayer(SFI),1697656913,GetUnitX(SFI)-150,GetUnitY(SFI)-150,0)
local integer SUI=GetUnitAbilityLevel(SFI,1093683248)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
call SaveInteger(LY,(GetHandleId((SFI))),((4299)),(1))
call IA1(I01,1093683279)
call SetUnitAbilityLevel(I01,1093683279,SUI)
call IssueTargetOrder(I01,"invisibility",SFI)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function C35))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(379),(C05))
call SaveUnitHandle(LY,(S5I),(380),(CI5))
call SaveUnitHandle(LY,(S5I),(381),(C15))
call SaveUnitHandle(LY,(S5I),(382),(CO5))
call SetUnitTimeScale(C05,0)
call SetUnitTimeScale(CI5,0)
call SetUnitTimeScale(C15,0)
call SetUnitTimeScale(CO5,0)
set t=null
set SFI=null
set I01=null
set C05=null
set CI5=null
set C15=null
set CO5=null
endfunction
function C65 takes nothing returns boolean
if GetSpellAbilityId()==1093683248 then
call C55()
endif
return false
endfunction
function LS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function C65))
set t=null
endfunction
function C75 takes nothing returns nothing
call P6I(VGI,GetEnumUnit(),2,50*VHI)
endfunction
function C85 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093810507)
call IA1(I01,1093684537)
call SetUnitAbilityLevel(I01,1093684537,SUI)
call IssueImmediateOrder(I01,"thunderclap")
call IA1(I01,1093677399)
call SetUnitAbilityLevel(I01,1093677399,SUI)
call IssueImmediateOrder(I01,"stomp")
set VGI=P7I
set VHI=SUI
call GroupEnumUnitsInRange(g,x,y,350+25,Condition(function C51))
call ForGroup(g,function C75)
call NSI(g)
set P7I=null
set I01=null
set g=null
endfunction
function C95 takes nothing returns boolean
if GetSpellAbilityId()==1093810507 then
call C85()
endif
return false
endfunction
function LT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function C95))
set t=null
endfunction
function CA5 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093683786)
local real PAI=40+20*SUI
if GetUnitAbilityLevel(P8I,1093678162)==0 then
call P6I(P7I,P8I,2,PAI)
endif
endfunction
function CB5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and GetEventDamage()>0 and GetEventDamage()<=0.02 and GetUnitAbilityLevel(P8I,1110460231)>0 then
call DisableTrigger(t)
call CA5(P7I,P8I)
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
function CC5 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function CB5))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function CD5 takes nothing returns nothing
local unit P7I=GetAttacker()
if((LoadInteger(LY,(GetHandleId((P7I))),((4274))))==1)==false then
call SCI(P7I,4274,0.1)
call CC5()
endif
endfunction
function CE5 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093683786)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call CD5()
endif
return false
endfunction
function CF5 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function CE5))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function CG5 takes nothing returns boolean
if GetLearnedSkill()==1093683786 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093683786)==1 then
call CF5()
endif
return false
endfunction
function LR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function CG5))
set t=null
endfunction
function SpectralDagger_CastCode takes nothing returns integer
return 1093683287
endfunction
function SpectralDagger_PositiveEffect takes nothing returns integer
return 1093683506
endfunction
function SpectralDagger_NegativeEffect takes nothing returns integer
return 1093683289
endfunction
function SpectralDagger_PositiveBuff takes nothing returns integer
return 1110455351
endfunction
function SpectralDagger_ShadowPathUnit takes nothing returns integer
return 1747988530
endfunction
function SpectralDagger_DaggerUnit takes nothing returns integer
return 1747988531
endfunction
function CH5 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit PKI=(LoadUnitHandle(LY,(S5I),(221)))
local unit CZ5=(LoadUnitHandle(LY,(S5I),(383)))
local unit I01
local real DC1=(LoadReal(LY,(S5I),(57)))
local integer SUI=GetUnitAbilityLevel(CZ5,(1093683287))
local real CV5=(LoadReal(LY,(S5I),(6)))
local real CW5=(LoadReal(LY,(S5I),(7)))
local real IV1=GetUnitX(PKI)
local real IW1=GetUnitY(PKI)
if(IV1-CV5)*(IV1-CV5)+(IW1-CW5)*(IW1-CW5)>900 then
set I01=CreateUnit(GetOwningPlayer(CZ5),(1747988530),GetUnitX(PKI),GetUnitY(PKI),0)
call SetUnitAbilityLevel(I01,(1093683506),SUI)
call SetUnitAbilityLevel(I01,(1093683289),SUI)
call UnitApplyTimedLife(I01,1112820806,7)
call SaveReal(LY,(S5I),(6),((IV1)*1.0))
call SaveReal(LY,(S5I),(7),((IW1)*1.0))
endif
set DC1=DC1+0.2
call SaveReal(LY,(S5I),(57),((DC1)*1.0))
if DC1>7 or GetUnitState(PKI,UNIT_STATE_LIFE)<1 then
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
endif
endfunction
function CX5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local sound PGI
local timer t
local integer S5I
call UnitDamageTarget(XO,P8I,JO,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call GroupAddUnit(B2,P8I)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
set t=CreateTimer()
set S5I=GetHandleId(t)
set PGI=CreateSound("Sounds\\Spectral Dagger.mp3",false,true,true,10,10,"DefaultEAXON")
call SetSoundPosition(PGI,GetUnitX(P8I),GetUnitY(P8I),0)
call SetSoundDistanceCutoff(PGI,700)
call StartSound(PGI)
call KillSoundWhenDone(PGI)
call SaveUnitHandle(LY,(S5I),(221),(P8I))
call SaveUnitHandle(LY,(S5I),(383),(XO))
call SaveReal(LY,(S5I),(6),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P8I))*1.0))
call TimerStart(t,0.2,true,function CH5)
endif
endfunction
function CY5 takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(XO))and IsUnitInGroup(GetFilterUnit(),B2)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false
endfunction
function CJ5 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local group Z51=NTI()
local boolexpr QL1=Condition(function CY5)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real QXI=GetUnitX(IG1)
local real QYI=GetUnitY(IG1)
local real RM2=Atan2(QKI-QYI,QJI-QXI)
local real IV1=PTI(GetUnitX(IG1)+30*Cos(RM2))
local real IW1=PUI(GetUnitY(IG1)+30*Sin(RM2))
local unit I01
local integer SUI=GetUnitAbilityLevel(SFI,(1093683287))
if(LoadBoolean(LY,(S5I),(384)))then
call SaveBoolean(LY,(S5I),(384),(false))
set I01=CreateUnit(GetOwningPlayer(SFI),(1747988530),QXI,QYI,0)
call SetUnitAbilityLevel(I01,(1093683506),SUI)
call SetUnitAbilityLevel(I01,(1093683289),SUI)
call UnitApplyTimedLife(I01,1112820806,12)
else
call SaveBoolean(LY,(S5I),(384),(true))
endif
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
call SetUnitFacing(IG1,RM2*bj_RADTODEG)
set B2=JAO
set XO=SFI
set JO=50*GetUnitAbilityLevel(SFI,(1093683287))
call GroupEnumUnitsInRange(Z51,IV1,IW1,150,QL1)
call ForGroup(Z51,function CX5)
call NSI(Z51)
if(IV1-QJI)*(IV1-QJI)+(IW1-QKI)*(IW1-QKI)<1600 then
call PauseTimer(t)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call KillUnit(IG1)
call NSI(JAO)
endif
endfunction
function CK5 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local group Z51=NTI()
local boolexpr QL1=Condition(function CY5)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real QXI=GetUnitX(IG1)
local real QYI=GetUnitY(IG1)
local real RM2=(LoadReal(LY,(S5I),(13)))
local real IV1=PTI(GetUnitX(IG1)+30*Cos(RM2))
local real IW1=PUI(GetUnitY(IG1)+30*Sin(RM2))
local unit I01
local integer SUI=GetUnitAbilityLevel(SFI,(1093683287))
if(LoadBoolean(LY,(S5I),(384)))then
call SaveBoolean(LY,(S5I),(384),(false))
set I01=CreateUnit(GetOwningPlayer(SFI),(1747988530),QXI,QYI,0)
call SetUnitAbilityLevel(I01,(1093683506),SUI)
call SetUnitAbilityLevel(I01,(1093683289),SUI)
call UnitApplyTimedLife(I01,1112820806,12)
else
call SaveBoolean(LY,(S5I),(384),(true))
endif
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
set B2=JAO
set XO=SFI
set JO=50*GetUnitAbilityLevel(SFI,(1093683287))
call GroupEnumUnitsInRange(Z51,IV1,IW1,150,QL1)
call ForGroup(Z51,function CX5)
call NSI(Z51)
if(IV1-QJI)*(IV1-QJI)+(IW1-QKI)*(IW1-QKI)<1600 then
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
call KillUnit(IG1)
call NSI(JAO)
endif
endfunction
function CL5 takes unit PKI,integer MLI returns boolean
if(GetItemTypeId(UnitItemInSlot(PKI,MLI))==1886613604)then
return true
endif
if(GetItemTypeId(UnitItemInSlot(PKI,MLI))==1868983399)then
return true
endif
return false
endfunction
function CM5 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real DC1=(LoadReal(LY,(S5I),(57)))
local integer TGI=0
loop
exitwhen TGI>5
if CL5(SFI,TGI)then
if GetUnitAbilityLevel(SFI,(1110455351))==0 then
call SetItemDropOnDeath(UnitItemInSlot(SFI,TGI),true)
if GetItemTypeId(UnitItemInSlot(SFI,TGI))==1868983399 then
call SetItemDroppable(UnitItemInSlot(SFI,TGI),true)
endif
else
call SetItemDropOnDeath(UnitItemInSlot(SFI,TGI),false)
if GetItemTypeId(UnitItemInSlot(SFI,TGI))==1868983399 then
call SetItemDroppable(UnitItemInSlot(SFI,TGI),false)
endif
endif
endif
set TGI=TGI+1
endloop
set DC1=DC1+0.2
call SaveReal(LY,(S5I),(57),((DC1)*1.0))
if GetUnitAbilityLevel(SFI,(1110455351))==0 then
call SetUnitPathing(SFI,true)
else
call SetUnitPathing(SFI,false)
endif
if DC1>30 then
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
call SetUnitPathing(SFI,true)
set TGI=0
loop
exitwhen TGI>5
if CL5(SFI,TGI)then
call SetItemDropOnDeath(UnitItemInSlot(SFI,TGI),true)
if GetItemTypeId(UnitItemInSlot(SFI,TGI))==1868983399 then
call SetItemDroppable(UnitItemInSlot(SFI,TGI),true)
endif
endif
set TGI=TGI+1
endloop
endif
endfunction
function CN5 takes nothing returns boolean
return GetSpellAbilityId()==(1093683287)
endfunction
function CS5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real QXI=PTI(GetUnitX(SFI))
local real QYI=PUI(GetUnitY(SFI))
local unit IG1=CreateUnit(GetOwningPlayer(SFI),(1747988531),QXI,QYI,0)
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
local group JAO=NTI()
local location AM3
local real RM2
local real QJI
local real QKI
call SetUnitPathing(IG1,false)
call SaveGroupHandle(LY,(S5I),(133),(JAO))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
if P8I!=null then
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call TimerStart(t,0.0375,true,function CJ5)
else
set AM3=GetSpellTargetLoc()
set QJI=GetLocationX(AM3)
set QKI=GetLocationY(AM3)
set RM2=Atan2(QKI-QYI,QJI-QXI)
call SetUnitFacing(IG1,RM2*bj_RADTODEG)
set QJI=PTI(QXI+2100*Cos(RM2))
set QKI=PUI(QYI+2100*Sin(RM2))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call TimerStart(t,0.035,true,function CK5)
endif
set t=CreateTimer()
set S5I=GetHandleId(t)
call SetUnitPathing(SFI,false)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TimerStart(t,0.2,true,function CM5)
endfunction
function MT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CN5))
call TriggerAddAction(t,function CS5)
call CreateSound("Sounds\\Spectral Dagger.mp3",false,false,false,10,10,"DefaultEAXON")
call Q1I((1093683506))
call Q1I((1093683289))
endfunction
constant function Desolate_AbilityId takes nothing returns integer
return 1093682776
endfunction
function CT5 takes nothing returns boolean
return IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and GetUnitAbilityLevel(GetAttacker(),(1093682776))>0
endfunction
function CR5 takes nothing returns boolean
return IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false
endfunction
function CP5 takes nothing returns nothing
local unit Z4O=GetAttacker()
local unit OU3=GetTriggerUnit()
local group Z51=NTI()
local boolexpr QL1=Condition(function CR5)
local integer S5I
call GroupEnumUnitsInRange(Z51,GetUnitX(OU3),GetUnitY(OU3),325+25,QL1)
call GroupRemoveUnit(Z51,OU3)
if FirstOfGroup(Z51)==null then
set S5I=GetHandleId(Z4O)
if((LoadInteger(LY,(GetHandleId((Z4O))),((4275))))==1)==false then
call UnitDamageTarget(Z4O,OU3,5+15*GetUnitAbilityLevel(Z4O,(1093682776)),true,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_DIVINE,WEAPON_TYPE_WHOKNOWS)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl",OU3,"overhead"))
call SCI(Z4O,4275,0.3)
endif
endif
call NSI(Z51)
endfunction
function MR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function CT5))
call TriggerAddAction(t,function CP5)
endfunction
function CQ5 takes nothing returns nothing
local real d=QLI(GetTriggerUnit(),GetEnumUnit())-25
local real VM2=0
if d<300 then
set VM2=1
elseif d<1000 then
set VM2=(1000-d)/700
endif
if VM2>0 then
set NJ0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=true
call P6I(GetTriggerUnit(),GetEnumUnit(),3,VZI*VM2)
set NJ0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=false
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayDamage.mdl",GetEnumUnit(),"chest"))
endif
endfunction
function CU5 takes nothing returns boolean
local unit SFI=GetTriggerUnit()
local real PAI=GetEventDamage()
local integer SUI=GetUnitAbilityLevel(SFI,1093684801)
local group g
if RSI(PAI)and GetUnitAbilityLevel(SFI,1112433775)==0 then
set g=NTI()
set VZI=PAI*(0.06+0.04*SUI)
call QGI(SFI,VZI)
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),1025,Condition(function C51))
call ForGroup(g,function CQ5)
call NSI(g)
endif
set SFI=null
set g=null
return false
endfunction
function D05 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit SFI=GetTriggerUnit()
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function CU5))
set t=null
set SFI=null
endfunction
function DI5 takes nothing returns boolean
if GetLearnedSkill()==1093684801 and GetUnitAbilityLevel(GetTriggerUnit(),1093684801)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call D05()
endif
return false
endfunction
function MP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function DI5))
set t=null
endfunction
constant function Haunt_AbilityCode takes nothing returns integer
return 1093683257
endfunction
constant function Haunt_ImageCode takes nothing returns integer
return 1093684793
endfunction
constant function Haunt_ImageBuffCode takes nothing returns integer
return 1110455884
endfunction
constant function Haunt_RealityCode takes nothing returns integer
return 1093683265
endfunction
function D15 takes nothing returns boolean
return GetSpellAbilityId()==(1093683257)
endfunction
function DO5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local unit SFI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call SaveUnitHandle(LY,(GetHandleId(I01)),(387),(P8I))
call IA1(I01,(1093684793))
call SetUnitAbilityLevel(I01,(1093684793),GetUnitAbilityLevel(SFI,(1093683257)))
call IssueTargetOrderById(I01,852274,SFI)
endfunction
function D25 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction
function D35 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit IYO=(LoadUnitHandle(LY,(S5I),(386)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(387)))
local integer D45=(LoadInteger(LY,(S5I),(385)))
if GetTriggerEventId()!=EVENT_UNIT_DEATH and GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_POINT_ORDER then
set D45=D45+1
call SaveInteger(LY,(S5I),(385),(D45))
endif
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call DisableTrigger(GetTriggeringTrigger())
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call SaveInteger(LY,(S5I),(385),(D45))
if P8I==GetTriggerUnit()then
call KillUnit(IYO)
endif
elseif IsUnitPaused(IYO)==false then
if D45==2 then
call SetUnitVertexColor(IYO,255,255,255,255)
endif
if D45>1 then
call DisableTrigger(GetTriggeringTrigger())
call IssueTargetOrder(IYO,"attack",P8I)
call EnableTrigger(GetTriggeringTrigger())
else
call DisableTrigger(GetTriggeringTrigger())
call IssueTargetOrderById(IYO,851986,P8I)
call EnableTrigger(GetTriggeringTrigger())
endif
endif
endfunction
function D55 takes nothing returns boolean
return GetUnitAbilityLevel(GetSummonedUnit(),(1110455884))>0
endfunction
function D65 takes nothing returns nothing
local unit I01=GetSummoningUnit()
local unit IYO=GetSummonedUnit()
local unit P8I=(LoadUnitHandle(LY,(GetHandleId(I01)),(387)))
local trigger t=CreateTrigger()
call SaveUnitHandle(LY,(GetHandleId(K1[GetPlayerId(GetOwningPlayer(I01))])),(7100+GetHandleId(IYO)),(P8I))
call SetUnitPathing(IYO,false)
call SetUnitMoveSpeed(IYO,400)
call SetUnitX(IYO,GetUnitX(P8I))
call SetUnitY(IYO,GetUnitY(P8I))
call IssueTargetOrderById(IYO,851986,P8I)
call SetUnitVertexColor(IYO,255,255,255,50)
call TriggerRegisterUnitEvent(t,IYO,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,IYO,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,IYO,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddAction(t,function D35)
call DestroyEffect(AddSpecialEffect("units\\nightelf\\SpiritOfVengeance\\SpiritOfVengeance.mdl",GetUnitX(IYO),GetUnitY(IYO)))
call SaveUnitHandle(LY,(GetHandleId(t)),(387),(P8I))
call SaveUnitHandle(LY,(GetHandleId(t)),(386),(IYO))
call SaveInteger(LY,(GetHandleId(t)),(385),(0))
call FlushChildHashtable(LY,(GetHandleId(I01)))
endfunction
function D75 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local group Z51=NTI()
local boolexpr QL1=Condition(function D25)
local sound PGI
call IA1(GetTriggerUnit(),(1093683265))
call SetUnitPathing(SFI,false)
call GroupEnumUnitsInRect(Z51,bj_mapInitialPlayableArea,QL1)
call ForGroup(Z51,function DO5)
call SetUnitPathing(SFI,true)
if FirstOfGroup(Z51)!=null then
set PGI=CreateSound("Abilities\\Spells\\Other\\ANsa\\SacrificeUnit.wav",false,false,false,10,10,"DefaultEAXON")
call StartSound(PGI)
call KillSoundWhenDone(PGI)
endif
call NSI(Z51)
endfunction
function D85 takes nothing returns boolean
return GetLearnedSkill()==(1093683257)and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),(1093683257))==1
endfunction
function D95 takes nothing returns nothing
call IA1(GetTriggerUnit(),(1093683265))
endfunction
function MQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function D15))
call TriggerAddAction(t,function D75)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function D55))
call TriggerAddAction(t,function D65)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function D85))
call TriggerAddAction(t,function D95)
call CreateSound("Abilities\\Spells\\Other\\ANsa\\SacrificeUnit.wav",false,false,false,10,10,"DefaultEAXON")
call Q1I((1093684793))
endfunction
function DA5 takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1110455884)>0
endfunction
function DB5 takes nothing returns nothing
local real QWI=QMI(GetEnumUnit(),GetSpellTargetLoc())
if QWI<JO then
set XO=GetEnumUnit()
set JO=QWI
endif
endfunction
function DC5 takes nothing returns unit
local group Z51=NTI()
set XO=null
set JO=9999999
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(GetTriggerUnit()),Condition(function DA5))
call ForGroup(Z51,function DB5)
set VVI=Z51
set Z51=null
return XO
endfunction
function Reality_KillOtherImages takes nothing returns nothing
call KillUnit(GetEnumUnit())
endfunction
function DD5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=DC5()
local unit JXO=(LoadUnitHandle(LY,(GetHandleId(SFI)),(7100+GetHandleId(P8I))))
local real QJI
local real QKI
if P8I==null then
call PZI(GetOwningPlayer(SFI),GetObjectName(1848652634))
else
set QJI=GetUnitX(P8I)
set QKI=GetUnitY(P8I)
call KillUnit(P8I)
call NSI(VVI)
set VVI=null
call SetUnitX(SFI,QJI)
call SetUnitY(SFI,QKI)
if QNI(GetCameraEyePositionX(),GetCameraEyePositionY(),GetUnitX(P8I),GetUnitY(P8I))>1400 then
call PanCameraToTimedForPlayer(GetOwningPlayer(SFI),QJI,QKI,0)
endif
call IssueTargetOrder(SFI,"attack",JXO)
endif
set SFI=null
set P8I=null
endfunction
function DE5 takes nothing returns boolean
if GetSpellAbilityId()==1093683265 then
call DD5()
endif
return false
endfunction
function MU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function DE5))
set t=null
endfunction
function DF5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093873734)
call UnitRemoveAbility(P7I,1093873751)
call UnitRemoveAbility(P7I,1093873744)
call IA1(P7I,1093873751)
call SetUnitAbilityLevel(P7I,1093873751,SUI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function DG5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093873734)
call UnitRemoveAbility(P7I,1093873751)
call UnitRemoveAbility(P7I,1093873736)
call IA1(P7I,1093873744)
call SetUnitAbilityLevel(P7I,1093873744,SUI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function DF5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
return false
endfunction
function DH5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093873734)
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function DG5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call UnitRemoveAbility(P7I,1093873751)
call UnitRemoveAbility(P7I,1093873744)
call IA1(P7I,1093873736)
call SetUnitAbilityLevel(P7I,1093873736,SUI)
set t=null
set P7I=null
endfunction
function DZ5 takes nothing returns boolean
if GetSpellAbilityId()==1093873734 then
call DH5()
endif
return false
endfunction
function DV5 takes nothing returns nothing
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093873734)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093873736,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093873751,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093873744,false)
call IA1(GetTriggerUnit(),1093873751)
call SetUnitAbilityLevel(GetTriggerUnit(),1093873751,SUI)
endfunction
function DW5 takes nothing returns boolean
if GetLearnedSkill()==1093873734 and IsUnitIllusion(GetTriggerUnit())==false then
call DV5()
endif
return false
endfunction
function LQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function DW5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DZ5))
set t=null
endfunction
function DX5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real LVO=(LoadReal(LY,(GetHandleId(P7I)),(685)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if LVO<(TimerGetElapsed(M))or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call SaveReal(LY,(GetHandleId(P7I)),(685),((0)*1.0))
call UnitRemoveAbility(P7I,1093809224)
call UnitRemoveAbility(P7I,1110459715)
endif
set t=null
set P7I=null
return false
endfunction
function DY5 takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(P7I,1093809224)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809224,false)
call SaveReal(LY,(GetHandleId(P7I)),(685),(((TimerGetElapsed(M))+VWI-0.01)*1.0))
call TriggerRegisterTimerEvent(t,VWI,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function DX5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
endfunction
function DJ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local integer NPI=GetTriggerEvalCount(t)
local real RS2=(LoadReal(LY,(S5I),(193)))
local integer MKO=(LoadInteger(LY,(S5I),(12)))
if NPI>35 then
call SaveReal(LY,(S5I),(193),((RS2*0.98)*1.0))
endif
if GetTriggerEventId()==EVENT_UNIT_DEATH or NPI>MKO then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",x,y))
call UPI(x,y,150)
set x=PTI(x+RS2*Cos(RM2))
set y=PUI(y+RS2*Sin(RM2))
if(IsPointInRegion(LN,((x)*1.0),((y)*1.0)))==false then
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
endif
if NPI==1 and(LoadBoolean(LY,(S5I),(698)))==false then
call IssueTargetOrder(P7I,"attack",P8I)
endif
endif
set t=null
set P8I=null
return false
endfunction
function DK5 takes unit P7I,unit P8I,boolean DL5,boolean DM5 returns nothing
local trigger t
local integer S5I
local real RM2=Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I))
local integer SUI=GetUnitAbilityLevel(P7I,1093682997)
local unit I01
if DL5 then
endif
if SUI>0 and GetUnitAbilityLevel(P7I,1112433775)==0 then
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093752657)
call SetUnitAbilityLevel(I01,1093752657,SUI)
if IssueTargetOrder(I01,"thunderbolt",P8I)then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile_mini.mdl",P7I,"weapon"))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveReal(LY,(S5I),(193),((2)*1.0))
call SaveBoolean(LY,(S5I),(698),(DM5))
call SaveInteger(LY,(S5I),(12),(80+20*SUI))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerAddCondition(t,Condition(function DJ5))
call P6I(P7I,P8I,1,GetUnitMoveSpeed(P7I)*(0.16+0.06*SUI))
call DY5(P7I)
endif
if DM5==false then
call SCI(P7I,4276,1.5)
endif
endif
set t=null
set P7I=null
set P8I=null
set I01=null
endfunction
function DN5 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093682997)>0 and IsUnitIllusion(GetAttacker())==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitTypeId(GetTriggerUnit())!=1848651852 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))and GetRandomInt(1,100)<=17 and((LoadInteger(LY,(GetHandleId((GetAttacker()))),((4276))))==1)==false then
call DK5(GetAttacker(),GetTriggerUnit(),false,false)
endif
return false
endfunction
function LU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function DN5))
set t=null
endfunction
function DS5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1093873970)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750840,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function DT5 takes unit P7I returns nothing
local trigger t
local integer S5I
if IC1(P7I)==true then
call UnitRemoveAbility(P7I,1093873970)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750840,true)
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterTimerEvent(t,12,false)
call TriggerAddCondition(t,Condition(function DS5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
set t=null
endfunction
function DR5 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),VLI)==false then
call GroupAddUnit(VLI,GetEnumUnit())
call DK5(VYI,GetEnumUnit(),false,true)
endif
endfunction
function DP5 takes integer id returns boolean
if id==1093750840 or id==1093873734 or id==1093682996 or id==1093747768 or id==1093682997 or id==1096904043 then
return true
endif
if id==852002 or id==852003 or id==852004 or id==852005 or id==852006 or id==852007 then
return true
endif
if id>1000000 then
return true
endif
return false
endfunction
function DQ5 takes nothing returns boolean
if(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(VYI))==true then
if QLI(VJI,GetFilterUnit())<VKI then
set VKI=QLI(VJI,GetFilterUnit())
set VXI=GetFilterUnit()
endif
endif
return false
endfunction
function DU5 takes unit P7I,unit P8I returns unit
local group g=NTI()
set GK=P7I
set VYI=P7I
set VXI=null
set VKI=999999
set VJI=P8I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),4000,Condition(function DQ5))
call NSI(g)
set g=null
return VXI
endfunction
function E05 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real JC3=(550+50*SUI)*0.02
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real x
local real y
local real a
local real d
local string fx
local group g
if(GetTriggerEventId()==EVENT_WIDGET_DEATH and GetTriggerUnit()==P7I)or GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER or BH1(P7I)or(LoadReal(LY,(S5I),(442)))<(TimerGetElapsed(M))then
if(GetTriggerEventId()!=EVENT_UNIT_ISSUED_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_POINT_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER)or((GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER)and DP5(GetIssuedOrderId())==false)then
call DT5(P7I)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call UnitRemoveAbility(P8I,1093809228)
call UnitRemoveAbility(P8I,1110459716)
call NSI((LoadGroupHandle(LY,(S5I),(187))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitTimeScale(P7I,1)
call KillUnit(I01)
call SetUnitPathing(P7I,true)
call SetUnitVertexColor(P7I,255,255,255,255)
call UnitRemoveAbility(P7I,1093744441)
call UPI(GetUnitX(P7I),GetUnitY(P7I),200)
if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
call ResetUnitAnimation(P7I)
endif
endif
elseif GetTriggerEventId()==EVENT_WIDGET_DEATH and GetTriggerUnit()==P8I then
set fx=""
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))or P0I(GetLocalPlayer())then
set fx="Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl"
endif
call UnitRemoveAbility(P8I,1093809228)
call UnitRemoveAbility(P8I,1110459716)
set P8I=DU5(P7I,P8I)
if P8I!=null then
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget(fx,P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget(fx,P8I,"overhead")))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+50)*1.0))
call TriggerRegisterDeathEvent(t,P8I)
else
call DT5(P7I)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call UnitRemoveAbility(P8I,1093809228)
call UnitRemoveAbility(P8I,1110459716)
call NSI((LoadGroupHandle(LY,(S5I),(187))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitTimeScale(P7I,1)
call KillUnit(I01)
call SetUnitPathing(P7I,true)
call ResetUnitAnimation(P7I)
call SetUnitVertexColor(P7I,255,255,255,255)
call UnitRemoveAbility(P7I,1093744441)
call SetUnitPosition(P7I,GetUnitX(P7I),GetUnitY(P7I))
call UPI(GetUnitX(P7I),GetUnitY(P7I),500)
endif
else
set d=QNI(GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))
if d<100 then
call DT5(P7I)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call UnitRemoveAbility(P8I,1093809228)
call UnitRemoveAbility(P8I,1110459716)
call NSI((LoadGroupHandle(LY,(S5I),(187))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitTimeScale(P7I,1)
call KillUnit(I01)
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093683027)
call SetUnitAbilityLevel(I01,1093683027,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call SetUnitPathing(P7I,true)
call SetUnitVertexColor(P7I,255,255,255,255)
call UnitRemoveAbility(P7I,1093744441)
call SetUnitPosition(P7I,GetUnitX(P7I),GetUnitY(P7I))
call UPI(GetUnitX(P7I),GetUnitY(P7I),200)
set VMI=SUI
call IssueTargetOrder(P7I,"attack",P8I)
else
if GetTriggerEvalCount(t)==1 then
call DisableTrigger(t)
call IssueImmediateOrder(P7I,"holdposition")
call EnableTrigger(t)
endif
if ModuloInteger(GetTriggerEvalCount(t),65)==0 then
if GetUnitTypeId(P7I)==1160786520 then
call SetUnitAnimationByIndex(P7I,1)
else
call SetUnitAnimationByIndex(P7I,2)
endif
endif
set a=UDI(P7I,P8I)*bj_DEGTORAD
call SetUnitFacing(P7I,a*bj_RADTODEG)
set x=II3+JC3*Cos(a)
set y=I13+JC3*Sin(a)
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
set VLI=(LoadGroupHandle(LY,(S5I),(187)))
set g=NTI()
set GK=P7I
set VYI=P7I
call GroupEnumUnitsInRange(g,x,y,325,Condition(function CA1))
set VMI=SUI
call ForGroup(g,function DR5)
call NSI(g)
set g=null
if d<3000 and GetUnitAbilityLevel(P8I,1093809228)==0 then
endif
endif
endif
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function EI5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429073,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093750840)
local string fx=""
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750840,false)
call IA1(P7I,1093873970)
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))or P0I(GetLocalPlayer())then
set fx="Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl"
call PingMinimapEx(GetUnitX(P8I),GetUnitY(P8I),2,255,255,255,false)
endif
call IssueTargetOrder(P7I,"move",P8I)
call SetUnitPathing(P7I,false)
if GetUnitTypeId(P7I)==1160786520 then
call SetUnitAnimationByIndex(P7I,1)
else
call SetUnitAnimationByIndex(P7I,2)
endif
call SetUnitTimeScale(P7I,2.5)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093744441,false)
call SetUnitVertexColor(P7I,255,255,255,100)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M))+50)*1.0))
call SaveReal(LY,(S5I),(23),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P7I))*1.0))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget(fx,P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget(fx,P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffectTarget("war3mapImported\\ShockwaveMissilePurple.mdx",P7I,"origin")))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerAddCondition(t,Condition(function E05))
set t=null
set P7I=null
set P8I=null
set I01=null
endfunction
function E15 takes nothing returns boolean
if GetSpellAbilityId()==1093750840 and NNI(GetSpellTargetUnit())==false then
call EI5()
endif
return false
endfunction
function LP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function E15))
set t=null
call Q1I(1093687350)
endfunction
function EO5 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local real RM2=Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I))
local integer SUI=4
call DK5(P7I,P8I,true,true)
set t=null
endfunction
function E25 takes nothing returns nothing
call EO5(VNI,GetEnumUnit())
endfunction
function E35 takes unit P7I,unit Targer returns nothing
local group g=NTI()
set GK=P7I
set VNI=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),275,Condition(function CA1))
call ForGroup(g,function E25)
call NSI(g)
set g=null
endfunction
function E45 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=GetTriggerEvalCount(t)
local integer E55
local integer SUI
local real RM2
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local real d=QNI(x,y,II3,I13)
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
if GetTriggerEventId()==EVENT_UNIT_DEATH or NPI==200 or d>1800 then
call SetUnitVertexColor(P7I,255,255,255,255)
call UnitShareVision(P8I,GetOwningPlayer(P7I),false)
call UnitRemoveAbility(P7I,1093744441)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if NPI<100 then
set E55=NPI
else
set E55=200-NPI
endif
call SetUnitVertexColor(P7I,255,255,255,255*(100-E55)/100)
if NPI==100 then
set SUI=(LoadInteger(LY,(S5I),(5)))
set RM2=Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I))
call SetUnitPosition(P7I,GetUnitX(P8I)+80*Cos(RM2),GetUnitY(P8I)+80*Sin(RM2))
call SetUnitAnimation(P7I,"attack")
call IssueTargetOrder(P7I,"attack",P8I)
if GetUnitAbilityLevel(P7I,1093682996)>0 then
call EO5(P7I,P8I)
else
call E35(P7I,P8I)
endif
call P6I(P7I,P8I,1,50+100*SUI)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function E65 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093682996)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093747768)
endif
call UnitShareVision(P8I,GetOwningPlayer(P7I),true)
call IssueImmediateOrder(P7I,"halt")
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(23),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P8I))*1.0))
call TriggerRegisterTimerEvent(t,0.001,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function E45))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093744441,false)
set t=null
set P7I=null
set P8I=null
endfunction
function E75 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call SetUnitAnimation(P7I,"spell morph")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function E85 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitShareVision(P8I,GetOwningPlayer(P7I),false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function E95 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,0.,true)
call TriggerAddCondition(t,Condition(function E75))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(GetSpellTargetUnit()))
call TriggerRegisterTimerEvent(t,1.,true)
call TriggerAddCondition(t,Condition(function E85))
call UnitShareVision(GetSpellTargetUnit(),GetOwningPlayer(P7I),true)
set t=null
set P7I=null
endfunction
function EA5 takes nothing returns boolean
if GetSpellAbilityId()==1093682996 or GetSpellAbilityId()==1093747768 then
if NNI(GetSpellTargetUnit())==false then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call E65()
else
call E95()
endif
endif
endif
return false
endfunction
function M01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
call TriggerAddCondition(t,Condition(function EA5))
set t=null
endfunction
function EB5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093809973)
if SUI==1 then
call IA1(P7I,1093809974)
elseif SUI==2 then
call UnitRemoveAbility(P7I,1093809974)
call IA1(P7I,1093809977)
elseif SUI==3 then
call UnitRemoveAbility(P7I,1093809974)
call UnitRemoveAbility(P7I,1093809977)
call IA1(P7I,1093809975)
elseif SUI==4 then
call UnitRemoveAbility(P7I,1093809974)
call UnitRemoveAbility(P7I,1093809977)
call UnitRemoveAbility(P7I,1093809975)
call IA1(P7I,1093809976)
endif
set P7I=null
endfunction
function EC5 takes nothing returns boolean
if GetLearnedSkill()==1093809973 and IsUnitIllusion(GetTriggerUnit())==false then
call EB5()
endif
return false
endfunction
function MO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function EC5))
set t=null
endfunction
function Sunder_SwitchConditions takes nothing returns boolean
return GetSpellAbilityId()==1093678930
endfunction
function ED5 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real EE5=(LoadReal(LY,(S5I),(295)))
local real EF5=(LoadReal(LY,(S5I),(296)))
local integer SUI=GetUnitAbilityLevel(P7I,1093678929)
local real EG5=0.2
if GetSpellTargetUnit()==P7I then
call SetUnitState(P7I,UNIT_STATE_LIFE,RMaxBJ(GetUnitState(P7I,UNIT_STATE_MAX_LIFE)*EF5*0.01,GetUnitState(P7I,UNIT_STATE_MAX_LIFE)*EG5))
endif
if GetSpellTargetUnit()==P8I then
call SetUnitLifePercentBJ(P8I,EE5)
if GetUnitLifePercent(P8I)<25.00 and SUI==1 and GetUnitState(P8I,UNIT_STATE_LIFE)>1 then
call SetUnitLifePercentBJ(P8I,20.00)
endif
if GetUnitLifePercent(P8I)<20.00 and SUI==2 and GetUnitState(P8I,UNIT_STATE_LIFE)>1 then
call SetUnitLifePercentBJ(P8I,20.00)
endif
if GetUnitLifePercent(P8I)<15.00 and SUI==3 and GetUnitState(P8I,UNIT_STATE_LIFE)>1 then
call SetUnitLifePercentBJ(P8I,20.00)
endif
endif
if GetTriggerEvalCount(t)==2 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set P7I=null
set P8I=null
set t=null
endfunction
function EH5 takes nothing returns boolean
if GetSpellAbilityId()==1093678930 then
call ED5()
endif
return false
endfunction
function EZ5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(295),((GetUnitLifePercent(P7I))*1.0))
call SaveReal(LY,(S5I),(296),((GetUnitLifePercent(P8I))*1.0))
call TriggerAddCondition(t,Condition(function EH5))
set I01=CreateUnit(GetOwningPlayer(P8I),1697656921,GetUnitX(P8I),GetUnitY(P8I),0)
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_SPELL_EFFECT)
call IA1(I01,1093678930)
call IssueTargetOrder(I01,"thunderbolt",P7I)
call ShowUnit(I01,false)
call SetUnitPathing(I01,false)
call SetUnitInvulnerable(I01,true)
call UnitApplyTimedLife(I01,1112820806,0.2)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656921,GetUnitX(P7I),GetUnitY(P7I),0)
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_SPELL_EFFECT)
call IA1(I01,1093678930)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call ShowUnit(I01,false)
call SetUnitPathing(I01,false)
call SetUnitInvulnerable(I01,true)
call UnitApplyTimedLife(I01,1112820806,0.2)
set t=null
set P7I=null
set P8I=null
set I01=null
endfunction
function EV5 takes nothing returns boolean
if GetSpellAbilityId()==1093678929 then
call EZ5()
endif
return false
endfunction
function MI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EV5))
endfunction
function EW5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit IYO=(LoadUnitHandle(LY,(S5I),(335)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call UnitRemoveAbility(P8I,1093809751)
call UnitRemoveAbility(P8I,1110459722)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerUnit()!=IYO then
call KillUnit(IYO)
endif
else
call IssueTargetOrder(IYO,"attack",P8I)
if RKI(P8I)then
call UnitRemoveAbility(P8I,1093809751)
call UnitRemoveAbility(P8I,1110459722)
endif
endif
set t=null
set IYO=null
set P8I=null
return false
endfunction
function EX5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit IYO
if GetSummoningUnit()==I01 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set IYO=GetSummonedUnit()
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterDeathEvent(t,IYO)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function EW5))
call SaveUnitHandle(LY,(S5I),(335),(IYO))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call UnitAddAbility(IYO,1097625443)
call SetUnitPosition(IYO,GetUnitX(P8I)+100,GetUnitY(P8I)+100)
call IssueTargetOrder(IYO,"attack",P8I)
call SetUnitMoveSpeed(IYO,522)
call SetUnitVertexColorBJ(IYO,100,100,100,60)
endif
set t=null
set P8I=null
set P7I=null
set I01=null
return false
endfunction
function EY5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093815130)
local integer id
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
local trigger t
local integer S5I
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809751,false)
if BJ1(P8I)==false then
call AX1(P8I,1093809751,1,1.5+SUI,1110459722)
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function EX5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call IA1(I01,1093809227)
call SetUnitAbilityLevel(I01,1093809227,SUI)
call IssueTargetOrderById(I01,852274,P8I)
set P7I=null
set P8I=null
set I01=null
set t=null
call IO1(MF,GetUnitX(P8I),GetUnitY(P8I))
set P7I=null
endfunction
function EJ5 takes nothing returns boolean
if GetSpellAbilityId()==1093815130 then
call EY5()
endif
return false
endfunction
function M11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EJ5))
set t=null
endfunction
function EK5 takes nothing returns nothing
local unit P7I=GetSummoningUnit()
local unit IYO=GetSummonedUnit()
call SelectUnitAddForPlayer(IYO,GetOwningPlayer(P7I))
call UnitAddAbility(IYO,1093815129)
call UnitRemoveAbility(IYO,1093815129)
call SetUnitState(IYO,UNIT_STATE_LIFE,GetUnitState(IYO,UNIT_STATE_MAX_LIFE))
call SetUnitPosition(IYO,GetUnitX(IYO),GetUnitY(IYO))
set P7I=null
set IYO=null
endfunction
function EL5 takes nothing returns boolean
if GetUnitAbilityLevel(GetSummonedUnit(),1110459721)>0 then
call EK5()
endif
return false
endfunction
function EM5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit I01
local integer SUI=GetUnitAbilityLevel(P7I,1093815128)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093679185)
call SetUnitAbilityLevel(I01,1093679185,SUI)
call IssueTargetOrderById(I01,852274,P7I)
set P7I=null
set I01=null
endfunction
function EN5 takes nothing returns boolean
if GetSpellAbilityId()==1093815128 and GetUnitTypeId(GetTriggerUnit())==1164277353 then
call EM5()
endif
return false
endfunction
function M41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EN5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function EL5))
set t=null
endfunction
function ES5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>(4*(4+SUI))or RKI(P8I)or QLI(P7I,P8I)>700 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetTriggerEvalCount(t)>1 and GetSpellAbilityId()==1093751361 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093751361)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750856,true)
call KillUnit(I01)
endif
elseif IsUnitVisible(P8I,GetOwningPlayer(P7I))==false then
if(LoadInteger(LY,(S5I),(34)))==1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
else
call SaveInteger(LY,(S5I),(34),(1))
endif
else
call SaveInteger(LY,(S5I),(34),(0))
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==false then
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+SUI*25.0/4.0)
else
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+SUI*50.0/4.0)
endif
endif
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function ET5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P7I,1093751361)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750856,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if GetTriggerEvalCount(t)==1 then
call IssueImmediateOrderById(P7I,851993)
endif
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==false then
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
else
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
endif
endif
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function ER5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093750856)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==false then
set I01=CreateUnit(GetOwningPlayer(P7I),1966092615,0,0,0)
call IA1(I01,1093678156)
call SetUnitAbilityLevel(I01,1093678156,SUI)
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
call IssueTargetOrderById(I01,852487,P8I)
else
call IA1(P7I,1093751361)
call UnitMakeAbilityPermanent(P7I,true,1093751361)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750856,false)
set I01=CreateUnit(DO,1966092615,0,0,0)
call IA1(I01,1093678156)
call SetUnitAbilityLevel(I01,1093678156,SUI)
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
call IssueTargetOrderById(I01,852487,P7I)
endif
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ES5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function ET5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
set P7I=null
set P8I=null
set t=null
endfunction
function EP5 takes nothing returns boolean
if GetSpellAbilityId()==1093750856 and GetUnitTypeId(GetSpellTargetUnit())!=1848651852 and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))or NNI(GetSpellTargetUnit())==false)then
call ER5()
endif
return false
endfunction
function M31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EP5))
endfunction
function EQ5 takes nothing returns boolean
return GetSpellAbilityId()==1093683252
endfunction
function EU5 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(PKI,1093683252)
local unit I01=CreateUnit(GetOwningPlayer(PKI),1697656901,GetUnitX(PKI),GetUnitY(PKI),0)
call UnitAddAbility(I01,1093814862)
call SetUnitAbilityLevel(I01,1093814862,SUI)
call IssueTargetOrderById(I01,852274,PKI)
endfunction
function M21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EQ5))
call TriggerAddAction(t,function EU5)
endfunction
function F05 takes nothing returns boolean
return GetSpellAbilityId()==1093678134 and NNI(GetSpellTargetUnit())==false
endfunction
function FI5 takes nothing returns nothing
local unit t=GetSpellTargetUnit()
local real F15=(60.00+(50.00*I2R(GetUnitAbilityLevelSwapped(1093678134,GetTriggerUnit()))))
call UnitDamageTargetBJ(GetTriggerUnit(),t,F15,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_COLD)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",t,"chest"))
endfunction
function M61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function F05))
call TriggerAddAction(t,function FI5)
endfunction
function FO5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=GetEventDamageSource()
local integer SUI=GetUnitAbilityLevel(P7I,1093678149)
local real d=GetEventDamage()
local real QHI=(LoadReal(LY,(S5I),(412)))
local real Z7O=(LoadReal(LY,(S5I),(411)))
local real F25=650-50*SUI
if T2I(GetOwningPlayer(P8I))then
if(Z7O+VSI)<(TimerGetElapsed(M))then
set QHI=0
endif
set Z7O=(TimerGetElapsed(M))
set QHI=QHI+d
if QHI>F25 and GetUnitAbilityLevel(P7I,1112433775)==0 then
set QHI=0
call EO1(P7I)
call DU1(P7I,0,0)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",P7I,"origin"))
endif
call SaveReal(LY,(S5I),(412),((QHI)*1.0))
call SaveReal(LY,(S5I),(411),((Z7O)*1.0))
endif
set t=null
set P7I=null
return false
endfunction
function F35 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function FO5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(412),((0)*1.0))
call SaveReal(LY,(S5I),(411),(((TimerGetElapsed(M)))*1.0))
set t=null
set P7I=null
endfunction
function F45 takes nothing returns boolean
if GetLearnedSkill()==1093678149 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093678149)==1 then
call F35()
endif
return false
endfunction
function M51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function F45))
set t=null
endfunction
function F55 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g=(LoadGroupHandle(LY,(S5I),(22)))
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set g=null
return false
endfunction
function F65 takes group g returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveGroupHandle(LY,(S5I),(22),(g))
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function F55))
set t=null
endfunction
function F75 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01
local integer i=1
local real x1=GetUnitX(SFI)
local real y1=GetUnitY(SFI)
local real x2
local real y2
local real PAI
local real DC1
local integer SUI=GetUnitAbilityLevel(SFI,1093810505)
local group g=NTI()
local real d=500
if SUI==1 then
set DC1=1.5
set PAI=200
elseif SUI==2 then
set DC1=1.8
set PAI=290
elseif SUI==3 then
set DC1=2.25
set PAI=380
endif
loop
exitwhen i>16
set x2=x1+(800)*Cos(22.5*i*bj_DEGTORAD)
set y2=y1+(800)*Sin(22.5*i*bj_DEGTORAD)
call DS1(SFI,null,PAI,DC1,0.52,x1,y1,x2,y2,250,g,false,775)
set i=i+1
endloop
call F65(g)
set SFI=null
set I01=null
set g=null
endfunction
function F85 takes nothing returns boolean
if GetSpellAbilityId()==1093810505 then
call F75()
endif
return false
endfunction
function M71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function F85))
call Q1I(1093687350)
set t=null
endfunction
function F95 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(715)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()==EVENT_WIDGET_DEATH or LVO<(TimerGetElapsed(M))then
call UnitRemoveAbility(P8I,1093808696)
call UnitRemoveAbility(P8I,1093818679)
call UnitRemoveAbility(P8I,1093818678)
call UnitRemoveAbility(P8I,1093818677)
call UnitRemoveAbility(P8I,1110460481)
call UnitRemoveAbility(P8I,1110459704)
call UnitRemoveAbility(P8I,1110460482)
call UnitRemoveAbility(P8I,1110460473)
endif
set t=null
set P8I=null
return false
endfunction
function FA5 takes unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(VTI,1093808694)
if SUI==1 then
call IA1(P8I,1093808696)
elseif SUI==2 then
call IA1(P8I,1093818679)
elseif SUI==3 then
call IA1(P8I,1093818678)
elseif SUI==4 then
call IA1(P8I,1093818677)
endif
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function F95))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(GetHandleId(P8I)),(715),((5.9+(TimerGetElapsed(M)))*1.0))
set t=null
endfunction
function FB5 takes nothing returns nothing
if GetUnitTypeId(GetEnumUnit())==1848651852 then
return
endif
if BJ1(GetEnumUnit())==false then
call FA5(GetEnumUnit())
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093808696,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093818679,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093818678,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093818677,false)
call P6I(VTI,GetEnumUnit(),2,25+50*VRI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\CrushingWave\\CrushingWaveDamage.mdl",GetEnumUnit(),"chest"))
endfunction
function FC5 takes nothing returns nothing
local group g=NTI()
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093808694)
set GK=P7I
set VRI=SUI
set VTI=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),375+25,Condition(function CH1))
call ForGroup(g,function FB5)
call NSI(g)
set g=null
set P7I=null
endfunction
function FD5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitTimeScale(P7I,1)
set t=null
set P7I=null
return false
endfunction
function FE5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,0.3,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function FD5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SetUnitTimeScale(P7I,2)
set t=null
set P7I=null
endfunction
function FF5 takes nothing returns boolean
if GetSpellAbilityId()==1093808694 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call FC5()
else
call FE5()
endif
endif
return false
endfunction
function M81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function FF5))
set t=null
endfunction
constant function Healing_RawCode takes nothing returns integer
return 1093685074
endfunction
function FG5 takes nothing returns boolean
return GetSpellAbilityId()==(1093685074)
endfunction
function FH5 takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(XO))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0
endfunction
function FZ5 takes nothing returns nothing
call P6I(XO,GetEnumUnit(),2,JO)
endfunction
function FV5 takes unit P7I,unit P8I,real PAI returns nothing
local group Z51=NTI()
local boolexpr QL1=Condition(function FH5)
set XO=P7I
set JO=PAI
call GroupEnumUnitsInRange(Z51,GetUnitX(P8I),GetUnitY(P8I),185+25,QL1)
call ForGroup(Z51,function FZ5)
call NSI(Z51)
endfunction
function FW5 takes nothing returns boolean
return IsUnitInGroup(GetFilterUnit(),B2)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IC1(GetFilterUnit())==false and GetFilterUnit()!=VPI
endfunction
function FX5 takes group FY5,unit FJ5,unit P7I,unit OriginalTargetreturns returns unit
local group Z51=NTI()
local boolexpr QL1=Condition(function FW5)
local unit FK5=null
local unit FL5
set B2=FY5
set XO=P7I
call GroupEnumUnitsInRange(Z51,GetUnitX(FJ5),GetUnitY(FJ5),500,QL1)
set FL5=FirstOfGroup(Z51)
set FK5=FL5
loop
exitwhen FL5==null
if GetUnitState(FL5,UNIT_STATE_LIFE)!=GetUnitState(FL5,UNIT_STATE_MAX_LIFE)then
if FL5!=P7I and IsUnitType(FL5,UNIT_TYPE_HERO)==true and IsUnitType(FK5,UNIT_TYPE_HERO)==false then
set FK5=FL5
elseif FL5!=P7I and GetUnitState(FL5,UNIT_STATE_LIFE)<GetUnitState(FK5,UNIT_STATE_LIFE)and IsUnitType(FL5,UNIT_TYPE_HERO)==true and IsUnitType(FK5,UNIT_TYPE_HERO)==true then
set FK5=FL5
elseif FL5!=P7I and IsUnitType(FK5,UNIT_TYPE_HERO)==false and GetUnitState(FL5,UNIT_STATE_LIFE)<GetUnitState(FK5,UNIT_STATE_LIFE)then
set FK5=FL5
elseif FL5==P7I then
set FK5=FL5
endif
endif
call GroupRemoveUnit(Z51,FL5)
set FL5=FirstOfGroup(Z51)
endloop
call NSI(Z51)
return FK5
endfunction
function FM5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local string FN5="Abilities\\Spells\\Undead\\ReplenishMana\\ReplenishManaCaster.mdl"
local string FS5="origin"
local unit array FT5
local integer x
local integer i=1
local integer SUI=GetUnitAbilityLevel(SFI,(1093685074))
local real PAI=60+SUI*20
local group FY5=NTI()
local integer FR5
local boolean FP5=false
set VPI=SFI
if SUI==1 then
set FR5=3
elseif SUI==2 then
set FR5=4
elseif SUI==3 then
set FR5=5
elseif SUI==4 then
set FR5=6
endif
call SetUnitState(SFI,UNIT_STATE_LIFE,GetUnitState(SFI,UNIT_STATE_LIFE)+PAI)
call FV5(SFI,SFI,PAI)
call GroupAddUnit(FY5,SFI)
call U5I(FN5,SFI,FS5,2)
if P8I==SFI then
set FT5[i]=FX5(FY5,SFI,SFI,P8I)
else
set FT5[i]=P8I
endif
if FT5[i]==null then
call NSI(FY5)
return
endif
call SetUnitState(FT5[i],UNIT_STATE_LIFE,GetUnitState(FT5[i],UNIT_STATE_LIFE)+PAI)
call FV5(SFI,FT5[i],PAI)
call GroupAddUnit(FY5,FT5[i])
call U5I(FN5,FT5[i],FS5,2)
call UGI("SPLK",GetUnitX(SFI),GetUnitY(SFI),GetUnitX(FT5[i]),GetUnitY(FT5[i]),0.3,0.5,0.9,1,0.7)
set i=2
loop
exitwhen i>FR5 or FP5
set FT5[i]=FX5(FY5,FT5[i-1],SFI,P8I)
if FT5[i]==null then
set FP5=true
else
call GroupAddUnit(FY5,FT5[i])
call U5I(FN5,FT5[i],FS5,2)
call SetUnitState(FT5[i],UNIT_STATE_LIFE,GetUnitState(FT5[i],UNIT_STATE_LIFE)+PAI)
call FV5(SFI,FT5[i],PAI)
call UGI("SPLK",GetUnitX(FT5[i-1]),GetUnitY(FT5[i-1]),GetUnitX(FT5[i]),GetUnitY(FT5[i]),0.3,0.5,0.9,1,0.7)
set i=i+1
endif
endloop
call NSI(FY5)
endfunction
function NY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FG5))
call TriggerAddAction(t,function FM5)
endfunction
constant function BlowDart_RawCode takes nothing returns integer
return 1093818422
endfunction
constant function BlowDart_SlowCode takes nothing returns integer
return 1093684810
endfunction
constant function BlowDart_StunCode takes nothing returns integer
return 1093684811
endfunction
constant function BlowDart_IconCode takes nothing returns integer
return 1093685079
endfunction
function FQ5 takes nothing returns boolean
return GetSpellAbilityId()==(1093818422)and NNI(GetSpellTargetUnit())==false
endfunction
function FU5 takes unit P7I,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,(1093684810))
call SetUnitAbilityLevel(I01,(1093684810),SUI)
call IssueTargetOrder(I01,"slow",P8I)
endfunction
function G05 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,(1093818422))
local integer KO2=GetTriggerExecCount(t)
local real PAI=8+6*SUI
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
if SUI==1 then
call IA1(P8I,(1093685079))
if KO2==1 then
call FU5(P7I,P8I,1)
endif
if KO2==2 then
call FU5(P7I,P8I,1)
endif
if KO2>2 then
call P6I(I01,P8I,2,PAI)
endif
if KO2==8 then
call UnitRemoveAbility(P8I,(1093685079))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
if SUI==2 then
call IA1(P8I,(1093685079))
if KO2==1 then
call FU5(P7I,P8I,1)
endif
if KO2==2 then
call FU5(P7I,P8I,2)
endif
if KO2>2 then
call P6I(I01,P8I,2,PAI)
endif
if KO2==8 then
call UnitRemoveAbility(P8I,(1093685079))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
if SUI==3 then
call IA1(P8I,(1093685079))
if KO2==1 then
call FU5(P7I,P8I,2)
endif
if KO2==2 then
call FU5(P7I,P8I,3)
endif
if KO2>2 then
call P6I(I01,P8I,2,PAI)
endif
if KO2==8 then
call UnitRemoveAbility(P8I,(1093685079))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
if SUI==4 then
call IA1(P8I,(1093685079))
if KO2==1 then
call FU5(P7I,P8I,2)
endif
if KO2==2 then
call DD1(P7I,P8I,1.0)
endif
if KO2>2 then
call P6I(I01,P8I,2,PAI)
endif
if KO2==8 then
call UnitRemoveAbility(P8I,(1093685079))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set I01=null
endfunction
function GI5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GK
local unit P8I=HK
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddAction(t,function G05)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call FU5(P7I,P8I,1)
set I01=null
endfunction
function G15 takes nothing returns nothing
local trigger t=IJ1(GetTriggerUnit(),GetSpellTargetUnit(),1747993937,"GI5",1300,true)
local integer S5I=GetHandleId(t)
set t=null
endfunction
function NJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FQ5))
call TriggerAddAction(t,function G15)
call Q1I((1093684810))
call Q1I((1093684811))
endfunction
function GO5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
if IC1(P8I)==false then
call UnitRemoveAbility(P8I,1093684821)
call UnitRemoveAbility(P8I,1093684823)
elseif IsUnitType(P8I,UNIT_TYPE_HERO)==true then
call OC1(P8I,1093684821,5.1)
call OC1(P8I,1093684823,5.1)
endif
set P8I=null
endfunction
function G25 takes nothing returns nothing
local unit P8I=GetEnumUnit()
if IC1(P8I)==false then
if IsUnitAlly(P8I,JK)==false then
if UJ==0 then
call IA1(P8I,1093684821)
else
call SetUnitAbilityLevel(P8I,1093684821,R2I(VQI*(UJ+1)))
endif
else
if UJ==0 then
call IA1(P8I,1093684823)
else
call SetUnitAbilityLevel(P8I,1093684823,R2I(VQI*(UJ+1)))
endif
endif
endif
set P8I=null
endfunction
function G35 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local integer NPI=GetTriggerEvalCount(t)
local integer DC1=(LoadInteger(LY,(S5I),(188)))
local real G45=(LoadReal(LY,(S5I),(68)))
set VQI=G45
set JK=p
set UJ=NPI
if NPI>=DC1/1.0 then
call ForGroup(g,function GO5)
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call ForGroup(g,function G25)
endif
set t=null
set g=null
set p=null
return false
endfunction
function G55 takes nothing returns nothing
call U5I(LK,GetEnumUnit(),"chest",3)
call U5I(LK,GetEnumUnit(),"chest",3)
call U5I(LK,GetEnumUnit(),"right hand",3)
call U5I(LK,GetEnumUnit(),"left hand",3)
endfunction
function G65 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local group g=NTI()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(SFI,1093742673)
local integer DC1=24
local real G45=0.5+0.25*SUI
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1747988535,x,y,0)
local integer a=0
local boolean CK3=false
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093747778)
set DC1=24
set G45=1.0+0.25*SUI
set CK3=true
endif
call RemoveLocation(l)
set LK=""
set UJ=DC1
set a=255
set LK="Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl"
call SetUnitVertexColor(I01,255,255,255,a)
call UnitApplyTimedLife(I01,1112820806,5)
if CK3 then
call GroupEnumUnitsInRange(g,x,y,800,Condition(function D51))
else
call GroupEnumUnitsInRange(g,x,y,600,Condition(function D51))
endif
call ForGroup(g,function G55)
call SaveGroupHandle(LY,(S5I),(22),(g))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(SFI)))
call SaveInteger(LY,(S5I),(188),(DC1))
call SaveReal(LY,(S5I),(68),((G45)*1.0))
call TriggerRegisterTimerEvent(t,1.0,true)
call TriggerAddCondition(t,Condition(function G35))
call TriggerEvaluate(t)
set SFI=null
set l=null
set g=null
set t=null
endfunction
function G75 takes nothing returns boolean
if GetSpellAbilityId()==1093742673 or GetSpellAbilityId()==1093747778 then
call G65()
endif
return false
endfunction
function NK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function G75))
call Q1I(1093684821)
call Q1I(1093684823)
set t=null
endfunction
function G85 takes string UWI,unit P8I,unit SFI returns nothing
local texttag tt=CreateTextTag()
call SetTextTagText(tt,UWI,0.033)
call SetTextTagPosUnit(tt,P8I,64)
call SetTextTagColor(tt,160,0,255,255)
call SetTextTagVelocity(tt,0,0.0355)
call SetTextTagFadepoint(tt,0.15)
call SetTextTagPermanent(tt,false)
call SetTextTagLifespan(tt,0.65)
if IsUnitAlly(SFI,GetLocalPlayer())or P0I(GetLocalPlayer())then
call SetTextTagVisibility(tt,true)
else
call SetTextTagVisibility(tt,false)
endif
set tt=null
endfunction
function G95 takes real DC1 returns string
if DC1>4.5 then
return"5.0"
elseif DC1>4.0 then
return"4.5"
elseif DC1>3.5 then
return"4.0"
elseif DC1>3.0 then
return"3.5"
elseif DC1>2.5 then
return"3.0"
elseif DC1>2.0 then
return"2.5"
elseif DC1>1.5 then
return"2.0"
elseif DC1>1.0 then
return"1.5"
elseif DC1>0.5 then
return"1.0"
elseif DC1>0.0 then
return"0.5"
else
return"0.0"
endif
return" "
endfunction
function GA5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=GetTriggerEvalCount(t)
if NPI>11 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call G85(G95(5.5-0.5*NPI),P8I,P8I)
endif
set t=null
set P8I=null
return false
endfunction
function GB5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real PAI=(LoadReal(LY,(S5I),(20)))
local real GC5=QDI(GetUnitState(P8I,UNIT_STATE_LIFE)-PAI,1)
local real GD5=(LoadReal(LY,(GetHandleId(P8I)),(243)))
call SetUnitState(P8I,UNIT_STATE_LIFE,GC5)
call SaveReal(LY,(GetHandleId(P8I)),(243),((GD5-PAI)*1.0))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P8I=null
return false
endfunction
function GE5 takes unit P8I,real PAI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real GD5=(LoadReal(LY,(GetHandleId(P8I)),(243)))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call SaveReal(LY,(GetHandleId(P8I)),(243),((GD5+PAI)*1.0))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function GB5))
set t=null
endfunction
function GF5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I
local real D14
local real PAI
local integer NPI=GetTriggerEvalCount(t)
local real GD5
local real GG5=(LoadReal(LY,(S5I),(389)))
local real GH5=(LoadReal(LY,(S5I),(390)))
if GG5!=(TimerGetElapsed(M))then
set GG5=(TimerGetElapsed(M))
set GH5=0
call SaveReal(LY,(S5I),(389),((GG5)*1.0))
call SaveReal(LY,(S5I),(390),((GH5)*1.0))
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
set P8I=GetTriggerUnit()
set GD5=(LoadReal(LY,(GetHandleId(P8I)),(243)))
set D14=GetUnitState(P8I,UNIT_STATE_LIFE)
set PAI=GetEventDamage()
if((D14-GD5-GH5)-PAI)<1 then
call SetUnitState(P8I,UNIT_STATE_LIFE,D14+PAI+GH5)
call GE5(P8I,PAI)
else
set GH5=GH5+PAI
call SaveReal(LY,(S5I),(390),((GH5)*1.0))
endif
else
call SaveInteger(LY,(GetHandleId(((LoadUnitHandle(LY,(S5I),(17)))))),((2485)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility((LoadUnitHandle(LY,(S5I),(17))),1093808457)
call UnitRemoveAbility((LoadUnitHandle(LY,(S5I),(17))),1110456132)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set P8I=null
set t=null
return false
endfunction
function GZ5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
call IA1(P8I,1093808457)
call TriggerRegisterTimerEvent(t,5,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function GF5))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\DarkHands.mdx",P8I,"overhead")))
call SaveReal(LY,(GetHandleId(P8I)),(243),((0)*1.0))
call SaveReal(LY,(S5I),(389),(((TimerGetElapsed(M)))*1.0))
call SaveReal(LY,(S5I),(390),((0)*1.0))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(GetHandleId((P8I))),((2485)),(1))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function GA5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function GV5 takes nothing returns boolean
if GetSpellAbilityId()==1093742668 then
call GZ5()
endif
return false
endfunction
function NL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GV5))
set t=null
endfunction
function GW5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEvalCount(t)>5 or GetUnitAbilityLevel(P8I,1110458705)==0 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call S0I(t)
call FlushChildHashtable(LY,(S5I))
else
call P6I(P7I,P8I,1,30*SUI-30)
call UYI(I2S(30*SUI-30),3,P8I,0.025,160,255,0,230)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function GX5 takes unit P7I,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local trigger t
local integer S5I
call IA1(I01,1093744462)
call SetUnitAbilityLevel(I01,1093744462,SUI)
if IssueTargetOrder(I01,"shadowstrike",P8I)then
call P6I(P7I,P8I,1,25*SUI)
call UYI(I2S(25*SUI)+"!",3,P8I,0.025,160,255,0,230)
if SUI>1 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,3,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function GW5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
set t=null
endif
endif
set I01=null
endfunction
function GY5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
if IsUnitInGroup(P8I,XK)==false then
call GX5(W0I,P8I,VUI)
call GroupAddUnit(XK,P8I)
endif
set P8I=null
endfunction
function GJ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local group H03
local real x
local real y
local real GK5
local real GL5
local real RS2=30
local unit GM5
set VUI=SUI
if GetTriggerEvalCount(t)>28 then
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(I01,false)
call KillUnit(I01)
else
set x=GetUnitX(I01)
set y=GetUnitY(I01)
set H03=NTI()
set XK=g
set GK=SFI
set W0I=SFI
call GroupEnumUnitsInRange(H03,x,y,150,Condition(function CH1))
call ForGroup(H03,function GY5)
call NSI(H03)
set GK5=PTI(x+RS2*Cos(RM2*bj_DEGTORAD))
set GL5=PUI(y+RS2*Sin(RM2*bj_DEGTORAD))
call SetUnitX(I01,GK5)
call SetUnitY(I01,GL5)
if ModuloInteger(GetTriggerEvalCount(t),3)==0 then
set GM5=CreateUnit(GetOwningPlayer(I01),1865429335,GK5,GL5,0)
call KillUnit(GM5)
set GM5=null
endif
endif
set t=null
set g=null
set H03=null
set I01=null
set SFI=null
return false
endfunction
function GN5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g=NTI()
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x1=GetUnitX(SFI)
local real y1=GetUnitY(SFI)
local real x2=GetLocationX(l)
local real y2=GetLocationY(l)
local real RM2=UEI(x1,y1,x2,y2)
local integer SUI=GetUnitAbilityLevel(SFI,1093744435)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1747990347,x1,y1,RM2)
call IO1(VE,x1,y1)
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0.025,true)
call TriggerAddCondition(t,Condition(function GJ5))
call RemoveLocation(l)
set t=null
set I01=null
set g=null
set SFI=null
set l=null
endfunction
function GS5 takes nothing returns boolean
if GetSpellAbilityId()==1093744435 then
call GN5()
endif
return false
endfunction
function M91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GS5))
set t=null
endfunction
function GT5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real PAI=(LoadReal(LY,(S5I),(20)))
local real DC1=(LoadReal(LY,(S5I),(57)))
local real IS5=0.75
if IsUnitType(P8I,UNIT_TYPE_HERO)==false and IsUnitIllusion(P8I)==false then
set IS5=1.0
endif
if GetUnitState(P8I,UNIT_STATE_LIFE)<=PAI*IS5 then
set PAI=QDI(GetUnitState(P8I,UNIT_STATE_LIFE)/IS5-2,0)
endif
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call UnitRemoveAbility(P8I,1093752629)
call UnitRemoveAbility(P8I,1110454840)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
else
set DC1=DC1-1
call SaveReal(LY,(S5I),(57),((DC1)*1.0))
call P6I(P7I,P8I,1,PAI)
if DC1<=0 then
call UnitRemoveAbility(P8I,1093752629)
call UnitRemoveAbility(P8I,1110454840)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function GR5 takes unit P8I,unit P7I,real DC1,real PAI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(P8I,1093752629)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function GT5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call SaveReal(LY,(S5I),(57),((DC1)*1.0))
call TriggerEvaluate(t)
set t=null
endfunction
function GP5 takes nothing returns nothing
if GetUnitAbilityLevel(GetEnumUnit(),1093752629)==0 then
call GR5(GetEnumUnit(),WII,W1I,WOI)
endif
endfunction
function GQ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real DC1=(LoadReal(LY,(S5I),(57)))
local real PAI=(LoadReal(LY,(S5I),(20)))
local group g
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
set WII=P7I
set W1I=DC1
set WOI=PAI
call GroupEnumUnitsInRange(g,GetUnitX(IG1),GetUnitY(IG1),256+25,Condition(function CA1))
call ForGroup(g,function GP5)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
set IG1=null
return false
endfunction
function GU5 takes unit IG1,unit P7I,integer SUI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real DC1=12
local real PAI=36
if SUI==2 then
set DC1=14
set PAI=58
elseif SUI==3 then
set DC1=15
set PAI=81
elseif SUI==4 then
set DC1=16
set PAI=108
endif
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterDeathEvent(t,IG1)
call TriggerAddCondition(t,Condition(function GQ5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call SaveReal(LY,(S5I),(57),((DC1)*1.0))
set t=null
endfunction
function H05 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer HI5
local integer i=1
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local unit I01
if GetSpellAbilityId()==1093677363 then
set HI5=GetUnitAbilityLevel(SFI,1093677363)
else
set HI5=GetUnitAbilityLevel(SFI,1093681462)+1
endif
loop
exitwhen i>18
set I01=CreateUnit(GetOwningPlayer(SFI),1697657143,x,y,0)
call IssuePointOrder(I01,"move",x+675*Cos(i*20*bj_DEGTORAD),y+675*Sin(i*20*bj_DEGTORAD))
call UnitApplyTimedLife(I01,1112820806,1.15)
call GU5(I01,SFI,HI5)
set i=i+1
endloop
set SFI=null
set I01=null
endfunction
function H15 takes nothing returns boolean
if GetSpellAbilityId()==1093677363 or GetSpellAbilityId()==1093681462 then
call H05()
endif
return false
endfunction
function MA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function H15))
set t=null
endfunction
function HO5 takes nothing returns nothing
local unit P7I=GetSummoningUnit()
local unit P8I=GetSummonedUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093684569)
if SUI>0 then
call IA1(P8I,1093684569)
call SetUnitAbilityLevel(P8I,1093684569,SUI)
endif
set P7I=null
set P8I=null
endfunction
function H25 takes nothing returns boolean
local integer RII=GetUnitTypeId(GetSummonedUnit())
if RII==1865429076 or RII==1865429077 or RII==1865429078 or RII==1865429079 then
call HO5()
endif
return false
endfunction
function MB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function H25))
set t=null
endfunction
function H35 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call G21(P7I,0)
call SaveInteger(LY,(GetHandleId((P7I))),((4277)),(2))
set t=null
set P7I=null
return false
endfunction
function H45 takes unit Z4O,unit P8I returns nothing
local real TH4=100*GetUnitState(P8I,UNIT_STATE_LIFE)/GetUnitState(P8I,UNIT_STATE_MAX_LIFE)
local real EB2=2.5*GetUnitAbilityLevel(Z4O,1093746995)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer FinalBonus
call SaveInteger(LY,(GetHandleId((Z4O))),((4277)),(1))
call TriggerRegisterTimerEvent(t,0.35,false)
call TriggerAddCondition(t,Condition(function H35))
call SaveUnitHandle(LY,(S5I),(2),(Z4O))
if IsUnitType(P8I,UNIT_TYPE_HERO)==false then
set EB2=EB2/2
endif
if TH4>80 then
call G21(Z4O,R2I(EB2))
elseif TH4>60 then
call G21(Z4O,R2I(EB2*2))
elseif TH4>40 then
call G21(Z4O,R2I(EB2*2*2))
elseif TH4>20 then
call G21(Z4O,R2I(EB2*2*2*2))
else
call G21(Z4O,R2I(EB2*2*2*2*2))
endif
set t=null
endfunction
function H55 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
if GetSpellAbilityId()==1093679446 and GetUnitAbilityLevel(GetTriggerUnit(),1093746995)>0 then
call H45(GetTriggerUnit(),GetSpellTargetUnit())
endif
else
if GetUnitAbilityLevel(GetAttacker(),1093746995)>0 and IsUnitIllusion(GetAttacker())==false and IsUnitEnemy(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==true and((LoadInteger(LY,(GetHandleId((GetAttacker()))),((4277))))==1)==false then
call H45(GetAttacker(),GetTriggerUnit())
endif
endif
return false
endfunction
function MC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function H55))
set t=null
endfunction
function H65 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(684)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or LVO<(TimerGetElapsed(M))or RKI(P8I)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveReal(LY,(GetHandleId(P8I)),(684),((0)*1.0))
call UnitRemoveAbility(P8I,1093808983)
call UnitRemoveAbility(P8I,1093808981)
call UnitRemoveAbility(P8I,1093808982)
call UnitRemoveAbility(P8I,1093808984)
call UnitRemoveAbility(P8I,1110459713)
else
set W3I=false
call P6I(P7I,P8I,1,5+5*SUI)
set W3I=true
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function H75 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(684)))
local integer SUI=GetUnitAbilityLevel(P7I,1093684557)
if LVO>(TimerGetElapsed(M))then
call SaveReal(LY,(GetHandleId(P8I)),(684),(((TimerGetElapsed(M))+W2I)*1.0))
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveReal(LY,(GetHandleId(P8I)),(684),(((TimerGetElapsed(M))+W2I)*1.0))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function H65))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
if BJ1(P8I)==false then
if SUI==1 then
call IA1(P8I,1093808983)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093808983,false)
elseif SUI==2 then
call IA1(P8I,1093808981)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093808981,false)
elseif SUI==3 then
call IA1(P8I,1093808982)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093808982,false)
elseif SUI==4 then
call IA1(P8I,1093808984)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093808984,false)
endif
endif
endif
set t=null
set P7I=null
set P8I=null
endfunction
function H85 takes nothing returns boolean
local unit P7I=GetTriggerUnit()
local unit P8I=GetEventDamageSource()
if RLI(P8I)then
set P8I=(K1[GetPlayerId(GetOwningPlayer((P8I)))])
endif
if W3I and IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==false and QLI(P7I,P8I)<1400 and IsUnitEnemy(P7I,GetOwningPlayer(P8I))and RKI(P8I)==false and GetUnitAbilityLevel(P7I,1112433775)==0 then
call H75(P7I,P8I)
endif
return false
endfunction
function H95 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function H85))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function HA5 takes nothing returns boolean
if GetLearnedSkill()==1093684557 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093684557)==1 then
call H95()
endif
return false
endfunction
function MD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function HA5))
set t=null
endfunction
function HB5 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
call UnitRemoveAbility(P8I,1111847784)
call UnitRemoveAbility(P8I,1110458705)
set P8I=null
endfunction
function HC5 takes nothing returns boolean
if GetSpellAbilityId()==1093679152 or GetSpellAbilityId()==1093752154 then
call HB5()
endif
return false
endfunction
function ME1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HC5))
set t=null
endfunction
function HD5 takes nothing returns boolean
return GetSpellAbilityId()==1093679192
endfunction
function HE5 takes nothing returns nothing
local location BFO=GetUnitLoc(GetSpellAbilityUnit())
call CreateNUnitsAtLocFacingLocBJ(1,1697656901,GetOwningPlayer(GetSpellAbilityUnit()),BFO,BFO)
call RemoveLocation(BFO)
call UnitAddAbility(bj_lastCreatedUnit,1093679427)
call SetUnitAbilityLevelSwapped(1093679427,bj_lastCreatedUnit,GetUnitAbilityLevelSwapped(1093679192,GetSpellAbilityUnit()))
call IssueTargetOrder(bj_lastCreatedUnit,"bloodlust",GetSpellAbilityUnit())
endfunction
function MG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HD5))
call TriggerAddAction(t,function HE5)
endfunction
function HF5 takes unit P8I,integer HG5 returns nothing
call UnitRemoveAbility(P8I,1093750067)
call UnitRemoveAbility(P8I,1093750068)
call UnitRemoveAbility(P8I,1093750083)
call UnitRemoveAbility(P8I,1093750071)
call UnitRemoveAbility(P8I,1093750072)
call UnitRemoveAbility(P8I,1093750073)
call UnitRemoveAbility(P8I,1093750081)
call UnitRemoveAbility(P8I,1093750069)
call UnitRemoveAbility(P8I,1093750082)
call UnitRemoveAbility(P8I,1093750070)
if HG5==1 then
call IA1(P8I,1093750067)
elseif HG5==2 then
call IA1(P8I,1093750068)
elseif HG5==3 then
call IA1(P8I,1093750083)
elseif HG5==4 then
call IA1(P8I,1093750071)
elseif HG5==5 then
call IA1(P8I,1093750072)
elseif HG5==6 then
call IA1(P8I,1093750073)
elseif HG5==7 then
call IA1(P8I,1093750081)
elseif HG5==8 then
call IA1(P8I,1093750069)
elseif HG5==9 then
call IA1(P8I,1093750082)
elseif HG5==10 then
call IA1(P8I,1093750070)
endif
endfunction
function GravekeepersCloakEnemy_Decay takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer HG5
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set S5I=GetHandleId(P8I)
set HG5=(LoadInteger(LY,(S5I),(427)))
set HG5=QAI(HG5-1,0)
call SaveInteger(LY,(S5I),(427),(HG5))
call HF5(P8I,HG5)
set t=null
set P8I=null
return false
endfunction
function HH5 takes unit P7I,integer SUI,integer HZ5 returns nothing
call UnitRemoveAbility(P7I,1093749586)
call UnitRemoveAbility(P7I,1093749587)
call UnitRemoveAbility(P7I,1093749585)
call UnitRemoveAbility(P7I,1093749584)
call UnitRemoveAbility(P7I,1093749553)
call UnitRemoveAbility(P7I,1093749591)
call UnitRemoveAbility(P7I,1093749592)
call UnitRemoveAbility(P7I,1093749593)
call UnitRemoveAbility(P7I,1093749812)
call UnitRemoveAbility(P7I,1093749811)
call UnitRemoveAbility(P7I,1093749810)
call UnitRemoveAbility(P7I,1093749809)
call UnitRemoveAbility(P7I,1093749816)
call UnitRemoveAbility(P7I,1093749815)
call UnitRemoveAbility(P7I,1093749817)
call UnitRemoveAbility(P7I,1093749826)
if SUI==1 then
if HZ5==1 then
call IA1(P7I,1093749586)
elseif HZ5==2 then
call IA1(P7I,1093749587)
elseif HZ5==3 then
call IA1(P7I,1093749585)
elseif HZ5==4 then
call IA1(P7I,1093749584)
endif
elseif SUI==2 then
if HZ5==1 then
call IA1(P7I,1093749553)
elseif HZ5==2 then
call IA1(P7I,1093749591)
elseif HZ5==3 then
call IA1(P7I,1093749592)
elseif HZ5==4 then
call IA1(P7I,1093749593)
endif
elseif SUI==3 then
if HZ5==1 then
call IA1(P7I,1093749812)
elseif HZ5==2 then
call IA1(P7I,1093749811)
elseif HZ5==3 then
call IA1(P7I,1093749810)
elseif HZ5==4 then
call IA1(P7I,1093749809)
endif
elseif SUI==4 then
if HZ5==1 then
call IA1(P7I,1093749816)
elseif HZ5==2 then
call IA1(P7I,1093749815)
elseif HZ5==3 then
call IA1(P7I,1093749817)
elseif HZ5==4 then
call IA1(P7I,1093749826)
endif
endif
endfunction
function HV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer HW5=(LoadInteger(LY,(S5I),(426)))
local unit P7I=(LoadUnitHandle(LY,(HW5),(2)))
local integer HZ5=(LoadInteger(LY,(HW5),(425)))
local integer SUI=GetUnitAbilityLevel(P7I,1093686872)
set HZ5=Q9I(HZ5+1,4)
call SaveInteger(LY,(HW5),(425),(HZ5))
call HH5(P7I,SUI,HZ5)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function HX5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer HZ5=(LoadInteger(LY,(S5I),(425)))
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093686872)
if GetEventDamage()>2 and GetEventDamageSource()!=GetTriggerUnit()and T2I(GetOwningPlayer(GetEventDamageSource()))then
if HZ5>0 then
endif
set HZ5=QAI(HZ5-1,0)
call SaveInteger(LY,(S5I),(425),(HZ5))
call HH5(P7I,SUI,HZ5)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function HV5))
call SaveInteger(LY,(S5I),(426),(GetHandleId(GetTriggeringTrigger())))
endif
set t=null
set P7I=null
return false
endfunction
function HY5 takes nothing returns nothing
local trigger t
local integer S5I
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093686872)
if SUI==1 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function HX5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(425),(4))
endif
call HH5(P7I,SUI,4)
set t=null
set P7I=null
endfunction
function HJ5 takes nothing returns boolean
if GetLearnedSkill()==1093686872 and IsUnitIllusion(GetTriggerUnit())==false then
call HY5()
endif
return false
endfunction
function HK5 takes player p returns nothing
call SetPlayerAbilityAvailable(p,1093749586,false)
call SetPlayerAbilityAvailable(p,1093749587,false)
call SetPlayerAbilityAvailable(p,1093749585,false)
call SetPlayerAbilityAvailable(p,1093749584,false)
call SetPlayerAbilityAvailable(p,1093749589,false)
call SetPlayerAbilityAvailable(p,1093749590,false)
call SetPlayerAbilityAvailable(p,1093749553,false)
call SetPlayerAbilityAvailable(p,1093749591,false)
call SetPlayerAbilityAvailable(p,1093749592,false)
call SetPlayerAbilityAvailable(p,1093749593,false)
call SetPlayerAbilityAvailable(p,1093749594,false)
call SetPlayerAbilityAvailable(p,1093749588,false)
call SetPlayerAbilityAvailable(p,1093749812,false)
call SetPlayerAbilityAvailable(p,1093749811,false)
call SetPlayerAbilityAvailable(p,1093749810,false)
call SetPlayerAbilityAvailable(p,1093749809,false)
call SetPlayerAbilityAvailable(p,1093749808,false)
call SetPlayerAbilityAvailable(p,1093749813,false)
call SetPlayerAbilityAvailable(p,1093749816,false)
call SetPlayerAbilityAvailable(p,1093749815,false)
call SetPlayerAbilityAvailable(p,1093749817,false)
call SetPlayerAbilityAvailable(p,1093749826,false)
call SetPlayerAbilityAvailable(p,1093749825,false)
call SetPlayerAbilityAvailable(p,1093749814,false)
call SetPlayerAbilityAvailable(p,1093749832,false)
call SetPlayerAbilityAvailable(p,1093750067,false)
call SetPlayerAbilityAvailable(p,1093750068,false)
call SetPlayerAbilityAvailable(p,1093750083,false)
call SetPlayerAbilityAvailable(p,1093750071,false)
call SetPlayerAbilityAvailable(p,1093750072,false)
call SetPlayerAbilityAvailable(p,1093750073,false)
call SetPlayerAbilityAvailable(p,1093750081,false)
call SetPlayerAbilityAvailable(p,1093750069,false)
call SetPlayerAbilityAvailable(p,1093750082,false)
call SetPlayerAbilityAvailable(p,1093750070,false)
endfunction
function MZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=0
local player p
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function HJ5))
loop
exitwhen i>5
set p=BO[i]
call HK5(p)
set p=CO[i]
call HK5(p)
set i=i+1
endloop
set t=null
endfunction
function HL5 takes nothing returns nothing
local integer SUI
local unit P7I=GetTriggerUnit()
local unit I01
if GetUnitTypeId(P7I)==1966092599 or GetUnitTypeId(P7I)==1966092601 or GetUnitTypeId(P7I)==1966092600 or GetUnitTypeId(P7I)==1966092609 or GetUnitTypeId(P7I)==1966092610 or GetUnitTypeId(P7I)==1966092611 or GetUnitTypeId(P7I)==1966092629 or GetUnitTypeId(P7I)==1966092630 or GetUnitTypeId(P7I)==1966092631 then
return
endif
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
if GetUnitTypeId(P7I)==1966092596 or GetUnitTypeId(P7I)==1966092612 or GetUnitTypeId(P7I)==1966092626 then
set SUI=1
elseif GetUnitTypeId(P7I)==1966092597 or GetUnitTypeId(P7I)==1966092613 or GetUnitTypeId(P7I)==1966092627 then
set SUI=2
else
set SUI=3
endif
call IA1(I01,1093750342)
call SetUnitAbilityLevel(I01,1093750342,SUI)
call IssueImmediateOrder(I01,"stomp")
set P7I=null
set I01=null
endfunction
function HM5 takes unit HN5,integer BQO,integer SUI returns nothing
local integer HS5
if SUI==1 then
set HS5=8
elseif SUI==2 then
set HS5=14
elseif SUI==3 then
set HS5=22
endif
call G21(HN5,BQO*HS5)
endfunction
function HT5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit HN5=(LoadUnitHandle(LY,(S5I),(2)))
local unit P7I=HN5
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer QX2=(LoadInteger(LY,(S5I),(28)))
local integer BQO=(LoadInteger(LY,(S5I),(194)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetAttacker()==HN5 then
set BQO=IMaxBJ(BQO-1,0)
call SaveInteger(LY,(S5I),(194),(BQO))
call HM5(HN5,BQO,SUI)
endif
else
set QX2=QX2+1
call SaveInteger(LY,(S5I),(28),(QX2))
if ModuloInteger(QX2,15)==0 then
set BQO=IMinBJ(BQO+1,7)
call SaveInteger(LY,(S5I),(194),(BQO))
endif
if GetUnitTypeId(P7I)==1966092599 or GetUnitTypeId(P7I)==1966092601 or GetUnitTypeId(P7I)==1966092600 or GetUnitTypeId(P7I)==1966092609 or GetUnitTypeId(P7I)==1966092610 or GetUnitTypeId(P7I)==1966092611 or GetUnitTypeId(P7I)==1966092629 or GetUnitTypeId(P7I)==1966092630 or GetUnitTypeId(P7I)==1966092631 then
set BQO=7
call SaveInteger(LY,(S5I),(194),(BQO))
endif
call HM5(HN5,BQO,SUI)
if GetUnitTypeId(HN5)==1966092599 or GetUnitTypeId(HN5)==1966092601 or GetUnitTypeId(HN5)==1966092600 or GetUnitTypeId(HN5)==1966092609 or GetUnitTypeId(HN5)==1966092610 or GetUnitTypeId(HN5)==1966092611 or GetUnitTypeId(HN5)==1966092629 or GetUnitTypeId(HN5)==1966092630 or GetUnitTypeId(HN5)==1966092631 then
call SetUnitState(HN5,UNIT_STATE_LIFE,GetUnitState(HN5,UNIT_STATE_LIFE)+31.25+18.75*SUI)
endif
endif
set t=null
set HN5=null
return false
endfunction
function HR5 takes nothing returns boolean
if GetUnitTypeId(GetFilterUnit())==1966092596 or GetUnitTypeId(GetFilterUnit())==1966092597 or GetUnitTypeId(GetFilterUnit())==1966092598 or GetUnitTypeId(GetFilterUnit())==1966092612 or GetUnitTypeId(GetFilterUnit())==1966092613 or GetUnitTypeId(GetFilterUnit())==1966092614 or GetUnitTypeId(GetFilterUnit())==1966092626 or GetUnitTypeId(GetFilterUnit())==1966092627 or GetUnitTypeId(GetFilterUnit())==1966092628 or GetUnitTypeId(GetFilterUnit())==1966092599 or GetUnitTypeId(GetFilterUnit())==1966092601 or GetUnitTypeId(GetFilterUnit())==1966092600 or GetUnitTypeId(GetFilterUnit())==1966092609 or GetUnitTypeId(GetFilterUnit())==1966092610 or GetUnitTypeId(GetFilterUnit())==1966092611 or GetUnitTypeId(GetFilterUnit())==1966092629 or GetUnitTypeId(GetFilterUnit())==1966092630 or GetUnitTypeId(GetFilterUnit())==1966092631 then
call KillUnit(GetFilterUnit())
endif
return false
endfunction
function HP5 takes nothing returns nothing
local group g=NTI()
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local integer SUI=GetUnitAbilityLevel(P7I,1093750341)
local unit HQ5
local unit HU5
local unit Z05
local trigger t
local integer S5I
local boolean E14=false
call GroupEnumUnitsOfPlayer(g,GetOwningPlayer(P7I),Condition(function HR5))
call NSI(g)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093814599)
set E14=true
endif
if SUI==1 then
set HQ5=CreateUnit(GetOwningPlayer(P7I),1966092596,x+75,y+75,GetUnitFacing(P7I))
set HU5=CreateUnit(GetOwningPlayer(P7I),1966092612,x-75,y-75,GetUnitFacing(P7I))
elseif SUI==2 then
set HQ5=CreateUnit(GetOwningPlayer(P7I),1966092597,x+75,y+75,GetUnitFacing(P7I))
set HU5=CreateUnit(GetOwningPlayer(P7I),1966092613,x-75,y-75,GetUnitFacing(P7I))
elseif SUI==3 then
set HQ5=CreateUnit(GetOwningPlayer(P7I),1966092598,x+75,y+75,GetUnitFacing(P7I))
set HU5=CreateUnit(GetOwningPlayer(P7I),1966092614,x-75,y-75,GetUnitFacing(P7I))
endif
call SelectUnitAddForPlayer(HQ5,GetOwningPlayer(P7I))
call SelectUnitAddForPlayer(HU5,GetOwningPlayer(P7I))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",HQ5,"origin"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",HU5,"origin"))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,HQ5,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function HT5))
call SaveUnitHandle(LY,(S5I),(2),(HQ5))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(28),(0))
call SaveInteger(LY,(S5I),(194),(7))
call HM5(HQ5,7,SUI)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,HU5,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function HT5))
call SaveUnitHandle(LY,(S5I),(2),(HU5))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(28),(0))
call SaveInteger(LY,(S5I),(194),(7))
call HM5(HU5,7,SUI)
if E14 then
if SUI==1 then
set Z05=CreateUnit(GetOwningPlayer(P7I),1966092626,x+75,y,GetUnitFacing(P7I))
elseif SUI==2 then
set Z05=CreateUnit(GetOwningPlayer(P7I),1966092627,x+75,y,GetUnitFacing(P7I))
elseif SUI==3 then
set Z05=CreateUnit(GetOwningPlayer(P7I),1966092628,x+75,y,GetUnitFacing(P7I))
endif
call SelectUnitAddForPlayer(Z05,GetOwningPlayer(P7I))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",Z05,"origin"))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,Z05,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function HT5))
call SaveUnitHandle(LY,(S5I),(2),(Z05))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(28),(0))
call SaveInteger(LY,(S5I),(194),(7))
call HM5(Z05,7,SUI)
endif
set g=null
set P7I=null
set HQ5=null
set HU5=null
endfunction
function ZI5 takes nothing returns boolean
if GetSpellAbilityId()==1093750341 or GetSpellAbilityId()==1093814599 then
call HP5()
elseif GetSpellAbilityId()==1093750338 or GetSpellAbilityId()==1093750339 or GetSpellAbilityId()==1093750340 or GetSpellAbilityId()==1093750348 or GetSpellAbilityId()==1093750349 or GetSpellAbilityId()==1093750350 or GetSpellAbilityId()==1093814618 or GetSpellAbilityId()==1093814832 or GetSpellAbilityId()==1093814833 then
call HL5()
endif
return false
endfunction
function MF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ZI5))
set t=null
endfunction
function Z15 takes unit P7I,integer JGO,integer ZO5 returns nothing
local string c1="|c0000cc00"
local string c="||"
local string p=" "
local string s=c1+"|||r"
local string FB1
local boolean TX4=false
local texttag tt=(LoadTextTagHandle(LY,(GetHandleId(P7I)),(451)))
if JGO==0 then
set FB1=" "
elseif ZO5==1 then
if JGO==0 then
set FB1=c+p+c+p+c
elseif JGO==1 then
set FB1=s+p+c+p+c
elseif JGO==2 then
set FB1=s+p+s+p+c
elseif JGO==3 then
set FB1=s+p+s+p+s
endif
elseif ZO5==2 then
if JGO==0 then
set FB1=c+p+c+p+c+p+c
elseif JGO==1 then
set FB1=s+p+c+p+c+p+c
elseif JGO==2 then
set FB1=s+p+s+p+c+p+c
elseif JGO==3 then
set FB1=s+p+s+p+s+p+c
elseif JGO==4 then
set FB1=s+p+s+p+s+p+s
endif
elseif ZO5==3 then
if JGO==0 then
set FB1=c+p+c+p+c+p+c+p+c
elseif JGO==1 then
set FB1=s+p+c+p+c+p+c+p+c
elseif JGO==2 then
set FB1=s+p+s+p+c+p+c+p+c
elseif JGO==3 then
set FB1=s+p+s+p+s+p+c+p+c
elseif JGO==4 then
set FB1=s+p+s+p+s+p+s+p+c
elseif JGO==5 then
set FB1=s+p+s+p+s+p+s+p+s
endif
elseif ZO5==4 then
if JGO==0 then
set FB1=c+p+c+p+c+p+c+p+c+p+c
elseif JGO==1 then
set FB1=s+p+c+p+c+p+c+p+c+p+c
elseif JGO==2 then
set FB1=s+p+s+p+c+p+c+p+c+p+c
elseif JGO==3 then
set FB1=s+p+s+p+s+p+c+p+c+p+c
elseif JGO==4 then
set FB1=s+p+s+p+s+p+s+p+c+p+c
elseif JGO==5 then
set FB1=s+p+s+p+s+p+s+p+s+p+c
elseif JGO==6 then
set FB1=s+p+s+p+s+p+s+p+s+p+s
endif
endif
call SetTextTagText(tt,FB1,0.023)
if GetOwningPlayer(P7I)==GetLocalPlayer()then
set TX4=true
endif
if IC1(P7I)then
set TX4=false
endif
call SetTextTagPosUnit(tt,P7I,0)
call SetTextTagVisibility(tt,TX4)
call SetTextTagPermanent(tt,true)
endfunction
function Z25 takes unit SFI,integer SUI returns nothing
local integer ZO5=GetUnitAbilityLevel(SFI,1093750337)
call Z15(SFI,SUI,ZO5)
if SUI==0 or((LoadInteger(LY,(GetHandleId((SFI))),((2484))))==1)==true then
call UnitRemoveAbility(SFI,1093750583)
call UnitRemoveAbility(SFI,1093750584)
call UnitRemoveAbility(SFI,1093750585)
call IA1(SFI,1093750577)
call UnitRemoveAbility(SFI,1093750578)
call UnitRemoveAbility(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call UnitRemoveAbility(SFI,1093750576)
call UnitRemoveAbility(SFI,1093750579)
call UnitRemoveAbility(SFI,1093684306)
call UnitRemoveAbility(SFI,1093687632)
call UnitRemoveAbility(SFI,1093685063)
call UnitRemoveAbility(SFI,1093687631)
call UnitRemoveAbility(SFI,1093684806)
call UnitRemoveAbility(SFI,1093684548)
elseif SUI==1 then
call UnitRemoveAbility(SFI,1093750583)
call UnitRemoveAbility(SFI,1093750584)
call UnitRemoveAbility(SFI,1093750585)
call UnitRemoveAbility(SFI,1093750577)
call IA1(SFI,1093750578)
call UnitRemoveAbility(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call UnitRemoveAbility(SFI,1093750576)
call UnitRemoveAbility(SFI,1093750579)
call IA1(SFI,1093684306)
call UnitRemoveAbility(SFI,1093687632)
call UnitRemoveAbility(SFI,1093685063)
call UnitRemoveAbility(SFI,1093687631)
call UnitRemoveAbility(SFI,1093684806)
call UnitRemoveAbility(SFI,1093684548)
elseif SUI==2 then
call UnitRemoveAbility(SFI,1093750583)
call UnitRemoveAbility(SFI,1093750584)
call UnitRemoveAbility(SFI,1093750585)
call UnitRemoveAbility(SFI,1093750577)
call UnitRemoveAbility(SFI,1093750578)
call IA1(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call UnitRemoveAbility(SFI,1093750576)
call UnitRemoveAbility(SFI,1093750579)
call UnitRemoveAbility(SFI,1093684306)
call IA1(SFI,1093687632)
call UnitRemoveAbility(SFI,1093685063)
call UnitRemoveAbility(SFI,1093687631)
call UnitRemoveAbility(SFI,1093684806)
call UnitRemoveAbility(SFI,1093684548)
elseif SUI==3 then
call UnitRemoveAbility(SFI,1093750583)
call UnitRemoveAbility(SFI,1093750584)
call UnitRemoveAbility(SFI,1093750585)
call UnitRemoveAbility(SFI,1093684306)
call UnitRemoveAbility(SFI,1093687632)
call IA1(SFI,1093685063)
call UnitRemoveAbility(SFI,1093687631)
call UnitRemoveAbility(SFI,1093684806)
call UnitRemoveAbility(SFI,1093684548)
call UnitRemoveAbility(SFI,1093750577)
call UnitRemoveAbility(SFI,1093750578)
call UnitRemoveAbility(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call UnitRemoveAbility(SFI,1093750576)
call UnitRemoveAbility(SFI,1093750579)
if ZO5==1 then
call IA1(SFI,1093750583)
else
call IA1(SFI,1093750329)
endif
elseif SUI==4 then
call UnitRemoveAbility(SFI,1093750583)
call UnitRemoveAbility(SFI,1093750584)
call UnitRemoveAbility(SFI,1093750585)
call UnitRemoveAbility(SFI,1093684306)
call UnitRemoveAbility(SFI,1093687632)
call UnitRemoveAbility(SFI,1093685063)
call IA1(SFI,1093687631)
call UnitRemoveAbility(SFI,1093684806)
call UnitRemoveAbility(SFI,1093684548)
call UnitRemoveAbility(SFI,1093750577)
call UnitRemoveAbility(SFI,1093750578)
call UnitRemoveAbility(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call UnitRemoveAbility(SFI,1093750576)
call UnitRemoveAbility(SFI,1093750579)
if ZO5==2 then
call IA1(SFI,1093750584)
else
call IA1(SFI,1093750361)
endif
elseif SUI==5 then
call UnitRemoveAbility(SFI,1093750583)
call UnitRemoveAbility(SFI,1093750584)
call UnitRemoveAbility(SFI,1093750585)
call UnitRemoveAbility(SFI,1093750577)
call UnitRemoveAbility(SFI,1093750578)
call UnitRemoveAbility(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call IA1(SFI,1093750576)
call UnitRemoveAbility(SFI,1093750579)
call UnitRemoveAbility(SFI,1093684306)
call UnitRemoveAbility(SFI,1093687632)
call UnitRemoveAbility(SFI,1093685063)
call UnitRemoveAbility(SFI,1093687631)
call IA1(SFI,1093684806)
call UnitRemoveAbility(SFI,1093684548)
call UnitRemoveAbility(SFI,1093750577)
call UnitRemoveAbility(SFI,1093750578)
call UnitRemoveAbility(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call UnitRemoveAbility(SFI,1093750576)
call UnitRemoveAbility(SFI,1093750579)
if ZO5==3 then
call IA1(SFI,1093750585)
else
call IA1(SFI,1093750576)
endif
elseif SUI==6 then
call UnitRemoveAbility(SFI,1093750583)
call UnitRemoveAbility(SFI,1093750584)
call UnitRemoveAbility(SFI,1093750585)
call UnitRemoveAbility(SFI,1093750577)
call UnitRemoveAbility(SFI,1093750578)
call UnitRemoveAbility(SFI,1093750362)
call UnitRemoveAbility(SFI,1093750329)
call UnitRemoveAbility(SFI,1093750361)
call UnitRemoveAbility(SFI,1093750576)
call IA1(SFI,1093750579)
call UnitRemoveAbility(SFI,1093684306)
call UnitRemoveAbility(SFI,1093687632)
call UnitRemoveAbility(SFI,1093685063)
call UnitRemoveAbility(SFI,1093687631)
call UnitRemoveAbility(SFI,1093684806)
call IA1(SFI,1093684548)
endif
if(GetUnitAbilityLevel(SFI,1093750337)+2)==SUI then
call IA1(SFI,1093750346)
else
call UnitRemoveAbility(SFI,1093750346)
endif
endfunction
function Z35 takes unit P7I,real PAI returns nothing
local integer SUI=0
local real Z45=110
if PAI>Z45*6 then
set SUI=6
elseif PAI>Z45*5 then
set SUI=5
elseif PAI>Z45*4 then
set SUI=4
elseif PAI>Z45*3 then
set SUI=3
elseif PAI>Z45*2 then
set SUI=2
elseif PAI>Z45*1 then
set SUI=1
endif
set SUI=Q9I(SUI,2+GetUnitAbilityLevel(P7I,1093750337))
call SaveInteger(LY,(GetHandleId(P7I)),(450),(SUI))
call Z25(P7I,SUI)
endfunction
function Z55 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer ZO5=GetUnitAbilityLevel(P7I,1093750337)
call Z15(P7I,(LoadInteger(LY,(GetHandleId((P7I))),(450))),ZO5)
call Z35(P7I,(LoadReal(LY,(GetHandleId(P7I)),(443))))
set t=null
set P7I=null
return false
endfunction
function Z65 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local real PAI=(LoadReal(LY,(S5I),(20)))
if IsUnitAlly(P8I,GetOwningPlayer(P7I))==false then
set W5I=true
call P6I(P7I,P8I,1,PAI)
set W5I=false
else
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+PAI)
endif
set P7I=null
set P8I=null
endfunction
function Z75 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call Z35(P7I,(LoadReal(LY,(GetHandleId(P7I)),(443))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function Z85 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=(LoadInteger(LY,(GetHandleId((P7I))),(450)))
local trigger t=IJ1(P7I,P8I,1747993157,"Z65",1000,false)
local integer S5I=GetHandleId(t)
call SaveReal(LY,(S5I),(20),((20+SUI*65)*1.0))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AntiMagicShell\\AntiMagicShell.mdl",P7I,"chest"))
call SaveReal(LY,(GetHandleId(P7I)),(443),((0)*1.0))
call Z35(P7I,0)
call SCI(P7I,2484,4)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerAddCondition(t,Condition(function Z75))
call TriggerRegisterTimerEvent(t,4,false)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set P8I=null
set t=null
endfunction
function Z95 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real PAI=(LoadReal(LY,(S5I),(20)))
if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093750337)then
if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
call SaveReal(LY,(GetHandleId(P7I)),(443),(((LoadReal(LY,(GetHandleId(P7I)),(443)))-PAI)*1.0))
endif
call Z35(P7I,(LoadReal(LY,(GetHandleId(P7I)),(443))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function ZA5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer S5I=GetHandleId(P7I)
local texttag tt=CreateTextTag()
local boolean TX4=false
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function Z55))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
if GetOwningPlayer(P7I)==GetLocalPlayer()then
set TX4=true
endif
call SetTextTagText(tt," ",0.023)
call SetTextTagPosUnit(tt,P7I,0)
call SetTextTagVisibility(tt,TX4)
call SetTextTagPermanent(tt,true)
set W4I[GetPlayerId(GetOwningPlayer(P7I))]=P7I
call SaveReal(LY,(S5I),(443),((0)*1.0))
call Z35(P7I,0)
call SaveTextTagHandle(LY,(S5I),(451),(tt))
set P7I=null
set t=null
set tt=null
endfunction
function ZB5 takes unit ZC5,unit ZD5 returns nothing
local real PAI=GetEventDamage()
local integer SUI=GetUnitAbilityLevel(ZC5,1093750337)
local real ZE5=(LoadReal(LY,(GetHandleId(ZC5)),(443)))
local trigger t
local integer S5I
if QLI(ZC5,ZD5)<1400 and W5I==false then
if RSI(PAI)and GetEventDamage()>2 and GetEventDamageSource()!=GetTriggerUnit()and(T2I(GetOwningPlayer(GetEventDamageSource()))or GetUnitTypeId(GetEventDamageSource())==1848651852)then
set ZE5=ZE5+PAI
call SaveReal(LY,(GetHandleId(ZC5)),(443),((ZE5)*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(ZC5))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call TriggerRegisterTimerEvent(t,6,false)
call TriggerRegisterUnitEvent(t,ZC5,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,ZC5,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Z95))
call Z35(ZC5,ZE5)
endif
endif
set t=null
endfunction
function ZF5 takes nothing returns nothing
local integer i=0
loop
exitwhen i>12
if W4I[i]!=null then
call ZB5(W4I[i],GetTriggerUnit())
endif
set i=i+1
endloop
endfunction
function ZG5 takes nothing returns boolean
if GetLearnedSkill()==1093750337 and GetUnitAbilityLevel(GetTriggerUnit(),1093750337)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call ZA5()
endif
return false
endfunction
function ZH5 takes nothing returns boolean
if GetSpellAbilityId()==1093750337 then
call Z85()
endif
return false
endfunction
function MH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function ZG5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ZH5))
set t=null
call O42("ZF5")
endfunction
constant function Upheaval_RawCode takes nothing returns integer
return 1093678672
endfunction
constant function Upheaval_EffectCode takes nothing returns integer
return 1093683781
endfunction
constant function Upheaval_EffectModel takes nothing returns integer
return 1697657159
endfunction
function ZZ5 takes nothing returns boolean
return GetSpellAbilityId()==(1093678672)
endfunction
function ZV5 takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(XO))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction
function ZW5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local unit I01=CreateUnit(GetOwningPlayer(XO),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,(1093683781))
call SetUnitAbilityLevel(I01,(1093683781),YO)
call IssueTargetOrder(I01,"slow",P8I)
endfunction
function ZX5 takes unit I01,unit SFI returns nothing
local group Z51=NTI()
local boolexpr QL1=Condition(function ZV5)
set XO=SFI
call GroupEnumUnitsInRange(Z51,GetUnitX(I01),GetUnitY(I01),675,QL1)
call ForGroup(Z51,function ZW5)
call NSI(Z51)
endfunction
function ZY5 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I((t))
elseif GetTriggerEvalCount(t)>32 then
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I((t))
call PJI((LoadUnitHandle(LY,(S5I),(14))))
else
call SetUnitAnimation(I01,"birth")
set SFI=(LoadUnitHandle(LY,(S5I),(14)))
set YO=GetTriggerExecCount(t)*GetUnitAbilityLevel(SFI,(1093678672))/2
call ZX5(I01,SFI)
endif
set t=null
set I01=null
set SFI=null
endfunction
function ZJ5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location BFO=GetSpellTargetLoc()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetLocationX(BFO)
local real y=GetLocationY(BFO)
local unit I01=CreateUnit(GetOwningPlayer(SFI),(1697657159),x,y,0)
call RemoveLocation(BFO)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_ENDCAST)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddAction(t,function ZY5)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
endfunction
function NC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddAction(t,function ZJ5)
call TriggerAddCondition(t,Condition(function ZZ5))
call Q1I((1093683781))
endfunction
constant function FatalBonds_RawCode takes nothing returns integer
return 1093683765
endfunction
constant function FatalBonds_IconAbility takes nothing returns integer
return 1093683769
endfunction
constant function FatalBonds_Icon takes nothing returns integer
return 1093685298
endfunction
function ZK5 takes nothing returns boolean
return GetSpellAbilityId()==(1093683765)
endfunction
function ZL5 takes nothing returns nothing
call IA1(GetEnumUnit(),(1093685298))
endfunction
function ZM5 takes nothing returns nothing
call UnitRemoveAbility(GetEnumUnit(),(1093685298))
endfunction
function ZN5 takes unit ZS5,unit ZT5 returns nothing
if ZS5!=null and ZT5!=null then
call UGI("CLPB",GetUnitX(ZS5),GetUnitY(ZS5),GetUnitX(ZT5),GetUnitY(ZT5),0.7,0.1,0.9,1,0.3)
endif
endfunction
function ZR5 takes nothing returns nothing
local unit SFI=(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))
local real PAI=0.25*GetEventDamage()
set PAI=QCI(PAI,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE))
if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>1 and GetEnumUnit()!=GetTriggerUnit()then
if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<PAI then
call P6I(SFI,GetEnumUnit(),3,PAI)
else
call A41(GetEnumUnit(),PAI)
endif
endif
endfunction
function ZP5 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group Z51=(LoadGroupHandle(LY,(S5I),(220)))
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call ForGroup(Z51,function ZM5)
call FlushChildHashtable(LY,(S5I))
call NSI(Z51)
call S0I((t))
elseif GetEventDamage()>10 and GetEventDamage()<6000 then
call DisableTrigger(t)
call ForGroup(Z51,function ZR5)
call EnableTrigger(t)
endif
endfunction
function ZQ5 takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction
function ZU5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local group Z51=NTI()
local integer SUI=GetUnitAbilityLevel(SFI,(1093683765))
local boolexpr QL1=Condition(function ZQ5)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer i=2
local group XG4=NTI()
local unit array V05
local string VI5="Abilities\\Spells\\Undead\\Curse\\CurseTarget.mdl"
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call ZN5(SFI,P8I)
call U5I(VI5,P8I,"overhead",25)
set V05[1]=P8I
call SaveUnitHandle(LY,(S5I),(246),(V05[1]))
call TriggerRegisterUnitEvent(t,V05[1],EVENT_UNIT_DAMAGED)
call GroupEnumUnitsInRange(Z51,GetUnitX(P8I),GetUnitY(P8I),700+25,QL1)
call GroupRemoveUnit(Z51,P8I)
call GroupAddUnit(XG4,P8I)
call SaveGroupHandle(LY,(S5I),(220),(XG4))
loop
exitwhen i>(2+SUI)or FirstOfGroup(Z51)==null
set V05[i]=AU1(Z51,GetUnitX(P8I),GetUnitY(P8I))
call ZN5(V05[i-1],V05[i])
call TriggerRegisterUnitEvent(t,V05[i],EVENT_UNIT_DAMAGED)
call GroupAddUnit(XG4,V05[i])
call GroupRemoveUnit(Z51,V05[i])
call U5I(VI5,V05[i],"overhead",25)
set i=i+1
endloop
call SaveInteger(LY,(S5I),(245),(i-1))
set YO=GetUnitAbilityLevel(SFI,(1093683765))
call ForGroup(XG4,function ZL5)
call TriggerRegisterTimerEvent(t,25,false)
call TriggerAddAction(t,function ZP5)
call NSI(Z51)
endfunction
function ND1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ZK5))
call TriggerAddAction(t,function ZU5)
call Q1I((1093683769))
endfunction
function V15 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093681491)
if GetTriggerEvalCount(t)>11 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093744459)
call UnitRemoveAbility(P8I,1110458704)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call P6I(P7I,P8I,1,SUI*10+5)
endif
set P7I=null
set P8I=null
set t=null
return false
endfunction
function VO5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093681491)
if GetTriggerEvalCount(t)>11 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093685296)
call UnitRemoveAbility(P8I,1110456115)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call QUI(P8I,SUI*10+5)
endif
set P7I=null
set P8I=null
set t=null
return false
endfunction
function V25 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
if IsUnitAlly(P8I,GetOwningPlayer(P7I))then
call TriggerAddCondition(t,Condition(function VO5))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\StaffOfSanctuary\\Staff_Sanctuary_Target.mdl",P8I,"chest")))
call IA1(P8I,1093685296)
elseif NNI(GetSpellTargetUnit())==false then
call TriggerAddCondition(t,Condition(function V15))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Voodoo\\VoodooAuraTarget.mdl",P8I,"overhead")))
call IA1(P8I,1093744459)
endif
set P7I=null
set P8I=null
set t=null
endfunction
function V35 takes nothing returns boolean
if GetSpellAbilityId()==1093681491 then
call V25()
endif
return false
endfunction
function NE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function V35))
call Q1I(1093685296)
call Q1I(1093744459)
set t=null
endfunction
function V45 takes nothing returns nothing
call P6I(W6I,GetEnumUnit(),1,20+10*W7I)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Immolation\\ImmolationDamage.mdl",GetEnumUnit(),"head"))
endfunction
function V55 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI
local integer RII=GetUnitTypeId(P7I)
local group g
if RII==1848651861 or RII==1848658773 then
set SUI=1
elseif RII==1848651865 or RII==1848658774 then
set SUI=2
elseif RII==1848651866 or RII==1848658775 then
set SUI=3
endif
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set GK=P7I
set W6I=P7I
set W7I=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),325,Condition(function CA1))
call ForGroup(g,function V45)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function V65 takes unit u returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function V55))
call SaveUnitHandle(LY,(S5I),(2),(u))
set t=null
endfunction
function V75 takes nothing returns boolean
local integer RII=GetUnitTypeId(GetTriggerUnit())
if RII==1848651861 or RII==1848658773 or RII==1848651865 or RII==1848658774 or RII==1848651866 or RII==1848658775 then
call V65(GetTriggerUnit())
endif
return false
endfunction
function V85 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local real BA3=(LoadReal(LY,(S5I),(191)))
local real BB3=(LoadReal(LY,(S5I),(192)))
local integer SUI=GetUnitAbilityLevel(P7I,1395667029)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,BA3,BB3,0)
call IA1(I01,1395667029)
call SetUnitAbilityLevel(I01,1395667029,SUI)
call IssuePointOrderById(I01,852224,x,y)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set P7I=null
set I01=null
set t=null
return false
endfunction
function V95 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.3,false)
call TriggerAddCondition(t,Condition(function V85))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((GetSpellTargetX())*1.0))
call SaveReal(LY,(S5I),(7),((GetSpellTargetY())*1.0))
call SaveReal(LY,(S5I),(191),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(192),((GetUnitY(P7I))*1.0))
set P7I=null
set t=null
endfunction
function VA5 takes nothing returns boolean
if GetSpellAbilityId()==1395667029 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
call V95()
endif
return false
endfunction
function NF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VA5))
set t=CreateTrigger()
call TriggerRegisterEnterRectSimple(t,GetWorldBounds())
call TriggerAddCondition(t,Condition(function V75))
set t=null
endfunction
function VB5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if GetUnitAbilityLevel(SFI,1112041075)==0 then
call UnitRemoveAbility(SFI,1093681977)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
return false
endfunction
function VC5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
call IA1(SFI,1093681977)
call SetUnitAbilityLevel(SFI,1093681977,GetUnitAbilityLevel(SFI,1093681985))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function VB5))
set SFI=null
set t=null
endfunction
function VD5 takes nothing returns boolean
if GetSpellAbilityId()==1093681985 then
call VC5()
endif
return false
endfunction
function MV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VD5))
endfunction
function VE5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
call SetUnitState((LoadUnitHandle(LY,(S5I),(26))),UNIT_STATE_MANA,(LoadReal(LY,(S5I),(242))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function VF5 takes unit u,real VG5 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function VE5))
call SaveUnitHandle(LY,(S5I),(26),(u))
call SaveReal(LY,(S5I),(242),((VG5)*1.0))
set t=null
endfunction
function VH5 takes nothing returns boolean
return GetSpellAbilityId()==1093682004
endfunction
function VZ5 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggerUnit())
local real D14=QDI((LoadReal(LY,(S5I),(7200+1))),1)
local real OA2=QDI((LoadReal(LY,(S5I),(7250+1))),1)
local real x=(LoadReal(LY,(S5I),(7300+1)))
local real y=(LoadReal(LY,(S5I),(7350+1)))
local unit PKI=GetTriggerUnit()
if(LoadReal(LY,(S5I),(7200+1)))>1 and GetUnitState(PKI,UNIT_STATE_LIFE)>1 then
call AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl",GetUnitX(PKI),GetUnitY(PKI))
call SetUnitX(PKI,x)
call SetUnitY(PKI,y)
call SetUnitState(PKI,UNIT_STATE_LIFE,D14)
call SetUnitState(PKI,UNIT_STATE_MANA,OA2)
call UnitRemoveBuffs(PKI,false,true)
call EO1(PKI)
call VF5(PKI,OA2)
endif
endfunction
function MW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VH5))
call TriggerAddAction(t,function VZ5)
endfunction
function VV5 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local unit PKI=(LoadUnitHandle(LY,(GetHandleId(t)),(221)))
local integer S5I=GetHandleId(PKI)
local integer TGI=1
local integer THI=10
loop
exitwhen TGI>THI
call SaveReal(LY,(S5I),(7300+(TGI-1)),(((LoadReal(LY,(S5I),(7300+(TGI)))))*1.0))
call SaveReal(LY,(S5I),(7350+(TGI-1)),(((LoadReal(LY,(S5I),(7350+(TGI)))))*1.0))
call SaveReal(LY,(S5I),(7200+(TGI-1)),(((LoadReal(LY,(S5I),(7200+(TGI)))))*1.0))
call SaveReal(LY,(S5I),(7250+(TGI-1)),(((LoadReal(LY,(S5I),(7250+(TGI)))))*1.0))
set TGI=TGI+1
endloop
call SaveReal(LY,(S5I),(7300+10),((GetUnitX(PKI))*1.0))
call SaveReal(LY,(S5I),(7350+10),((GetUnitY(PKI))*1.0))
call SaveReal(LY,(S5I),(7200+10),((GetUnitState(PKI,UNIT_STATE_LIFE))*1.0))
call SaveReal(LY,(S5I),(7250+10),((GetUnitState(PKI,UNIT_STATE_MANA))*1.0))
endfunction
function TimeLapseLearn_Conditions takes nothing returns boolean
return GetLearnedSkill()==1093682004 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function KO4 takes nothing returns nothing
local unit PKI=GK
local integer SUI=GetUnitAbilityLevel(PKI,1093682004)
local trigger t
set t=CreateTrigger()
call TriggerRegisterTimerEventPeriodic(t,0.50)
call TriggerAddAction(t,function VV5)
call SaveUnitHandle(LY,(GetHandleId(t)),(221),(PKI))
endfunction
function MX1 takes nothing returns nothing
endfunction
function VW5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real d=(LoadReal(LY,(S5I),(138)))
local real VX5=(LoadReal(LY,(GetHandleId(P7I)),(508)))-d
local fogmodifier I31=(LoadFogModifierHandle(LY,(S5I),(42)))
call FogModifierStop(I31)
call DestroyFogModifier(I31)
call SaveReal(LY,(GetHandleId(P7I)),(508),((VX5)*1.0))
call G21(P7I,R2I(VX5/100.0*(0.3*GetUnitAbilityLevel(P7I,1093751095))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function VY5 takes unit P7I,real d returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real VX5=(LoadReal(LY,(GetHandleId(P7I)),(508)))+d
local fogmodifier I31=CreateFogModifierRadius(GetOwningPlayer(P7I),FOG_OF_WAR_VISIBLE,GetUnitX(P7I),GetUnitY(P7I),400,true,true)
call FogModifierStart(I31)
call SaveReal(LY,(GetHandleId(P7I)),(508),((VX5)*1.0))
call G21(P7I,R2I(VX5/100.0*(0.6*GetUnitAbilityLevel(P7I,1093751095))))
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function VW5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(138),((d)*1.0))
call SaveFogModifierHandle(LY,(S5I),(42),(I31))
set t=null
endfunction
function VJ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real IO3=GetUnitX(P7I)
local real I23=GetUnitY(P7I)
local real d=QNI(II3,I13,IO3,I23)
if d<1500 then
call VY5(P7I,d)
else
call VY5(P7I,1500)
endif
call SaveReal(LY,(S5I),(23),((IO3)*1.0))
call SaveReal(LY,(S5I),(24),((I23)*1.0))
set t=null
set P7I=null
return false
endfunction
function VK5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function VJ5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(23),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(GetHandleId(P7I)),(508),((0)*1.0))
set t=null
set P7I=null
endfunction
function VL5 takes nothing returns boolean
if GetLearnedSkill()==1093751095 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093751095)==1 then
call VK5()
endif
return false
endfunction
function Register_EchoStep takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function VL5))
set t=null
endfunction
function VM5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P8I,1093751130)
call SaveInteger(LY,(GetHandleId((P8I))),((4290)),(2))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerUnit()==P8I then
call KillUnit(P7I)
endif
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call SetUnitAbilityLevel(P8I,1093751130,GetUnitAbilityLevel(P8I,1093751130)+1)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\SkeletalMageMissile\\SkeletalMageMissile.mdl",P8I,"chest"))
endif
else
call SetUnitX(P7I,GetUnitX(P8I)-40)
call SetUnitY(P7I,GetUnitY(P8I)-40)
if BU1(P8I)and IsUnitVisible(P8I,GetOwningPlayer(P7I))==false then
call KillUnit(P7I)
elseif ModuloInteger(GetTriggerEvalCount(t),5)==0 then
call IssueTargetOrder(P7I,"attack",P8I)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function VN5 takes unit VS5,unit P8I,integer SUI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UnitRemoveAbility(VS5,1098282348)
call SaveUnitHandle(LY,(S5I),(2),(VS5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(P8I,1093751130)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,VS5,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function VM5))
call TriggerEvaluate(t)
call UnitApplyTimedLife(VS5,1112820806,12+2*SUI)
set t=null
endfunction
function VT5 takes nothing returns boolean
return(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((4290))))==1)==false and(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GK))==true or BU1(GetFilterUnit())==false)
endfunction
function VR5 takes nothing returns boolean
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
set x=PTI(x+18*Cos(a))
set y=PUI(y+18*Sin(a))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
if GetTriggerEvalCount(t)>166 then
loop
exitwhen i>12
if(LoadBoolean(LY,(S5I),(511+i-1)))==false then
call KillUnit((LoadUnitHandle(LY,(S5I),(393+i-1))))
endif
set i=i+1
endloop
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,400,Condition(function VT5))
loop
exitwhen i>12
if(LoadBoolean(LY,(S5I),(511+i-1)))==false then
set VS5=(LoadUnitHandle(LY,(S5I),(393+i-1)))
set x=(LoadReal(LY,(S5I),(549+i-1)))
set y=(LoadReal(LY,(S5I),(567+i-1)))
set x=PTI(x+18*Cos(a))
set y=PUI(y+18*Sin(a))
call SaveReal(LY,(S5I),(549+i-1),((x)*1.0))
call SaveReal(LY,(S5I),(567+i-1),((y)*1.0))
call SetUnitX(VS5,x)
call SetUnitY(VS5,y)
set P8I=FirstOfGroup(g)
if P8I!=null then
call GroupRemoveUnit(g,P8I)
call SaveInteger(LY,(GetHandleId((P8I))),((4290)),(1))
call SaveBoolean(LY,(S5I),(511+i-1),(true))
call VN5(VS5,P8I,GetUnitAbilityLevel(P7I,1093751127))
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
function VP5 takes nothing returns nothing
local location l=GetSpellTargetLoc()
local real QJI=GetLocationX(l)
local real QKI=GetLocationY(l)
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local real a=UEI(x,y,QJI,QKI)*bj_DEGTORAD
local unit I01
local real IV1=PTI(x+3000*Cos(a))
local real IW1=PUI(y+3000*Sin(a))
local integer i=1
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real DJ1
local integer SUI=GetUnitAbilityLevel(P7I,1093751127)
local integer RII
call RemoveLocation(l)
if SUI==1 then
set RII=1966092619
elseif SUI==2 then
set RII=1966092616
elseif SUI==3 then
set RII=1966092618
elseif SUI==4 then
set RII=1966092620
endif
loop
exitwhen i>12
set I01=CreateUnit(GetOwningPlayer(P7I),RII,x+GetRandomInt(-300,300),y+GetRandomInt(-300,300),a*bj_RADTODEG)
call SaveUnitHandle(LY,(S5I),(393+i-1),(I01))
call SaveBoolean(LY,(S5I),(511+i-1),(false))
call SaveReal(LY,(S5I),(549+i-1),((GetUnitX(I01))*1.0))
call SaveReal(LY,(S5I),(567+i-1),((GetUnitY(I01))*1.0))
set i=i+1
endloop
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function VR5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(47),((IV1)*1.0))
call SaveReal(LY,(S5I),(48),((IW1)*1.0))
set P7I=null
set I01=null
set l=null
set t=null
endfunction
function VQ5 takes nothing returns boolean
if GetSpellAbilityId()==1093751127 then
call VP5()
endif
return false
endfunction
function MY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VQ5))
call A51(1966092619)
call A51(1966092616)
call A51(1966092618)
call A51(1966092620)
call Q1I(1093751130)
set t=null
endfunction
function VU5 takes unit P7I,unit WNO,unit IN3,integer SUI,boolean IS3 returns real
local unit I01=CreateUnit(GetOwningPlayer(IN3),1697656901,GetUnitX(WNO),GetUnitY(WNO),0)
if IS3 then
call IA1(I01,1093687129)
else
call IA1(I01,1093684812)
endif
call IssueTargetOrder(I01,"thunderbolt",IN3)
if IsUnitType(IN3,UNIT_TYPE_HERO)==false then
call PDI(P7I,IN3,1,50+25*SUI,0.4)
else
call PDI(P7I,IN3,1,50,0.4)
endif
if IS3 then
return((GetUnitX(IN3)-GetUnitX(WNO))*(GetUnitX(IN3)-GetUnitX(WNO))+(GetUnitY(IN3)-GetUnitY(WNO))*(GetUnitY(IN3)-GetUnitY(WNO)))/1000000
endif
set I01=null
return((GetUnitX(IN3)-GetUnitX(WNO))*(GetUnitX(IN3)-GetUnitX(WNO))+(GetUnitY(IN3)-GetUnitY(WNO))*(GetUnitY(IN3)-GetUnitY(WNO)))/360000
endfunction
function W05 takes unit P7I,unit WNO returns unit
local group g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(WNO),GetUnitY(WNO),600,Condition(function C91))
call GroupRemoveUnit(g,WNO)
set GK=GroupPickRandomUnit(g)
call NSI(g)
set g=null
return GK
endfunction
function WI5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer W15=(LoadInteger(LY,(S5I),(391)))
local unit WNO=NYI(W15)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local unit IN3
local real M5I
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if NPI<(SUI*2+1)then
set IN3=W05(P7I,WNO)
if IN3!=null then
set M5I=VU5(P7I,WNO,IN3,SUI,false)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(391),(NKI(IN3)))
call SaveInteger(LY,(S5I),(34),(NPI+1))
call TriggerRegisterTimerEvent(t,M5I+0.4,false)
call TriggerAddCondition(t,Condition(function WI5))
endif
endif
call NXI(W15)
set t=null
set P7I=null
set WNO=null
set IN3=null
return false
endfunction
function WO5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit IU3=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093684813)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real M5I=VU5(SFI,SFI,IU3,SUI,true)
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(391),(NKI(IU3)))
call SaveInteger(LY,(S5I),(34),(1))
call TriggerRegisterTimerEvent(t,M5I,false)
call TriggerAddCondition(t,Condition(function WI5))
set SFI=null
set IU3=null
set t=null
endfunction
function W25 takes nothing returns boolean
if GetSpellAbilityId()==1093684813 and NNI(GetSpellTargetUnit())==false then
call WO5()
endif
return false
endfunction
function N01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function W25))
set t=null
endfunction
function W35 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=GetUnitAbilityLevel(SFI,1093684805)
call UnitRemoveAbility(SFI,1093684805)
call IA1(SFI,1093684805)
call SetUnitAbilityLevel(SFI,1093684805,SUI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function W45 takes unit P8I,integer SUI returns nothing
local real HJ3=(8+SUI*8)/3
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+HJ3)
endfunction
function W55 takes nothing returns boolean
if(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))then
call W45(GetFilterUnit(),UJ)
endif
return false
endfunction
function W65 takes unit SFI returns nothing
local integer SUI=GetUnitAbilityLevel(SFI,1093684805)
local group g=NTI()
set GK=SFI
set UJ=SUI
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),525,Condition(function W55))
call NSI(g)
set g=null
endfunction
function W75 takes unit SFI returns nothing
local integer SUI=GetUnitAbilityLevel(SFI,1093684805)
local real W85=4+4*SUI
call SetUnitState(SFI,UNIT_STATE_MANA,GetUnitState(SFI,UNIT_STATE_MANA)-(W85/3))
if GetUnitState(SFI,UNIT_STATE_MANA)<W85 then
if((LoadInteger(LY,(GetHandleId((SFI))),((4265))))==1)==false then
call IssueImmediateOrder(SFI,"unimmolation")
endif
endif
endfunction
function W95 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if GetIssuedOrderId()==852178 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function W35))
endif
else
call W65(SFI)
call W75(SFI)
endif
set t=null
return false
endfunction
function WA5 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0.33,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function W95))
set SFI=null
set t=null
endfunction
function WB5 takes nothing returns boolean
if GetSpellAbilityId()==1093684805 then
call WA5()
endif
return false
endfunction
function N11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function WB5))
set t=null
endfunction
function WC5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093684815)
local integer NPI=GetTriggerEvalCount(t)
local real WD5=(LoadReal(LY,(S5I),(392)))
local real H84=0
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if NPI==4 or NPI==8 or NPI==12 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
if NPI==12 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif NPI==4 or NPI==8 then
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\NetherInferno.mdx",P8I,"origin")))
endif
set H84=(0.08+SUI*0.08)*QDI(WD5-GetUnitState(P8I,UNIT_STATE_LIFE),0)
if H84>0 then
call UYI("+"+I2S(R2I(H84)),2,P8I,0.023,68,0,187,216)
endif
endif
call P6I(P7I,P8I,1,5*SUI+H84)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function WE5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
call DestroyEffect(AddSpecialEffectTarget("effects\\NetherInferno.mdx",P8I,"origin"))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function WC5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(392),((GetUnitState(P8I,UNIT_STATE_LIFE))*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\NetherInferno.mdx",P8I,"origin")))
set t=null
set P7I=null
set P8I=null
endfunction
function WF5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093684815)
call GroupEnumUnitsInRange(g,x,y,180+25,Condition(function D01))
call ForGroup(g,function WE5)
call NSI(g)
call RemoveLocation(l)
set l=null
set g=null
endfunction
function WG5 takes nothing returns boolean
if GetSpellAbilityId()==1093684815 then
call WF5()
endif
return false
endfunction
function NI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function WG5))
set t=null
endfunction
function WH5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()!=EVENT_UNIT_SPELL_ENDCAST then
call PJI(P7I)
endif
set P7I=null
set t=null
return false
endfunction
function WZ5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function WH5))
set t=null
set P7I=null
endfunction
function WV5 takes nothing returns boolean
if GetSpellAbilityId()==1093684820 or GetSpellAbilityId()==1093684824 then
call WZ5()
endif
return false
endfunction
function WW5 takes nothing returns boolean
if GetUnitTypeId(GetSummonedUnit())==1865429040 or GetUnitTypeId(GetSummonedUnit())==1865429041 or GetUnitTypeId(GetSummonedUnit())==1865429057 or GetUnitTypeId(GetSummonedUnit())==1865429080 then
call SCI(GetSummoningUnit(),4265,8)
endif
return false
endfunction
function NO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function WW5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function WV5))
set t=null
endfunction
function WX5 takes nothing returns boolean
local integer id=0
local unit P8I
local real GW1=(TimerGetElapsed(M))
local real mp
local real hp
loop
exitwhen id>12
set P8I=K1[id]
if P8I!=null and GetUnitAbilityLevel(P8I,1110459204)==0 and W8I[id]>GW1 then
set W8I[id]=0
endif
if P8I!=null and GetUnitAbilityLevel(P8I,1110459204)>0 then
if W8I[id]>GW1 and IC1(P8I)==false then
set hp=GetUnitState(P8I,UNIT_STATE_LIFE)
set mp=GetUnitState(P8I,UNIT_STATE_MANA)
if hp<W9I[id]then
set W9I[id]=hp
else
endif
if mp<WAI[id]then
set WAI[id]=mp
else
endif
call SetUnitState(P8I,UNIT_STATE_LIFE,W9I[id])
set WCI[id]=WCI[id]+1
if WCI[id]==10 then
set WCI[id]=0
if WDI[id]==1 then
call P6I(WBI[id],P8I,1,12.5)
elseif WDI[id]==2 then
call P6I(WBI[id],P8I,1,20)
elseif WDI[id]==3 then
call P6I(WBI[id],P8I,1,32)
endif
endif
elseif W8I[id]>GW1 and IC1(P8I)==true then
set W8I[id]=0
set W9I[id]=9999
set WAI[id]=9999
endif
if(GetUnitAbilityLevel(P8I,1110459204)>0 and W8I[id]<GW1)then
call UnitRemoveAbility(P8I,1093749313)
call UnitRemoveAbility(P8I,1110459204)
call UnitRemoveAbility(P8I,1093749828)
endif
endif
set id=id+1
endloop
set P8I=null
return false
endfunction
function WY5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit I01
if GetUnitAbilityLevel(P8I,1110459204)==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetOwningPlayer(P8I)!=GetOwningPlayer(GetEventDamageSource())and GetUnitState(P8I,UNIT_STATE_MAX_LIFE)*(0.09+0.01*SUI)>GetUnitState(P8I,UNIT_STATE_LIFE)and((LoadInteger(LY,(GetHandleId((P8I))),((2485))))==1)==false then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093749313)
call UnitRemoveAbility(P8I,1110459204)
call UnitRemoveAbility(P8I,1093749828)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"overhead"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"chest"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl",P8I,"origin"))
set I01=CreateUnit(GetOwningPlayer(GetEventDamageSource()),1697656901,0,0,0)
call UnitRemoveBuffs(P8I,true,true)
call UnitRemoveAbility(P8I,1097167980)
call UnitDamageTarget(I01,P8I,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
set I01=null
endif
set t=null
set P8I=null
return false
endfunction
function WJ5 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093750089)
local integer id=GetPlayerId(GetOwningPlayer(P8I))
local trigger t
local integer S5I
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093816645)
endif
if SUI>0 and IsUnitType(P8I,UNIT_TYPE_HERO)==true and IsUnitIllusion(P8I)==false and V51(GetUnitTypeId(P8I))==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function WY5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call IA1(P8I,1093749313)
call IA1(P8I,1093749828)
if GetUnitAbilityLevel(P7I,1093816645)>0 then
set W8I[id]=(TimerGetElapsed(M))+WEI
else
set W8I[id]=(TimerGetElapsed(M))+7+SUI
endif
set W9I[id]=GetUnitState(P8I,UNIT_STATE_LIFE)
set WAI[id]=GetUnitState(P8I,UNIT_STATE_MANA)
set WBI[id]=P7I
set WDI[id]=SUI
endif
set t=null
endfunction
function WK5 takes nothing returns nothing
local unit P7I=GK
local unit P8I=GetEnumUnit()
local integer id=GetPlayerId(GetOwningPlayer(P8I))
local integer SUI=GetUnitAbilityLevel(P7I,1093750089)
local trigger t
local integer S5I
if IsUnitType(P8I,UNIT_TYPE_HERO)==true and IsUnitIllusion(P8I)==false and GetUnitAbilityLevel(P8I,1110459204)==0 and V51(GetUnitTypeId(P8I))==false then
if GetUnitAbilityLevel(P7I,1093816645)>0 then
set W8I[id]=WEI
else
set W8I[id]=(TimerGetElapsed(M))+7+SUI
endif
call IA1(P8I,1093749313)
call IA1(P8I,1093749828)
set W9I[id]=GetUnitState(P8I,UNIT_STATE_LIFE)
set WAI[id]=GetUnitState(P8I,UNIT_STATE_MANA)
set WBI[id]=P7I
set WDI[id]=SUI
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function WY5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
set t=null
endif
set P7I=null
set P8I=null
endfunction
function WL5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x0=(LoadReal(LY,(S5I),(282)))
local real y0=(LoadReal(LY,(S5I),(283)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,x0,y0,825,Condition(function DO1))
call ForGroup(g,function WK5)
call NSI(g)
if GetTriggerEvalCount(t)>120 then
call KillUnit((LoadUnitHandle(LY,(S5I),(434))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set g=null
return false
endfunction
function Gust takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real RM2=GetUnitFacing(P7I)
local real x2
local real y2
local unit WM5
local unit X44
local unit WN5
local unit WS5
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093750089)
call RemoveLocation(l)
set x2=x+350*Cos(RM2*bj_DEGTORAD)
set y2=y+350*Sin(RM2*bj_DEGTORAD)
set WM5=CreateUnit(GetOwningPlayer(P7I),1747993139,x,y,RM2)
set x2=x+350*Cos(RM2*bj_DEGTORAD)
set y2=y-350*Sin(RM2*bj_DEGTORAD)
set x2=x-350*Cos(RM2*bj_DEGTORAD)
set y2=y+350*Sin(RM2*bj_DEGTORAD)
set x2=x-350*Cos(RM2*bj_DEGTORAD)
set y2=y-350*Sin(RM2*bj_DEGTORAD)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function WL5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(282),((x)*1.0))
call SaveReal(LY,(S5I),(283),((y)*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(434),(WM5))
set l=null
set P7I=null
set WM5=null
set X44=null
set WN5=null
set WS5=null
set t=null
endfunction
function Gust_Main takes nothing returns boolean
if GetSpellAbilityId()==1093750328 then
endif
return false
endfunction
function RO1 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer id=0
local integer i=0
local player p
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function WX5))
loop
exitwhen id>12
set W9I[id]=9999
set WAI[id]=9999
set id=id+1
endloop
loop
exitwhen i>5
set p=BO[i]
call SetPlayerAbilityAvailable(p,1093749828,false)
set p=CO[i]
call SetPlayerAbilityAvailable(p,1093749828,false)
set i=i+1
endloop
set t=null
endfunction
function WT5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real LVO=(LoadReal(LY,(GetHandleId(P7I)),(822)))
if LVO+0.5<(TimerGetElapsed(M))or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if BJ1(GetEnumUnit())then
return false
endif
if GetUnitAbilityLevel(P7I,1093748826)>0 then
call UnitRemoveAbility(P7I,1093748826)
call UnitRemoveAbility(P7I,1110459189)
endif
if GetUnitAbilityLevel(P7I,1093749044)>0 then
call UnitRemoveAbility(P7I,1093749044)
call UnitRemoveAbility(P7I,1110459189)
endif
if GetUnitAbilityLevel(P7I,1093749043)>0 then
call UnitRemoveAbility(P7I,1093749043)
call UnitRemoveAbility(P7I,1110459189)
endif
if GetUnitAbilityLevel(P7I,1093749046)>0 then
call UnitRemoveAbility(P7I,1093749046)
call UnitRemoveAbility(P7I,1110459189)
endif
endif
set t=null
set P7I=null
return false
endfunction
function WR5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterDeathEvent(t,GetEnumUnit())
call TriggerAddCondition(t,Condition(function WT5))
call SaveUnitHandle(LY,(S5I),(2),(GetEnumUnit()))
set t=null
endfunction
function WP5 takes nothing returns nothing
if BJ1(GetEnumUnit())then
return
endif
if RKI(GetEnumUnit())==false then
if WFI==1 then
if GetUnitAbilityLevel(GetEnumUnit(),1093748826)==0 then
call UnitRemoveAbility(GetEnumUnit(),1110459189)
call IA1(GetEnumUnit(),1093748826)
call SaveReal(LY,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(M)))*1.0))
endif
elseif WFI==2 then
if GetUnitAbilityLevel(GetEnumUnit(),1093749044)==0 then
call UnitRemoveAbility(GetEnumUnit(),1110459189)
call IA1(GetEnumUnit(),1093749044)
call SaveReal(LY,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(M)))*1.0))
endif
elseif WFI==3 then
if GetUnitAbilityLevel(GetEnumUnit(),1093749043)==0 then
call UnitRemoveAbility(GetEnumUnit(),1110459189)
call IA1(GetEnumUnit(),1093749043)
call SaveReal(LY,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(M)))*1.0))
endif
elseif WFI==4 then
if GetUnitAbilityLevel(GetEnumUnit(),1093749046)==0 then
call UnitRemoveAbility(GetEnumUnit(),1110459189)
call IA1(GetEnumUnit(),1093749046)
call SaveReal(LY,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(M)))*1.0))
endif
endif
endif
endfunction
function WQ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local group RG3=(LoadGroupHandle(LY,(S5I),(340)))
local real x=GetUnitX(I01)
local real y=GetUnitY(I01)
local group g=NTI()
local group g2
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call ForGroup(RG3,function WR5)
call NSI(g)
call NSI(RG3)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(I01,false)
set t=null
set P7I=null
set I01=null
set RG3=null
return false
endif
set WGI=P7I
set WFI=GetUnitAbilityLevel(P7I,1093748819)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,300,Condition(function CA1))
call GroupRemoveGroup(g,RG3)
call ForGroup(RG3,function WR5)
call ForGroup(g,function WP5)
call SaveGroupHandle(LY,(S5I),(340),(g))
call NSI(RG3)
set t=null
set P7I=null
set I01=null
set RG3=null
return false
endfunction
function WU5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local integer SUI=GetUnitAbilityLevel(P7I,1093748819)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1848658001,x,y,0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UnitApplyTimedLife(I01,1112820806,16)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function WQ5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveGroupHandle(LY,(S5I),(340),(NTI()))
call RemoveLocation(l)
set P7I=null
set l=null
endfunction
function X05 takes nothing returns boolean
if GetSpellAbilityId()==1093748819 then
call WU5()
endif
return false
endfunction
function R01 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=0
local player p
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function X05))
set t=null
loop
exitwhen i>5
set p=BO[i]
call SetPlayerAbilityAvailable(p,1093748826,false)
call SetPlayerAbilityAvailable(p,1093749044,false)
call SetPlayerAbilityAvailable(p,1093749043,false)
call SetPlayerAbilityAvailable(p,1093749046,false)
set p=CO[i]
call SetPlayerAbilityAvailable(p,1093748826,false)
call SetPlayerAbilityAvailable(p,1093749044,false)
call SetPlayerAbilityAvailable(p,1093749043,false)
call SetPlayerAbilityAvailable(p,1093749046,false)
set i=i+1
endloop
endfunction
function XI5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit I01
local real PAI=(100+50*SUI)/4
if GetTriggerEventId()==EVENT_UNIT_DEATH or QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))>765 or GetUnitAbilityLevel(P8I,1110459203)==0 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call UnitRemoveAbility(P8I,1093749305)
call UnitRemoveAbility(P8I,1110459203)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)==(10*0.8)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",P8I,"overhead")))
call P6I(P7I,P8I,1,PAI)
elseif GetTriggerEvalCount(t)==(10*1.6)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",P8I,"overhead")))
call P6I(P7I,P8I,1,PAI)
elseif GetTriggerEvalCount(t)==(10*2.5)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",P8I,"overhead")))
call P6I(P7I,P8I,1,PAI)
elseif GetTriggerEvalCount(t)==(10*3.4)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call P6I(P7I,P8I,1,PAI)
elseif GetTriggerEvalCount(t)>(10*3.9)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call UnitRemoveAbility(P8I,1093749305)
call UnitRemoveAbility(P8I,1110459203)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093750090)
call SetUnitAbilityLevel(I01,1093750090,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
set I01=null
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function X15 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093750087)
local string s="Doodads\\Cinematic\\GlowingRunes\\GlowingRunes4.mdl"
if GetLocalPlayer()==GetOwningPlayer(P8I)then
endif
call IA1(P8I,1093749305)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P8I))*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\ShivasEnchantment.mdx",P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffect(s,GetUnitX(P8I),GetUnitY(P8I))))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function XI5))
set P7I=null
set P8I=null
set t=null
endfunction
function XO5 takes nothing returns boolean
if GetSpellAbilityId()==1093750087 and NNI(GetSpellTargetUnit())==false then
call X15()
endif
return false
endfunction
function RI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XO5))
set t=null
endfunction
function X25 takes nothing returns nothing
local unit P7I=WZI
local unit P8I=GetEnumUnit()
local integer SUI=WHI
call WJ5(P7I,P8I)
call P6I(P7I,P8I,1,150+100*SUI)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\PlasmaShot.mdl",P8I,"chest"))
set P7I=null
set P8I=null
endfunction
function X35 takes nothing returns nothing
local unit P7I=WZI
local unit P8I=GetEnumUnit()
local integer SUI=WHI
call WJ5(P7I,P8I)
set P7I=null
set P8I=null
endfunction
function X45 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real CY3=(LoadReal(LY,(S5I),(432)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real x=GetUnitX(IG1)+30*Cos(RM2)
local real y=GetUnitY(IG1)+30*Sin(RM2)
local group g
local fogmodifier I31
if QNI(x,y,QJI,QKI)<35 or x!=PTI(x)or y!=PUI(y)then
set x=QJI
set y=QKI
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
set I31=(LoadFogModifierHandle(LY,(S5I),(440)))
call FogModifierStop(I31)
call DestroyFogModifier(I31)
set I31=null
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(IG1)
set GK=P7I
set WZI=P7I
set WHI=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,CY3+25,Condition(function CA1))
call ForGroup(g,function X25)
call NSI(g)
set g=null
else
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
set GK=P7I
set WZI=P7I
set WHI=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,300,Condition(function CA1))
call ForGroup(g,function X35)
call NSI(g)
set g=null
endif
set t=null
set IG1=null
set P7I=null
return false
endfunction
function X55 takes unit P7I,real x,real y,real C54,effect FX,fogmodifier I31 returns nothing
local real RM2=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993142,GetUnitX(P7I),GetUnitY(P7I),RM2*bj_RADTODEG)
local integer SUI=GetUnitAbilityLevel(P7I,1093750089)
local real CY3=QCI(25+250+25*C54*2,1000)
local real QWI=QNI(GetUnitX(P7I),GetUnitY(P7I),x,y)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093816645)
endif
if IsUnitEnemy(IG1,GetLocalPlayer())and P0I(GetLocalPlayer())==false then
call UnitSetUsesAltIcon(IG1,true)
endif
call TriggerRegisterTimerEvent(t,QCI(2.0/(QWI/30),0.04),true)
call TriggerAddCondition(t,Condition(function X45))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(47),((x)*1.0))
call SaveReal(LY,(S5I),(48),((y)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveReal(LY,(S5I),(432),((CY3)*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveFogModifierHandle(LY,(S5I),(440),(I31))
call SaveEffectHandle(LY,(S5I),(32),(FX))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750089,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093816645,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750094,false)
set t=null
set IG1=null
endfunction
function X65 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real x
local real y
local real C54=(TimerGetElapsed(M))-(LoadReal(LY,(S5I),(431)))
local string s
local fogmodifier I31
local effect FX
local real X75=GetUnitX(IG1)+30*Cos(RM2)
local real X85=GetUnitY(IG1)+30*Sin(RM2)
set x=PTI(X75)
set y=PUI(X85)
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093750094)or x!=X75 or y!=X85 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call RemoveUnit(IG1)
set s=""
if IsPlayerAlly(GetOwningPlayer(P7I),GetLocalPlayer())or P0I(GetLocalPlayer())then
set s="war3mapImported\\IceWindGroundFX.mdl"
endif
set I31=CreateFogModifierRadius(GetOwningPlayer(P7I),FOG_OF_WAR_VISIBLE,x,y,500,true,true)
call FogModifierStart(I31)
set FX=AddSpecialEffect(s,x,y)
call X55(P7I,x,y,C54,FX,I31)
set I31=null
set FX=null
endif
set t=null
set IG1=null
set P7I=null
return false
endfunction
function X95 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1211122232,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
if IsUnitEnemy(IG1,GetLocalPlayer())and P0I(GetLocalPlayer())==false then
call UnitSetUsesAltIcon(IG1,true)
endif
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(13),((a)*1.0))
call SaveReal(LY,(S5I),(431),(((TimerGetElapsed(M)))*1.0))
call TriggerRegisterTimerEvent(t,0.02,true)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function X65))
call SetUnitColor(IG1,GetPlayerColor(Player(14)))
call RemoveLocation(l)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750089,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093816645,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750094,true)
call IA1(P7I,1093750094)
set P7I=null
set l=null
set t=null
set IG1=null
endfunction
function XA5 takes nothing returns boolean
if GetSpellAbilityId()==1093750089 or GetSpellAbilityId()==1093816645 then
call X95()
endif
return false
endfunction
function R11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XA5))
set t=null
endfunction
function ChillingTouch_DPS takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093748817)
if GetTriggerEvalCount(t)==6 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call P6I(P7I,P8I,1,8+2*SUI)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function XB5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer XC5=(LoadInteger(LY,(GetHandleId(P7I)),(449)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and GetEventDamage()>1 then
call DisableTrigger(t)
if XC5>0 then
call SaveInteger(LY,(GetHandleId(P7I)),(449),(XC5-1))
call UYI("+"+I2S(40+10*SUI),1,P7I,0.024,100,200,255,255)
call P6I(P7I,P8I,1,40+10*SUI)
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
set P8I=null
return false
endfunction
function XD5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED or(LoadInteger(LY,(GetHandleId(P7I)),(449)))==0 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call SaveInteger(LY,(GetHandleId(P7I)),(449),(0))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093748814)
call UnitRemoveAbility(P7I,1110459210)
call UnitRemoveAbility(P7I,1093749072)
elseif GetAttacker()==P7I and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and((LoadInteger(LY,(GetHandleId((P7I))),((4289))))==1)==false then
call SCI(P7I,4289,0.4)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.0,false)
call TriggerAddCondition(t,Condition(function XB5))
call SaveUnitHandle(LY,(S5I),(17),(GetTriggerUnit()))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
endif
set t=null
set P7I=null
return false
endfunction
function XE5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093748817)
call IA1(P8I,1093748814)
call IA1(P8I,1093749072)
call SaveInteger(LY,(GetHandleId(P8I)),(449),(2+SUI))
call SaveUnitHandle(LY,(S5I),(2),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\FrostHands.mdx",P8I,"right,hand")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\FrostHands.mdx",P8I,"left,hand")))
call TriggerRegisterTimerEvent(t,30,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function XD5))
set P7I=null
set P8I=null
set t=null
endfunction
function XF5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
call RemoveLocation(l)
call DestroyEffect(AddSpecialEffect("war3mapImported\\IcyWind.mdl",x,y))
call GroupEnumUnitsInRange(g,x,y,525+25,Condition(function CR1))
call GroupAddUnit(g,P7I)
call ForGroup(g,function XE5)
call NSI(g)
set P7I=null
set g=null
set l=null
endfunction
function XG5 takes nothing returns boolean
if GetSpellAbilityId()==1093748817 then
call XF5()
endif
return false
endfunction
function R21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XG5))
set t=null
endfunction
function XH5 takes nothing returns nothing
call P6I(WVI,GetEnumUnit(),1,(GetUnitAbilityLevel(WVI,1093749069)*75)/10)
endfunction
function XZ5 takes unit P7I returns nothing
local real DH1=(GetUnitAbilityLevel(P7I,1093749069)*75)/2
set DH1=DH1/10.0
if GetUnitState(P7I,UNIT_STATE_LIFE)<=DH1*0.75 then
set DH1=GetUnitState(P7I,UNIT_STATE_LIFE)/0.75-10
endif
call P6I(P7I,P7I,1,DH1)
endfunction
function XV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g
local real DH1
local unit I01
local integer SUI=0
local integer NPI=GetTriggerEvalCount(t)
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
return false
else
if GetTriggerEvalCount(t)==1 then
set I01=CreateUnit(GetOwningPlayer(P7I),1747993138,x,y,0)
call UnitApplyTimedLife(I01,1112820806,1)
set I01=null
call TriggerRegisterTimerEvent(t,0.1,true)
set g=NTI()
set WVI=P7I
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,350,Condition(function CA1))
call ForGroup(g,function XH5)
call XZ5(P7I)
call NSI(g)
else
if NPI==10 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set g=NTI()
set WVI=P7I
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,350,Condition(function CA1))
call ForGroup(g,function XH5)
call XZ5(P7I)
call NSI(g)
call EO1(P7I)
call DU1(P7I,0,0)
endif
endif
set t=null
set g=null
set P7I=null
return false
endfunction
function XW5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real DH1=(GetUnitAbilityLevel(P7I,1093749069)*75)/2
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function XV5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function XX5 takes nothing returns boolean
if GetSpellAbilityId()==1093749069 then
call XW5()
endif
return false
endfunction
function R61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XX5))
set t=null
endfunction
function XY5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local player VE2
local integer SUI=GetUnitAbilityLevel(P7I,1093749070)
local integer MainLevel=GetUnitAbilityLevel(P7I,1093749070)
local real GW1=(TimerGetElapsed(M))
local real XJ5=(LoadReal(LY,(S5I),(415)))
local real XK5=(LoadReal(LY,(S5I),(416)))
if IC1(P7I)then
set t=null
set P7I=null
return false
endif
if TII(GetOwningPlayer(P7I))then
set VE2=CO[1]
else
set VE2=BO[1]
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetOwningPlayer(GetEventDamageSource())==DO then
if GetUnitAbilityLevel(P7I,1093749061)>0 then
call UnitRemoveAbility(P7I,1093749061)
call UnitRemoveAbility(P7I,1110459193)
endif
if GetUnitAbilityLevel(P7I,1093749062)>0 then
call UnitRemoveAbility(P7I,1093749062)
call UnitRemoveAbility(P7I,1110459193)
endif
if GetUnitAbilityLevel(P7I,1093749063)>0 then
call UnitRemoveAbility(P7I,1093749063)
call UnitRemoveAbility(P7I,1110459193)
endif
call SaveReal(LY,(S5I),(414),((GW1+2)*1.0))
set t=null
set P7I=null
return false
endif
if(LoadReal(LY,(S5I),(414)))>GW1 then
set t=null
set P7I=null
return false
endif
if(IsUnitVisible(P7I,VE2)and BM1(P7I)==false)or GetUnitAbilityLevel(P7I,1112433775)>0 then
set XK5=0
if GetUnitAbilityLevel(P7I,1093749061)>0 or GetUnitAbilityLevel(P7I,1093749062)>0 or GetUnitAbilityLevel(P7I,1093749063)>0 then
set XJ5=XJ5+0.1
if XJ5>0.4 then
set XJ5=0
if GetUnitAbilityLevel(P7I,1093749061)>0 then
call UnitRemoveAbility(P7I,1093749061)
call UnitRemoveAbility(P7I,1110459193)
endif
if GetUnitAbilityLevel(P7I,1093749062)>0 then
call UnitRemoveAbility(P7I,1093749062)
call UnitRemoveAbility(P7I,1110459193)
endif
if GetUnitAbilityLevel(P7I,1093749063)>0 then
call UnitRemoveAbility(P7I,1093749063)
call UnitRemoveAbility(P7I,1110459193)
endif
endif
endif
call SaveReal(LY,(S5I),(415),((XJ5)*1.0))
call SaveReal(LY,(S5I),(416),((XK5)*1.0))
elseif IsUnitVisible(P7I,VE2)==false or BM1(P7I)then
set XJ5=0
if(SUI==1 and GetUnitAbilityLevel(P7I,1093749061)==0)or(SUI==2 and GetUnitAbilityLevel(P7I,1093749062)==0)or(SUI==3 and GetUnitAbilityLevel(P7I,1093749063)==0)then
set XK5=XK5+0.1
if XK5>0.4 then
set XK5=0
if SUI==1 then
if GetUnitAbilityLevel(P7I,1093749061)==0 then
call IA1(P7I,1093749061)
call UnitMakeAbilityPermanent(P7I,true,1093749047)
call UnitMakeAbilityPermanent(P7I,true,1093749048)
call UnitMakeAbilityPermanent(P7I,true,1093749059)
endif
endif
if SUI==2 then
if GetUnitAbilityLevel(P7I,1093749061)>0 then
call UnitRemoveAbility(P7I,1093749061)
call UnitRemoveAbility(P7I,1110459193)
endif
if GetUnitAbilityLevel(P7I,1093749062)==0 then
call IA1(P7I,1093749062)
call UnitMakeAbilityPermanent(P7I,true,1093749047)
call UnitMakeAbilityPermanent(P7I,true,1093749049)
call UnitMakeAbilityPermanent(P7I,true,1093749060)
endif
endif
if SUI==3 then
if GetUnitAbilityLevel(P7I,1093749061)>0 then
call UnitRemoveAbility(P7I,1093749061)
call UnitRemoveAbility(P7I,1110459193)
endif
if GetUnitAbilityLevel(P7I,1093749062)>0 then
call UnitRemoveAbility(P7I,1093749062)
call UnitRemoveAbility(P7I,1110459193)
endif
if GetUnitAbilityLevel(P7I,1093749063)==0 then
call IA1(P7I,1093749063)
call UnitMakeAbilityPermanent(P7I,true,1093749047)
call UnitMakeAbilityPermanent(P7I,true,1093749057)
call UnitMakeAbilityPermanent(P7I,true,1093749058)
endif
endif
endif
endif
call SaveReal(LY,(S5I),(415),((XJ5)*1.0))
call SaveReal(LY,(S5I),(416),((XK5)*1.0))
endif
set t=null
set P7I=null
return false
endfunction
function XL5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveReal(LY,(S5I),(415),((0)*1.0))
call SaveReal(LY,(S5I),(416),((0)*1.0))
call SaveReal(LY,(S5I),(414),(((TimerGetElapsed(M)))*1.0))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function XY5))
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093749061,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093749062,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093749063,false)
set t=null
endfunction
function XM5 takes nothing returns boolean
if GetLearnedSkill()==1093749070 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093749070)==1 then
call XL5()
endif
return false
endfunction
function R51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function XM5))
set t=null
endfunction
function XN5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=GetDyingUnit()
if GetOwningPlayer(GetKillingUnit())==GetOwningPlayer(P7I)and IsUnitType(P8I,UNIT_TYPE_HERO)==true and IsUnitIllusion(P8I)==false then
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function XS5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer XT5=(LoadInteger(LY,(S5I),(422)))
local integer XR5=(LoadInteger(LY,(S5I),(423)))
local integer HJ4=(LoadInteger(LY,(S5I),(424)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
if(LoadBoolean(LY,(S5I),(276)))==false and GetTriggerUnit()==P7I then
call SaveBoolean(LY,(S5I),(276),(true))
call SetHeroAgi(P7I,GetHeroAgi(P7I,false)-XT5-XR5-HJ4,true)
elseif(LoadBoolean(LY,(S5I),(277)))==false and GetTriggerUnit()==P8I then
call SaveBoolean(LY,(S5I),(277),(true))
call SetHeroAgi(P8I,GetHeroAgi(P8I,false)+XT5,true)
call SetHeroStr(P8I,GetHeroStr(P8I,false)+XR5,true)
call SetHeroInt(P8I,GetHeroInt(P8I,false)+HJ4,true)
endif
else
if(LoadBoolean(LY,(S5I),(276)))==false then
call SaveBoolean(LY,(S5I),(276),(true))
call SetHeroAgi(P7I,GetHeroAgi(P7I,false)-XT5-XR5-HJ4,true)
endif
if(LoadBoolean(LY,(S5I),(277)))==false then
call SaveBoolean(LY,(S5I),(277),(true))
call SetHeroAgi(P8I,GetHeroAgi(P8I,false)+XT5,true)
call SetHeroStr(P8I,GetHeroStr(P8I,false)+XR5,true)
call SetHeroInt(P8I,GetHeroInt(P8I,false)+HJ4,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function XP5 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093748818)
local integer KBO=SEI(P8I)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer XT5
local integer XR5
local integer HJ4
local real DC1
if KBO==2 then
set XT5=IMinBJ(GetHeroAgi(P8I,false)-1,1)
set XR5=IMinBJ(GetHeroStr(P8I,false)-1,1)
set HJ4=IMinBJ(GetHeroInt(P8I,false)-1,1)
elseif KBO==3 then
set XT5=IMinBJ(GetHeroAgi(P8I,false)-1,1)
set XR5=IMinBJ(GetHeroStr(P8I,false)-1,1)
set HJ4=IMinBJ(GetHeroInt(P8I,false)-1,1)
elseif KBO==1 then
set XT5=IMinBJ(GetHeroAgi(P8I,false)-1,1)
set XR5=IMinBJ(GetHeroStr(P8I,false)-1,1)
set HJ4=IMinBJ(GetHeroInt(P8I,false)-1,1)
endif
call SetHeroAgi(P7I,GetHeroAgi(P7I,false)+XT5+HJ4+XR5,true)
call SetHeroAgi(P8I,GetHeroAgi(P8I,false)-XT5,true)
call SetHeroStr(P8I,GetHeroStr(P8I,false)-XR5,true)
call SetHeroInt(P8I,GetHeroInt(P8I,false)-HJ4,true)
call SaveInteger(LY,(S5I),(422),(XT5))
call SaveInteger(LY,(S5I),(424),(HJ4))
call SaveInteger(LY,(S5I),(423),(XR5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveBoolean(LY,(S5I),(276),(false))
call SaveBoolean(LY,(S5I),(277),(false))
if SUI==1 then
set DC1=15
elseif SUI==2 then
set DC1=30
elseif SUI==3 then
set DC1=60
elseif SUI==4 then
set DC1=120
endif
call TriggerRegisterTimerEvent(t,DC1,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function XS5))
set t=null
endfunction
function XQ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()!=EVENT_UNIT_DEATH then
call XP5(P7I,P8I)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function XU5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function XQ5))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
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
function Y05 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function XU5))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function YI5 takes nothing returns nothing
local unit P7I=GetAttacker()
if((LoadInteger(LY,(GetHandleId((P7I))),((4274))))==1)==false then
call SCI(P7I,4274,0.45-GetUnitAbilityLevel(GetAttacker(),1093748818)*0.05)
call Y05()
endif
endfunction
function Y15 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093748818)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!=1848651852 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call YI5()
endif
return false
endfunction
function YO5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function Y15))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function XN5))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
set t=null
endfunction
function Y25 takes nothing returns boolean
if GetLearnedSkill()==1093748818 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093748818)==1 then
call YO5()
endif
return false
endfunction
function R31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function Y25))
set t=null
endfunction
function Y35 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if NPI>(4.0)/0.03 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
if((LoadInteger(LY,(GetHandleId((P7I))),((4420))))==1)==false then
call UnitSetUsesAltIcon(P7I,false)
endif
call SaveInteger(LY,(GetHandleId((P7I))),((4421)),(2))
call UnitAddAbility(P7I,1093817942)
call UnitRemoveAbility(P7I,1093817942)
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetTriggerUnit()==P7I then
call IssueImmediateOrder(GetAttacker(),"stop")
endif
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
endif
set t=null
set P7I=null
set I01=null
return false
endfunction
function Y45 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093749070)
local real d=4.0
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747993137,GetUnitX(P7I),GetUnitY(P7I),0)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))==false and P0I(GetLocalPlayer())==false then
call UnitSetUsesAltIcon(P7I,true)
endif
call AH1(P7I,1093748823,1,d)
call AH1(P7I,1093748824,1,d)
call SaveInteger(LY,(GetHandleId((P7I))),((4421)),(1))
call UnitAddAbility(P7I,1093817941)
call UnitRemoveAbility(P7I,1093817941)
if GetUnitTypeId(P7I)!=1160786520 then
call UnitAddAbility(P7I,1097625443)
call UnitRemoveAbility(P7I,1097625443)
endif
call ShowUnit(P7I,false)
call ShowUnit(P7I,true)
call SelectUnitAddForPlayer(P7I,GetOwningPlayer(P7I))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterDeathEvent(t,P7I)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function Y35))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
set P7I=null
endfunction
function Y55 takes nothing returns boolean
if GetSpellAbilityId()==1093749070 then
call Y45()
endif
return false
endfunction
function R41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Y55))
set t=null
endfunction
function Y65 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local lightning UZI=(LoadLightningHandle(LY,(S5I),(196)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real IV1
local real IW1
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real RM2
local real QWI=QNI(II3,I13,QJI,QKI)
call SaveReal(LY,(S5I),(23),((QJI)*1.0))
call SaveReal(LY,(S5I),(24),((QKI)*1.0))
if QWI>100 or NPI>(3.5/.03)or RKI(P8I)==true then
call DestroyLightning(UZI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call MoveLightning(UZI,true,QXI,QYI,QJI,QKI)
if QNI(QXI,QYI,QJI,QKI)>325 then
set RM2=Atan2(QKI-QYI,QJI-QXI)
set IV1=QXI+(325)*Cos(RM2)
set IW1=QYI+(325)*Sin(RM2)
call SetUnitX(P8I,IV1)
call SetUnitY(P8I,IW1)
endif
endif
set t=null
set P7I=null
set P8I=null
set UZI=null
return false
endfunction
function Y75 takes unit P7I,unit P8I,integer SUI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local lightning UZI=AddLightning("PONC",true,GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))
call SetLightningColor(UZI,1,1,1,1)
call SaveLightningHandle(LY,(S5I),(196),(UZI))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(189),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(190),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(23),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P8I))*1.0))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function Y65))
call P6I(P7I,P8I,1,50*SUI)
call IssueTargetOrder(P7I,"attack",P8I)
set t=null
set UZI=null
endfunction
function Y85 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real BA3=(LoadReal(LY,(S5I),(189)))
local real BB3=(LoadReal(LY,(S5I),(190)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real IV1=BA3+(30*(20+4*2)/30)*NPI*Cos(RM2*bj_DEGTORAD)
local real IW1=BB3+(30*(20+4*2)/30)*NPI*Sin(RM2*bj_DEGTORAD)
local real YB3=SquareRoot((IV1-QJI)*(IV1-QJI)+(IW1-QKI)*(IW1-QKI))
local real YC3=700
local real YD3=175
local real YE3=(1-YB3/YC3)*YD3*2
local group g=NTI()
local unit P8I
if NPI==1 then
call SetUnitAnimationByIndex(P7I,5)
call SetUnitTimeScale(P7I,1.5)
endif
if YE3>YD3 then
call SetUnitAnimationByIndex(P7I,5)
set YE3=YD3*2-YE3
endif
call SetUnitFlyHeight(P7I,QDI(YE3,0),0)
call SetUnitX(P7I,PTI(IV1))
call SetUnitY(P7I,PUI(IW1))
call SetUnitFacing(P7I,RM2)
set GK=P7I
call GroupEnumUnitsInRange(g,IV1,IW1,120,Condition(function D21))
set P8I=FirstOfGroup(g)
call NSI(g)
if YB3<30 or P8I!=null or GetTriggerEvalCount(t)>75 then
call SetUnitFlyHeight(P7I,0,0)
call SetUnitFacing(P7I,RM2)
call SetUnitTimeScale(P7I,1)
call SetUnitAnimation(P7I,"stand")
call SetUnitPathing(P7I,true)
call UnitRemoveAbility(P7I,1093749302)
call UPI(GetUnitX(P7I),GetUnitY(P7I),100)
if P8I!=null and RKI(P8I)==false then
call SCI(P8I,4408,5)
call Y75(P7I,P8I,SUI)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function Y95 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093749303)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real QWI=700
local real RM2=GetUnitFacing(P7I)
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real QJI=PTI(QXI+QWI*Cos(RM2*bj_DEGTORAD))
local real QKI=PUI(QYI+QWI*Sin(RM2*bj_DEGTORAD))
call IA1(P7I,1097691750)
call UnitRemoveAbility(P7I,1097691750)
call SetUnitPathing(P7I,false)
call IA1(P7I,1093749302)
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function Y85))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveReal(LY,(S5I),(189),((QXI)*1.0))
call SaveReal(LY,(S5I),(190),((QYI)*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
set P7I=null
set t=null
endfunction
function YA5 takes nothing returns boolean
if GetSpellAbilityId()==1093749303 then
call Y95()
endif
return false
endfunction
function R71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YA5))
set t=null
endfunction
function YB5 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local real PAI=(LoadReal(LY,(S5I),(20)))
call P6I(P7I,P8I,1,PAI)
set P7I=null
set P8I=null
endfunction
function YC5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local trigger t=IJ1(P7I,P8I,1747993168,"YB5",700,false)
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093678145)
local real PAI
if SUI==1 then
set PAI=85
elseif SUI==2 then
set PAI=165
elseif SUI==3 then
set PAI=225
elseif SUI==4 then
set PAI=300
endif
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
set P7I=null
set P8I=null
set t=null
endfunction
function YD5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093678145)
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),500,Condition(function C51))
call ForGroup(g,function YC5)
call NSI(g)
call PlaySoundOnUnitBJ(OF,100,P7I)
set P7I=null
endfunction
function YE5 takes nothing returns boolean
if GetSpellAbilityId()==1093678145 then
call YD5()
endif
return false
endfunction
function R81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YE5))
set t=null
endfunction
function YF5 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),WXI)==false then
call GroupAddUnit(WXI,GetEnumUnit())
call P6I(WYI,GetEnumUnit(),7,WJI)
endif
endfunction
function YG5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local group PR2=(LoadGroupHandle(LY,(S5I),(22)))
local real a=(LoadReal(LY,(S5I),(137)))
local real IT3=QLI(P7I,IG1)
local real IV1=GetUnitX(IG1)+WWI*0.02*Cos(a*bj_DEGTORAD)
local real IW1=GetUnitY(IG1)+WWI*0.02*Sin(a*bj_DEGTORAD)
local group g
local real r=100+350*IT3/900
local integer SUI=GetUnitAbilityLevel(P7I,1093873718)
local real PAI
if SUI>0 then
set PAI=190+100*SUI
else
set SUI=GetUnitAbilityLevel(P7I,1093873719)
set PAI=200+125*SUI
endif
if IT3>900 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call NSI(PR2)
call KillUnit(IG1)
else
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
set GK=P7I
set WYI=P7I
set WXI=PR2
set WJI=PAI
set g=NTI()
call GroupEnumUnitsInRange(g,IV1,IW1,r,Condition(function CA1))
call ForGroup(g,function YF5)
call NSI(g)
set g=null
endif
set PR2=null
set t=null
set P7I=null
set IG1=null
return false
endfunction
function YH5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993943,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),x,y)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function YG5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
call SaveReal(LY,(S5I),(137),((a)*1.0))
set P7I=null
set t=null
set IG1=null
endfunction
function YZ5 takes nothing returns boolean
if GetSpellAbilityId()==1093873718 or GetSpellAbilityId()==1093873719 then
call YH5()
endif
return false
endfunction
function R91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YZ5))
set t=null
endfunction
function YV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call PJI(P7I)
endif
set t=null
set P7I=null
return false
endfunction
function YW5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093677136)
call TriggerRegisterTimerEvent(t,1+1.75+0.75*SUI,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function YV5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function YX5 takes nothing returns boolean
if GetSpellAbilityId()==1093677136 then
call YW5()
endif
return false
endfunction
function RA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YX5))
set t=null
endfunction
function YY5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093677128)
local integer RII
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local real x
local real y
local real d
local real h
local real M5I=40
local unit u
if SUI==0 then
set M5I=45
set SUI=GetUnitAbilityLevel(P7I,1093681457)
if SUI==1 then
set RII=1865429315
elseif SUI==2 then
set RII=1865429316
elseif SUI==3 then
set RII=1865429317
endif
else
if SUI==1 then
set RII=1869836340
elseif SUI==2 then
set RII=1865429048
elseif SUI==3 then
set RII=1865429049
endif
endif
set d=65
set h=65
set x=QJI+0*d
set y=QKI+1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI+1*d
set y=QKI+1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI+2*d
set y=QKI+1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI-1*d
set y=QKI+1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI-2*d
set y=QKI+1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI-1*d
set y=QKI+0*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI+1*d
set y=QKI+0*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI-1*d
set y=QKI-1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI+0*d
set y=QKI-1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set x=QJI+1*d
set y=QKI-1*h
set u=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(u,1112820806,M5I)
set P7I=null
endfunction
function YJ5 takes nothing returns boolean
if GetSpellAbilityId()==1093677128 or GetSpellAbilityId()==1093681457 then
call YY5()
endif
return false
endfunction
function RB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YJ5))
set t=null
endfunction
function YK5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(t)==4 or RKI(P8I)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093816119)
call UnitRemoveAbility(P8I,1110460227)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
call P6I(P7I,P8I,1,20*SUI-10)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function YL5 takes unit P7I,unit P8I,integer SUI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IA1(P8I,1093816119)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function YK5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",P8I,"chest")))
set t=null
endfunction
function YM5 takes nothing returns boolean
if IsUnitInGroup(GetEnumUnit(),WKI)==false and RKI(GetEnumUnit())==false then
call GroupAddUnit(WKI,GetEnumUnit())
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\FireBlast.mdx",GetEnumUnit(),"chest"))
call YL5(WMI,GetEnumUnit(),WLI)
endif
return false
endfunction
function YN5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real a=(LoadReal(LY,(S5I),(13)))
local real YS5=(1-I2R(NPI)/50)*bj_PI
local real YT5=1400/2*Cos(YS5)
local real YR5=500/2*Sin(YS5)
local real x=PTI(QJI+YT5*Cos(a)-YR5*Sin(a))
local real y=PUI(QKI+YT5*Sin(a)+YR5*Cos(a))
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local group g
local integer SUI=GetUnitAbilityLevel(P7I,1093751370)
if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and NPI>0 and(GetSpellAbilityId()==1093808206 or GetSpellAbilityId()==1093751371))or NPI>100 or BH1(P7I)then
call UPI(x,y,300)
call SetUnitVertexColor(P7I,255,255,255,255)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093751370 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093751370,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808206,false)
call SetUnitPathing(P7I,true)
call NSI(JAO)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if ModuloInteger(NPI,10)==0 then
call UPI(x,y,200)
endif
call SaveInteger(LY,(S5I),(34),(NPI+1))
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
call SetUnitFacing(P7I,(a+YS5-bj_PI/2)*bj_RADTODEG)
set g=NTI()
set WKI=JAO
set GK=P7I
set WMI=P7I
set WLI=GetUnitAbilityLevel(P7I,1093751370)
call GroupEnumUnitsInRange(g,x,y,200+25,Condition(function CE1))
call ForGroup(g,function YM5)
call NSI(g)
endif
set t=null
set P7I=null
set g=null
set JAO=null
return false
endfunction
function YP5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real a=UEI(QXI,QYI,GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
local real QJI=QXI+1400/2*Cos(a)
local real QKI=QYI+1400/2*Sin(a)
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)-GetUnitState(P7I,UNIT_STATE_LIFE)*0.15)
call SCI(P7I,4301,2)
call SCI(P7I,4415,2)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YN5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(189),((QXI)*1.0))
call SaveReal(LY,(S5I),(190),((QYI)*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(13),((a)*1.0))
call SaveGroupHandle(LY,(S5I),(133),(NTI()))
call SetUnitPathing(P7I,false)
call SetUnitVertexColor(P7I,255,255,255,50)
call IA1(P7I,1093808206)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093751370,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808206,true)
set t=null
set P7I=null
endfunction
function YQ5 takes nothing returns boolean
if GetSpellAbilityId()==1093751370 then
call YP5()
endif
return false
endfunction
function RC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YQ5))
set t=null
endfunction
function YU5 takes nothing returns nothing
local unit P7I=WNI
local unit P8I=GetEnumUnit()
call P6I(P7I,P8I,1,40+20*WSI)
call U5I("Doodads\\Cinematic\\FireTrapUp\\FireTrapUp.mdl",P8I,"origin",1)
set P7I=null
set P8I=null
endfunction
function J05 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093751371)
local group g
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set GK=P7I
set WNI=P7I
set WSI=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1000+25,Condition(function CA1))
call ForGroup(g,function YU5)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function JI5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit J15=(LoadUnitHandle(LY,(S5I),(589)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if IsUnitIllusion(GetEventDamageSource())==true then
call QGI(J15,GetEventDamage())
endif
else
if GetUnitX(J15)!=x or GetUnitY(J15)!=y then
call SetUnitPosition(J15,x,y)
endif
if GetUnitY(P7I)!=x or GetUnitY(P7I)!=y then
call SetUnitPosition(P7I,x,y)
endif
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
endif
if GetTriggerEvalCount(t)==1 then
call PauseUnit(P7I,true)
endif
set t=null
set J15=null
set P7I=null
set I01=null
return false
endfunction
function JO5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit J25=(LoadUnitHandle(LY,(S5I),(588)))
local unit J15=(LoadUnitHandle(LY,(S5I),(589)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit ZK3=(LoadUnitHandle(LY,(S5I),(239)))
local integer SUI=GetUnitAbilityLevel(P7I,1093751371)
local group g
local unit I01
local integer J35
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call StopSound(BF,false,false)
call ShowUnit(J25,false)
call ShowUnit(ZK3,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(P7I,true)
call SaveInteger(LY,(GetHandleId((P7I))),((4326)),(2))
call UnitRemoveAbility(P7I,1093678162)
call SetUnitInvulnerable(P7I,false)
call PauseUnit(P7I,false)
if GetLocalPlayer()==GetOwningPlayer(P7I)then
call ClearSelection()
call SelectUnit(P7I,true)
endif
call SetUnitState(P7I,UNIT_STATE_LIFE,1)
set I01=CreateUnit(GetOwningPlayer(GetKillingUnit()),1697656901,0,0,0)
call UnitRemoveBuffs(P7I,true,true)
call UnitRemoveAbility(P7I,1097167980)
call UnitDamageTarget(I01,P7I,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
set I01=null
else
if GetTriggerEvalCount(t)==1 then
call SetUnitFlyHeight(J15,0,200)
elseif GetTriggerEvalCount(t)==2 then
call PauseUnit(J15,false)
call UnitApplyTimedLife(J15,1112820806,0.1)
call StopSound(BF,false,false)
call StartSound(CF)
call DestroyEffect(AddSpecialEffect("war3mapImported\\FireNova2.mdx",GetUnitX(J25),GetUnitY(J25)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(P7I,true)
call SaveInteger(LY,(GetHandleId((P7I))),((4326)),(2))
call UnitRemoveAbility(P7I,1093678162)
call SetUnitInvulnerable(P7I,false)
call SetUnitAnimationByIndex(P7I,8)
call QueueUnitAnimation(P7I,"idle")
call PauseUnit(P7I,false)
if GetLocalPlayer()==GetOwningPlayer(P7I)then
call ClearSelection()
call SelectUnit(P7I,true)
endif
call ShowUnit(J25,false)
call ShowUnit(ZK3,false)
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_MAX_LIFE))
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MAX_MANA))
set J35=GetUnitAbilityLevel(P7I,1093751370)
if J35>0 then
call UnitRemoveAbility(P7I,1093751370)
call UnitAddAbility(P7I,1093751370)
call SetUnitAbilityLevel(P7I,1093751370,J35)
endif
set J35=GetUnitAbilityLevel(P7I,1093753176)
if J35>0 then
call UnitRemoveAbility(P7I,1093753176)
call UnitAddAbility(P7I,1093753176)
call SetUnitAbilityLevel(P7I,1093753176,J35)
endif
set J35=GetUnitAbilityLevel(P7I,1093753177)
if J35>0 then
call UnitRemoveAbility(P7I,1093753177)
call UnitAddAbility(P7I,1093753177)
call SetUnitAbilityLevel(P7I,1093753177,J35)
endif
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093753428)
call SetUnitAbilityLevel(I01,1093753428,SUI)
call IssueImmediateOrder(I01,"stomp")
set I01=null
endif
endif
set t=null
set P7I=null
set J25=null
set ZK3=null
set J15=null
return false
endfunction
function J45 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit J25
local unit J15
local unit ZK3=CreateUnit(GetOwningPlayer(P7I),1747993420,GetUnitX(P7I),GetUnitY(P7I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093751371)
local unit I01
local unit J55=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
set J25=CreateUnit(GetOwningPlayer(P7I),1747993176,x,y,0)
if SUI==1 then
set J15=CreateUnit(GetOwningPlayer(P7I),1747993430,x,y,0)
elseif SUI==2 then
set J15=CreateUnit(GetOwningPlayer(P7I),1747993432,x,y,0)
elseif SUI==3 then
set J15=CreateUnit(GetOwningPlayer(P7I),1747993431,x,y,0)
endif
call AddSpecialEffectTarget("war3mapImported\\PhoenixDown_2.mdl",J25,"origin")
if GetLocalPlayer()==GetOwningPlayer(P7I)then
call ClearSelection()
call SelectUnit(J15,true)
endif
call UPI(x,y,400)
call ShowUnit(P7I,false)
call SaveInteger(LY,(GetHandleId((P7I))),((4326)),(1))
call IA1(P7I,1093678162)
call DU1(P7I,0,0)
call SetUnitInvulnerable(P7I,true)
call UnitRemoveBuffs(P7I,true,true)
call StartSound(BF)
call UnitRemoveAbility(J15,1098015094)
call UnitApplyTimedLife(J25,1112820806,6.1)
call UnitApplyTimedLife(ZK3,1112820806,6.1)
call UnitApplyTimedLife(J15,1112820806,6.1)
call TriggerRegisterTimerEvent(t,5.2,false)
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function JO5))
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DEATH)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(588),(J25))
call SaveUnitHandle(LY,(S5I),(589),(J15))
call SaveUnitHandle(LY,(S5I),(239),(ZK3))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function J05))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,.02,true)
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function JI5))
call SaveUnitHandle(LY,(S5I),(589),(J15))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveUnitHandle(LY,(S5I),(19),(J55))
if EA1(P7I,1227899192)then
call UnitAddAbility(J55,1093678153)
endif
set t=null
set P7I=null
set J25=null
set J15=null
endfunction
function J65 takes nothing returns boolean
if GetSpellAbilityId()==1093751371 then
call J45()
endif
return false
endfunction
function RZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function J65))
call Q1I(1093687350)
call Q1I(1093753428)
set t=null
endfunction
function J75 takes nothing returns nothing
local unit P7I=WTI
local unit P8I=GetEnumUnit()
call P6I(P7I,P8I,1,40+20*WRI)
call U5I("Doodads\\Cinematic\\FireTrapUp\\FireTrapUp.mdl",P8I,"origin",1)
set P7I=null
set P8I=null
endfunction
function J85 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093818706)
local group g
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set GK=P7I
set WTI=P7I
set WRI=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1000+25,Condition(function CA1))
call ForGroup(g,function J75)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function J95 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit J15=(LoadUnitHandle(LY,(S5I),(589)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if IsUnitIllusion(GetEventDamageSource())==true then
call QGI(J15,GetEventDamage())
endif
else
if GetUnitX(J15)!=x or GetUnitY(J15)!=y then
call SetUnitPosition(J15,x,y)
endif
if GetUnitY(P7I)!=x or GetUnitY(P7I)!=y then
call SetUnitPosition(P7I,x,y)
endif
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
if P8I!=null and(GetUnitY(P8I)!=x or GetUnitY(P8I)!=y)then
call SetUnitPosition(P8I,x,y)
endif
endif
if GetTriggerEvalCount(t)==1 then
call PauseUnit(P7I,true)
endif
set t=null
set J15=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function JA5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit J25=(LoadUnitHandle(LY,(S5I),(588)))
local unit J15=(LoadUnitHandle(LY,(S5I),(589)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit ZK3=(LoadUnitHandle(LY,(S5I),(239)))
local integer SUI=GetUnitAbilityLevel(P7I,1093818706)
local group g
local unit I01
local integer J35
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call StopSound(BF,false,false)
call ShowUnit(J25,false)
call ShowUnit(ZK3,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(P7I,true)
call SaveInteger(LY,(GetHandleId((P7I))),((4326)),(2))
call UnitRemoveAbility(P7I,1093678162)
call SetUnitInvulnerable(P7I,false)
call PauseUnit(P7I,false)
if GetLocalPlayer()==GetOwningPlayer(P7I)then
call ClearSelection()
call SelectUnit(P7I,true)
endif
call SetUnitState(P7I,UNIT_STATE_LIFE,1)
set I01=CreateUnit(GetOwningPlayer(GetKillingUnit()),1697656901,0,0,0)
call UnitRemoveBuffs(P7I,true,true)
call UnitRemoveAbility(P7I,1097167980)
call UnitDamageTarget(I01,P7I,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
if P8I!=null then
call ShowUnit(P8I,true)
call SaveInteger(LY,(GetHandleId((P8I))),((4326)),(2))
call UnitRemoveAbility(P8I,1093678162)
call SetUnitInvulnerable(P8I,false)
call PauseUnit(P8I,false)
if GetLocalPlayer()==GetOwningPlayer(P8I)then
call ClearSelection()
call SelectUnit(P8I,true)
endif
call SetUnitState(P8I,UNIT_STATE_LIFE,1)
set I01=CreateUnit(GetOwningPlayer(GetKillingUnit()),1697656901,0,0,0)
call UnitRemoveBuffs(P8I,true,true)
call UnitRemoveAbility(P8I,1097167980)
call UnitDamageTarget(I01,P8I,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
endif
set I01=null
else
if GetTriggerEvalCount(t)==1 then
call SetUnitFlyHeight(J15,0,200)
elseif GetTriggerEvalCount(t)==2 then
call PauseUnit(J15,false)
call UnitApplyTimedLife(J15,1112820806,0.1)
call StopSound(BF,false,false)
call StartSound(CF)
call DestroyEffect(AddSpecialEffect("war3mapImported\\FireNova2.mdx",GetUnitX(J25),GetUnitY(J25)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(P7I,true)
call SaveInteger(LY,(GetHandleId((P7I))),((4326)),(2))
call UnitRemoveAbility(P7I,1093678162)
call SetUnitInvulnerable(P7I,false)
call SetUnitAnimationByIndex(P7I,8)
call QueueUnitAnimation(P7I,"idle")
call PauseUnit(P7I,false)
if GetLocalPlayer()==GetOwningPlayer(P7I)then
call ClearSelection()
call SelectUnit(P7I,true)
endif
call ShowUnit(J25,false)
call ShowUnit(ZK3,false)
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_MAX_LIFE))
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MAX_MANA))
if P8I!=null then
call ShowUnit(P8I,true)
call SaveInteger(LY,(GetHandleId((P8I))),((4326)),(2))
call UnitRemoveAbility(P8I,1093678162)
call SetUnitInvulnerable(P8I,false)
call PauseUnit(P8I,false)
if GetLocalPlayer()==GetOwningPlayer(P8I)then
call ClearSelection()
call SelectUnit(P8I,true)
endif
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_MAX_LIFE))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MAX_MANA))
endif
set J35=GetUnitAbilityLevel(P7I,1093751370)
if J35>0 then
call UnitRemoveAbility(P7I,1093751370)
call UnitAddAbility(P7I,1093751370)
call SetUnitAbilityLevel(P7I,1093751370,J35)
endif
set J35=GetUnitAbilityLevel(P7I,1093753176)
if J35>0 then
call UnitRemoveAbility(P7I,1093753176)
call UnitAddAbility(P7I,1093753176)
call SetUnitAbilityLevel(P7I,1093753176,J35)
endif
set J35=GetUnitAbilityLevel(P7I,1093753177)
if J35>0 then
call UnitRemoveAbility(P7I,1093753177)
call UnitAddAbility(P7I,1093753177)
call SetUnitAbilityLevel(P7I,1093753177,J35)
endif
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093753428)
call SetUnitAbilityLevel(I01,1093753428,SUI)
call IssueImmediateOrder(I01,"stomp")
set I01=null
endif
endif
set t=null
set P7I=null
set P8I=null
set J25=null
set ZK3=null
set J15=null
return false
endfunction
function JB5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit J25
local unit J15
local unit ZK3=CreateUnit(GetOwningPlayer(P7I),1747993420,GetUnitX(P7I),GetUnitY(P7I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093818706)
local unit I01
local unit J55=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
if P8I==P7I then
set P8I=null
endif
set J25=CreateUnit(GetOwningPlayer(P7I),1747993176,x,y,0)
if SUI==1 then
set J15=CreateUnit(GetOwningPlayer(P7I),1747993430,x,y,0)
elseif SUI==2 then
set J15=CreateUnit(GetOwningPlayer(P7I),1747993432,x,y,0)
elseif SUI==3 then
set J15=CreateUnit(GetOwningPlayer(P7I),1747993431,x,y,0)
endif
call AddSpecialEffectTarget("war3mapImported\\PhoenixDown_2.mdl",J25,"origin")
if GetLocalPlayer()==GetOwningPlayer(P7I)then
call ClearSelection()
call SelectUnit(J15,true)
endif
call UPI(x,y,400)
call ShowUnit(P7I,false)
call SaveInteger(LY,(GetHandleId((P7I))),((4326)),(1))
call IA1(P7I,1093678162)
call DU1(P7I,0,0)
call SetUnitInvulnerable(P7I,true)
call UnitRemoveBuffs(P7I,true,true)
if P8I!=null then
call ShowUnit(P8I,false)
call SaveInteger(LY,(GetHandleId((P8I))),((4326)),(1))
call IA1(P8I,1093678162)
call DU1(P8I,0,0)
call SetUnitInvulnerable(P8I,true)
call UnitRemoveBuffs(P8I,true,true)
endif
call StartSound(BF)
call UnitRemoveAbility(J15,1098015094)
call UnitApplyTimedLife(J25,1112820806,6.1)
call UnitApplyTimedLife(ZK3,1112820806,6.1)
call UnitApplyTimedLife(J15,1112820806,6.1)
call TriggerRegisterTimerEvent(t,5.2,false)
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function JA5))
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DEATH)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(588),(J25))
call SaveUnitHandle(LY,(S5I),(589),(J15))
call SaveUnitHandle(LY,(S5I),(239),(ZK3))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function J85))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,.02,true)
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,J15,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function J95))
call SaveUnitHandle(LY,(S5I),(589),(J15))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveUnitHandle(LY,(S5I),(19),(J55))
if EA1(P7I,1227899192)then
call UnitAddAbility(J55,1093678153)
endif
set t=null
set P7I=null
set P8I=null
set J25=null
set J15=null
endfunction
function JC5 takes nothing returns boolean
if GetSpellAbilityId()==1093818706 then
call JB5()
endif
return false
endfunction
function RV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function JC5))
call Q1I(1093687350)
call Q1I(1093753428)
set t=null
endfunction
function JD5 takes nothing returns nothing
call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+WPI)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\BirdShitTarget_1.mdx",GetEnumUnit(),"origin"))
endfunction
function JE5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g
local integer SUI=GetUnitAbilityLevel(P7I,1093809986)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect(AddSpecialEffect("war3mapImported\\Firaga_2.mdx",x,y))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set g=NTI()
set WPI=50+75*SUI
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,425,Condition(function CT1))
call ForGroup(g,function JD5)
call NSI(g)
set t=null
set P7I=null
set g=null
return false
endfunction
function JF5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
call TriggerRegisterTimerEvent(t,3,false)
call TriggerAddCondition(t,Condition(function JE5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
if IsPlayerAlly(GetOwningPlayer(P7I),GetLocalPlayer())or P0I(GetLocalPlayer())then
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("war3mapImported\\BirdShit_1.mdx",x,y)))
else
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("",x,y)))
endif
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))or P0I(GetLocalPlayer())then
call PingMinimapEx(x,y,3,255,0,0,false)
call IO1(KF,x,y)
endif
call I41(GetOwningPlayer(P7I),4,x,y,500)
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)*0.9)
set t=null
set P7I=null
endfunction
function JG5 takes nothing returns boolean
if GetSpellAbilityId()==1093809986 then
call JF5()
endif
return false
endfunction
function RE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function JG5))
set t=null
endfunction
function JH5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call UnitRemoveAbility(P8I,1093809968)
call UnitRemoveAbility(P8I,1110459723)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)>4 then
call UnitRemoveAbility(P8I,1093809968)
call UnitRemoveAbility(P8I,1110459723)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P6I(P7I,P8I,1,16+12*SUI)
else
call P6I(P7I,P8I,1,16+12*SUI)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function JZ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real a=(LoadReal(LY,(S5I),(137)))
local real x=II3+12*Cos(a)
local real y=I13+12*Sin(a)
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
if GetTriggerEvalCount(t)>25 then
call UPI(x,y,100)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function JV5 takes unit P7I,unit P8I,real x,real y,real a returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093809969)
call SetUnitPosition(P8I,GetUnitX(P8I),GetUnitY(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(137),((a*bj_DEGTORAD)*1.0))
call SaveReal(LY,(S5I),(23),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P8I))*1.0))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function JZ5))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",P8I,"chest")))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function JH5))
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809968,false)
call IA1(P8I,1093809968)
set t=null
endfunction
function JW5 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),WQI)==false then
if QLI(X0I,GetEnumUnit())<24 or RAbsBJ(Cos(UDI(X0I,GetEnumUnit())-XOI))<0.26 then
call GroupAddUnit(WQI,GetEnumUnit())
if Sin((UDI(X0I,GetEnumUnit())-XOI)*bj_DEGTORAD)<0 then
call JV5(WUI,GetEnumUnit(),XII,X1I,XOI-90)
else
call JV5(WUI,GetEnumUnit(),XII,X1I,XOI+90)
endif
endif
endif
endfunction
function JX5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real a=(LoadReal(LY,(S5I),(137)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
if GetTriggerEvalCount(t)>125 then
call KillUnit(IG1)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set x=x+8*Cos(a)
set y=y+8*Sin(a)
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set GK=P7I
set XII=x
set X1I=y
set XOI=a*bj_RADTODEG
set WQI=PR2
set WUI=P7I
set X0I=IG1
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,225,Condition(function CA1))
call ForGroup(g,function JW5)
call NSI(g)
endif
set t=null
set P7I=null
return false
endfunction
function JY5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local real RM2=Atan2(QKI-GetUnitY(P7I),QJI-GetUnitX(P7I))
local integer SUI=GetUnitAbilityLevel(P7I,1093809969)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993665,GetUnitX(P7I),GetUnitY(P7I),RM2*bj_RADTODEG)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerAddCondition(t,Condition(function JX5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(137),((RM2)*1.0))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
set t=null
set P7I=null
endfunction
function JJ5 takes nothing returns boolean
if GetSpellAbilityId()==1093809969 then
call JY5()
endif
return false
endfunction
function RH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function JJ5))
set t=null
endfunction
function JK5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real GW1=(LoadReal(LY,(GetHandleId(P7I)),(681)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if((TimerGetElapsed(M))-GW1<0.49)==false or GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P7I,1093753396)
call UnitRemoveAbility(P7I,1093753409)
call UnitRemoveAbility(P7I,1093753410)
call UnitRemoveAbility(P7I,1093753401)
call UnitRemoveAbility(P7I,1110459478)
endif
set t=null
set P7I=null
return false
endfunction
function JL5 takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer JM5
call TriggerRegisterTimerEvent(t,0.5,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function JK5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(GetHandleId(P7I)),(681),(((TimerGetElapsed(M)))*1.0))
if X6I==1 then
set JM5=1093753396
call UnitRemoveAbility(P7I,1093753409)
call UnitRemoveAbility(P7I,1093753410)
call UnitRemoveAbility(P7I,1093753401)
elseif X6I==2 then
set JM5=1093753409
call UnitRemoveAbility(P7I,1093753396)
call UnitRemoveAbility(P7I,1093753410)
call UnitRemoveAbility(P7I,1093753401)
elseif X6I==3 then
set JM5=1093753410
call UnitRemoveAbility(P7I,1093753396)
call UnitRemoveAbility(P7I,1093753409)
call UnitRemoveAbility(P7I,1093753401)
elseif X6I==4 then
set JM5=1093753401
call UnitRemoveAbility(P7I,1093753396)
call UnitRemoveAbility(P7I,1093753409)
call UnitRemoveAbility(P7I,1093753410)
endif
call IA1(P7I,JM5)
call UnitMakeAbilityPermanent(P7I,true,JM5)
set t=null
endfunction
function JN5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local real JS5=X9I
local real JT5=XAI
local real PAI=JS5+JT5*GetUnitState(P8I,UNIT_STATE_MAX_LIFE)
set PAI=PAI/5
if IsUnitEnemy(P8I,GetOwningPlayer(X7I))==true then
call P6I(X7I,P8I,3,PAI)
if RKI(P8I)==false then
call JL5(P8I)
endif
else
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+PAI*0.5)
endif
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\FireRayTarget.mdx",P8I,"origin"))
call I41(GetOwningPlayer(P8I),2,GetUnitX(X7I),GetUnitY(X7I),500)
set P8I=null
endfunction
function JR5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real JP5=GetUnitFacing(P7I)
local real a=JP5*bj_DEGTORAD
local location l1=GetUnitLoc(P7I)
local real JQ5=GetLocationZ(l1)
local location l2=Location(GetUnitX(P7I)+X2I*Cos(a),GetUnitY(P7I)+X2I*Sin(a))
local real JU5=GetLocationZ(l2)
local lightning K05=(LoadLightningHandle(LY,(S5I),(676)))
local lightning KI5=(LoadLightningHandle(LY,(S5I),(677)))
local lightning K15=(LoadLightningHandle(LY,(S5I),(678)))
local lightning KO5=(LoadLightningHandle(LY,(S5I),(679)))
local lightning K25=(LoadLightningHandle(LY,(S5I),(680)))
local real K35=1
local real QXI
local real QYI
local real K45
local real K55
local real K65
local real K75
local real K85
local real K95
local real KA5
local real KB5
local real KC5
local real KD5
local real KE5
local real KF5
local real KG5
local real KH5
local real KZ5
local real KV5
local real KW5
local real KX5
local real KY5
local real KJ5
local real KK5
local real KL5
local real KM5
local real KN5
local real KS5
local real KT5
local real KR5
local real KP5
local real KQ5
local real KU5
local real L05
local group g
local real x
local real y
local integer i
local real LI5
local real L15
local real LO5
local boolean L25=FALSE
local boolean L35=false
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit NewTarget=null
local unit DriftTarget=null
local real L45
local real L55
local real L65
local real L75=(LoadReal(LY,(S5I),(688)))
local boolean L85=(LoadBoolean(LY,(S5I),(689)))
local boolean L95=(LoadBoolean(LY,(S5I),(672)))
local real LA5
local ubersplat AR1
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real JS5
local real JT5
local real LB5
local real LC5=5
if GetUnitCurrentOrder(P7I)==852001 then
call DisableTrigger(t)
call PJI(P7I)
call EnableTrigger(t)
endif
call RemoveLocation(l1)
call RemoveLocation(l2)
if IsUnitPaused(P7I)==false and(GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER)then
set QXI=GetUnitX(P7I)
set QYI=GetUnitY(P7I)
if GetIssuedOrderId()!=852490 and GetIssuedOrderId()!=852185 and GetIssuedOrderId()!=852600 then
call DisableTrigger(t)
call PJI(P7I)
call EnableTrigger(t)
endif
if GetIssuedOrderId()==851971 then
if GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
set x=GetUnitX(GetOrderTargetUnit())
set y=GetUnitY(GetOrderTargetUnit())
else
set x=GetOrderPointX()
set y=GetOrderPointY()
endif
set LI5=UEI(x,y,QXI,QYI)
if LI5<0 then
set LI5=LI5+360
endif
set LO5=JP5-LI5
if LO5<0 then
set LO5=LO5+360
endif
if LO5<180 then
set L25=true
set L15=JP5+6
else
set L35=true
set L15=JP5-6
endif
set L75=UEI(x,y,QXI,QYI)+180
call SaveReal(LY,(S5I),(688),((L75)*1.0))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT or GetTriggerEventId()==EVENT_WIDGET_DEATH or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==-1 or NPI>=6.0/.02 or BG1(P7I)or TLI(P7I)then
if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()==1093753395 or GetSpellAbilityId()==1093751371 or GetSpellAbilityId()==1093809992))then
call SaveInteger(LY,(GetHandleId((P7I))),((4312)),(2))
call BP1(P7I)
call SetUnitPathing(P7I,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093808181)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753395,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808181,false)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093753177 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753177,true)
endif
call DestroyLightning(K05)
call DestroyLightning(KI5)
call DestroyLightning(K15)
call DestroyLightning(KO5)
call DestroyLightning(K25)
call StopSound(JF,false,true)
endif
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if GetIssuedOrderId()==String2OrderIdBJ("immolation")then
set L85=true
endif
if GetIssuedOrderId()==String2OrderIdBJ("unimmolation")then
set L85=false
endif
call SaveBoolean(LY,(S5I),(689),(L85))
else
set LI5=JP5-L75
if LI5<-180 then
set LI5=LI5+360
elseif LI5>180 then
set LI5=LI5-360
endif
set LA5=1
if NPI<35 and L95==true then
set LA5=7
endif
if LI5<(-1*LA5)then
set JP5=JP5+LA5
elseif LI5>LA5 then
set JP5=JP5-LA5
else
set L95=false
call SaveBoolean(LY,(S5I),(672),(L95))
set JP5=L75
endif
if((LoadInteger(LY,(GetHandleId((P7I))),((4301))))==1)==false then
call SetUnitFacing(P7I,JP5)
endif
set a=JP5*bj_DEGTORAD
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
set K45=X2I
set QXI=GetUnitX(P7I)+50*Cos(a)
set QYI=GetUnitY(P7I)+50*Sin(a)
if L85 and BE1(P7I)==false and BG1(P7I)==false then
if((LoadInteger(LY,(GetHandleId((P7I))),((4331))))==1)==true then
set LC5=LC5*2
endif
set L65=a
set L45=PTI(GetUnitX(P7I)+LC5*Cos(L65))
set L55=PUI(GetUnitY(P7I)+LC5*Sin(L65))
call UPI(L45,L55,200)
call SetUnitX(P7I,L45)
call SetUnitY(P7I,L55)
endif
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)-GetUnitState(P7I,UNIT_STATE_LIFE)*0.06*0.02)
call UPI(QXI,QYI,200)
if ModuloInteger(NPI,10)==0 then
set X8I=NTI()
set GK=P7I
set i=0
loop
exitwhen i*50>X2I
set x=QXI+i*50*Cos(a)
set y=QYI+i*50*Sin(a)
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,130+25,Condition(function CA1))
call GroupAddGroup(g,X8I)
call GroupEnumUnitsInRange(g,x,y,130+25,Condition(function CT1))
call GroupAddGroup(g,X8I)
call NSI(g)
if ModuloInteger(i,3)==0 then
call I41(GetOwningPlayer(P7I),2,x,y,225)
endif
set i=i+1
endloop
set X7I=P7I
set X6I=GetUnitAbilityLevel(P7I,1093753177)
set LB5=(I2R(NPI)/50.0)/6
set X9I=(5*X6I+10)+(5*X6I+10)*LB5
set XAI=(X6I+LB5*(X6I))/100
call GroupRemoveUnit(X8I,P7I)
call ForGroup(X8I,function JN5)
call NSI(X8I)
set g=null
set X8I=null
endif
if IC1(P7I)==false then
if P8I!=null then
set K45=QLI(P7I,P8I)
endif
set K55=QXI
set K65=QYI
set K75=JQ5+200
set K85=K55+K45*Cos(a)
set K95=K65+K45*Sin(a)
set KA5=JU5
set KB5=QXI+X3I*Cos((JP5-90)*bj_DEGTORAD)
set KC5=QYI+X4I*Cos((JP5-90)*bj_DEGTORAD)
set KD5=JQ5+200
set KE5=KB5+K45*Cos(a)
set KF5=KC5+K45*Sin(a)
set KG5=JU5
set KH5=QXI+X3I*Cos((JP5+90)*bj_DEGTORAD)
set KZ5=QYI+X4I*Cos((JP5+90)*bj_DEGTORAD)
set KV5=JQ5+200
set KW5=KH5+K45*Cos(a)
set KX5=KZ5+K45*Sin(a)
set KY5=JU5
set KJ5=QXI
set KK5=QYI
set KL5=JQ5+200+X5I
set KM5=KJ5+K45*Cos(a)
set KN5=KK5+K45*Sin(a)
set KS5=JU5
set KT5=QXI
set KR5=QYI
set KP5=JQ5+200-X5I
set KQ5=KT5+K45*Cos(a)
set KU5=KR5+K45*Sin(a)
set L05=JU5
if ModuloInteger(NPI,10)==0 and K45==X2I then
set x=GetUnitX(P7I)+(X2I)*Cos(a)
set y=GetUnitY(P7I)+(X2I)*Sin(a)
call DestroyEffect(AddSpecialEffect("war3mapImported\\FireRayTarget.mdx",x,y))
endif
if ModuloInteger(NPI,10)==0 then
call SetSoundPosition(JF,GetUnitX(P7I),GetUnitY(P7I),100)
set x=GetUnitX(P7I)+(K45)*Cos(a)
set y=GetUnitY(P7I)+(K45)*Sin(a)
set AR1=CreateUbersplat(x,y,"SRAY",255,255,255,255,false,false)
call SetUbersplatRenderAlways(AR1,true)
call AP1(AR1,10)
set AR1=null
endif
call MoveLightningEx(K05,false,K55,K65,K75,K85,K95,KA5)
call MoveLightningEx(KI5,false,KB5,KC5,KD5,KE5,KF5,KG5)
call MoveLightningEx(K15,false,KH5,KZ5,KV5,KW5,KX5,KY5)
call MoveLightningEx(KO5,false,KJ5,KK5,KL5,KM5,KN5,KS5)
call MoveLightningEx(K25,false,KT5,KR5,KP5,KQ5,KU5,L05)
if P0I(GetLocalPlayer())then
set K35=1
endif
call SetLightningColor(K05,1.00,1.00,1.00,K35)
call SetLightningColor(KI5,1.00,1.00,1.00,K35)
call SetLightningColor(K15,1.00,1.00,1.00,K35)
call SetLightningColor(KO5,1.00,1.00,1.00,K35)
call SetLightningColor(K25,1.00,1.00,1.00,K35)
endif
endif
set t=null
set P7I=null
set K05=null
set KI5=null
set K15=null
set KO5=null
set K25=null
set l1=null
set l2=null
return false
endfunction
function LD5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
local real QJI=PTI(GetUnitX(P7I)+X2I*Cos(a))
local real QKI=PUI(GetUnitY(P7I)+X2I*Sin(a))
local lightning K05=AddLightning("SRAY",false,GetUnitX(P7I),GetUnitY(P7I),QJI,QKI)
local lightning KI5=AddLightning("SRAY",false,GetUnitX(P7I),GetUnitY(P7I),QJI,QKI)
local lightning K15=AddLightning("SRAY",false,GetUnitX(P7I),GetUnitY(P7I),QJI,QKI)
local lightning KO5=AddLightning("SRAY",false,GetUnitX(P7I),GetUnitY(P7I),QJI,QKI)
local lightning K25=AddLightning("SRAY",false,GetUnitX(P7I),GetUnitY(P7I),QJI,QKI)
call SetUnitFacing(P7I,a*bj_RADTODEG)
call StartSound(JF)
call SetSoundPosition(JF,GetUnitX(P7I),GetUnitY(P7I),100)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function JR5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(13),((a)*1.0))
call SaveReal(LY,(S5I),(688),((a*bj_RADTODEG)*1.0))
call SaveLightningHandle(LY,(S5I),(676),(K05))
call SaveLightningHandle(LY,(S5I),(677),(KI5))
call SaveLightningHandle(LY,(S5I),(678),(K15))
call SaveLightningHandle(LY,(S5I),(679),(KO5))
call SaveLightningHandle(LY,(S5I),(680),(K25))
call SaveBoolean(LY,(S5I),(689),(false))
call SaveBoolean(LY,(S5I),(672),(true))
call SaveReal(LY,(S5I),(688),((a*bj_RADTODEG)*1.0))
call SaveReal(LY,(S5I),(23),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P7I))*1.0))
call BT1(P7I)
call SaveInteger(LY,(GetHandleId((P7I))),((4312)),(1))
call SetUnitPathing(P7I,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753395,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808181,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753177,false)
call IA1(P7I,1093753395)
call UnitMakeAbilityPermanent(P7I,true,1093753395)
call IA1(P7I,1093808181)
call UnitMakeAbilityPermanent(P7I,true,1093808181)
call TriggerEvaluate(t)
set t=null
set P7I=null
set P7I=null
set K05=null
set KI5=null
set K15=null
set KO5=null
set K25=null
endfunction
function LE5 takes nothing returns boolean
if GetSpellAbilityId()==1093753177 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
else
call LD5()
endif
endif
return false
endfunction
function RG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function LE5))
call B01(1093753396)
call B01(1093753409)
call B01(1093753410)
call B01(1093753401)
set t=null
endfunction
function LF5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093753176)
if GetTriggerEventId()==EVENT_UNIT_DEATH or(TimerGetElapsed(M))>=(LoadReal(LY,(GetHandleId(P8I)),(757)))or RKI(P8I)==true then
call UnitRemoveAbility(P8I,1093818167)
call UnitRemoveAbility(P8I,1093818169)
call UnitRemoveAbility(P8I,1093815352)
call UnitRemoveAbility(P8I,1093818168)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
if ModuloInteger(GetTriggerEvalCount(t),4)==0 then
call P6I(P7I,P8I,1,20*SUI-10)
endif
set t=null
set P7I=null
return false
endfunction
function LG5 takes nothing returns nothing
local unit P7I=XBI
local unit P8I=GetEnumUnit()
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(P7I,1093753176)
local integer LH5
call SaveReal(LY,(GetHandleId(P8I)),(757),(((TimerGetElapsed(M))+4)*1.0))
if GetUnitAbilityLevel(P8I,1093818167)==0 and GetUnitAbilityLevel(P8I,1093818169)==0 and GetUnitAbilityLevel(P8I,1093815352)==0 and GetUnitAbilityLevel(P8I,1093818168)==0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function LF5))
call TriggerRegisterDeathEvent(t,P8I)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",P8I,"chest")))
if BJ1(P8I)==false then
if SUI==1 then
set LH5=1093818167
elseif SUI==2 then
set LH5=1093818169
elseif SUI==3 then
set LH5=1093815352
elseif SUI==4 then
set LH5=1093818168
endif
call UnitAddAbility(P8I,LH5)
call UnitMakeAbilityPermanent(P8I,true,LH5)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),LH5,false)
endif
set P7I=null
set P8I=null
set t=null
endfunction
function LZ5 takes unit P7I,unit IG1,real IS5,unit I01,unit P8I returns nothing
local real x=GetUnitX(IG1)
local real y=GetUnitY(IG1)
local group g=NTI()
set GK=P7I
set XBI=P7I
call GroupEnumUnitsInRange(g,x,y,175+25,Condition(function CE1))
call ForGroup(g,function LG5)
call NSI(g)
call DestroyEffect(AddSpecialEffect("war3mapImported\\Firaga_2.mdx",x,y))
call KillUnit(IG1)
call ShowUnit(IG1,false)
set g=null
endfunction
function LV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit LW5=(LoadUnitHandle(LY,(S5I),(393)))
local real IS5=(LoadReal(LY,(S5I),(685)))
local real QJI
local real QKI
local real x
local real y
local real a
local real r=18
local integer SUI=GetUnitAbilityLevel(P7I,1093753176)
if GetTriggerEventId()==EVENT_UNIT_DEATH then
set QJI=GetUnitX(P8I)
set QKI=GetUnitY(P8I)
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call RemoveSavedHandle(LY,(S5I),(17))
call SaveUnitHandle(LY,(S5I),(17),(null))
elseif P8I==null then
set QJI=(LoadReal(LY,(S5I),(47)))
set QKI=(LoadReal(LY,(S5I),(48)))
else
set QJI=GetUnitX(P8I)
set QKI=GetUnitY(P8I)
endif
set a=UEI(GetUnitX(LW5),GetUnitY(LW5),QJI,QKI)
call SetUnitFacing(LW5,a)
set x=GetUnitX(LW5)+r*Cos(a*bj_DEGTORAD)
set y=GetUnitY(LW5)+r*Sin(a*bj_DEGTORAD)
call SetUnitX(LW5,x)
call SetUnitY(LW5,y)
if QNI(x,y,QJI,QKI)<r*2 then
call LZ5(P7I,LW5,IS5,I01,P8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
set LW5=null
set I01=null
return false
endfunction
function LX5 takes unit P7I,unit LW5,unit P8I,real IS5,unit I01 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g
local unit NewTarget
if P7I==P8I then
call KillUnit(LW5)
call ShowUnit(LW5,false)
else
call SetUnitVertexColor(LW5,255,255,255,255)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function LV5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(393),(LW5))
call SaveReal(LY,(S5I),(47),((GetSpellTargetX())*1.0))
call SaveReal(LY,(S5I),(48),((GetSpellTargetY())*1.0))
call SaveReal(LY,(S5I),(685),((IS5)*1.0))
call SaveUnitHandle(LY,(S5I),(19),(I01))
endif
set t=null
endfunction
function LY5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local unit LJ5=(LoadUnitHandle(LY,(S5I),(393)))
local unit LK5=(LoadUnitHandle(LY,(S5I),(394)))
local unit LL5=(LoadUnitHandle(LY,(S5I),(395)))
local unit LM5=(LoadUnitHandle(LY,(S5I),(396)))
local integer SUI=GetUnitAbilityLevel(P7I,1093753176)
local real a=GetUnitFacing(P7I)
local real x
local real y
local group g
local group g2
local real JC3=-1*360*0.02/4
local real a2
local real DJ1
local real IS5=(LoadReal(LY,(S5I),(685)))
local real S83
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer LN5=800
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093753394 then
if IC1(LJ5)==false then
call LX5(P7I,LJ5,GetSpellTargetUnit(),IS5,I01)
call RemoveSavedHandle(LY,(S5I),(393))
elseif IC1(LK5)==false then
call LX5(P7I,LK5,GetSpellTargetUnit(),IS5,I01)
call RemoveSavedHandle(LY,(S5I),(394))
elseif IC1(LL5)==false then
call LX5(P7I,LL5,GetSpellTargetUnit(),IS5,I01)
call RemoveSavedHandle(LY,(S5I),(395))
elseif IC1(LM5)==false then
call LX5(P7I,LM5,GetSpellTargetUnit(),IS5,I01)
call RemoveSavedHandle(LY,(S5I),(396))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753394,false)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093753176 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753176,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif GetSpellAbilityId()==1093751371 then
if LJ5!=null and IC1(LJ5)==false then
call LX5(P7I,LJ5,P7I,IS5,I01)
endif
if LK5!=null and IC1(LK5)==false then
call LX5(P7I,LK5,P7I,IS5,I01)
endif
if LL5!=null and IC1(LL5)==false then
call LX5(P7I,LL5,P7I,IS5,I01)
endif
if LM5!=null and IC1(LM5)==false then
call LX5(P7I,LM5,P7I,IS5,I01)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753394,false)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093753176 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753176,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if LJ5!=null and IC1(LJ5)==false then
set DJ1=360*4/4.0
set a2=DJ1+JC3*NPI
set x=PTI(QXI+200*Cos(a2*bj_DEGTORAD))
set y=PUI(QYI+200*Sin(a2*bj_DEGTORAD))
call SetUnitFacing(LJ5,a2-90)
call SetUnitX(LJ5,x)
call SetUnitY(LJ5,y)
endif
if LK5!=null and IC1(LK5)==false then
set DJ1=360*3/4.0
set a2=DJ1+JC3*NPI
set x=PTI(QXI+200*Cos(a2*bj_DEGTORAD))
set y=PUI(QYI+200*Sin(a2*bj_DEGTORAD))
call SetUnitFacing(LK5,a2-90)
call SetUnitX(LK5,x)
call SetUnitY(LK5,y)
endif
if LL5!=null and IC1(LL5)==false then
set DJ1=360*2/4.0
set a2=DJ1+JC3*NPI
set x=PTI(QXI+200*Cos(a2*bj_DEGTORAD))
set y=PUI(QYI+200*Sin(a2*bj_DEGTORAD))
call SetUnitFacing(LL5,a2-90)
call SetUnitX(LL5,x)
call SetUnitY(LL5,y)
endif
if LM5!=null and IC1(LM5)==false then
set DJ1=360*1/4.0
set a2=DJ1+JC3*NPI
set x=PTI(QXI+200*Cos(a2*bj_DEGTORAD))
set y=PUI(QYI+200*Sin(a2*bj_DEGTORAD))
call SetUnitFacing(LM5,a2-90)
call SetUnitX(LM5,x)
call SetUnitY(LM5,y)
endif
if NPI>LN5 or GetTriggerEventId()==EVENT_UNIT_DEATH then
if LJ5!=null and IC1(LJ5)==false then
call LX5(P7I,LJ5,P7I,IS5,I01)
endif
if LK5!=null and IC1(LK5)==false then
call LX5(P7I,LK5,P7I,IS5,I01)
endif
if LL5!=null and IC1(LL5)==false then
call LX5(P7I,LL5,P7I,IS5,I01)
endif
if LM5!=null and IC1(LM5)==false then
call LX5(P7I,LM5,P7I,IS5,I01)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753394,false)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093753176 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753176,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set IS5=RMinBJ(0.25+0.75*(I2R(NPI)/500.0),1)
call SaveReal(LY,(S5I),(685),((IS5)*1.0))
set S83=0.25+(1-0.2)*2.5
call SetUnitScale(LJ5,S83,S83,S83)
call SetUnitScale(LK5,S83,S83,S83)
call SetUnitScale(LL5,S83,S83,S83)
call SetUnitScale(LM5,S83,S83,S83)
if NPI==(LN5-175)then
call OQ1(KF,GetOwningPlayer(P7I))
endif
if NPI>(LN5-200)then
if ModuloInteger(NPI,10)==0 or ModuloInteger(NPI,10)==1 or ModuloInteger(NPI,10)==2 or ModuloInteger(NPI,10)==3 or ModuloInteger(NPI,10)==4 then
call SetUnitVertexColor(LJ5,255,0,0,255)
call SetUnitVertexColor(LK5,255,0,0,255)
call SetUnitVertexColor(LL5,255,0,0,255)
call SetUnitVertexColor(LM5,255,0,0,255)
else
call SetUnitVertexColor(LJ5,255,255,255,255)
call SetUnitVertexColor(LK5,255,255,255,255)
call SetUnitVertexColor(LL5,255,255,255,255)
call SetUnitVertexColor(LM5,255,255,255,255)
endif
endif
endif
endif
set t=null
set P7I=null
set LJ5=null
set LK5=null
set LL5=null
set LM5=null
set I01=null
return false
endfunction
function LS5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real x
local real y
local unit LJ5
local unit LK5
local unit LL5
local unit LM5
local real a=GetUnitFacing(P7I)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,QXI,QYI,0)
call UnitAddAbility(I01,1093808469)
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)-GetUnitState(P7I,UNIT_STATE_LIFE)*0.20)
call IA1(P7I,1093753394)
call UnitMakeAbilityPermanent(P7I,true,1093753394)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753394,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093753176,false)
set x=GetUnitX(P7I)+200*Cos(bj_DEGTORAD*360*4/4.0*-1.0)
set y=GetUnitY(P7I)+200*Sin(bj_DEGTORAD*360*4/4.0*-1.0)
set LJ5=CreateUnit(GetOwningPlayer(P7I),1747993429,x,y,360*4/4.0*-1.0)
set x=GetUnitX(P7I)+200*Cos(bj_DEGTORAD*360*3/4.0*-1.0)
set y=GetUnitY(P7I)+200*Sin(bj_DEGTORAD*360*3/4.0*-1.0)
set LK5=CreateUnit(GetOwningPlayer(P7I),1747993429,x,y,360*3/4.0*-1.0)
set x=GetUnitX(P7I)+200*Cos(bj_DEGTORAD*360*2/4.0*-1.0)
set y=GetUnitY(P7I)+200*Sin(bj_DEGTORAD*360*2/4.0*-1.0)
set LL5=CreateUnit(GetOwningPlayer(P7I),1747993429,x,y,360*2/4.0*-1.0)
set x=GetUnitX(P7I)+200*Cos(bj_DEGTORAD*360*1/4.0*-1.0)
set y=GetUnitY(P7I)+200*Sin(bj_DEGTORAD*360*1/4.0*-1.0)
set LM5=CreateUnit(GetOwningPlayer(P7I),1747993429,x,y,360*1/4.0*-1.0)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function LY5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(393),(LJ5))
call SaveUnitHandle(LY,(S5I),(394),(LK5))
call SaveUnitHandle(LY,(S5I),(395),(LL5))
call SaveUnitHandle(LY,(S5I),(396),(LM5))
call SaveUnitHandle(LY,(S5I),(19),(I01))
set P7I=null
set LJ5=null
set LK5=null
set LL5=null
set LM5=null
set I01=null
endfunction
function LT5 takes nothing returns boolean
if GetSpellAbilityId()==1093753176 then
call LS5()
endif
return false
endfunction
function RF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function LT5))
set t=null
endfunction
function LR5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093815345)
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>4 then
call UnitRemoveAbility(P8I,1093815352)
call SaveInteger(LY,(GetHandleId((P8I))),((4311)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call P6I(P7I,P8I,1,20*SUI)
set t=null
set P7I=null
return false
endfunction
function LP5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function LR5))
call TriggerRegisterDeathEvent(t,P8I)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",P8I,"chest")))
call UnitAddAbility(P8I,1093815352)
call UnitMakeAbilityPermanent(P8I,true,1093815352)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093815352,false)
call SaveInteger(LY,(GetHandleId((P8I))),((4311)),(1))
set P7I=null
set P8I=null
set t=null
endfunction
function LQ5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local group g=NTI()
call DestroyEffect(AddSpecialEffect("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",x,y))
call GroupEnumUnitsInRange(g,x,y,275+25,Condition(function C51))
call ForGroup(g,function LP5)
call NSI(g)
set g=null
set P7I=null
endfunction
function LU5 takes nothing returns boolean
if GetSpellAbilityId()==1093815345 then
call LQ5()
endif
return false
endfunction
function RD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function LU5))
set t=null
endfunction
function M05 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=(LoadInteger(LY,(GetHandleId(P8I)),(627)))
local real MI5=(LoadReal(LY,(GetHandleId(P8I)),(628)))
local integer SUI=GetUnitAbilityLevel(P7I,1093751604)
local real PAI=(5+SUI*15)*Pow(2,IMinBJ(NPI,5)-1)
set PAI=PAI+IMaxBJ(NPI-5,0)*50
if GetTriggerEventId()==EVENT_UNIT_DEATH then
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveInteger(LY,(GetHandleId(P8I)),(627),(0))
call SaveReal(LY,(GetHandleId(P8I)),(628),((0)*1.0))
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093751609 then
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveInteger(LY,(GetHandleId(P8I)),(627),(0))
call SaveReal(LY,(GetHandleId(P8I)),(628),((0)*1.0))
if((LoadInteger(LY,(GetHandleId((P8I))),((4293))))==1)then
call SetUnitInvulnerable(P8I,false)
endif
call P6I(P7I,P8I,1,PAI)
if((LoadInteger(LY,(GetHandleId((P8I))),((4293))))==1)then
call SetUnitInvulnerable(P8I,true)
endif
call UYI(I2S(R2I(PAI))+"!",2,P8I,0.025,100,0,200,216)
endif
elseif(TimerGetElapsed(M))>MI5 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveInteger(LY,(GetHandleId(P8I)),(627),(0))
call SaveReal(LY,(GetHandleId(P8I)),(628),((0)*1.0))
if((LoadInteger(LY,(GetHandleId((P8I))),((4293))))==1)then
call SetUnitInvulnerable(P8I,false)
endif
call P6I(P7I,P8I,1,PAI)
if((LoadInteger(LY,(GetHandleId((P8I))),((4293))))==1)then
call SetUnitInvulnerable(P8I,true)
endif
call UYI(I2S(R2I(PAI))+"!",2,P8I,0.025,100,0,200,216)
else
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function M15 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(P7I,1093751604)
local unit IG1
if(LoadInteger(LY,(GetHandleId(P8I)),(627)))>0 then
call SaveInteger(LY,(GetHandleId(P8I)),(627),((LoadInteger(LY,(GetHandleId(P8I)),(627)))+1))
call SaveReal(LY,(GetHandleId(P8I)),(628),(((TimerGetElapsed(M))+10)*1.0))
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
endif
call SaveInteger(LY,(GetHandleId(P8I)),(627),(1))
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\shamanyouranus-ShadowyMissile.mdl",P8I,"chest")))
else
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\shamanyouranus-ShadowyMissile.mdl",P8I,"origin")))
endif
call SaveReal(LY,(GetHandleId(P8I)),(628),(((TimerGetElapsed(M))+10)*1.0))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function M05))
set IG1=null
endif
call UYI("+"+I2S((LoadInteger(LY,(GetHandleId(P8I)),(627)))),3,P8I,0.025,100,0,200,216)
call P6I(P7I,P8I,1,50)
set t=null
endfunction
function MO5 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XDI)==false then
call GroupAddUnit(XDI,GetEnumUnit())
call M15(XCI,GetEnumUnit())
endif
endfunction
function M25 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local integer NPI=GetTriggerEvalCount(t)
local real a=(LoadReal(LY,(S5I),(137)))
local real x=PTI(GetUnitX(IG1)+(20)*Cos(a))
local real y=PUI(GetUnitY(IG1)+(20)*Sin(a))
local group g
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local unit P8I
if NPI==75 then
call NSI(JAO)
call KillUnit(IG1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set GK=P7I
set XCI=P7I
set XDI=JAO
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,190+25,Condition(function CE1))
call ForGroup(g,function MO5)
set P8I=FirstOfGroup(g)
call NSI(g)
endif
set t=null
set P7I=null
set IG1=null
set g=null
set P8I=null
set JAO=null
return false
endfunction
function M35 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),x,y)*bj_DEGTORAD
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993394,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function M25))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveGroupHandle(LY,(S5I),(133),(NTI()))
call IA1(P7I,1093751609)
set t=null
set P7I=null
set IG1=null
endfunction
function M45 takes nothing returns boolean
if GetSpellAbilityId()==1093751604 then
call M35()
endif
return false
endfunction
function RW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function M45))
set t=null
endfunction
function M55 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit M65=GetSummonedUnit()
if GetTriggerEventId()!=EVENT_PLAYER_UNIT_SUMMON then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetUnitAbilityLevel(M65,1110459457)>0 and GetOwningPlayer(GetSummoningUnit())==GetOwningPlayer(P7I)then
if IsUnitAlly(P8I,GetOwningPlayer(P7I))==true then
call SelectUnitAddForPlayer(M65,GetOwningPlayer(P7I))
else
call IssueTargetOrder(M65,"attack",P8I)
endif
endif
set t=null
set P7I=null
set P8I=null
set M65=null
return false
endfunction
function M75 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call SaveInteger(LY,(GetHandleId((P8I))),((4293)),(2))
call SetUnitInvulnerable(P8I,false)
call PauseUnit(P8I,false)
call ShowUnit(P8I,true)
call RemoveSavedHandle(LY,(GetHandleId(P8I)),(673))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()!=EVENT_UNIT_DEATH then
call ClearSelectionForPlayer(GetOwningPlayer(P8I))
call SelectUnitAddForPlayer(P8I,GetOwningPlayer(P8I))
call IO1(DF,GetUnitX(P8I),GetUnitY(P8I))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,3,false)
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function M55))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(I01,1093751605)
call SetUnitAbilityLevel(I01,1093751605,GetUnitAbilityLevel(P7I,1093751608))
call IssueTargetOrderById(I01,852274,P8I)
call IssueTargetOrderById(I01,852274,P8I)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function M85 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093751608)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P8I),1865429305,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitApplyTimedLife(I01,1112820806,2.6)
if IsUnitAlly(P8I,GetOwningPlayer(P7I))==false then
set I01=CreateUnit(GetOwningPlayer(P7I),1865429305,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitApplyTimedLife(I01,1112820806,2.6)
endif
call SetUnitInvulnerable(P8I,true)
call PauseUnit(P8I,true)
call ShowUnit(P8I,false)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("war3mapImported\\WILLTHEALMIGHTY-Void5.mdx",GetUnitX(P8I),GetUnitY(P8I))))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function M75))
call SaveUnitHandle(LY,(GetHandleId(P7I)),(673),(P8I))
call SaveInteger(LY,(GetHandleId((P8I))),((4293)),(1))
set P7I=null
set P8I=null
set t=null
set I01=null
endfunction
function M95 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093751608 and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true or NNI(GetSpellTargetUnit())==false)then
call M85()
endif
else
if GetSpellAbilityId()==1093751608 and GetSpellTargetUnit()!=GetTriggerUnit()and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true and(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
endif
return false
endfunction
function RX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function M95))
set t=null
endfunction
function MA5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093751618)
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetEventDamage()>5 then
call DisableTrigger(t)
call P6I(GetEventDamageSource(),GetTriggerUnit(),3,(0.1+0.1*SUI)*GetEventDamage())
call EnableTrigger(t)
endif
set P7I=null
set t=null
return false
endfunction
function MB5 takes nothing returns nothing
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local group g=NTI()
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093751618)
local unit P8I
local trigger t
local integer S5I
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,475,Condition(function CE1))
set P8I=(LoadUnitHandle(LY,(GetHandleId(P7I)),(673)))
if P8I!=null then
if QNI(GetUnitX(P8I),GetUnitY(P8I),x,y)<475 and IsUnitEnemy(P8I,GetOwningPlayer(P7I))==true then
call GroupAddUnit(g,P8I)
endif
endif
set P8I=GroupPickRandomUnit(g)
call NSI(g)
call DestroyEffect(AddSpecialEffect("war3mapImported\\Desecrate.mdx",x,y))
if P8I!=null then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,12,false)
call TriggerAddCondition(t,Condition(function MA5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\void.mdx",P8I,"chest")))
endif
set g=null
set P7I=null
set P8I=null
set t=null
endfunction
function MC5 takes nothing returns boolean
if GetSpellAbilityId()==1093751618 then
call MB5()
endif
return false
endfunction
function RY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MC5))
set t=null
endfunction
function MD5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=GetTriggerEvalCount(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093818441)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093751617)
endif
if NPI==5 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if((LoadInteger(LY,(GetHandleId((P8I))),((4293))))==1)then
call SetUnitInvulnerable(P8I,false)
endif
call P6I(P7I,P8I,1,4*(25+25*SUI))
if((LoadInteger(LY,(GetHandleId((P8I))),((4293))))==1)then
call SetUnitInvulnerable(P8I,true)
endif
else
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function ME5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function MD5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerEvaluate(t)
set t=null
set P7I=null
set P8I=null
endfunction
function MF5 takes nothing returns boolean
if(GetSpellAbilityId()==1093818441 or GetSpellAbilityId()==1093751617)and IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true and NNI(GetSpellTargetUnit())==false then
call ME5()
endif
return false
endfunction
function MG5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(826)))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093818437)
if JGO>0 then
call UnitAddAbility(I01,1093751617)
call SetUnitAbilityLevel(I01,1093751617,SUI)
call IssueTargetOrder(I01,"purge",P8I)
call UnitRemoveAbility(P7I,XEI[JGO])
set JGO=JGO-1
call SaveInteger(LY,(GetHandleId(P7I)),(826),(JGO))
call IA1(P7I,XEI[JGO])
endif
set P7I=null
set P8I=null
endfunction
function MH5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer JGO=(LoadInteger(LY,(GetHandleId(P7I)),(826)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if JGO<3 then
set NPI=NPI-1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==0 then
call UnitRemoveAbility(P7I,XEI[JGO])
set NPI=40
call SaveInteger(LY,(S5I),(34),(NPI))
set JGO=JGO+1
call SaveInteger(LY,(GetHandleId(P7I)),(826),(JGO))
call IA1(P7I,XEI[JGO])
endif
endif
set t=null
set P7I=null
return false
endfunction
function MZ5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093818437)
local trigger t
local integer S5I
local integer MV5=GetUnitAbilityLevel(P7I,XEI[0])
local integer MW5=GetUnitAbilityLevel(P7I,XEI[1])
local integer MX5=GetUnitAbilityLevel(P7I,XEI[2])
local integer MY5=GetUnitAbilityLevel(P7I,XEI[3])
if SUI>0 and(MV5+MW5+MX5+MY5)==0 then
call UnitRemoveAbility(P7I,1093751617)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveInteger(LY,(GetHandleId(P7I)),(826),(3))
call IA1(P7I,XEI[3])
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function MH5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(40))
set t=null
endif
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093818441)
if SUI>0 then
call IA1(P7I,1093751617)
call SetUnitAbilityLevel(P7I,1093751617,SUI)
endif
endif
set P7I=null
endfunction
function MJ5 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
if(GetLearnedSkill()==1093818441 or GetLearnedSkill()==1093818437)and IsUnitIllusion(GetTriggerUnit())==false then
call MZ5()
endif
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and F01(GetManipulatedItem())==L30 then
call MZ5()
endif
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if(GetSpellAbilityId()==XEI[0]or GetSpellAbilityId()==XEI[1]or GetSpellAbilityId()==XEI[2]or GetSpellAbilityId()==XEI[3])and IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true and NNI(GetSpellTargetUnit())==false then
call MG5()
endif
endif
return false
endfunction
function RJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MF5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MJ5))
set XEI[0]=1093818440
set XEI[1]=1093818435
set XEI[2]=1093818434
set XEI[3]=1093818676
set t=null
endfunction
function MK5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1093751632)
set t=null
set P7I=null
return false
endfunction
function ML5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call IA1(P7I,1093751632)
call UnitMakeAbilityPermanent(P7I,true,1093751632)
call SetUnitAbilityLevel(P7I,1093751632,GetUnitAbilityLevel(P7I,1093751631))
call TriggerRegisterTimerEvent(t,3,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function MK5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function MM5 takes nothing returns boolean
if GetSpellAbilityId()==1093751631 then
call ML5()
endif
return false
endfunction
function RK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MM5))
set t=null
endfunction
function MN5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real x
local real y
local real d
local real DH1
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real a=UEI(II3,I13,GetUnitX(P8I),GetUnitY(P8I))*bj_DEGTORAD
local integer SUI=GetUnitAbilityLevel(P7I,1093751633)
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitShareVision(IG1,GetOwningPlayer(P8I),false)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerUnit()!=IG1 then
call KillUnit(IG1)
endif
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
call UnitRemoveBuffs(IG1,true,true)
elseif NPI<3/0.02 then
call SetUnitFacing(IG1,a*bj_RADTODEG)
else
if NPI==4/0.02 then
call UnitShareVision(IG1,GetOwningPlayer(P8I),true)
endif
call SetUnitFacing(IG1,a*bj_RADTODEG)
set x=II3+(280+XFI*NPI*0.02)*0.02*Cos(a)
set y=I13+(280+XFI*NPI*0.02)*0.02*Sin(a)
call SetUnitPosition(IG1,x,y)
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
if QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))<20 then
set d=RMinBJ(QNI(x,y,(LoadReal(LY,(S5I),(6))),(LoadReal(LY,(S5I),(7)))),1500)
set DH1=d/1500*(125*GetUnitAbilityLevel(P7I,1093751633))
set DH1=RMaxBJ(DH1,50)
call KillUnit(IG1)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P6I(P7I,P8I,1,DH1)
call DD1(P7I,P8I,2+0.2*SUI)
endif
endif
set t=null
set P7I=null
set P8I=null
set IG1=null
return false
endfunction
function MS5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))*bj_DEGTORAD
local real x=PTI(GetUnitX(P7I)+150*Cos(a))
local real y=PUI(GetUnitY(P7I)+150*Sin(a))
local integer SUI=GetUnitAbilityLevel(P7I,1093751633)
local unit IG1
local integer RII
local string s="effects\\Snipe Target.mdx"
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))==false and P0I(GetLocalPlayer())==false then
set s=""
endif
if SUI==1 then
set RII=1747993415
elseif SUI==2 then
set RII=1747993393
elseif SUI==3 then
set RII=1747993414
elseif SUI==4 then
set RII=1747993416
endif
set IG1=CreateUnit(GetOwningPlayer(P7I),RII,x,y,a*bj_RADTODEG)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,IG1,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,IG1,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function MN5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(23),((GetUnitX(IG1))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(IG1))*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(s,P8I,"overhead")))
set t=null
set P7I=null
set IG1=null
endfunction
function MT5 takes nothing returns boolean
if GetSpellAbilityId()==1093751633 and NNI(GetSpellTargetUnit())==false then
call MS5()
endif
return false
endfunction
function RL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function MT5))
call Q1I(1093687350)
set t=null
endfunction
function MR5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093751635)
call UnitRemoveAbility(P8I,1110459461)
set t=null
set P8I=null
return false
endfunction
function MP5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093751860)
call UnitRemoveAbility(P8I,1110459463)
set t=null
set P8I=null
return false
endfunction
function MQ5 takes nothing returns nothing
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(XGI,1093751861)
local boolean CK3=false
if SUI==0 then
set SUI=GetUnitAbilityLevel(XGI,1093808949)
set CK3=true
endif
if BJ1(GetEnumUnit())==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,2,false)
call TriggerRegisterUnitEvent(t,GetEnumUnit(),EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function MR5))
call SaveUnitHandle(LY,(S5I),(17),(GetEnumUnit()))
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093751635,false)
call IA1(GetEnumUnit(),1093751635)
endif
call P6I(XGI,GetEnumUnit(),1,SUI*50+200)
set t=null
endfunction
function MU5 takes nothing returns nothing
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(XGI,1093751861)
local boolean CK3=false
if SUI==0 then
set SUI=GetUnitAbilityLevel(XGI,1093808949)
set CK3=true
endif
if BJ1(GetEnumUnit())==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,3,false)
call TriggerRegisterUnitEvent(t,GetEnumUnit(),EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function MP5))
call SaveUnitHandle(LY,(S5I),(17),(GetEnumUnit()))
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093751860,false)
call IA1(GetEnumUnit(),1093751860)
endif
if CK3 then
call P6I(XGI,GetEnumUnit(),1,SUI*50+50+75)
else
call P6I(XGI,GetEnumUnit(),1,SUI*50+50)
endif
set t=null
endfunction
function N05 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g
local integer NPI=GetTriggerEvalCount(t)
local fogmodifier I31=(LoadFogModifierHandle(LY,(S5I),(42)))
if NPI==1 then
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Calldown_FlyUp.mdx",P7I,"chest"))
elseif NPI==2 then
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Calldown_FlyUp.mdx",P7I,"chest"))
elseif NPI==3 then
call DestroyEffect(AddSpecialEffect("war3mapImported\\Calldown_FlyDown.mdx",x,y))
elseif NPI==4 then
set g=NTI()
set GK=P7I
set XGI=P7I
call GroupEnumUnitsInRange(g,x,y,600+25,Condition(function CA1))
call ForGroup(g,function MQ5)
call NSI(g)
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherFireMissile\\DemolisherFireMissile.mdl",x,y))
elseif NPI==5 then
call DestroyEffect(AddSpecialEffect("war3mapImported\\Calldown_FlyDown.mdx",x,y))
elseif NPI==6 then
set g=NTI()
set GK=P7I
set XGI=P7I
call GroupEnumUnitsInRange(g,x,y,600+25,Condition(function CA1))
call ForGroup(g,function MU5)
call NSI(g)
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherFireMissile\\DemolisherFireMissile.mdl",x,y))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FogModifierStop(I31)
call DestroyFogModifier(I31)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set g=null
return false
endfunction
function NI5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local string s=""
local fogmodifier I31=CreateFogModifierRadius(GetOwningPlayer(P7I),FOG_OF_WAR_VISIBLE,x,y,350,true,true)
call FogModifierStart(I31)
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))==true or P0I(GetLocalPlayer())then
set s="war3mapImported\\CallDown_4.mdx"
endif
call TriggerRegisterTimerEvent(t,0.1,false)
call TriggerRegisterTimerEvent(t,0.8,false)
call TriggerRegisterTimerEvent(t,1.6,false)
call TriggerRegisterTimerEvent(t,2,false)
call TriggerRegisterTimerEvent(t,3.6,false)
call TriggerRegisterTimerEvent(t,4,false)
call TriggerAddCondition(t,Condition(function N05))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect(s,x,y)))
call SaveFogModifierHandle(LY,(S5I),(42),(I31))
set t=null
set P7I=null
endfunction
function N15 takes nothing returns boolean
if GetSpellAbilityId()==1093751861 or GetSpellAbilityId()==1093808949 then
call NI5()
endif
return false
endfunction
function RM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function N15))
set t=null
endfunction
function NO5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer UT3=(LoadInteger(LY,(S5I),(375)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and(GetEventDamage()>20 or IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==true)then
set NPI=(LoadInteger(LY,(UT3),(34)))
if NPI>0 then
call SaveInteger(LY,(UT3),(34),(NPI+1))
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
function N25 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if P2I(P7I)==false then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P7I,1093808951)
call UnitAddAbility(P7I,1093808706)
call UnitRemoveAbility(P7I,1093808706)
if(ES1((P7I),FR0[KN0])!=null)then
call UnitAddAbility(P7I,1093808951)
endif
endif
set t=null
set P7I=null
return false
endfunction
function N35 takes unit P7I returns nothing
local trigger t
local integer S5I
if P2I(P7I)==false then
call UnitRemoveAbility(P7I,1093808951)
call UnitAddAbility(P7I,1093808706)
call UnitRemoveAbility(P7I,1093808706)
if(ES1((P7I),FR0[KN0])!=null)then
call UnitAddAbility(P7I,1093808951)
endif
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function N25))
set t=null
endif
endfunction
function N45 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer SUI=GetUnitAbilityLevel(P7I,1093808697)
local integer UT3=S5I
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if IsUnitIllusion(GetAttacker())==true and GetUnitAbilityLevel(GetAttacker(),1093751895)>0 then
call N35(GetAttacker())
call UnitRemoveAbility(GetAttacker(),1093751895)
endif
if GetAttacker()==P7I then
set NPI=NPI+1
if NPI>3+SUI then
call UnitRemoveAbility(P7I,1093751895)
call UnitRemoveAbility(P7I,1110459466)
call N35(P7I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2,false)
call TriggerAddCondition(t,Condition(function NO5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(375),(UT3))
endif
endif
else
call UnitRemoveAbility(P7I,1093751895)
call UnitRemoveAbility(P7I,1110459466)
call N35(P7I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function N55 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,15,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function N45))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(1))
call UnitRemoveAbility(P7I,1093808951)
call UnitAddAbility(P7I,1093808705)
call UnitRemoveAbility(P7I,1093808705)
if(ES1((P7I),FR0[KN0])!=null)then
call UnitAddAbility(P7I,1093808951)
endif
set t=null
set P7I=null
endfunction
function N65 takes nothing returns boolean
if IsUnitIllusion(GetTriggerUnit())==true and GetUnitTypeId(GetTriggerUnit())==1160786511 then
call N35(GetTriggerUnit())
endif
return false
endfunction
function N75 takes nothing returns boolean
if GetSpellAbilityId()==1093808697 and GetUnitTypeId(GetTriggerUnit())==1160786510 then
call N55()
endif
return false
endfunction
function RN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function N75))
set t=CreateTrigger()
call TriggerRegisterEnterRectSimple(t,GetWorldBounds())
call TriggerAddCondition(t,Condition(function N65))
set t=null
endfunction