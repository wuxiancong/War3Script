function K0O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if RSI(GetEventDamage())and IsUnitAlly(GetEventDamageSource(),GetOwningPlayer(GetTriggerUnit()))==false and IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==false and NW0==false then
if GetUnitAbilityLevel(GetEventDamageSource(),1093678162)==0 then
call DisableTrigger(t)
set NW0=true
call P6I(GetTriggerUnit(),GetEventDamageSource(),3,GetEventDamage())
set NW0=false
call EnableTrigger(t)
endif
endif
endif
set t=null
return false
endfunction
function KIO takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,4.5,false)
call TriggerAddCondition(t,Condition(function K0O))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\SpikeBarrier\\SpikeBarrier.mdl",P7I,"chest")))
set t=null
set P7I=null
endfunction
function K1O takes nothing returns nothing
if GetSpellAbilityId()==1093743959 then
call KIO()
endif
endfunction
function KOO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real a=(LoadReal(LY,(S5I),(137)))
local real d=(LoadReal(LY,(S5I),(138)))
local real x=PTI(GetUnitX(P8I)+d/10*Cos(a*bj_DEGTORAD))
local real y=PUI(GetUnitY(P8I)+d/10*Sin(a*bj_DEGTORAD))
if GetTriggerEvalCount(t)==11 or GetTriggerEventId()==EVENT_UNIT_DEATH or((LoadInteger(LY,(GetHandleId((P8I))),((4260))))==1)==true then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",x,y))
if((LoadInteger(LY,(GetHandleId((P8I))),((4306))))==1)==false and((LoadInteger(LY,(GetHandleId((P8I))),((4324))))==1)==false and GetUnitAbilityLevel(P8I,1110456406)==0 and GetUnitAbilityLevel(P8I,1110459975)==0 then
call UPI(x,y,150)
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
endif
endif
set P8I=null
set t=null
return false
endfunction
function K2O takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x
local real y
local real d
local real a
local integer i=-1
local boolean K3O=false
if GetSpellTargetItem()!=null then
set P8I=GetTriggerUnit()
endif
call SCI(P8I,4414,3)
set a=GetUnitFacing(P8I)
loop
exitwhen K3O or i==23
set i=i+1
set x=PTI(GetUnitX(P8I)+(600-i*25)*Cos(a*bj_DEGTORAD))
set y=PUI(GetUnitY(P8I)+(600-i*25)*Sin(a*bj_DEGTORAD))
if(IsPointInRegion(LN,((x)*1.0),((y)*1.0)))==false then
set K3O=true
endif
endloop
set d=QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))
call TriggerRegisterTimerEvent(t,0.04,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function KOO))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(138),((d)*1.0))
set P8I=null
set t=null
endfunction
function K4O takes nothing returns nothing
if GetSpellAbilityId()==1093744973 and GetUnitTypeId(GetSpellTargetUnit())!=1848651852 then
if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true or(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))==false then
call K2O()
endif
endif
endfunction
function K5O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEvalCount(t)>30 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P7I,1093751107)
call UnitRemoveAbility(P7I,1110459225)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set P7I=null
set t=null
return false
endfunction
function K6O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer DC1=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEvalCount(t)>DC1/0.1 or GetTriggerEventId()==EVENT_UNIT_DEATH or((LoadInteger(LY,(GetHandleId((P7I))),((4256))))==1)then
call UnitRemoveAbility(P7I,1097167980)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set P7I=null
set t=null
return false
endfunction
function K7O takes unit u,integer DC1 returns nothing
local unit P7I=u
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UnitAddAbility(P7I,1097167980)
call UnitMakeAbilityPermanent(P7I,true,1097167980)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1097167980,false)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function K6O))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(DC1))
set P7I=null
set t=null
endfunction
function EtherBlast_AddToEnemies takes nothing returns nothing
call K7O(GetEnumUnit(),3)
endfunction
function EtherBlast_DamageEnemies takes nothing returns nothing
call P6I(GetTriggerUnit(),GetEnumUnit(),1,NX0)
endfunction
function K8O takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local real PAI=(LoadReal(LY,(S5I),(20)))
local trigger t
local integer DC1=3
if P7I==P8I then
set DC1=4
endif
if IsPlayerAlly(GetOwningPlayer(P8I),GetOwningPlayer(P7I))==true and P7I!=P8I then
call K7O(P8I,4)
elseif P7I!=P8I then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093751107,false)
call UnitAddAbility(P8I,1093751107)
call UnitMakeAbilityPermanent(P8I,true,1093751107)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function K5O))
call SaveUnitHandle(LY,(S5I),(2),(P8I))
call K7O(P8I,DC1)
call UYI("+"+I2S(R2I(PAI)),2,P8I,0.027,3,216,120,216)
set JJI=true
call P6I(P7I,P8I,1,PAI)
set JJI=false
else
call K7O(P7I,DC1)
endif
set P7I=null
set P8I=null
endfunction
function K9O takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t2=IJ1(P7I,P8I,1747993171,"K8O",1000,false)
local integer KAO=GetHandleId(t2)
local integer KBO=SEI(P7I)
local real KCO
if KBO==2 then
set KCO=GetHeroAgi(P7I,true)
elseif KBO==3 then
set KCO=GetHeroStr(P7I,true)
elseif KBO==1 then
set KCO=GetHeroInt(P7I,true)
endif
call SaveReal(LY,(KAO),(20),((KCO*2.0+75)*1.0))
set P7I=null
set P8I=null
set t2=null
endfunction
function KDO takes nothing returns nothing
if GetSpellAbilityId()==1093751108 and(IsPlayerAlly(GetOwningPlayer(GetSpellTargetUnit()),GetOwningPlayer(GetTriggerUnit()))==true or NNI(GetSpellTargetUnit())==false)then
call K9O()
endif
endfunction
function KEO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEvalCount(t)>40 or GetTriggerEventId()==EVENT_UNIT_DEATH or RKI(P7I)or((LoadInteger(LY,(GetHandleId((P7I))),((4256))))==1)then
call UnitRemoveAbility(P7I,1097167980)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set P7I=null
set t=null
return false
endfunction
function KFO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t
local integer S5I
if RYI(P7I)==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UnitAddAbility(P7I,1097167980)
call UnitMakeAbilityPermanent(P7I,true,1097167980)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1097167980,false)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function KEO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
set P7I=null
set t=null
endfunction
function KGO takes nothing returns nothing
if GetSpellAbilityId()==1093747011 and RKI(GetTriggerUnit())==false then
call KFO()
endif
endfunction
function KHO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real KZO=(LoadReal(LY,(S5I),(529)))
local real KVO=(LoadReal(LY,(S5I),(530)))
local real KWO=GetUnitState(P7I,UNIT_STATE_MANA)
local real KXO=GetUnitState(P7I,UNIT_STATE_MAX_MANA)
local real KYO=(LoadReal(LY,(S5I),(668)))
local real KJO=GetUnitStatePercent(P7I,UNIT_STATE_MANA,UNIT_STATE_MAX_MANA)
local real KKO=(KYO-KJO)/100
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)==20*10 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if KZO<150 then
call SetUnitState(P7I,UNIT_STATE_MANA,KWO-(150-KZO-KVO))
endif
else
if KKO>0 then
set KZO=KZO+KKO*KXO
if KVO>0 then
if KKO*KXO>KVO then
call SetUnitState(P7I,UNIT_STATE_MANA,KWO+KVO)
set KVO=0
else
if KVO>(KXO-KWO)then
set KVO=KVO-(KXO-KWO)
call SetUnitState(P7I,UNIT_STATE_MANA,KXO)
else
set KVO=KVO-KKO*KXO
call SetUnitState(P7I,UNIT_STATE_MANA,KWO+KKO*KXO)
endif
endif
endif
endif
set KYO=KJO
call SaveReal(LY,(S5I),(668),((KYO)*1.0))
call SaveReal(LY,(S5I),(529),((KZO)*1.0))
call SaveReal(LY,(S5I),(530),((KVO)*1.0))
endif
set t=null
set P7I=null
return false
endfunction
function KLO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real KMO=GetUnitState(P7I,UNIT_STATE_LIFE)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real KWO=GetUnitState(P7I,UNIT_STATE_MANA)
if KMO>151 then
call SetUnitState(P7I,UNIT_STATE_LIFE,KMO-150)
else
call SetUnitState(P7I,UNIT_STATE_LIFE,1)
endif
call U5I("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",P7I,"origin",2)
call SetUnitState(P7I,UNIT_STATE_MANA,KWO+150)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function KHO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(242),((GetUnitState(P7I,UNIT_STATE_MANA))*1.0))
call SaveReal(LY,(S5I),(529),((0)*1.0))
call SaveReal(LY,(S5I),(668),((GetUnitStatePercent(P7I,UNIT_STATE_MANA,UNIT_STATE_MAX_MANA))*1.0))
if(KWO+150)>GetUnitState(P7I,UNIT_STATE_MAX_MANA)then
call SaveReal(LY,(S5I),(530),(((KWO+150)-GetUnitState(P7I,UNIT_STATE_MAX_MANA))*1.0))
endif
set P7I=null
endfunction
function KNO takes nothing returns nothing
if GetSpellAbilityId()==1093751096 then
call KLO()
endif
endfunction
function KSO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x
local real y
if TII(GetOwningPlayer(P7I))then
set x=GetRectCenterX(O4)
set y=GetRectCenterY(O4)
else
set x=GetRectCenterX(S3)
set y=GetRectCenterY(S3)
endif
call IssuePointOrder(P7I,"move",x,y)
set P7I=null
endfunction
function KTO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x
local real y
if TII(GetOwningPlayer(P7I))then
set x=-4533
set y=1158
else
set x=3190
set y=-35
endif
call IssuePointOrder(P7I,"move",x,y)
set P7I=null
endfunction
function KRO takes nothing returns nothing
if GetSpellAbilityId()==1093747027 then
call KSO()
elseif GetSpellAbilityId()==1093815123 then
call KTO()
endif
endfunction
function KPO takes nothing returns nothing
local unit SFI=GetTriggerUnit()
call SaveBoolean(LY,(GetHandleId(SFI)),(129),(true))
set SFI=null
endfunction
function KQO takes nothing returns nothing
if(GetSpellAbilityId()==1093681720 or GetSpellAbilityId()==1093752645)and NNI(GetTriggerUnit())==true then
call KPO()
endif
endfunction
function KUO takes integer id returns boolean
return id==1969711215 or id==1970169187 or id==1702061422 or id==1701081721 or id==1966092337 or id==1966092338 or id==1697656918 or id==1697656919 or id==1700946284 or id==1697657398 or id==1970107511 or id==1966092370
endfunction
function L0O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>8 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call P6I(P7I,P8I,3,150.0/8.0)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function LIO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and(KUO(GetUnitTypeId(GetEventDamageSource()))==false and(GetOwningPlayer(GetEventDamageSource())!=DO or GetUnitTypeId(GetEventDamageSource())==1848651852)and GetEventDamage()>0)or NY0==true)then
call UnitRemoveAbility(P8I,1110459207)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function L1O takes nothing returns nothing
local trigger t
local integer S5I
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01
local integer i=0
local boolean FW1=false
local boolean K3O=false
local integer EY1
if P8I==null then
set P8I=GetTriggerUnit()
endif
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
loop
exitwhen i>5 or K3O
if F01(UnitItemInSlot(P7I,i))==X60 then
set EY1=GetItemCharges(UnitItemInSlot(P7I,i))
if EY1>0 then
set FW1=true
set EY1=EY1-1
else
set K3O=true
set FW1=false
endif
endif
set i=i+1
endloop
if FW1==true then
set t=CreateTrigger()
set S5I=GetHandleId(t)
if IsUnitAlly(P8I,GetOwningPlayer(P7I))==true then
call UnitAddAbility(I01,1093750093)
call IssueTargetOrderById(I01,852609,P8I)
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,NK0,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function LIO))
else
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\Urn_Enemy.mdx",P8I,"overhead")))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function L0O))
endif
endif
set P7I=null
set I01=null
set P8I=null
set t=null
endfunction
function LOO takes nothing returns nothing
if GetSpellAbilityId()==1093750095 then
call L1O()
endif
endfunction
function L2O takes nothing returns nothing
local integer i=0
loop
exitwhen i>16
set NJ0[i]=false
set i=i+1
endloop
endfunction
function L3O takes nothing returns nothing
if BJ1(GetEnumUnit())==false then
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093753432,false)
call AX1(GetEnumUnit(),1093753432,1,NL0,1110459480)
endif
endfunction
function L4O takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer i=0
local boolean FW1=false
local boolean K3O=false
local integer EY1
local group g
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),925,Condition(function CM1))
call ForGroup(g,function L3O)
call NSI(g)
set g=null
set P7I=null
endfunction
function L5O takes nothing returns nothing
if GetSpellAbilityId()==1093753431 then
call L4O()
endif
endfunction
function L6O takes unit u returns boolean
local integer SSI=GetUnitTypeId(u)
return SSI==1211122232 or SSI==1848657482 or SSI==1848657481 or SSI==1848657462 or SSI==1848657480 or SSI==1966092371
endfunction
function L7O takes unit u returns boolean
local integer id=GetUnitTypeId(u)
return P3I(id)
endfunction
function L8O takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),NM0)and IC1(GetFilterUnit())==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true or L7O(GetFilterUnit()))and L6O(GetFilterUnit())==false
endfunction
function L9O takes unit P7I returns boolean
local group g=NTI()
local boolean FW1
set NM0=GetOwningPlayer(P7I)
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1050,Condition(function L8O))
set FW1=FirstOfGroup(g)!=null
call NSI(g)
return FW1
endfunction
function LAO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g
local integer NPI
local boolean LBO
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetAttacker()==P7I then
call UnitRemoveAbility(P7I,1093808204)
call UnitRemoveAbility(P7I,1093808211)
call UnitRemoveAbility(P7I,1110459698)
call UnitRemoveAbility(P7I,1110456665)
call FV1(P7I)
if((LoadInteger(LY,(GetHandleId((P7I))),((4302))))==1)==false then
call UnitSetUsesAltIcon(P7I,false)
endif
call SaveInteger(LY,(GetHandleId((P7I))),((4420)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
set LBO=(LoadBoolean(LY,(S5I),(671)))
set NPI=(LoadInteger(LY,(S5I),(34)))
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
set g=NTI()
set NM0=GetOwningPlayer(P7I)
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1050,Condition(function L8O))
if GetUnitAbilityLevel(P7I,1110456665)>0 then
call SaveBoolean(LY,(S5I),(671),(true))
elseif LBO then
call SaveBoolean(LY,(S5I),(671),(false))
call UnitRemoveAbility(P7I,1093808204)
call IA1(P7I,1093808204)
endif
if NPI>350 or FirstOfGroup(g)!=null then
call UnitRemoveAbility(P7I,1093808204)
call UnitRemoveAbility(P7I,1093808211)
call UnitRemoveAbility(P7I,1110459698)
call UnitRemoveAbility(P7I,1110456665)
call FV1(P7I)
if((LoadInteger(LY,(GetHandleId((P7I))),((4302))))==1)==false and((LoadInteger(LY,(GetHandleId((P7I))),((4421))))==1)==false then
call UnitSetUsesAltIcon(P7I,false)
endif
call SaveInteger(LY,(GetHandleId((P7I))),((4420)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call NSI(g)
endif
set t=null
set P7I=null
set g=null
return false
endfunction
function LCO takes nothing returns nothing
local unit P7I=GetEnumUnit()
local trigger t
local integer S5I
if T2I(GetOwningPlayer(P7I))and L9O(P7I)==false then
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))==false and P0I(GetLocalPlayer())==false then
call UnitSetUsesAltIcon(P7I,true)
call FY1(P7I)
endif
call IA1(P7I,1093808204)
call UnitMakeAbilityPermanent(P7I,true,1093808204)
if BJ1(P7I)==false then
call IA1(P7I,1093808211)
call UnitMakeAbilityPermanent(P7I,true,1093808211)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808211,false)
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveInteger(LY,(S5I),(34),(0))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveBoolean(LY,(S5I),(671),(false))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\SmokeOfDeceit.mdx",P7I,"chest")))
call SaveInteger(LY,(GetHandleId((P7I))),((4420)),(1))
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterTimerEvent(t,.1,true)
call TriggerAddCondition(t,Condition(function LAO))
set t=null
endif
set P7I=null
endfunction
function LDO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1225,Condition(function CL1))
call ForGroup(g,function LCO)
call NSI(g)
set P7I=null
set g=null
endfunction
function LEO takes nothing returns nothing
if GetSpellAbilityId()==1093808182 then
call LDO()
endif
endfunction
function InitTrig_Smoke_of_Deceit takes nothing returns nothing
call SetAltMinimapIcon("war3mapImported\\black.blp")
endfunction
function LFO takes nothing returns nothing
if BJ1(GetEnumUnit())==false then
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093810246,false)
call AX1(GetEnumUnit(),1093810246,1,NN0,1110459729)
endif
endfunction
function LGO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
call GroupEnumUnitsInRange(g,x,y,600+25,Condition(function C51))
call ForGroup(g,function LFO)
call NSI(g)
call DestroyEffect(AddSpecialEffect("war3mapImported\\DarkLightningNova.mdx",x,y))
set P7I=null
set g=null
endfunction
function LHO takes nothing returns nothing
if GetSpellAbilityId()==1093810244 then
call LGO()
endif
endfunction
function LZO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(745)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or(TimerGetElapsed(M))>LVO then
call UnitRemoveAbility(P8I,1110459989)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetUnitAbilityLevel(P8I,1110459989)==0 then
call IssueTargetOrder(I01,"curse",P8I)
endif
set t=null
set P8I=null
set I01=null
return false
endfunction
function CripplingStaff takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local real d=NS0
local trigger t
local integer S5I
if RKI(P8I)==false then
call IA1(I01,1093814861)
call IssueTargetOrder(I01,"curse",P8I)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093813571,false)
call AX1(P8I,1093813571,1,d,1110459957)
else
call IA1(I01,1093814861)
call SetUnitAbilityLevel(I01,1093814861,2)
call IssueTargetOrder(I01,"curse",P8I)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093813571,false)
call AX1(P8I,1093813571,1,d,1110459957)
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function LZO))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(GetHandleId(P8I)),(745),(((TimerGetElapsed(M))+d)*1.0))
set P7I=null
set P8I=null
set I01=null
set t=null
endfunction
function LWO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093815091)
call IssueTargetOrder(I01,"slow",P8I)
set P7I=null
set P8I=null
set I01=null
endfunction
function LXO takes nothing returns nothing
if GetSpellAbilityId()==1093813569 and NNI(GetSpellTargetUnit())==false then
call LWO()
endif
endfunction
function LYO takes unit P7I returns nothing
if IsUnitIllusion(P7I)or MA0[GetPlayerId(GetOwningPlayer(P7I))]<=0 or(IsUnitType(P7I,UNIT_TYPE_HERO)==false and B61(P7I)==false)then
return
elseif EA1(P7I,FR0[Z00])==true or EA1(P7I,FR0[ZI0])==true then
call HFO(P7I)
endif
endfunction
function LJO takes nothing returns boolean
call LYO(GetAttacker())
call LYO(GetTriggerUnit())
return false
endfunction
function LKO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or NPI==20 or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetEventDamage()>20)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+12.5)
endif
set t=null
set P7I=null
return false
endfunction
function LLO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function LKO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\TranquilBootsHeal.mdx",P7I,"origin")))
set P7I=null
set t=null
endfunction
function LMO takes nothing returns nothing
if GetSpellAbilityId()==1093815089 then
call LLO()
endif
endfunction
function LNO takes nothing returns boolean
local unit IYO=GetSummonedUnit()
local integer i=0
local item HZO
local integer E81
if IsUnitIllusion(IYO)==true then
loop
exitwhen i>5
set HZO=UnitItemInSlot(IYO,i)
set E81=F01(HZO)
if E81==Z00 then
call DisableTrigger(LY0)
set JK=GetItemPlayer(HZO)
call RemoveItem(HZO)
set VK=FD1(IYO,FR0[ZI0],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
set i=i+1
endloop
endif
set IYO=null
return false
endfunction
function LTO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01
if GetUnitX(P7I)!=x or GetUnitY(P7I)!=y or(GetUnitAbilityLevel(P7I,1110460237)==0 and GetTriggerEvalCount(t)>R2I(0.3/.05))or GetTriggerEvalCount(t)>R2I(NT0/.05)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveInteger(LY,(GetHandleId((P7I))),((4337)),(2))
call UnitRemoveAbility(P7I,1110460236)
call UnitRemoveAbility(P7I,1110460237)
call UnitRemoveAbility(P7I,1093816883)
elseif GetTriggerEvalCount(t)==R2I(0.3/.05)then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitAddAbility(I01,1093816882)
call IssueTargetOrder(I01,"invisibility",P7I)
call SaveInteger(LY,(GetHandleId((P7I))),((4337)),(2))
set I01=null
endif
set t=null
set P7I=null
return false
endfunction
function LRO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer LPO=(LoadInteger(LY,(S5I),(375)))
local integer id=GetUnitCurrentOrder(P7I)
if GetUnitX(P7I)!=x or GetUnitY(P7I)!=y then
call IssueImmediateOrder(P7I,"holdposition")
call SaveReal(LY,(LPO),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(LPO),(7),((GetUnitY(P7I))*1.0))
elseif id==0 or id==851973 or id==851983 or id==851971 then
call IssueImmediateOrder(P7I,"holdposition")
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function LQO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local trigger t2=CreateTrigger()
local integer KAO=GetHandleId(t2)
local string LUO="Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
if GetLocalPlayer()!=GetOwningPlayer(P7I)then
set LUO=""
endif
call IA1(P7I,1093816883)
call SaveInteger(LY,(GetHandleId((P7I))),((4337)),(1))
call DestroyEffect(AddSpecialEffectTarget(LUO,P7I,"chest"))
call DestroyEffect(AddSpecialEffectTarget(LUO,P7I,"hand left"))
call DestroyEffect(AddSpecialEffectTarget(LUO,P7I,"hand right"))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function LTO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call TriggerRegisterTimerEvent(t2,0.01,false)
call TriggerAddCondition(t2,Condition(function LRO))
call SaveUnitHandle(LY,(KAO),(2),(P7I))
call SaveReal(LY,(KAO),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(KAO),(7),((GetUnitY(P7I))*1.0))
call SaveInteger(LY,(KAO),(375),(S5I))
set P7I=null
set t=null
endfunction
function M0O takes nothing returns nothing
if GetSpellAbilityId()==1093816881 and((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4337))))==1)==false then
call LQO()
endif
endfunction
function MIO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetUnitAbilityLevel(P7I,1113875828)==0 then
call UnitRemoveAbility(P7I,1093817162)
call UnitRemoveAbility(P7I,1110460242)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if BU1(P7I)==true then
if GetUnitAbilityLevel(P7I,1110460242)==0 then
call IA1(P7I,1093817162)
endif
else
if GetUnitAbilityLevel(P7I,1110460242)>0 then
call UnitRemoveAbility(P7I,1093817162)
call UnitRemoveAbility(P7I,1110460242)
endif
endif
endif
set P7I=null
set t=null
return false
endfunction
function M1O takes nothing returns nothing
local unit P7I=GetEnumUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function MIO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function MOO takes nothing returns nothing
local group g=NTI()
local unit P7I=GetTriggerUnit()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1050+25,Condition(function D01))
call ForGroup(g,function M1O)
call NSI(g)
set g=null
set P7I=null
endfunction
function M2O takes nothing returns nothing
if GetSpellAbilityId()==1095332962 then
call MOO()
endif
endfunction
function M3O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real H71=(LoadReal(LY,(S5I),(6)))
local real H81=(LoadReal(LY,(S5I),(7)))
call H61(P7I,H71,H81,650)
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
if GetUnitAbilityLevel(P7I,1110456116)==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function M4O takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.005,true)
call TriggerAddCondition(t,Condition(function M3O))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
set t=null
set P7I=null
endfunction
function M5O takes nothing returns nothing
if GetSpellAbilityId()==1093683802 then
call M4O()
endif
endfunction
function M6O takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer M7O=0
local integer M8O=0
local item EJ1
local integer M9O
local integer M5I
local unit MAO
if GetSpellAbilityId()==1093818185 then
set M9O=1868921189
set M5I=60*4
set M7O=1227896136
set M8O=ZB0
elseif GetSpellAbilityId()==1093818184 then
set M9O=1865429044
set M5I=60*7
set M7O=1227896135
set M8O=ZA0
endif
if(M7O!=0)then
if P8I!=null then
if EQ1(P8I)>0 then
call DisableTrigger(LY0)
set EJ1=UnitAddItemById(P8I,M7O)
call SetItemPlayer(EJ1,GetOwningPlayer(P8I),false)
call SetItemUserData(EJ1,1)
call SetItemCharges(EJ1,1)
call EnableTrigger(LY0)
else
call EK1(FT0[M8O],GetUnitX(P8I),GetUnitY(P8I),GetOwningPlayer(P8I),true,1)
endif
else
set MAO=CreateUnit(GetOwningPlayer(P7I),M9O,GetSpellTargetX(),GetSpellTargetY(),0)
call UnitApplyTimedLife(MAO,1112820804,M5I)
call IA1(MAO,1093687362)
call II1(GetOwningPlayer(P7I),UF,GetSpellTargetX(),GetSpellTargetY())
if IsUnitInRegion(R60,MAO)then
call H1O(P7I,MAO)
call RemoveUnit(MAO)
else
call GUO(MAO,P7I)
if GetUnitTypeId(MAO)==1868921189 then
call I41(GetOwningPlayer(MAO),12,GetUnitX(MAO),GetUnitY(MAO),150)
endif
endif
endif
endif
set P7I=null
set EJ1=null
endfunction
function MBO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local item AO1=ES1(P7I,FR0[WG0])
local integer FF1
if AO1!=null and(GetUnitTypeId(P7I)!=1311788365 or IC1(P7I)==false)then
call DisableTrigger(LY0)
set FF1=A11(P7I,AO1)
set JK=GetItemPlayer(AO1)
call RemoveItem(AO1)
set VK=FD1(P7I,FR0[WF0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
call UnitRemoveAbility(P7I,1093873753)
call UnitRemoveAbility(P7I,1110460492)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set P7I=null
set t=null
return false
endfunction
function MCO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function MBO))
call TriggerRegisterTimerEvent(t,8,false)
call IA1(P7I,1093873753)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093873753,false)
set t=null
set P7I=null
endfunction
function MDO takes nothing returns nothing
if GetSpellAbilityId()==1093873990 then
call MCO()
endif
endfunction
function MEO takes nothing returns nothing
if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false then
call P6I(GetTriggerUnit(),GetSpellTargetUnit(),2,100)
endif
endfunction
function MFO takes nothing returns nothing
if GetSpellAbilityId()==1093748292 then
if GetUnitTypeId(GetSpellTargetUnit())==1865429044 or GetUnitTypeId(GetSpellTargetUnit())==1868921189 then
call MEO()
endif
endif
endfunction
function MGO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call SetItemCharges(ES1(P7I,FR0[WM0]),GetItemCharges(ES1(P7I,FR0[WM0]))+1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetUnitTypeId(P7I)==1315988077 then
set YXI=P7I
endif
call KillUnit(P7I)
set P7I=null
set t=null
return false
endfunction
function MHO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerAddCondition(t,Condition(function MGO))
call TriggerRegisterTimerEvent(t,0.01,false)
set t=null
set P7I=null
endfunction
function MZO takes nothing returns nothing
if GetSpellAbilityId()==1093817419 then
call MHO()
endif
endfunction
function MVO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit I01
if GetUnitX(P7I)!=x or GetUnitY(P7I)!=y or(GetUnitAbilityLevel(P7I,1110460216)==0 and GetTriggerEvalCount(t)>R2I(1.5/.05))then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveInteger(LY,(GetHandleId((P7I))),((4330)),(2))
call UnitRemoveAbility(P7I,1110460214)
call UnitRemoveAbility(P7I,1110460216)
elseif GetTriggerEvalCount(t)==R2I(1.5/.05)then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitAddAbility(I01,1093815861)
call IssueTargetOrder(I01,"invisibility",P7I)
call SaveInteger(LY,(GetHandleId((P7I))),((4330)),(2))
set I01=null
endif
set t=null
set P7I=null
return false
endfunction
function MWO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer LPO=(LoadInteger(LY,(S5I),(375)))
local integer id=GetUnitCurrentOrder(P7I)
if GetUnitX(P7I)!=x or GetUnitY(P7I)!=y then
call IssueImmediateOrder(P7I,"holdposition")
call SaveReal(LY,(LPO),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(LPO),(7),((GetUnitY(P7I))*1.0))
elseif id==0 or id==851973 or id==851983 or id==851971 then
call IssueImmediateOrder(P7I,"holdposition")
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function MXO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local trigger t2=CreateTrigger()
local integer KAO=GetHandleId(t2)
local string LUO="Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
if GetLocalPlayer()!=GetOwningPlayer(P7I)then
set LUO=""
endif
call SaveInteger(LY,(GetHandleId((P7I))),((4330)),(1))
call DestroyEffect(AddSpecialEffectTarget(LUO,P7I,"chest"))
call DestroyEffect(AddSpecialEffectTarget(LUO,P7I,"hand left"))
call DestroyEffect(AddSpecialEffectTarget(LUO,P7I,"hand right"))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function MVO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call TriggerRegisterTimerEvent(t2,0.01,false)
call TriggerAddCondition(t2,Condition(function MWO))
call SaveUnitHandle(LY,(KAO),(2),(P7I))
call SaveReal(LY,(KAO),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(KAO),(7),((GetUnitY(P7I))*1.0))
call SaveInteger(LY,(KAO),(375),(S5I))
set P7I=null
set t=null
endfunction
function MYO takes nothing returns nothing
if GetSpellAbilityId()==1093815857 and((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4330))))==1)==false then
call MXO()
endif
endfunction
function MJO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer MKO=(LoadInteger(LY,(S5I),(34)))
if(GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(t)>=MKO or RKI(P8I)==true)then
call BP1(P8I)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function MLO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=2
local real DC1=4.5
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if IsUnitType(P8I,UNIT_TYPE_MELEE_ATTACKER)==true then
set SUI=1
set DC1=3
endif
call BT1(P8I)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function MJO))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(34),(R2I(DC1*10)))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl",P8I,"overhead")))
set P7I=null
set P8I=null
set I01=null
endfunction
function MMO takes nothing returns nothing
if GetSpellAbilityId()==1093815092 and NNI(GetSpellTargetUnit())==false then
call MLO()
endif
endfunction
function MNO takes integer SUI,unit P7I,unit P8I returns nothing
set JJI=true
call P6I(P7I,P8I,1,300+100*SUI)
set JJI=false
endfunction
function MSO takes nothing returns nothing
local integer MTO=0
if GetSpellAbilityId()==1093677647 then
set MTO=1
endif
if GetSpellAbilityId()==1093679193 then
set MTO=2
endif
if GetSpellAbilityId()==1093679194 then
set MTO=3
endif
if GetSpellAbilityId()==1093679408 then
set MTO=4
endif
if GetSpellAbilityId()==1093679410 then
set MTO=5
endif
if MTO>0 and NNI(GetSpellTargetUnit())==false then
call MNO(MTO,GetTriggerUnit(),GetSpellTargetUnit())
endif
endfunction
function MRO takes nothing returns nothing
if GetSpellAbilityId()==1093814353 then
call IKO(GetTriggerUnit(),GetSpellTargetUnit())
endif
endfunction
function MPO takes unit P7I,integer RII,real x,real y returns nothing
local unit MQO=CreateUnit(GetOwningPlayer(P7I),RII,x,y,0)
call UnitApplyTimedLife(MQO,1112820806,15)
set MQO=null
endfunction
function MUO takes nothing returns nothing
local unit MQO
local real x
local real y
if GetSpellAbilityId()==1093753420 then
set x=GetDestructableX(GetSpellTargetDestructable())
set y=GetDestructableY(GetSpellTargetDestructable())
call MPO(GetTriggerUnit(),1848659021,x,y)
elseif GetSpellAbilityId()==1093753421 then
set x=GetDestructableX(GetSpellTargetDestructable())
set y=GetDestructableY(GetSpellTargetDestructable())
call MPO(GetTriggerUnit(),1848659022,x,y)
endif
set MQO=null
endfunction
function N0O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P7I,1093873720)
call UnitRemoveAbility(P8I,1093873720)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function NIO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P7I,1093873720)
call UnitRemoveAbility(P8I,1093873721)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function N1O takes nothing returns nothing
local trigger t
local integer S5I
if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,7,false)
call TriggerAddCondition(t,Condition(function N0O))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveUnitHandle(LY,(S5I),(17),(GetSpellTargetUnit()))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetSpellTargetUnit(),"chest")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetTriggerUnit(),"chest")))
call UnitAddAbility(GetTriggerUnit(),1093873720)
call UnitAddAbility(GetSpellTargetUnit(),1093873720)
call UnitMakeAbilityPermanent(GetTriggerUnit(),true,1093873720)
call UnitMakeAbilityPermanent(GetSpellTargetUnit(),true,1093873720)
else
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,7,false)
call TriggerAddCondition(t,Condition(function NIO))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveUnitHandle(LY,(S5I),(17),(GetSpellTargetUnit()))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetSpellTargetUnit(),"chest")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetTriggerUnit(),"chest")))
call UnitAddAbility(GetTriggerUnit(),1093873720)
call UnitAddAbility(GetSpellTargetUnit(),1093873721)
call UnitMakeAbilityPermanent(GetTriggerUnit(),true,1093873720)
call UnitMakeAbilityPermanent(GetSpellTargetUnit(),true,1093873721)
endif
set t=null
endfunction
function NOO takes nothing returns nothing
if GetSpellAbilityId()==1093753417 then
call N1O()
endif
endfunction
function N2O takes nothing returns nothing
local unit SWI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01
if GetSpellTargetUnit()==null then
if GetSpellAbilityId()==1095331948 then
set I01=CreateUnit(GetOwningPlayer(SWI),1697656901,GetUnitX(SWI),GetUnitY(SWI),0)
call UnitAddAbility(I01,1093752641)
call IssueTargetOrderById(I01,852609,SWI)
set I01=null
elseif GetSpellAbilityId()==1095331954 then
set I01=CreateUnit(GetOwningPlayer(SWI),1697656901,GetUnitX(SWI),GetUnitY(SWI),0)
call UnitAddAbility(I01,1095331954)
call IssueTargetOrderById(I01,852609,SWI)
set I01=null
endif
endif
set SWI=null
set P8I=null
endfunction
function N3O takes nothing returns nothing
if GetSpellAbilityId()==1095331948 or GetSpellAbilityId()==1095331954 then
call N2O()
endif
endfunction
function N4O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(34)))
if(GetTriggerEventId()==EVENT_UNIT_DEATH and GetKillingUnit()==P7I)or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetUnitAbilityLevel(P8I,1110459731)>0)then
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl",GetUnitX(P8I),GetUnitY(P8I)))
call AddHeroXP(P7I,R2I(SQI(SUI)*2.5),true)
call OL1(GetOwningPlayer(P7I),P8I,190)
set EL0[GetPlayerId(GetOwningPlayer(P7I))]=EL0[GetPlayerId(GetOwningPlayer(P7I))]+190
set EK0[GetPlayerId(GetOwningPlayer(P7I))]=EK0[GetPlayerId(GetOwningPlayer(P7I))]+190
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(P8I)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function N5O takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitLevel(P8I)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(34),(SUI))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function N4O))
set t=null
set P7I=null
set P8I=null
endfunction
function N6O takes nothing returns nothing
if GetSpellAbilityId()==1093810265 and Y5O(GetSpellTargetUnit())==false then
call N5O()
endif
endfunction
function N7O takes nothing returns nothing
call SetUnitState(GetEnumUnit(),UNIT_STATE_MANA,GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)+135)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl",GetEnumUnit(),"origin"))
endfunction
function N8O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),25+600,Condition(function CT1))
call ForGroup(g,function N7O)
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set g=null
set P7I=null
set t=null
return false
endfunction
function N9O takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g
local trigger t
if GetSpellAbilityId()==1093684023 then
if GetUnitTypeId(P7I)!=1211117642 then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function N8O))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
set t=null
elseif GetUnitTypeId(P7I)==1211117642 then
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+25)
endif
endif
set P7I=null
endfunction
function NAO takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())==1697656901 then
return false
endif
call VRO()
call WBO()
call X1O()
call XGO()
call Y3O()
call YCO()
call YFO()
call YWO()
call YJO()
call YDO()
call YPO()
call JIO()
call J5O()
call JEO()
call J8O()
call JKO()
call JHO()
call HCO()
call HAO()
call JQO()
call JUO()
call K1O()
call K4O()
call KGO()
call KRO()
call X7O()
call YRO()
call KQO()
call LOO()
call KNO()
call KDO()
call N9O()
call N6O()
call N3O()
call NOO()
call MUO()
call L5O()
call LEO()
call LHO()
call LXO()
call MRO()
call MSO()
call LMO()
call MMO()
call MYO()
call MZO()
call M0O()
call M2O()
call MFO()
call M6O()
call M5O()
call YNO()
call MDO()
if GetSpellAbilityId()==1093815095 and NNI(GetSpellTargetUnit())==false then
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\LevelerStunFX.mdx",GetSpellTargetUnit(),"head"))
endif
return false
endfunction
function NCO takes unit SFI returns nothing
call SetUnitState(SFI,UNIT_STATE_LIFE,GetUnitState(SFI,UNIT_STATE_MAX_LIFE))
call SetUnitState(SFI,UNIT_STATE_MANA,GetUnitState(SFI,UNIT_STATE_MAX_MANA))
endfunction
function NDO takes unit SFI,real x,real y returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(SFI))
local unit W51=(LoadUnitHandle(LY,(S5I),(700)))
local unit W61=(LoadUnitHandle(LY,(S5I),(701)))
local unit W71=(LoadUnitHandle(LY,(S5I),(702)))
local unit W81=(LoadUnitHandle(LY,(S5I),(703)))
set NR0=true
if W51!=null then
call ReviveHero(W51,x,y,true)
call NCO(W51)
call VS1(W51)
call SetUnitX(W51,x)
call SetUnitY(W51,y)
endif
if W61!=null then
call ReviveHero(W61,x,y,true)
call NCO(W61)
call VS1(W61)
call SetUnitX(W61,x)
call SetUnitY(W61,y)
endif
if W71!=null then
call ReviveHero(W71,x,y,true)
call NCO(W71)
call VS1(W71)
call SetUnitX(W71,x)
call SetUnitY(W71,y)
endif
if W81!=null then
call ReviveHero(W81,x,y,true)
call NCO(W81)
call VS1(W81)
call SetUnitX(W81,x)
call SetUnitY(W81,y)
endif
set W51=null
set W61=null
set W71=null
set W81=null
endfunction
function NEO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
call NCO(SFI)
call VS1(SFI)
call ClearSelectionForPlayer(GetOwningPlayer(SFI))
call SelectUnitAddForPlayer(SFI,GetOwningPlayer(SFI))
if GetUnitTypeId(SFI)==1211117641 then
call NDO(SFI,GetUnitX(SFI),GetUnitY(SFI))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function NFO takes unit SFI,real x,real y returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(SFI))
local unit W51=(LoadUnitHandle(LY,(S5I),(700)))
local unit W61=(LoadUnitHandle(LY,(S5I),(701)))
local unit W71=(LoadUnitHandle(LY,(S5I),(702)))
local unit W81=(LoadUnitHandle(LY,(S5I),(703)))
call DisableTrigger(EG)
if W51!=null then
call SetUnitX(W51,x)
call SetUnitY(W51,y)
call KillUnit(W51)
endif
if W61!=null then
call SetUnitX(W61,x)
call SetUnitY(W61,y)
call KillUnit(W61)
endif
if W71!=null then
call SetUnitX(W71,x)
call SetUnitY(W71,y)
call KillUnit(W71)
endif
if W81!=null then
call SetUnitX(W81,x)
call SetUnitY(W81,y)
call KillUnit(W81)
endif
call EnableTrigger(EG)
set W51=null
set W61=null
set W71=null
endfunction
function NGO takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local real x
local real y
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call FL1("AegisOff",GetPlayerId(GetOwningPlayer(SFI)))
if GetUnitTypeId(SFI)==1211117641 then
call NFO(SFI,GetUnitX(SFI),GetUnitY(SFI))
endif
set FW0=null
call TriggerRegisterTimerEvent(t,5,false)
call TriggerAddCondition(t,Condition(function NEO))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SCI(SFI,4304,5)
set t=null
set SFI=null
endfunction
function NHO takes nothing returns nothing
if F01(GetManipulatedItem())==VL0 then
call NGO()
endif
endfunction
function NZO takes nothing returns nothing
local unit SWI=GetTriggerUnit()
local item AO1=GetManipulatedItem()
local integer E81=F01(AO1)
local integer FF1
call DisableTrigger(LY0)
if GetUnitTypeId(SWI)!=1211117642 then
if E81==ZL0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
call DisableTrigger(LY0)
set VK=FD1(SWI,FR0[ZM0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==ZM0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
call DisableTrigger(LY0)
set VK=FD1(SWI,FR0[ZN0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==ZN0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
call DisableTrigger(LY0)
set VK=FD1(SWI,FR0[ZL0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
endif
call EnableTrigger(LY0)
set SWI=null
set AO1=null
endfunction
function NVO takes nothing returns nothing
local unit SWI=GetTriggerUnit()
local item AO1=GetManipulatedItem()
local integer E81=F01(AO1)
local integer FF1
call DisableTrigger(LY0)
if E81==ZY0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[ZJ0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==ZJ0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[ZY0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if E81==Z20 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[Z30],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==Z30 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[Z20],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if E81==W60 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[W70],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==W70 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[W60],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if E81==WF0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[WG0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==WG0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[WF0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
call EnableTrigger(LY0)
set SWI=null
set AO1=null
endfunction
function NWO takes nothing returns nothing
local unit SWI=GetTriggerUnit()
local item AO1=GetManipulatedItem()
local integer E81=F01(AO1)
local integer FF1
call DisableTrigger(LY0)
if E81==W80 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[W90],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==W90 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[W80],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
call EnableTrigger(LY0)
set SWI=null
set AO1=null
endfunction
function NXO takes nothing returns nothing
local unit SWI=GetTriggerUnit()
local item AO1=GetManipulatedItem()
local integer E81=F01(AO1)
local integer FF1
call DisableTrigger(LY0)
if E81==V40 and GetItemCharges(AO1)==0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[V60],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==V50 and GetItemCharges(AO1)==0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[V70],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HP0 and GetItemCharges(AO1)==0 then
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[HQ0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
call EnableTrigger(LY0)
set SWI=null
set AO1=null
endfunction
function NYO takes nothing returns nothing
local unit SWI=GetTriggerUnit()
local item AO1=GetManipulatedItem()
local integer E81=F01(AO1)
local integer FF1
call DisableTrigger(LY0)
if E81==VZ0 then
call SaveInteger(LY,(GetHandleId(GetOwningPlayer(SWI))),(4345),(9))
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[VV0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call G8O(VK)
elseif E81==VV0 then
call SaveInteger(LY,(GetHandleId(GetOwningPlayer(SWI))),(4345),(8))
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[VW0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call G8O(VK)
elseif E81==VW0 then
call SaveInteger(LY,(GetHandleId(GetOwningPlayer(SWI))),(4345),(7))
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[VX0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call G8O(VK)
elseif E81==VX0 then
call SaveInteger(LY,(GetHandleId(GetOwningPlayer(SWI))),(4345),(6))
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[VY0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call G8O(VK)
elseif E81==VY0 then
call SaveInteger(LY,(GetHandleId(GetOwningPlayer(SWI))),(4345),(5))
set FF1=A11(SWI,AO1)
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(AO1)
set VK=FD1(SWI,FR0[VJ0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call G8O(VK)
endif
call EnableTrigger(LY0)
set SWI=null
set AO1=null
endfunction
function NJO takes nothing returns boolean
local integer FF1
local real VOO
call DisableTrigger(LY0)
if F01(GetManipulatedItem())==WT0 then
set FF1=A11(GetTriggerUnit(),GetManipulatedItem())
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(GetManipulatedItem())
set VK=FD1(GetTriggerUnit(),FR0[WS0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if F01(GetManipulatedItem())==WS0 then
set FF1=A11(GetTriggerUnit(),GetManipulatedItem())
set JK=GetItemPlayer(GetManipulatedItem())
call RemoveItem(GetManipulatedItem())
set VK=FD1(GetTriggerUnit(),FR0[WT0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
call EnableTrigger(LY0)
return false
endfunction
function PerseveranceDisassemble takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local player p=GetItemPlayer(GetManipulatedItem())
local item EJ1
call DisableTrigger(LY0)
call RemoveItem(GetManipulatedItem())
set EJ1=UnitAddItemById(SFI,FR0[HI0])
call SetItemPlayer(EJ1,p,false)
call SetItemUserData(EJ1,1)
set EJ1=UnitAddItemById(SFI,FR0[HB0])
call SetItemPlayer(EJ1,p,false)
call SetItemUserData(EJ1,1)
call EnableTrigger(LY0)
set SFI=null
set p=null
set EJ1=null
endfunction
function NKO takes nothing returns nothing
if GetItemTypeId(GetManipulatedItem())==FR0[ZV0]then
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848657713))
endif
endfunction
function NLO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if VBO(P7I)then
call F71(P7I,1227901005)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveBoolean(LY,(GetHandleId(P7I)),(129),(false))
set t=null
set P7I=null
return false
endfunction
function NMO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local item AO1=GetManipulatedItem()
local integer E81=F01(AO1)
local trigger t
if(E81==VM0 or E81==VN0)and(LoadBoolean(LY,(GetHandleId(P7I)),(129)))==true then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.41,false)
call TriggerAddCondition(t,Condition(function NLO))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
set t=null
endif
set P7I=null
set AO1=null
endfunction
function NNO takes nothing returns boolean
local real x
local real y
local real a
call NVO()
call NWO()
call NZO()
call W0O()
call NHO()
call NJO()
call NKO()
call NYO()
call NXO()
call NMO()
return false
endfunction
function NTO takes nothing returns boolean
return GetOwningPlayer(GetTriggerUnit())==DO
endfunction
function NRO takes nothing returns nothing
call SaveInteger(LY,(400+GetPlayerId(GetOwningPlayer(GetKillingUnit()))),(79),((LoadInteger(LY,(400+GetPlayerId(GetOwningPlayer(GetKillingUnit()))),(79)))+1))
endfunction
function NQO takes nothing returns nothing
local location BFO=GetRectCenter(P4)
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
endfunction
function InitTrig_Spawn_Roshan takes nothing returns nothing
call NQO()
endfunction
function NUO takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==BO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",U0)
elseif GetOwningPlayer(GetTriggerUnit())==CO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",II)
endif
return false
endfunction
function SIO takes nothing returns nothing
set SI=SI+1
endfunction
function SOO takes nothing returns nothing
set NI=NI+1
endfunction
function S3O takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==BO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",BI)
endif
return false
endfunction
function S6O takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==CO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",BI)
endif
return false
endfunction
function S8O takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==BO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",CI)
endif
return false
endfunction
function SAO takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==CO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",CI)
endif
return false
endfunction
function SCO takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==BO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",DI)
endif
return false
endfunction
function SEO takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==CO[0]then
call IssuePointOrderLoc(GetTriggerUnit(),"attack",DI)
endif
return false
endfunction
function SGO takes nothing returns nothing
call AX1(GetEnumUnit(),1093817905,1,15,1110460466)
endfunction
function SHO takes nothing returns nothing
call AX1(GetEnumUnit(),1093817904,1,15,1110460465)
endfunction
function SZO takes group g returns nothing
if(TimerGetElapsed(M))<7*60 then
call ForGroup(g,function SGO)
endif
endfunction
function CreepMeetAdjustment2_Speed_Add takes nothing returns nothing
call AX1(GetEnumUnit(),1093817905,1,10,1110460466)
endfunction
function CreepMeetAdjustment2_Slow_Add takes nothing returns nothing
call AX1(GetEnumUnit(),1093817904,1,20,1110460465)
endfunction
function SVO takes group g returns nothing
if(TimerGetElapsed(M))<7*60 then
call ForGroup(g,function SHO)
endif
endfunction
function SWO takes nothing returns nothing
local integer i=1
local integer id
loop
exitwhen i>5
set id=GetPlayerId(BO[i])
call FL1("CSK"+I2S(id),A[id])
call FL1("CSD"+I2S(id),B[id])
call FL1("NK"+I2S(id),(LoadInteger(LY,(400+id),(79))))
set id=GetPlayerId(CO[i])
call FL1("CSK"+I2S(id),A[id])
call FL1("CSD"+I2S(id),B[id])
call FL1("NK"+I2S(id),(LoadInteger(LY,(400+id),(79))))
set i=i+1
endloop
endfunction
function SXO takes boolean SYO returns nothing
local unit u
local string SJO="stand work alternate"
local string SKO="stand work"
local string SLO="stand alternate"
local string SMO="stand"
set u=IZ0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SJO)
else
call SetUnitAnimation(u,SLO)
endif
endif
set u=IV0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SJO)
else
call SetUnitAnimation(u,SLO)
endif
endif
set u=IW0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SJO)
else
call SetUnitAnimation(u,SLO)
endif
endif
set u=IX0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SJO)
else
call SetUnitAnimation(u,SLO)
endif
endif
set u=IY0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SJO)
else
call SetUnitAnimation(u,SLO)
endif
endif
set u=IJ0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SJO)
else
call SetUnitAnimation(u,SLO)
endif
endif
set u=C80
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SKO)
else
call SetUnitAnimation(u,SMO)
endif
endif
set u=C90
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SKO)
else
call SetUnitAnimation(u,SMO)
endif
endif
set u=CA0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SKO)
else
call SetUnitAnimation(u,SMO)
endif
endif
set u=CB0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SKO)
else
call SetUnitAnimation(u,SMO)
endif
endif
set u=CC0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SKO)
else
call SetUnitAnimation(u,SMO)
endif
endif
set u=CD0
if IC1(u)==false then
if SYO then
call SetUnitAnimation(u,SKO)
else
call SetUnitAnimation(u,SMO)
endif
endif
endfunction
function SNO takes nothing returns boolean
call SXO(true)
return false
endfunction
function Trig_Spawn_Conditions takes nothing returns boolean
return true
if(INI)then
return ISI
endif
if(IQI)then
return IUI
endif
if(E2)then
return D2
endif
if QT0 then
return QR0
endif
if(N2)then
return I3
endif
if(K0)then
return PG0
endif
if(IAI)then
return IBI
endif
if(CN)then
return PW0
endif
return O0
endfunction
function SSO takes group STO,integer SRO returns nothing
local unit u
loop
set u=FirstOfGroup(STO)
exitwhen(u==null)
call GroupRemoveUnit(STO,u)
call SetUnitAbilityLevel(u,I2,SRO)
endloop
endfunction
function SPO takes nothing returns nothing
local boolean SQO=ModuloInteger(GetTriggerExecCount(ZG),7)==0
if R70 then
return
endif
call SXO(false)
if SQO then
call SWO()
endif
if GetTriggerExecCount(ZG)==1 and O2I==false then
call UnitResetCooldown(D30[1])
call UnitResetCooldown(D30[2])
call UnitResetCooldown(D30[3])
call UnitResetCooldown(D30[4])
call UnitResetCooldown(D30[5])
call UnitResetCooldown(D30[7])
call UnitResetCooldown(D30[8])
call UnitResetCooldown(D30[9])
call UnitResetCooldown(D30[10])
call UnitResetCooldown(D30[11])
call BK1(I70,false)
call BK1(I80,false)
call BK1(I90,false)
call BK1(BU0,false)
call BK1(C00,false)
call BK1(CI0,false)
elseif GetTriggerExecCount(ZG)==1 and O2I==true then
call BK1(I80,false)
call BK1(C00,false)
endif
if GetTriggerExecCount(ZG)==1 then
call EnableTrigger(EW0)
endif
if O2I==false and O7I==false then
if(HI)then
call CreateNUnitsAtLoc(NI,1969711215,CO[0],RI,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(NI,1966092337,CO[0],RI,bj_UNIT_FACING)
endif
call SZO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,2)
endif
if O6I==false then
if(ZI)then
call CreateNUnitsAtLoc(NI,1969711215,CO[0],TI,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(NI,1966092337,CO[0],TI,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,3)
endif
if O2I==false and O4I==false then
if(VI)then
call CreateNUnitsAtLoc(NI,1969711215,CO[0],PI,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(NI,1966092337,CO[0],PI,bj_UNIT_FACING)
endif
call SVO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,4)
endif
if O2I==false and O7I==false then
if(EI)then
call CreateNUnitsAtLoc(SI,1970169187,CO[0],I1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1966092338,CO[0],I1,bj_UNIT_FACING)
endif
call SZO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,2)
endif
if O6I==false then
if(FI)then
call CreateNUnitsAtLoc(SI,1970169187,CO[0],QI,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1966092338,CO[0],QI,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,3)
endif
if O2I==false and O4I==false then
if(GI)then
call CreateNUnitsAtLoc(SI,1970169187,CO[0],UI,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1966092338,CO[0],UI,bj_UNIT_FACING)
endif
call SVO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,4)
endif
if SQO==true then
if O2I==false and O7I==false then
if(EI)then
call CreateNUnitsAtLoc(SI,1970107511,CO[0],I1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1966092370,CO[0],I1,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,2)
endif
if O6I==false then
if(FI)then
call CreateNUnitsAtLoc(SI,1970107511,CO[0],QI,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1966092370,CO[0],QI,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,3)
endif
if O2I==false and O4I==false then
if(GI)then
call CreateNUnitsAtLoc(SI,1970107511,CO[0],UI,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1966092370,CO[0],UI,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,4)
endif
endif
if O2I==false and O7I==false then
if(JI)then
call CreateNUnitsAtLoc(NI,1702061422,BO[0],B1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(NI,1697656918,BO[0],B1,bj_UNIT_FACING)
endif
call SVO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,2)
endif
if O6I==false then
if(KI)then
call CreateNUnitsAtLoc(NI,1702061422,BO[0],O1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(NI,1697656918,BO[0],O1,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,3)
endif
if O2I==false and O4I==false then
if(LI)then
call CreateNUnitsAtLoc(NI,1702061422,BO[0],A1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(NI,1697656918,BO[0],A1,bj_UNIT_FACING)
endif
call SZO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,4)
endif
if O2I==false and O7I==false then
if(WI)then
call CreateNUnitsAtLoc(SI,1701081721,BO[0],E1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1697656919,BO[0],E1,bj_UNIT_FACING)
endif
call SVO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,2)
endif
if O6I==false then
if(XI)then
call CreateNUnitsAtLoc(SI,1701081721,BO[0],C1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1697656919,BO[0],C1,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,3)
endif
if O2I==false and O4I==false then
if(YI)then
call CreateNUnitsAtLoc(SI,1701081721,BO[0],D1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1697656919,BO[0],D1,bj_UNIT_FACING)
endif
call SZO(bj_lastCreatedGroup)
call SSO(bj_lastCreatedGroup,4)
endif
if SQO==true then
if O2I==false and O7I==false then
if(WI)then
call CreateNUnitsAtLoc(SI,1700946284,BO[0],E1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1697657398,BO[0],E1,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,2)
endif
if O6I==false then
if(XI)then
call CreateNUnitsAtLoc(SI,1700946284,BO[0],C1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1697657398,BO[0],C1,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,3)
endif
if O2I==false and O4I==false then
if(YI)then
call CreateNUnitsAtLoc(SI,1700946284,BO[0],D1,bj_UNIT_FACING)
else
call CreateNUnitsAtLoc(SI,1697657398,BO[0],D1,bj_UNIT_FACING)
endif
call SSO(bj_lastCreatedGroup,4)
endif
endif
endfunction
function T0O takes nothing returns nothing
set EI=false
call DisableTrigger(VG)
call FL1("Rax"+I2S(0)+I2S(0)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),1)
endfunction
function T1O takes nothing returns nothing
set FI=false
call DisableTrigger(WG)
call FL1("Rax"+I2S(0)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),1)
endfunction
function T2O takes nothing returns nothing
set GI=false
call DisableTrigger(XG)
call FL1("Rax"+I2S(0)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),1)
endfunction
function T4O takes nothing returns nothing
set HI=false
call DisableTrigger(YG)
call FL1("Rax"+I2S(0)+I2S(0)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),2)
endfunction
function T6O takes nothing returns nothing
set ZI=false
call DisableTrigger(JG)
call FL1("Rax"+I2S(0)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),2)
endfunction
function T8O takes nothing returns nothing
set VI=false
call DisableTrigger(KG)
call FL1("Rax"+I2S(0)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),2)
endfunction
function TAO takes nothing returns nothing
set WI=false
call DisableTrigger(LG)
call FL1("Rax"+I2S(1)+I2S(0)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),1)
endfunction
function TCO takes nothing returns nothing
set XI=false
call DisableTrigger(MG)
call FL1("Rax"+I2S(1)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),1)
endfunction
function TEO takes nothing returns nothing
set YI=false
call DisableTrigger(NG)
call FL1("Rax"+I2S(1)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),1)
endfunction
function TGO takes nothing returns nothing
set JI=false
call DisableTrigger(SG)
call FL1("Rax"+I2S(1)+I2S(0)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),2)
endfunction
function TZO takes nothing returns nothing
set KI=false
call DisableTrigger(TG)
call FL1("Rax"+I2S(1)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),2)
endfunction
function TWO takes nothing returns nothing
set LI=false
call DisableTrigger(RG)
call FL1("Rax"+I2S(1)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R6I(GetKillingUnit(),2)
endfunction
function TYO takes nothing returns boolean
local real TJO=GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)
if TJO<0.75 and S20==false then
set S20=true
call FL1("Tree",75)
endif
if TJO<0.50 and SO0==false then
set SO0=true
call FL1("Tree",50)
endif
if TJO<0.25 and S10==false then
set S10=true
call FL1("Tree",25)
endif
if TJO<0.10 and SI0==false then
set SI0=true
call FL1("Tree",10)
endif
return false
endfunction
function TKO takes nothing returns boolean
local real TJO=GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)
if TJO<0.75 and S00==false then
set S00=true
call FL1("Throne",75)
endif
if TJO<0.50 and NU0==false then
set NU0=true
call FL1("Throne",50)
endif
if TJO<0.25 and NQ0==false then
set NQ0=true
call FL1("Throne",25)
endif
if TJO<0.10 and NP0==false then
set NP0=true
call FL1("Throne",10)
endif
return false
endfunction
function TMO takes nothing returns boolean
if(JI or KI or LI or WI or XI or YI)then
return false
endif
return true
endfunction
function TNO takes nothing returns nothing
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848652879)+" "+GetObjectName(1848656695))
call SetPlayerTechResearchedSwap(1378889796,(GetPlayerTechCountSimple(1378889796,BO[0])+30),BO[0])
call SetPlayerTechResearchedSwap(1378889795,(GetPlayerTechCountSimple(1378889795,BO[0])+30),BO[0])
call DisableTrigger(PG)
endfunction
function TTO takes nothing returns boolean
if(HI or ZI or VI or EI or FI or GI)then
return false
endif
return true
endfunction
function TRO takes nothing returns nothing
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848652888)+" "+GetObjectName(1848656697))
call SetPlayerTechResearchedSwap(1378889785,(GetPlayerTechCountSimple(1378889785,CO[0])+30),CO[0])
call SetPlayerTechResearchedSwap(1378889794,(GetPlayerTechCountSimple(1378889794,CO[0])+30),CO[0])
call DisableTrigger(QG)
endfunction
function TQO takes nothing returns nothing
call SetPlayerTechResearchedSwap(1378889783,(GetPlayerTechCountSimple(1378889783,BO[0])+1),BO[0])
call SetPlayerTechResearchedSwap(1378889795,(GetPlayerTechCountSimple(1378889795,BO[0])+1),BO[0])
call SetPlayerTechResearchedSwap(1378889784,(GetPlayerTechCountSimple(1378889784,BO[0])+1),BO[0])
call SetPlayerTechResearchedSwap(1378889796,(GetPlayerTechCountSimple(1378889796,BO[0])+1),BO[0])
call SetPlayerTechResearchedSwap(1378889785,(GetPlayerTechCountSimple(1378889785,CO[0])+1),CO[0])
call SetPlayerTechResearchedSwap(1378889779,(GetPlayerTechCountSimple(1378889779,CO[0])+1),CO[0])
call SetPlayerTechResearchedSwap(1378889793,(GetPlayerTechCountSimple(1378889793,CO[0])+1),CO[0])
call SetPlayerTechResearchedSwap(1378889794,(GetPlayerTechCountSimple(1378889794,CO[0])+1),CO[0])
endfunction
function R0O takes nothing returns nothing
local location BFO=GetRectCenter(Y5)
call RemoveUnit(CreateUnitAtLoc(DO,1851941999,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1851942003,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852273524,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1848652342,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852270450,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1851941995,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1851946861,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852794733,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852796263,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852207203,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852207221,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1853060200,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1853060204,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1853055348,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1853320295,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852534636,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852534626,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852534644,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852010091,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852007790,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852272243,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852208226,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852207976,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852270641,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852860012,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852798821,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852798818,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852666477,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852666482,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852666476,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852077170,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1852077175,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1848659011,BFO,bj_UNIT_FACING))
call RemoveUnit(CreateUnitAtLoc(DO,1848659012,BFO,bj_UNIT_FACING))
call RemoveLocation(BFO)
endfunction
function R1O takes integer ROO,integer G0O,integer R2O returns integer
local integer R3O=S30[ROO]
local integer R4O=GetRandomInt(G0O,R2O)
loop
exitwhen R3O!=R4O
set R4O=GetRandomInt(G0O,R2O)
endloop
set S30[ROO]=R4O
return R4O
endfunction
function R5O takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1848658007,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1848658008,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1848658007,x,y,0),x,y)
endfunction
function R6O takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852466993,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852466993,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852467041,x,y,0),x,y)
endfunction
function R7O takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1851941999,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1851941999,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1851942003,x,y,0),x,y)
endfunction
function R8O takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1851941995,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1851941995,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1851946861,x,y,0),x,y)
endfunction
function R9O takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852273524,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852273524,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852270450,x,y,0),x,y)
endfunction
function AncientLizards_AI takes nothing returns boolean
call S0I(GetTriggeringTrigger())
call IssueTargetOrder(GetTriggerUnit(),"unholyfrenzy",GetTriggerUnit())
return false
endfunction
function RAO takes real x,real y returns nothing
local unit u
set u=CreateUnit(DO,1848659011,x,y,0)
call SetUnitPosition(u,x,y)
call SetUnitPosition(CreateUnit(DO,1848659012,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1848659012,x,y,0),x,y)
set u=null
endfunction
function RBO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852794733,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852794733,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852796263,x,y,0),x,y)
endfunction
function RCO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852207203,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852207221,x,y,0),x,y)
endfunction
function RDO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1853060200,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1853060204,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1853055348,x,y,0),x,y)
endfunction
function REO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1853060204,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1853060204,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1853055348,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1853055348,x,y,0),x,y)
endfunction
function RFO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1853320295,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1853320295,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1848651859,x,y,0),x,y)
endfunction
function RGO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1848652342,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1848652342,x,y,0),x,y)
endfunction
function RHO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852534636,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852534626,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852534626,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852534626,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852534644,x,y,0),x,y)
endfunction
function RZO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852208226,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852208226,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852207976,x,y,0),x,y)
endfunction
function RVO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852007790,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852010091,x,y,0),x,y)
endfunction
function RWO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852272243,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852272243,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852272243,x,y,0),x,y)
endfunction
function RXO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852208226,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852208226,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852534636,x,y,0),x,y)
endfunction
function RYO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852270641,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852860012,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852860012,x,y,0),x,y)
endfunction
function RJO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852798821,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852798818,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852798818,x,y,0),x,y)
endfunction
function RKO takes real x,real y returns nothing
call SetUnitPosition(CreateUnit(DO,1852077170,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852077170,x,y,0),x,y)
call SetUnitPosition(CreateUnit(DO,1852077175,x,y,0),x,y)
endfunction
function RLO takes real x,real y returns nothing
local integer MLI=R1O(3,1,5)
if MLI==1 then
call RCO(x,y)
elseif MLI==2 then
call RDO(x,y)
elseif MLI==3 then
call RJO(x,y)
elseif MLI==4 then
call RKO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function RMO takes real x,real y returns nothing
local integer MLI=R1O(12,1,5)
if MLI==1 then
call RCO(x,y)
elseif MLI==2 then
call RDO(x,y)
elseif MLI==3 then
call RJO(x,y)
elseif MLI==4 then
call RKO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function RNO takes real x,real y returns nothing
local integer MLI=R1O(4,1,5)
if MLI==1 then
call RCO(x,y)
elseif MLI==2 then
call RDO(x,y)
elseif MLI==3 then
call RJO(x,y)
elseif MLI==4 then
call RKO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function RSO takes real x,real y returns nothing
local integer MLI=R1O(9,1,5)
if MLI==1 then
call RCO(x,y)
elseif MLI==2 then
call RDO(x,y)
elseif MLI==3 then
call RJO(x,y)
elseif MLI==4 then
call RKO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function RTO takes real x,real y returns nothing
local integer MLI=R1O(6,1,6)
if MLI==1 then
call RYO(x,y)
elseif MLI==2 then
call RXO(x,y)
elseif MLI==3 then
call RWO(x,y)
elseif MLI==4 then
call RHO(x,y)
elseif MLI==5 then
call RZO(x,y)
elseif MLI==6 then
call R5O(x,y)
endif
endfunction
function RRO takes real x,real y returns nothing
local integer MLI=R1O(5,1,6)
if MLI==1 then
call RYO(x,y)
elseif MLI==2 then
call RXO(x,y)
elseif MLI==3 then
call RWO(x,y)
elseif MLI==4 then
call RHO(x,y)
elseif MLI==5 then
call RZO(x,y)
elseif MLI==6 then
call R5O(x,y)
endif
endfunction
function RPO takes real x,real y returns nothing
local integer MLI=R1O(7,1,5)
if MLI==1 then
call RGO(x,y)
elseif MLI==2 then
call RBO(x,y)
elseif MLI==3 then
call REO(x,y)
elseif MLI==4 then
call RFO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function RQO takes real x,real y returns nothing
local integer MLI=R1O(8,1,5)
if MLI==1 then
call RGO(x,y)
elseif MLI==2 then
call RBO(x,y)
elseif MLI==3 then
call REO(x,y)
elseif MLI==4 then
call RFO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function RUO takes real x,real y returns nothing
local integer MLI=R1O(10,1,5)
if MLI==1 then
call RGO(x,y)
elseif MLI==2 then
call RBO(x,y)
elseif MLI==3 then
call REO(x,y)
elseif MLI==4 then
call RFO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function P0O takes real x,real y returns nothing
local integer MLI=R1O(11,1,5)
if MLI==1 then
call RGO(x,y)
elseif MLI==2 then
call RBO(x,y)
elseif MLI==3 then
call REO(x,y)
elseif MLI==4 then
call RFO(x,y)
elseif MLI==5 then
call RVO(x,y)
endif
endfunction
function PIO takes real x,real y returns nothing
local integer MLI=R1O(1,1,5)
if MLI==1 then
call R6O(x,y)
elseif MLI==2 then
call R7O(x,y)
elseif MLI==3 then
call R8O(x,y)
elseif MLI==4 then
call R9O(x,y)
elseif MLI==5 then
call RAO(x,y)
endif
endfunction
function P1O takes real x,real y returns nothing
local integer MLI=R1O(2,1,5)
if MLI==1 then
call R6O(x,y)
elseif MLI==2 then
call R7O(x,y)
elseif MLI==3 then
call R8O(x,y)
elseif MLI==4 then
call R9O(x,y)
elseif MLI==5 then
call RAO(x,y)
endif
endfunction
function POO takes nothing returns nothing
if GetUnitAbilityLevel(GetEnumUnit(),1093685300)!=0 then
call GroupRemoveUnit(B2,GetEnumUnit())
endif
if GetUnitTypeId(GetEnumUnit())==1865429043 then
call GroupRemoveUnit(B2,GetEnumUnit())
endif
if GetUnitTypeId(GetEnumUnit())==1865429336 then
call GroupRemoveUnit(B2,GetEnumUnit())
endif
if IC1(GetEnumUnit())==true then
call GroupRemoveUnit(B2,GetEnumUnit())
endif
if RYI(GetEnumUnit())==true then
call GroupRemoveUnit(B2,GetEnumUnit())
endif
endfunction
function P2O takes group g returns boolean
set B2=g
call ForGroup(g,function POO)
return FirstOfGroup(g)==null
endfunction
function P3O takes nothing returns boolean
local group g
local rect r1
local rect r2
if O3I==false then
return false
endif
set r1=Q4
set r2=H4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call PIO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=U4
set r2=Z4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call P1O(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=I5
set r2=V4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RLO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=O5
set r2=W4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RNO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=A5
set r2=X4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RRO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=B5
set r2=Y4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RTO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=C5
set r2=J4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RPO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=E5
set r2=K4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RQO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=D5
set r2=L4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RSO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=F5
set r2=M4
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RUO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=Z5
set r2=V5
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call P0O(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=W5
set r2=X5
set g=NTI()
call GroupEnumUnitsInRect(g,r1,Condition(function N1I))
if P2O(g)then
call RMO(GetRectCenterX(r2),GetRectCenterY(r2))
endif
call NSI(g)
set r1=null
set r2=null
set g=null
return false
endfunction
function P5O takes nothing returns nothing
local integer TJI=GetRandomInt(1,9)
local location l
if O2I then
set TJI=GetRandomInt(1,3)
if TJI==1 then
set TJI=2
endif
if TJI==2 then
set TJI=5
endif
if TJI==3 then
set TJI=8
endif
endif
if(TJI==1)then
set l=GetRectCenter(TA)
call CreateNUnitsAtLoc(1,1848651827,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653105))
call SSO(bj_lastCreatedGroup,4)
endif
if(TJI==2)then
set l=GetRectCenter(SA)
call CreateNUnitsAtLoc(1,1848651827,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653106))
call SSO(bj_lastCreatedGroup,2)
endif
if(TJI==3)then
set l=GetRectCenter(NA)
call CreateNUnitsAtLoc(1,1848651827,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653107))
call SSO(bj_lastCreatedGroup,3)
endif
if(TJI==4)then
set l=GetRectCenter(TA)
call CreateNUnitsAtLoc(1,1848651845,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653112))
call SSO(bj_lastCreatedGroup,4)
endif
if(TJI==5)then
set l=GetRectCenter(SA)
call CreateNUnitsAtLoc(1,1848651845,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848652890))
call SSO(bj_lastCreatedGroup,2)
endif
if(TJI==6)then
set l=GetRectCenter(NA)
call CreateNUnitsAtLoc(1,1848651845,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653111))
call SSO(bj_lastCreatedGroup,3)
endif
if(TJI==7)and O2I==false then
set l=GetRectCenter(TA)
call CreateNUnitsAtLoc(1,1848651844,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653110))
call SSO(bj_lastCreatedGroup,4)
endif
if(TJI==8)and O2I==false then
set l=GetRectCenter(SA)
call CreateNUnitsAtLoc(1,1848651844,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848652884))
call SSO(bj_lastCreatedGroup,2)
endif
if(TJI==9)then
set l=GetRectCenter(NA)
call CreateNUnitsAtLoc(1,1848651844,BO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653123))
call SSO(bj_lastCreatedGroup,3)
endif
if(TJI==1)then
set l=GetRectCenter(LA)
call CreateNUnitsAtLoc(1,1848651827,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656708))
call SSO(bj_lastCreatedGroup,4)
endif
if(TJI==2)then
set l=GetRectCenter(KA)
call CreateNUnitsAtLoc(1,1848651827,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656709))
call SSO(bj_lastCreatedGroup,2)
endif
if(TJI==3)then
set l=GetRectCenter(MA)
call CreateNUnitsAtLoc(1,1848651827,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656707))
call SSO(bj_lastCreatedGroup,3)
endif
if(TJI==4)then
set l=GetRectCenter(LA)
call CreateNUnitsAtLoc(1,1848651845,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656711))
call SSO(bj_lastCreatedGroup,4)
endif
if(TJI==5)then
set l=GetRectCenter(KA)
call CreateNUnitsAtLoc(1,1848651845,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656712))
call SSO(bj_lastCreatedGroup,2)
endif
if(TJI==6)then
set l=GetRectCenter(MA)
call CreateNUnitsAtLoc(1,1848651845,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656710))
call SSO(bj_lastCreatedGroup,3)
endif
if(TJI==7)then
set l=GetRectCenter(LA)
call CreateNUnitsAtLoc(1,1848651844,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656714))
call SSO(bj_lastCreatedGroup,4)
endif
if(TJI==8)then
set l=GetRectCenter(KA)
call CreateNUnitsAtLoc(1,1848651844,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656715))
call SSO(bj_lastCreatedGroup,2)
endif
if(TJI==9)then
set l=GetRectCenter(MA)
call CreateNUnitsAtLoc(1,1848651844,CO[0],l,bj_UNIT_FACING)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848656713))
call SSO(bj_lastCreatedGroup,3)
endif
endfunction
function P7O takes nothing returns nothing
local integer TGI
local integer THI
local integer P8O
local integer P9O
local integer i
local player p
set S60=S60+1
set S90=0
set SA0=0
set i=0
loop
exitwhen i>5
set p=BO[i]
if T5I(p)then
set S90=S90+1
endif
set p=CO[i]
if T5I(p)then
set SA0=SA0+1
endif
set i=i+1
endloop
if IN==false then
set L1=S90
set M1=SA0
endif
set TGI=1
set THI=5
set P8O=1
loop
exitwhen TGI>THI
set p=BO[TGI]
if T5I(p)then
set N1[P8O]=p
set P8O=P8O+1
endif
set TGI=TGI+1
endloop
set TGI=1
set THI=5
set P8O=1
loop
exitwhen TGI>THI
set p=CO[TGI]
if T5I(p)then
set S1[P8O]=p
set P8O=P8O+1
endif
set TGI=TGI+1
endloop
if S60==1 then
set M0=CreateMultiboardBJ(7+6,3+SA0+S90," ")
call MultiboardMinimize(M0,true)
endif
call N5I(M0,2,1,"CD")
call N5I(M0,3,1,"|c00838B8BL|r")
call N5I(M0,4,1,SB0+"K|r")
call N5I(M0,5,1,SD0+"D|r")
call N5I(M0,6,1,SE0+"A|r")
call N5I(M0,1,2,GetObjectName(1848656971))
call N5I(M0,4,2,SB0+"0|r")
call N5I(M0,5,2,SD0+"0|r")
call N5I(M0,1,3+S90,GetObjectName(1848656975))
call N5I(M0,4,3+S90,SB0+"0|r")
call N5I(M0,5,3+S90,SD0+"0|r")
call NEI(M0,1,2,(TSI(SubString(C0[GetPlayerId((BO[0]))],4,6)))/255.0*100,(TSI(SubString(C0[GetPlayerId((BO[0]))],6,8)))/255.0*100,(TSI(SubString(C0[GetPlayerId((BO[0]))],8,10)))/255.0*100,0)
call NEI(M0,1,3+S90,(TSI(SubString(C0[GetPlayerId((CO[0]))],4,6)))/255.0*100,(TSI(SubString(C0[GetPlayerId((CO[0]))],6,8)))/255.0*100,(TSI(SubString(C0[GetPlayerId((CO[0]))],8,10)))/255.0*100,0)
set TGI=1
set THI=3+SA0+S90
loop
exitwhen TGI>THI
call NVI(M0,1,TGI,10.8)
call NVI(M0,2,TGI,2)
call NVI(M0,3,TGI,2)
call NVI(M0,4,TGI,1.3)
call NVI(M0,5,TGI,1.3)
call NVI(M0,6,TGI,1.3)
call NVI(M0,7,TGI,2.5)
call NVI(M0,8,TGI,0.01)
call NVI(M0,9,TGI,0.01)
call NVI(M0,10,TGI,0.01)
call NVI(M0,11,TGI,0.01)
call NVI(M0,12,TGI,0.01)
call NVI(M0,13,TGI,0.01)
set TGI=TGI+1
endloop
set TGI=1
set THI=7+6
loop
exitwhen TGI>THI
set P8O=1
set P9O=3+SA0+S90
loop
exitwhen P8O>P9O
call NBI(M0,TGI,P8O,true,false)
set P8O=P8O+1
endloop
set TGI=TGI+1
endloop
set TGI=1
set THI=S90
loop
exitwhen TGI>THI
call NBI(M0,1,TGI+2,true,true)
call NEI(M0,7,TGI+2,255,204,0,0)
set S40[GetPlayerId(N1[TGI])]=1-1
set S50[GetPlayerId(N1[TGI])]=TGI+2-1
call N5I(M0,1,TGI+2,(D80[GetPlayerId((N1[TGI]))]))
if T3I(N1[TGI])then
call NEI(M0,1,TGI+2,(TSI(SubString(C0[GetPlayerId((N1[TGI]))],4,6)))/255.0*100,(TSI(SubString(C0[GetPlayerId((N1[TGI]))],6,8)))/255.0*100,(TSI(SubString(C0[GetPlayerId((N1[TGI]))],8,10)))/255.0*100,0)
call NEI(M0,2,TGI+2,(TSI(SubString(C0[GetPlayerId((N1[TGI]))],4,6)))/255.0*100,(TSI(SubString(C0[GetPlayerId((N1[TGI]))],6,8)))/255.0*100,(TSI(SubString(C0[GetPlayerId((N1[TGI]))],8,10)))/255.0*100,0)
else
call N5I(M0,1,TGI+2,"|c00333333"+(D80[GetPlayerId((N1[TGI]))])+"|r")
endif
call N5I(M0,4,(TGI+2),SB0+"0|r")
call N5I(M0,5,(TGI+2),SD0+"0|r")
call N5I(M0,6,(TGI+2),SE0+"0|r")
set TGI=TGI+1
endloop
set TGI=1
set THI=SA0
loop
exitwhen TGI>THI
call NBI(M0,1,TGI+3+S90,true,true)
call NEI(M0,7,TGI+3+S90,255,204,0,0)
set S40[GetPlayerId(S1[TGI])]=1-1
set S50[GetPlayerId(S1[TGI])]=TGI+3+S90-1
call N5I(M0,1,TGI+3+S90,(D80[GetPlayerId((S1[TGI]))]))
if T3I(S1[TGI])then
call NEI(M0,1,TGI+3+S90,(TSI(SubString(C0[GetPlayerId((S1[TGI]))],4,6)))/255.0*100,(TSI(SubString(C0[GetPlayerId((S1[TGI]))],6,8)))/255.0*100,(TSI(SubString(C0[GetPlayerId((S1[TGI]))],8,10)))/255.0*100,0)
call NEI(M0,2,TGI+3+S90,(TSI(SubString(C0[GetPlayerId((S1[TGI]))],4,6)))/255.0*100,(TSI(SubString(C0[GetPlayerId((S1[TGI]))],6,8)))/255.0*100,(TSI(SubString(C0[GetPlayerId((S1[TGI]))],8,10)))/255.0*100,0)
else
call N5I(M0,1,TGI+3+S90,"|c00333333"+(D80[GetPlayerId((S1[TGI]))])+"|r")
endif
call N5I(M0,4,(TGI+3+S90),SB0+"0|r")
call N5I(M0,5,(TGI+3+S90),SD0+"0|r")
call N5I(M0,6,(TGI+3+S90),SE0+"0|r")
set TGI=TGI+1
endloop
set S70=1
set S80=3+SA0+S90-2
if C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70)and S60==1 then
call MultiboardDisplay(M0,false)
endif
call NBI(M0,7,1,false,true)
call N9I(M0,7,1,"UI\\Feedback\\Resources\\ResourceGold.blp")
call UR1()
if S60>1 then
call TriggerExecute(CH)
endif
endfunction
function PAO takes nothing returns nothing
local integer TGI
local integer THI
call N5I(M0,4,2,SB0+I2S(I[GetPlayerId(BO[0])])+"|r")
call N5I(M0,5,2,SD0+I2S(O[GetPlayerId(BO[0])])+"|r")
call N5I(M0,4,3+S90,SB0+I2S(I[GetPlayerId(CO[0])])+"|r")
call N5I(M0,5,3+S90,SD0+I2S(O[GetPlayerId(CO[0])])+"|r")
set TGI=1
set THI=S90
loop
exitwhen TGI>THI
call N5I(M0,4,(TGI+2),SB0+I2S(I[GetPlayerId(N1[TGI])])+"|r")
call N5I(M0,5,(TGI+2),SD0+I2S(O[GetPlayerId(N1[TGI])])+"|r")
call N5I(M0,6,(TGI+2),SE0+I2S(D[GetPlayerId(N1[TGI])])+"|r")
set TGI=TGI+1
endloop
set TGI=1
set THI=SA0
loop
exitwhen TGI>THI
call N5I(M0,4,(TGI+3+S90),SB0+I2S(I[GetPlayerId(S1[TGI])])+"|r")
call N5I(M0,5,(TGI+3+S90),SD0+I2S(O[GetPlayerId(S1[TGI])])+"|r")
call N5I(M0,6,(TGI+3+S90),SE0+I2S(D[GetPlayerId(S1[TGI])])+"|r")
set TGI=TGI+1
endloop
endfunction
function PCO takes nothing returns boolean
if(GetUnitTypeId(GetTriggerUnit())==1697656914)then
return true
endif
if(GetUnitTypeId(GetTriggerUnit())==1697657137)then
return true
endif
if(GetUnitTypeId(GetTriggerUnit())==1697656915)then
return true
endif
if(GetUnitTypeId(GetTriggerUnit())==1697657145)then
return true
endif
return false
endfunction
function PDO takes nothing returns nothing
set G0[1]=(G0[1]+1)
endfunction
function PFO takes nothing returns boolean
if(GetUnitTypeId(GetTriggerUnit())==1966092365)then
return true
endif
if(GetUnitTypeId(GetTriggerUnit())==1966092356)then
return true
endif
if(GetUnitTypeId(GetTriggerUnit())==1966092366)then
return true
endif
if(GetUnitTypeId(GetTriggerUnit())==1966092372)then
return true
endif
return false
endfunction
function PGO takes nothing returns nothing
set G0[2]=(G0[2]+1)
endfunction
function PZO takes integer a returns integer
local integer i=0
local integer x=0
local string s=I2S(a)
loop
exitwhen i>StringLength(s)
if SubString(s,i,i+1)=="1"then
set x=x+1
endif
set i=i+1
endloop
return x
endfunction
function PVO takes player T4I,integer PWO returns string
if IsPlayerAlly(GetLocalPlayer(),T4I)==true then
return F21(UnitItemInSlot(K1[GetPlayerId(T4I)],PWO-1))
else
return"UI\\Widgets\\Console\\Undead\\undead-inventory-slotfiller.blp"
endif
endfunction
function PXO takes nothing returns nothing
local integer TGI
local integer THI
local string GW1
local real QHI
local string s1=" "
local integer r
local integer i
local integer array time_1a
local string array color_1a
local integer index_1a=0
local integer array time_1b
local string array color_1b
local integer index_1b=0
local integer x=0
local integer id
local string PYO
local string PJO
local string PKO
local string PLO
local string PMO
local string s2=" "
local string s
local real PNO
local string spacer
local integer PSO=0
local string PTO=""
local string PRO=""
local integer PPO=0
local integer PQO=0
local string PUO=""
if M0==null then
return
endif
set i=1
loop
exitwhen i>5
set r=R2I(TimerGetRemaining(F0[GetPlayerId(BO[i])]))
if r>0 then
set PSO=PSO+PZO(r)
if PPO==0 then
if r<10 then
set PTO=C0[GetPlayerId(BO[i])]+"0"+I2S(r)+" |r"
else
set PTO=C0[GetPlayerId(BO[i])]+I2S(r)+" |r"
endif
else
if r<10 then
set PTO=PTO+SF0+"| |r"+C0[GetPlayerId(BO[i])]+"0"+I2S(r)+" |r"
else
set PTO=PTO+SF0+"| |r"+C0[GetPlayerId(BO[i])]+I2S(r)+" |r"
endif
endif
set PPO=PPO+1
endif
set i=i+1
endloop
if PPO>0 then
if IsPlayerAlly(GetLocalPlayer(),BO[0])==true then
set PTO=SF0+"["+GetObjectName(1848658515)+" |r"+PTO+SF0+"]|r"
else
set PTO=SC0+"["+GetObjectName(1848658514)+" |r"+PTO+SC0+"]|r"
endif
endif
set i=1
loop
exitwhen i>5
set r=R2I(TimerGetRemaining(F0[GetPlayerId(CO[i])]))
if r>0 then
set PSO=PSO+PZO(r)
if PQO==0 then
if r<10 then
set PRO=C0[GetPlayerId(CO[i])]+"0"+I2S(r)+" |r"
else
set PRO=C0[GetPlayerId(CO[i])]+I2S(r)+" |r"
endif
else
if r<10 then
set PRO=PRO+SF0+"| |r"+C0[GetPlayerId(CO[i])]+"0"+I2S(r)+" |r"
else
set PRO=PRO+SF0+"| |r"+C0[GetPlayerId(CO[i])]+I2S(r)+" |r"
endif
endif
set PQO=PQO+1
endif
set i=i+1
endloop
if PQO>0 then
if IsPlayerAlly(GetLocalPlayer(),CO[0])==true then
set PRO=SF0+"["+GetObjectName(1848658515)+" |r"+PRO+SF0+"]|r"
else
set PRO=SC0+"["+GetObjectName(1848658514)+" |r"+PRO+SC0+"]|r"
endif
endif
if M0!=null then
set id=GetPlayerId(GetLocalPlayer())
if id>=0 and id<16 then
if VM[x]then
set PYO=I2S(I[id])
set PJO=I2S(O[id])
set PKO=I2S(D[id])
set PLO=I2S(A[id])
set PMO=I2S(B[id])
set s2=" |c00838B8B("+PYO+"/"+PJO+"/"+PKO+" - "+PLO+"/"+PMO+" - |r|c00FFDC00"+I2S(EL0[id])+"|r |c00838B8B)|r"
endif
endif
endif
if PQO==0 and PPO==0 then
call MultiboardSetTitleText(M0,s2)
else
if IsPlayerAlly(GetLocalPlayer(),BO[0])==true then
call MultiboardSetTitleText(M0,PRO+" "+PTO+" "+s2)
else
call MultiboardSetTitleText(M0,PTO+" "+PRO+" "+s2)
endif
endif
if(C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70))==false then
call MultiboardDisplay(M0,true)
endif
if P20[GetPlayerId(GetLocalPlayer())]==false then
call SetWaterBaseColor(0,0,255,255)
endif
set TGI=1
set THI=S90
loop
exitwhen TGI>THI
call N9I(M0,1,TGI+2,SAI(K1[GetPlayerId(N1[TGI])]))
call N5I(M0,3,TGI+2,"|c00838B8B"+I2S(GetHeroLevel(K1[GetPlayerId(N1[TGI])]))+"|r")
if RQ0[GetPlayerId(GetLocalPlayer())]then
call NVI(M0,7,1,3)
call NVI(M0,8,1,2.8)
call NVI(M0,9,1,0.8)
call NVI(M0,10,1,0.8)
call NVI(M0,11,1,0.8)
call NVI(M0,12,1,0.8)
call NVI(M0,13,1,0.1)
call NVI(M0,7,TGI+2,3)
call NVI(M0,8,TGI+2,1.1)
call NVI(M0,9,TGI+2,1.1)
call NVI(M0,10,TGI+2,1.1)
call NVI(M0,11,TGI+2,1.1)
call NVI(M0,12,TGI+2,1.1)
call NVI(M0,13,TGI+2,0.1)
call NBI(M0,8,TGI+2,false,true)
call NBI(M0,9,TGI+2,false,true)
call NBI(M0,10,TGI+2,false,true)
call NBI(M0,11,TGI+2,false,true)
call NBI(M0,12,TGI+2,false,true)
call NBI(M0,13,TGI+2,false,true)
call N5I(M0,8,1,"Items")
else
call NVI(M0,7,1,2)
call NVI(M0,8,1,0.1)
call NVI(M0,9,1,0.1)
call NVI(M0,10,1,0.1)
call NVI(M0,11,1,0.1)
call NVI(M0,12,1,0.1)
call NVI(M0,13,1,0.1)
call NVI(M0,7,TGI+2,2.5)
call NVI(M0,8,TGI+2,0.1)
call NVI(M0,9,TGI+2,0.1)
call NVI(M0,10,TGI+2,0.1)
call NVI(M0,11,TGI+2,0.1)
call NVI(M0,12,TGI+2,0.1)
call NVI(M0,13,TGI+2,0.1)
call NBI(M0,8,TGI+2,false,false)
call NBI(M0,9,TGI+2,false,false)
call NBI(M0,10,TGI+2,false,false)
call NBI(M0,11,TGI+2,false,false)
call NBI(M0,12,TGI+2,false,false)
call NBI(M0,13,TGI+2,false,false)
call N5I(M0,8,1," ")
endif
call N9I(M0,8,TGI+2,PVO(N1[TGI],1))
call N9I(M0,9,TGI+2,PVO(N1[TGI],2))
call N9I(M0,10,TGI+2,PVO(N1[TGI],3))
call N9I(M0,11,TGI+2,PVO(N1[TGI],4))
call N9I(M0,12,TGI+2,PVO(N1[TGI],5))
call N9I(M0,13,TGI+2,PVO(N1[TGI],6))
if(SVI(K1[GetPlayerId(N1[TGI])])and K1[GetPlayerId(N1[TGI])]!=null and TimerGetRemaining(F0[GetPlayerId(N1[TGI])])>0)then
if IsPlayerAlly(GetLocalPlayer(),N1[TGI])then
set PUO=SF0+" ("+(I2S(R2I(TimerGetRemaining(F0[GetPlayerId(N1[TGI])]))))+")|r"
else
set PUO=SC0+" ("+(I2S(R2I(TimerGetRemaining(F0[GetPlayerId(N1[TGI])]))))+")|r"
endif
else
set PUO="  "
endif
if EF0[GetPlayerId(N1[TGI])]then
call N5I(M0,1,TGI+2,"|c00333333"+(D80[GetPlayerId((N1[TGI]))])+"|r"+PUO)
else
call N5I(M0,1,TGI+2,(D80[GetPlayerId((N1[TGI]))])+PUO)
endif
set PNO=(TimerGetRemaining(EJ0[GetPlayerId((N1[TGI]))]))
if PNO>0 then
set s=I2S(R2I(PNO))
else
set s=" "
endif
if IsPlayerAlly(GetLocalPlayer(),N1[TGI])==false then
call N5I(M0,7,TGI+2," ")
set s=" "
else
call N5I(M0,7,TGI+2,"|cffffcc00"+I2S(R2I(GetPlayerState(N1[TGI],PLAYER_STATE_RESOURCE_GOLD)))+"|r")
endif
call N5I(M0,2,TGI+2,s)
set TGI=TGI+1
endloop
set TGI=1
set THI=SA0
loop
exitwhen TGI>THI
call N9I(M0,1,TGI+3+S90,SAI(K1[GetPlayerId(S1[TGI])]))
call N5I(M0,3,TGI+3+S90,"|c00838B8B"+I2S(GetHeroLevel(K1[GetPlayerId(S1[TGI])]))+"|r")
if RQ0[GetPlayerId(GetLocalPlayer())]then
call NVI(M0,7,1,3)
call NVI(M0,8,1,2.8)
call NVI(M0,9,1,0.8)
call NVI(M0,10,1,0.8)
call NVI(M0,11,1,0.8)
call NVI(M0,12,1,0.8)
call NVI(M0,13,1,0.1)
call NVI(M0,7,TGI+3+S90,3)
call NVI(M0,8,TGI+3+S90,1.1)
call NVI(M0,9,TGI+3+S90,1.1)
call NVI(M0,10,TGI+3+S90,1.1)
call NVI(M0,11,TGI+3+S90,1.1)
call NVI(M0,12,TGI+3+S90,1.1)
call NVI(M0,13,TGI+3+S90,0.1)
call NBI(M0,8,TGI+3+S90,false,true)
call NBI(M0,9,TGI+3+S90,false,true)
call NBI(M0,10,TGI+3+S90,false,true)
call NBI(M0,11,TGI+3+S90,false,true)
call NBI(M0,12,TGI+3+S90,false,true)
call NBI(M0,13,TGI+3+S90,false,true)
call N5I(M0,8,1,"Items")
else
call NVI(M0,7,1,2)
call NVI(M0,8,1,0.1)
call NVI(M0,9,1,0.1)
call NVI(M0,10,1,0.1)
call NVI(M0,11,1,0.1)
call NVI(M0,12,1,0.1)
call NVI(M0,13,1,0.1)
call NVI(M0,7,TGI+3+S90,2.5)
call NVI(M0,8,TGI+3+S90,0.1)
call NVI(M0,9,TGI+3+S90,0.1)
call NVI(M0,10,TGI+3+S90,0.1)
call NVI(M0,11,TGI+3+S90,0.1)
call NVI(M0,12,TGI+3+S90,0.1)
call NVI(M0,13,TGI+3+S90,0.1)
call NBI(M0,8,TGI+3+S90,false,false)
call NBI(M0,9,TGI+3+S90,false,false)
call NBI(M0,10,TGI+3+S90,false,false)
call NBI(M0,11,TGI+3+S90,false,false)
call NBI(M0,12,TGI+3+S90,false,false)
call NBI(M0,13,TGI+3+S90,false,false)
call N5I(M0,8,1," ")
endif
call N9I(M0,8,TGI+3+S90,PVO(S1[TGI],1))
call N9I(M0,9,TGI+3+S90,PVO(S1[TGI],2))
call N9I(M0,10,TGI+3+S90,PVO(S1[TGI],3))
call N9I(M0,11,TGI+3+S90,PVO(S1[TGI],4))
call N9I(M0,12,TGI+3+S90,PVO(S1[TGI],5))
call N9I(M0,13,TGI+3+S90,PVO(S1[TGI],6))
if(SVI(K1[GetPlayerId(S1[TGI])])and K1[GetPlayerId(S1[TGI])]!=null and TimerGetRemaining(F0[GetPlayerId(S1[TGI])])>0)then
if IsPlayerAlly(GetLocalPlayer(),S1[TGI])then
set PUO=SF0+" ("+(I2S(R2I(TimerGetRemaining(F0[GetPlayerId(S1[TGI])]))))+")|r"
else
set PUO=SC0+" ("+(I2S(R2I(TimerGetRemaining(F0[GetPlayerId(S1[TGI])]))))+")|r"
endif
else
set PUO="  "
endif
if EF0[GetPlayerId(S1[TGI])]then
call N5I(M0,1,TGI+3+S90,"|c00333333"+(D80[GetPlayerId((S1[TGI]))])+"|r"+PUO)
else
call N5I(M0,1,TGI+3+S90,(D80[GetPlayerId((S1[TGI]))])+PUO)
endif
set PNO=(TimerGetRemaining(EJ0[GetPlayerId((S1[TGI]))]))
if PNO>0 then
set s=I2S(R2I(PNO))
else
set s=" "
endif
if IsPlayerAlly(GetLocalPlayer(),S1[TGI])==false then
call N5I(M0,7,TGI+3+S90," ")
set s=" "
else
call N5I(M0,7,TGI+3+S90,"|cffffcc00"+I2S(R2I(GetPlayerState(S1[TGI],PLAYER_STATE_RESOURCE_GOLD)))+"|r")
endif
call N5I(M0,2,TGI+3+S90,s)
set TGI=TGI+1
endloop
endfunction
function Trig_CS_Board_Actions takes nothing returns nothing
set GO[GetPlayerId(BO[1])]=CreateLeaderboard()
set GO[GetPlayerId(BO[2])]=CreateLeaderboard()
set GO[GetPlayerId(BO[3])]=CreateLeaderboard()
set GO[GetPlayerId(BO[4])]=CreateLeaderboard()
set GO[GetPlayerId(BO[5])]=CreateLeaderboard()
set GO[GetPlayerId(CO[1])]=CreateLeaderboard()
set GO[GetPlayerId(CO[2])]=CreateLeaderboard()
set GO[GetPlayerId(CO[3])]=CreateLeaderboard()
set GO[GetPlayerId(CO[4])]=CreateLeaderboard()
set GO[GetPlayerId(CO[5])]=CreateLeaderboard()
call PlayerSetLeaderboard(BO[1],GO[GetPlayerId(BO[1])])
call PlayerSetLeaderboard(BO[2],GO[GetPlayerId(BO[2])])
call PlayerSetLeaderboard(BO[3],GO[GetPlayerId(BO[3])])
call PlayerSetLeaderboard(BO[4],GO[GetPlayerId(BO[4])])
call PlayerSetLeaderboard(BO[5],GO[GetPlayerId(BO[5])])
call PlayerSetLeaderboard(CO[1],GO[GetPlayerId(CO[1])])
call PlayerSetLeaderboard(CO[2],GO[GetPlayerId(CO[2])])
call PlayerSetLeaderboard(CO[3],GO[GetPlayerId(CO[3])])
call PlayerSetLeaderboard(CO[4],GO[GetPlayerId(CO[4])])
call PlayerSetLeaderboard(CO[5],GO[GetPlayerId(CO[5])])
call LeaderboardDisplay(GO[GetPlayerId(BO[1])],false)
call LeaderboardDisplay(GO[GetPlayerId(BO[2])],false)
call LeaderboardDisplay(GO[GetPlayerId(BO[3])],false)
call LeaderboardDisplay(GO[GetPlayerId(BO[4])],false)
call LeaderboardDisplay(GO[GetPlayerId(BO[5])],false)
call LeaderboardDisplay(GO[GetPlayerId(CO[1])],false)
call LeaderboardDisplay(GO[GetPlayerId(CO[2])],false)
call LeaderboardDisplay(GO[GetPlayerId(CO[3])],false)
call LeaderboardDisplay(GO[GetPlayerId(CO[4])],false)
call LeaderboardDisplay(GO[GetPlayerId(CO[5])],false)
call LeaderboardSetLabelBJ(GO[GetPlayerId(BO[1])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(BO[2])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(BO[3])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(BO[4])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(BO[5])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(CO[1])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(CO[2])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(CO[3])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(CO[4])],"Creep Kills: 0 Denies: 0")
call LeaderboardSetLabelBJ(GO[GetPlayerId(CO[5])],"Creep Kills: 0 Denies: 0")
endfunction
function EndScore_GameMode takes nothing returns string
return EL
endfunction
function EndScore_GetWinner takes nothing returns string
return J3
endfunction
function Q1O takes player T4I returns string
return C0[GetPlayerId(T4I)]+(D80[GetPlayerId((T4I))])+"|r"
endfunction
function QOO takes player T4I returns string
local string Q2O=I2S(FB0[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function Q4O takes player T4I returns string
local string Q2O=I2S(FA0[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function VM1 takes nothing returns nothing
local integer i=1
local multiboarditem N8I
loop
exitwhen i>SW0
if(K3[GetPlayerId((SV0[i]))])!="Here"then
set N8I=MultiboardGetItem(SG0,SH0[i],SZ0[i])
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c00555555"+(K3[GetPlayerId((SV0[i]))])+"|r")
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
endif
set i=i+1
endloop
endfunction
function Q5O takes player T4I returns string
local string Q2O=I2S(GetPlayerState(T4I,PLAYER_STATE_RESOURCE_GOLD))
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function Q6O takes player T4I returns string
local string Q2O=I2S(E[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function Q7O takes player T4I returns string
local string Q2O=I2S(GetUnitLevel(K1[GetPlayerId(T4I)]))
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function Q8O takes player T4I returns string
local string Q2O=I2S(F[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function Q9O takes player T4I returns string
local string Q2O=I2S(Y[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QAO takes player T4I returns string
local string Q2O=I2S(G[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QBO takes player T4I returns string
local string Q2O=I2S(D[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QCO takes player T4I returns string
local string Q2O=I2S(I[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QDO takes player T4I returns string
local string Q2O=I2S(O[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QEO takes player T4I returns string
local string Q2O=I2S(A[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QFO takes player T4I returns string
local string Q2O=I2S(B[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QGO takes player T4I returns string
local string Q2O=I2S((LoadInteger(LY,(400+GetPlayerId(T4I)),(79))))
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QHO takes player T4I returns string
local string Q2O=I2S(Z[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QZO takes player T4I returns string
local string Q2O=I2S(V[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QVO takes player T4I returns string
local string Q2O=I2S(H[GetPlayerId(T4I)])
local string Q3O=Q2O
if T4I==GetLocalPlayer()then
set Q3O=SX0+Q2O+"|r"
endif
return Q3O
endfunction
function QWO takes player T4I returns string
local string QXO
local string QYO
local string Q3O
local integer k=J[GetPlayerId(T4I)]
local integer d=X[GetPlayerId(T4I)]
if k<1 then
set k=0
endif
if d<1 then
set d=0
endif
set QXO=I2S(k)
set QYO=I2S(d)
set Q3O=QXO+"/"+QYO
if T4I==GetLocalPlayer()then
set Q3O=SX0+QXO+"|r/"+SX0+QYO+"|r"
endif
return Q3O
endfunction
function QJO takes player T4I returns string
local integer QKO=W[GetPlayerId(T4I)]
local string GW1
local integer BX1
local integer BY1
set BX1=(QKO/60)-(1/2)
set BY1=ModuloInteger(QKO,60)
if(BY1<10)then
set GW1=I2S(BX1)+":0"+I2S(BY1)
else
set GW1=I2S(BX1)+":"+I2S(BY1)
endif
if T4I==GetLocalPlayer()then
set GW1=SX0+GW1+"|r"
endif
return GW1
endfunction
function QLO takes player P7I,player P8I returns string
local string QXO
local string QYO
local string Q3O
local integer k=(LoadInteger(LY,(400+GetPlayerId(P7I)),(450+GetPlayerId(P8I))))
local integer d=(LoadInteger(LY,(400+GetPlayerId(P7I)),(500+GetPlayerId(P8I))))
if k<1 then
set k=0
endif
if d<1 then
set d=0
endif
set QXO=I2S(k)
set QYO=I2S(d)
set Q3O=QXO+"/"+QYO
if P7I==GetLocalPlayer()then
set Q3O=SX0+QXO+"|r/"+SX0+QYO+"|r"
endif
return Q3O
endfunction
function EndScore_AllKD takes nothing returns string
return"|c00ff0303"+I2S(I[GetPlayerId(BO[0])])+"|r/|c0020c000"+I2S(O[GetPlayerId(BO[0])])+"|r"
endfunction
function QMO takes nothing returns nothing
local integer QNO=S90
local integer QSO=SA0
local player array QTO
local player array QRO
local integer QPO
local integer QQO
local integer QUO=21+QAI(QNO,QSO)+1
local integer U0O=1+(QNO+QSO)*2
local multiboarditem N8I
local integer i
local integer x
local integer curRow1
local integer curRow2
local string e="|r"
local string c0="|cff99ccff"
local integer UIO
local integer U1O
call DisableTrigger(FH)
call DestroyMultiboard(M0)
if QNO>0 and QSO>0 then
set QUO=QUO+2
endif
set SG0=CreateMultiboard()
call MultiboardSetItemsWidth(SG0,0)
call MultiboardSetRowCount(SG0,QUO)
call MultiboardSetColumnCount(SG0,U0O)
call MultiboardSetTitleText(SG0,GetObjectName(1848657203)+" "+" - "+(EL))
call MultiboardMinimize(SG0,true)
call MultiboardSetItemsStyle(SG0,false,false)
call MultiboardDisplay(SG0,true)
call MultiboardMinimize(SG0,false)
call MultiboardSetTitleText(SG0,GetObjectName(1848657203)+" "+" - "+(EL)+" - "+("|c00ff0303"+I2S(I[GetPlayerId(BO[0])])+"|r/|c0020c000"+I2S(O[GetPlayerId(BO[0])])+"|r"))
set x=1
set i=1
loop
exitwhen i>5
if T3I(BO[i])or GetPlayerSlotState(BO[i])==PLAYER_SLOT_STATE_LEFT then
set QTO[x]=BO[i]
set x=x+1
endif
set i=i+1
endloop
set x=1
set i=1
loop
exitwhen i>5
if T3I(CO[i])or GetPlayerSlotState(CO[i])==PLAYER_SLOT_STATE_LEFT then
set QRO[x]=CO[i]
set x=x+1
endif
set i=i+1
endloop
set i=0
set QQO=0
loop
exitwhen i>QUO
set N8I=MultiboardGetItem(SG0,i,QQO)
call MultiboardSetItemWidth(N8I,0.075)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=0
set QQO=0
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I," ")
call MultiboardReleaseItem(N8I)
set QQO=0
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,false)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q1O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q1O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,false)
call MultiboardReleaseItem(N8I)
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemValue(N8I,Q7O(QTO[i]))
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemValue(N8I,Q7O(QRO[i]))
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657218)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(1)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(2)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(1)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(2)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+" "+e)
call MultiboardReleaseItem(N8I)
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(3)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(4)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(3)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(4)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+" "+e)
call MultiboardReleaseItem(N8I)
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(5)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(6)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(5)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(6)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657202)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q5O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q5O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657201)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QCO(QTO[i])+"/"+QDO(QTO[i])+"/"+QBO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QCO(QRO[i])+"/"+QDO(QRO[i])+"/"+QBO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656986)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QEO(QTO[i])+"/"+QFO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QEO(QRO[i])+"/"+QFO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848658517)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QOO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QOO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848658758)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q4O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q4O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657200)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q8O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q8O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656980)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QWO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QWO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656985)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QGO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QGO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656981)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q9O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q9O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656982)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QJO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QJO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656983)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QAO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QAO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656974)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q6O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q6O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656952)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QHO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QHO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656969)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QZO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QZO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656973)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QVO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QVO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
if QNO>0 and QSO>0 then
set QQO=0
set UIO=QPO
set U1O=QQO
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656972)+e)
call MultiboardReleaseItem(N8I)
set QPO=UIO
set x=1
loop
exitwhen x>QNO
set QQO=0
set QPO=UIO
set i=1
loop
exitwhen i>QSO
set QQO=x+(x-1)
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[x]))])))
call MultiboardSetItemWidth(N8I,0.01)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[i]))])))
call MultiboardSetItemValue(N8I," "+QLO(QTO[x],QRO[i]))
call MultiboardSetItemWidth(N8I,0.059)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set x=x+1
endloop
set x=QNO+1
loop
exitwhen x>(QSO+QNO)
set QQO=0
set QPO=UIO
set i=1
loop
exitwhen i>QNO
set QQO=x+(x-1)
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[x-QNO]))])))
call MultiboardSetItemWidth(N8I,0.01)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[i]))])))
call MultiboardSetItemValue(N8I," "+QLO(QRO[x-QNO],QTO[i]))
call MultiboardSetItemWidth(N8I,0.059)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set x=x+1
endloop
endif
set QPO=QPO+1
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656730)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(K3[GetPlayerId((QTO[i]))]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set SW0=SW0+1
set SH0[SW0]=QPO
set SZ0[SW0]=QQO
set SV0[SW0]=QTO[i]
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(K3[GetPlayerId((QRO[i]))]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set SW0=SW0+1
set SH0[SW0]=QPO
set SZ0[SW0]=QQO
set SV0[SW0]=QRO[i]
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SG0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656953)+e)
call MultiboardReleaseItem(N8I)
set N8I=MultiboardGetItem(SG0,QPO,QQO+1)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(J3))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
call MultiboardMinimize(SG0,true)
call MultiboardMinimize(SG0,false)
endfunction
function ObsBoard_GameMode takes nothing returns string
return EL
endfunction
function U2O takes player T4I returns string
return C0[GetPlayerId(T4I)]+(D80[GetPlayerId((T4I))])+"|r"
endfunction
function U3O takes player T4I returns string
local integer k=J[GetPlayerId(T4I)]
local integer d=X[GetPlayerId(T4I)]
if k<1 then
set k=0
endif
if d<1 then
set d=0
endif
return I2S(k)+"/"+I2S(d)
endfunction
function U4O takes player T4I returns string
local integer QKO=W[GetPlayerId(T4I)]
local string GW1
local integer BX1
local integer BY1
set BX1=(QKO/60)-(1/2)
set BY1=ModuloInteger(QKO,60)
if(BY1<10)then
set GW1=I2S(BX1)+":0"+I2S(BY1)
else
set GW1=I2S(BX1)+":"+I2S(BY1)
endif
return GW1
endfunction
function U5O takes player P7I,player P8I returns string
local integer k=(LoadInteger(LY,(400+GetPlayerId(P7I)),(450+GetPlayerId(P8I))))
local integer d=(LoadInteger(LY,(400+GetPlayerId(P7I)),(500+GetPlayerId(P8I))))
if k<1 then
set k=0
endif
if d<1 then
set d=0
endif
return I2S(k)+"/"+I2S(d)
endfunction
function U6O takes player P7I returns string
local string U7O
if IC1(K1[GetPlayerId(P7I)])then
set U7O=I2S(R2I(TimerGetRemaining(F0[GetPlayerId(P7I)])))
else
set U7O=" "
endif
return U7O
endfunction
function U8O takes player P7I returns string
local real r=(TimerGetRemaining(EJ0[GetPlayerId((P7I))]))
local string U7O
if r>0 then
set U7O=I2S(R2I(r))
else
set U7O=" "
endif
return U7O
endfunction
function U9O takes integer UAO,integer UBO returns nothing
set SY0=CreateMultiboard()
call MultiboardSetItemsWidth(SY0,0)
call MultiboardSetRowCount(SY0,UAO)
call MultiboardSetColumnCount(SY0,UBO)
call MultiboardSetTitleText(SY0,GetObjectName(1848657203)+" "+" - "+(EL))
call MultiboardMinimize(SY0,true)
call MultiboardSetItemsStyle(SY0,false,false)
if GetLocalPlayer()==D60 or GetLocalPlayer()==D70 then
call MultiboardDisplay(SY0,true)
endif
endfunction
function ObsBoard_AllKD takes nothing returns string
return"|c00ff0303"+I2S(I[GetPlayerId(BO[0])])+"|r/|c0020c000"+I2S(O[GetPlayerId(BO[0])])+"|r"
endfunction
function UCO takes nothing returns nothing
local integer QNO=L1
local integer QSO=M1
local player array QTO
local player array QRO
local integer QPO
local integer QQO
local integer QUO=1+21+QAI(QNO,QSO)
local integer U0O=1+(QNO+QSO)*2
local multiboarditem N8I
local integer i
local integer x
local integer curRow1
local integer curRow2
local string e="|r"
local string c0="|cff99ccff"
local integer UIO
local integer U1O
local integer UDO=131
local integer UEO=139
local integer UFO=139
local integer UGO=255
local integer PSO=0
local string PTO=""
local string PRO=""
local integer PPO=0
local integer PQO=0
local integer r
if QNO>0 and QSO>0 then
set QUO=QUO+2
endif
if GetTriggerExecCount(GetTriggeringTrigger())==1 then
call U9O(QUO,U0O)
endif
if C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70)then
call MultiboardDisplay(SY0,true)
endif
set i=1
loop
exitwhen i>5
set r=R2I(TimerGetRemaining(F0[GetPlayerId(BO[i])]))
if r>0 then
set PSO=PSO+PZO(r)
if PPO==0 then
if r<10 then
set PTO=C0[GetPlayerId(BO[i])]+"0"+I2S(r)+" |r"
else
set PTO=C0[GetPlayerId(BO[i])]+I2S(r)+" |r"
endif
else
if r<10 then
set PTO=PTO+SF0+"| |r"+C0[GetPlayerId(BO[i])]+"0"+I2S(r)+" |r"
else
set PTO=PTO+SF0+"| |r"+C0[GetPlayerId(BO[i])]+I2S(r)+" |r"
endif
endif
set PPO=PPO+1
endif
set i=i+1
endloop
if PPO>0 then
set PTO=SF0+"[Sentinel: |r"+PTO+SF0+"]|r"
endif
set i=1
loop
exitwhen i>5
set r=R2I(TimerGetRemaining(F0[GetPlayerId(CO[i])]))
if r>0 then
set PSO=PSO+PZO(r)
if PQO==0 then
if r<10 then
set PRO=C0[GetPlayerId(CO[i])]+"0"+I2S(r)+" |r"
else
set PRO=C0[GetPlayerId(CO[i])]+I2S(r)+" |r"
endif
else
if r<10 then
set PRO=PRO+SF0+"| |r"+C0[GetPlayerId(CO[i])]+"0"+I2S(r)+" |r"
else
set PRO=PRO+SF0+"| |r"+C0[GetPlayerId(CO[i])]+I2S(r)+" |r"
endif
endif
set PQO=PQO+1
endif
set i=i+1
endloop
if PQO>0 then
set PRO=SF0+"[Scourge: |r"+PRO+SF0+"]|r"
endif
call MultiboardSetTitleText(SY0,PTO+" "+PRO+" "+GetObjectName(1848657203)+" "+" - "+(EL)+" - "+("|c00ff0303"+I2S(I[GetPlayerId(BO[0])])+"|r/|c0020c000"+I2S(O[GetPlayerId(BO[0])])+"|r"))
set x=1
set i=1
loop
exitwhen i>5
if T3I(BO[i])or GetPlayerSlotState(BO[i])==PLAYER_SLOT_STATE_LEFT then
set QTO[x]=BO[i]
set x=x+1
endif
set i=i+1
endloop
set x=1
set i=1
loop
exitwhen i>5
if T3I(CO[i])or GetPlayerSlotState(CO[i])==PLAYER_SLOT_STATE_LEFT then
set QRO[x]=CO[i]
set x=x+1
endif
set i=i+1
endloop
set i=0
set QQO=0
loop
exitwhen i>QUO
set N8I=MultiboardGetItem(SY0,i,QQO)
call MultiboardSetItemWidth(N8I,0.075)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=0
set QQO=0
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I," ")
call MultiboardReleaseItem(N8I)
set QQO=0
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,false)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,U2O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,U2O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,false)
call MultiboardReleaseItem(N8I)
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemValue(N8I,"("+(I2S(GetUnitLevel(K1[GetPlayerId((QTO[i]))])))+")")
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemValue(N8I,"("+(I2S(GetUnitLevel(K1[GetPlayerId((QRO[i]))])))+")")
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657218)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(1)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(2)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(1)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(2)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+" "+e)
call MultiboardReleaseItem(N8I)
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(3)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(4)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(3)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(4)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QPO=QPO+1
set QQO=0
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+" "+e)
call MultiboardReleaseItem(N8I)
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(5)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QTO[i]))],(6)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(5)-1))))
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(F21(UnitItemInSlot(K1[GetPlayerId((QRO[i]))],(6)-1))))
call MultiboardSetItemWidth(N8I,0.054)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657202)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(GetPlayerState((QTO[i]),PLAYER_STATE_RESOURCE_GOLD))))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(GetPlayerState((QRO[i]),PLAYER_STATE_RESOURCE_GOLD))))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848659028)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(WS[GV1(GetHeroLevel(K1[GetPlayerId((QTO[i]))]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(WS[GV1(GetHeroLevel(K1[GetPlayerId((QRO[i]))]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656986)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(A[GetPlayerId((QTO[i]))]))+"/"+(I2S(B[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(A[GetPlayerId((QRO[i]))]))+"/"+(I2S(B[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657201)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(I[GetPlayerId((QTO[i]))]))+"/"+(I2S(O[GetPlayerId((QTO[i]))]))+"/"+(I2S(D[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(I[GetPlayerId((QRO[i]))]))+"/"+(I2S(O[GetPlayerId((QRO[i]))]))+"/"+(I2S(D[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848658517)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QOO(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,QOO(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848658758)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q4O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Q4O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657200)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(F[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(F[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656980)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,U3O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,U3O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656985)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S((LoadInteger(LY,(400+GetPlayerId((QTO[i]))),(79))))))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S((LoadInteger(LY,(400+GetPlayerId((QRO[i]))),(79))))))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656981)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(Y[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(Y[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656982)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,U4O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,U4O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656983)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(G[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(G[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656974)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(E[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(E[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656952)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(Z[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(Z[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656969)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(V[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(V[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656973)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(H[GetPlayerId((QTO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,(I2S(H[GetPlayerId((QRO[i]))])))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
if QNO>0 and QSO>0 then
set QQO=0
set UIO=QPO
set U1O=QQO
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848656972)+e)
call MultiboardReleaseItem(N8I)
set QPO=UIO
set x=1
loop
exitwhen x>QNO
set QQO=0
set QPO=UIO
set i=1
loop
exitwhen i>QSO
set QQO=x+(x-1)
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[x]))])))
call MultiboardSetItemWidth(N8I,0.01)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[i]))])))
call MultiboardSetItemValue(N8I," "+U5O(QTO[x],QRO[i]))
call MultiboardSetItemWidth(N8I,0.059)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set x=x+1
endloop
set x=QNO+1
loop
exitwhen x>(QSO+QNO)
set QQO=0
set QPO=UIO
set i=1
loop
exitwhen i>QNO
set QQO=x+(x-1)
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[x-QNO]))])))
call MultiboardSetItemWidth(N8I,0.01)
call MultiboardReleaseItem(N8I)
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[i]))])))
call MultiboardSetItemValue(N8I," "+U5O(QRO[x-QNO],QTO[i]))
call MultiboardSetItemWidth(N8I,0.059)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set x=x+1
endloop
endif
set QPO=QPO+1
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848658003)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
if U6O(QTO[i])==" "then
call MultiboardSetItemStyle(N8I,true,false)
else
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[i]))])))
endif
call MultiboardSetItemValue(N8I,U8O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemValueColor(N8I,UDO,UEO,UFO,UGO)
if U6O(QRO[i])==" "then
call MultiboardSetItemStyle(N8I,true,false)
else
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[i]))])))
endif
call MultiboardSetItemValue(N8I,U8O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set QQO=0
set QPO=QPO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,c0+GetObjectName(1848657204)+e)
call MultiboardReleaseItem(N8I)
set QQO=0
set i=1
loop
exitwhen i>QNO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
if U6O(QTO[i])==" "then
call MultiboardSetItemStyle(N8I,true,false)
else
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QTO[i]))])))
endif
call MultiboardSetItemValue(N8I,U6O(QTO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set i=1
loop
exitwhen i>QSO
set QQO=QQO+1
set N8I=MultiboardGetItem(SY0,QPO,QQO)
if U6O(QRO[i])==" "then
call MultiboardSetItemStyle(N8I,true,false)
else
call MultiboardSetItemStyle(N8I,true,true)
call MultiboardSetItemIcon(N8I,(SAI(K1[GetPlayerId((QRO[i]))])))
endif
call MultiboardSetItemValue(N8I,U6O(QRO[i]))
call MultiboardSetItemWidth(N8I,0.07)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
endfunction
function UHO takes nothing returns nothing
local trigger t
if C2 then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddAction(t,function UCO)
set SJ0=t
endif
endfunction
function UZO takes nothing returns boolean
local integer id=GetUnitTypeId(GetTriggerUnit())
local string STI
if GetLocalPlayer()==GetTriggerPlayer()then
if id==1749236021 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1848652107 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1849897784 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1697657397 then
elseif id==1848651862 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1848651863 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1848651826 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1848651864 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1848651833 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1848657989 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1849897781 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1966092369 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1967339316 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1966092592 then
call ResetUnitAnimation(GetTriggerUnit())
elseif id==1966092378 then
call ResetUnitAnimation(GetTriggerUnit())
endif
endif
return false
endfunction
function UVO takes nothing returns boolean
local integer id=GetUnitTypeId(GetTriggerUnit())
local string STI
if GetLocalPlayer()==GetTriggerPlayer()then
if id==1749236021 then
set STI="stand work"
elseif id==1848652107 then
set STI="stand third"
elseif id==1849897784 then
call SetUnitAnimationByIndex(GetTriggerUnit(),3)
elseif id==1697657397 then
elseif id==1848651862 then
set STI="spell attack"
elseif id==1848651863 then
set STI="spell"
elseif id==1848651826 then
call SetUnitAnimationByIndex(GetTriggerUnit(),3)
elseif id==1848651864 then
set STI="stand work"
elseif id==1848651833 then
set STI="stand work"
elseif id==1848657989 then
set STI="stand victory"
elseif id==1849897781 then
set STI="stand work"
elseif id==1966092369 then
set STI="stand work"
elseif id==1967339316 then
set STI="stand work gold"
elseif id==1966092592 then
set STI="stand work"
elseif id==1966092378 then
set STI="stand work"
endif
if STI!=""then
call SetUnitAnimation(GetTriggerUnit(),STI)
call QueueUnitAnimation(GetTriggerUnit(),STI)
endif
endif
return false
endfunction
function IsChinese takes nothing returns boolean
return GetObjectName(1848658741)!="Only Translate This String If Simplified Chinese"
endfunction
function UXO takes nothing returns boolean
local integer i=0
local string s="我开通了中文微博：@IceFrogCN(新浪)，@IceFrogdev(腾讯)"
loop
exitwhen i>12
if GetRandomInt(0,10)<11 and(GetObjectName(1848658741)!="Only Translate This String If Simplified Chinese")then
call DisplayTimedTextToPlayer(Player(i),0,0,20,"|CFF00FF00"+s+"|r")
endif
set i=i+1
endloop
return false
endfunction
function UJO takes unit u returns nothing
endfunction
function UKO takes nothing returns boolean
local real ULO
local real UMO
local unit u
if TK0==false then
set u=IA0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SK0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
if TL0==false then
set u=IB0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SL0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
if TM0==false then
set u=IC0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SM0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
if TJ0==false then
set u=ID0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SN0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IE0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SS0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IF0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-ST0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IG0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SR0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IH0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SP0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IZ0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SQ0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IV0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-SU0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IW0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T00)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IX0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TI0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IY0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T10)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=IJ0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TO0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=I60
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T20)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
if TW0==false then
set u=C10
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T30)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
if TX0==false then
set u=CO0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T40)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
if TY0==false then
set u=C20
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T50)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
if TV0==false then
set u=C30
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T60)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=C40
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T70)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=C50
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T80)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=C60
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-T90)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=C70
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TA0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=C80
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TB0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=C90
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TC0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=CA0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TD0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=CB0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TE0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=CC0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TF0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=CD0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TG0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
set u=BQ0
if u!=null then
set ULO=GetUnitState(u,UNIT_STATE_LIFE)
set UMO=ULO+TZ0
if UMO<(GetUnitState(u,UNIT_STATE_MAX_LIFE)-TH0)then
call SetUnitState(u,UNIT_STATE_LIFE,UMO)
call UJO(u)
endif
endif
endif
return false
endfunction
function UNO takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TW0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T30=T30+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function USO takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TX0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T40=T40+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function UTO takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TY0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T50=T50+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function URO takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T60=T60+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function UPO takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T70=T70+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function UQO takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T80=T80+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function UUO takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T90=T90+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I02 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TA0=TA0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function II2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TB0=TB0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I12 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TC0=TC0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IO2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TD0=TD0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I22 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TE0=TE0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I32 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TF0=TF0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I42 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TG0=TG0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I52 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TV0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TH0=TH0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I62 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TK0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SK0=SK0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I72 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TL0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SL0=SL0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I82 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TM0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SM0=SM0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function I92 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SN0=SN0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IA2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SS0=SS0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IB2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set ST0=ST0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IC2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SR0=SR0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function ID2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SP0=SP0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IE2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SQ0=SQ0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IF2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set SU0=SU0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IG2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T00=T00+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IH2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TI0=TI0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IZ2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T10=T10+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IV2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set TO0=TO0+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IW2 takes nothing returns boolean
local real PAI=GetEventDamage()
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
set PAI=(1-0.25)*PAI
endif
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if TJ0 or IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true then
set T20=T20+PAI
else
if IsUnitIllusion(GetEventDamageSource())==true then
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.75*PAI)
else
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+0.25*PAI)
endif
endif
else
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IY2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==CO[0]then
set TJ0=true
endif
return false
endfunction
function IJ2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==CO[0]then
set TK0=true
endif
return false
endfunction
function IK2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==CO[0]then
set TL0=true
endif
return false
endfunction
function IL2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==CO[0]then
set TM0=true
endif
return false
endfunction
function IM2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==BO[0]then
set TV0=true
endif
return false
endfunction
function IN2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==BO[0]then
set TW0=true
endif
return false
endfunction
function IS2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==BO[0]then
set TX0=true
endif
return false
endfunction
function IT2 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==BO[0]then
set TY0=true
endif
return false
endfunction
function IR2 takes nothing returns boolean
local group g=NTI()
set TV0=false
set TW0=false
set TX0=false
set TY0=false
set TJ0=false
set TK0=false
set TL0=false
set TM0=false
call GroupEnumUnitsInRect(g,O6,Condition(function IY2))
call GroupEnumUnitsInRect(g,A6,Condition(function IY2))
call GroupEnumUnitsInRect(g,B6,Condition(function IY2))
call GroupEnumUnitsInRect(g,CB,Condition(function IY2))
call GroupEnumUnitsInRect(g,DB,Condition(function IY2))
call GroupEnumUnitsInRect(g,EB,Condition(function IY2))
call GroupEnumUnitsInRect(g,AB,Condition(function IJ2))
call GroupEnumUnitsInRect(g,ZB,Condition(function IK2))
call GroupEnumUnitsInRect(g,BB,Condition(function IL2))
call GroupEnumUnitsInRect(g,C6,Condition(function IM2))
call GroupEnumUnitsInRect(g,D6,Condition(function IM2))
call GroupEnumUnitsInRect(g,E6,Condition(function IM2))
call GroupEnumUnitsInRect(g,HB,Condition(function IM2))
call GroupEnumUnitsInRect(g,FB,Condition(function IM2))
call GroupEnumUnitsInRect(g,GB,Condition(function IM2))
call GroupEnumUnitsInRect(g,UA,Condition(function IN2))
call GroupEnumUnitsInRect(g,IB,Condition(function IS2))
call GroupEnumUnitsInRect(g,OB,Condition(function IT2))
call NSI(g)
set g=null
return false
endfunction
function IQ2 takes nothing returns boolean
call S0I(GetTriggeringTrigger())
call TriggerEvaluate(OH)
return false
endfunction
function IU2 takes nothing returns boolean
local real r=TimerGetRemaining(OL)
local real BQO=r
local integer QHI=R2I(BQO)
local integer BX1=QHI/60-1/2
local integer BY1=ModuloInteger(QHI,60)
local trigger t
local integer i
local player p
if r==0 then
set TN0=true
call FL1("GameStart",1)
call BW1(BX1,BY1,true)
set CL=true
set N=TimerGetElapsed(M)
call S0I(GetTriggeringTrigger())
call SetFloatGameState(GAME_STATE_TIME_OF_DAY,6.00)
call SuspendTimeOfDay(false)
call SetTimeOfDayScale(0.625)
if P0==false then
if HL then
call TriggerRegisterTimerEvent(J20,120,true)
else
call TriggerRegisterTimerEvent(J20,120,true)
endif
call TriggerEvaluate(J20)
endif
call TriggerRegisterTimerEvent(OH,60,true)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,30,false)
call TriggerAddCondition(t,Condition(function IQ2))
set t=null
call TriggerRegisterTimerEventPeriodic(ZG,30.00)
call TriggerExecute(ZG)
call TriggerRegisterTimerEventPeriodic(UG,450.00)
call TriggerRegisterTimerEventSingle(GG,2699.00)
call TriggerRegisterTimerEventSingle(HG,999.00)
call TriggerRegisterTimerEventSingle(HG,1999.00)
call TriggerRegisterTimerEventSingle(HG,2999.00)
call TriggerRegisterTimerEvent(FL0,300,true)
call TriggerRegisterTimerEvent(R50,300,true)
call TriggerRegisterTimerEvent(HS,30,true)
call TriggerEvaluate(HS)
if Q0 then
call TriggerRegisterTimerEvent(BH,600,true)
endif
call ExecuteFunc("O02")
elseif r==7 then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,30,true)
call TriggerAddCondition(t,Condition(function SNO))
elseif BQO<12 and DL==false then
set DL=true
call PlaySoundBJ(OE)
call BW1(BX1,BY1,true)
elseif BQO==20 then
if GetRandomInt(0,10)<2 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName(1848659015)+"|r")
endif
elseif BQO==60 then
call ExecuteFunc("UXO")
else
call BW1(BX1,BY1,true)
endif
if K0==true and ModuloInteger(GetTriggerEvalCount(GetTriggeringTrigger()),4)==0 then
if r==85 then
if K1[GetPlayerId(GetLocalPlayer())]==null then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName(1848659530)+"|r")
endif
elseif r==80 then
if K1[GetPlayerId(GetLocalPlayer())]==null then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName(1848659531)+"|r")
endif
elseif r<75 and r>0 then
if r==74 then
if K1[GetPlayerId(GetLocalPlayer())]==null then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,"|c006699CC"+GetObjectName(1848659532)+"|r")
endif
endif
set i=0
loop
exitwhen i>5
set p=BO[i]
if K1[GetPlayerId(p)]==null then
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-1)
endif
set p=CO[i]
if K1[GetPlayerId(p)]==null then
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-1)
endif
set i=i+1
endloop
endif
endif
return false
endfunction
function OI2 takes nothing returns boolean
if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and GetOwningPlayer(GetFilterUnit())!=DO then
if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true then
set TS0=GetFilterUnit()
else
set TT0=GetFilterUnit()
endif
endif
return false
endfunction
function O12 takes nothing returns nothing
local unit SQO=GetAttacker()
local unit P8I=GetTriggerUnit()
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(SQO),GetUnitY(SQO),900,Condition(function OI2))
call NSI(g)
call DisableTrigger(GetTriggeringTrigger())
if TS0!=null then
call IssueTargetOrder(SQO,"attack",TS0)
call GroupAddUnit(TR0,SQO)
elseif IsUnitType(P8I,UNIT_TYPE_HERO)==true and TT0!=null then
call IssueTargetOrder(SQO,"attack",TT0)
call GroupAddUnit(TR0,SQO)
endif
call EnableTrigger(GetTriggeringTrigger())
set TS0=null
set TT0=null
set SQO=null
set P8I=null
set g=null
endfunction
function OO2 takes nothing returns nothing
if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<1 then
call GroupRemoveUnit(TR0,GetEnumUnit())
endif
if GetUnitCurrentOrder(GetEnumUnit())!=OrderId("attack")then
call GroupRemoveUnit(TR0,GetEnumUnit())
call IssuePointOrderLoc(GetEnumUnit(),"attack",O2[GetUnitAbilityLevel(GetEnumUnit(),I2)])
endif
endfunction
function O22 takes nothing returns boolean
call ForGroup(TR0,function OO2)
return false
endfunction
function O42 takes string s returns nothing
set TU0=TU0+1
set R00[TU0]=s
endfunction
function O52 takes nothing returns boolean
local integer i=1
loop
exitwhen i>TU0
call ExecuteFunc(R00[i])
set i=i+1
endloop
call ExecuteFunc("UV1")
call ExecuteFunc("HJO")
return false
endfunction
function O62 takes unit SFI returns nothing
local trigger t=CreateTrigger()
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(38),(true))
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function O52))
set t=null
endfunction
function O72 takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())!=1211122232 and GetUnitTypeId(GetTriggerUnit())!=1211117645 and GetUnitTypeId(GetTriggerUnit())!=1211119431 and GetUnitTypeId(GetTriggerUnit())!=1211117657 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetTriggerUnit())==false and HaveSavedBoolean(LY,GetHandleId(GetTriggerUnit()),38)==false then
if TP0 and(GetUnitTypeId(GetTriggerUnit())!=1328558160 or(GetUnitTypeId(GetTriggerUnit())==1328558160 and TQ0))then
call O62(GetTriggerUnit())
endif
endif
return false
endfunction
function O92 takes nothing returns boolean
local unit u
local real OA2
local boolean OB2=PLI()
set u=IK0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IL0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IM0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IN0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IS0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IT0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IR0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IP0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IQ0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=IU0
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
set u=O00
if u!=null and GetUnitState(u,UNIT_STATE_LIFE)>1 then
set OA2=GetUnitState(u,UNIT_STATE_MANA)
if OB2 then
set OA2=QDI(OA2-25,0)
else
set OA2=QCI(OA2+5,300)
endif
call SetUnitState(u,UNIT_STATE_MANA,OA2)
endif
return false
endfunction
function OE2 takes nothing returns boolean
local real d
if GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IC1(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(HK))==true then
set d=QNI(BK,CK,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
if d<AK then
set AK=d
set GK=GetFilterUnit()
endif
endif
return false
endfunction
function OF2 takes unit SWI,real x,real y returns unit
local group g=NTI()
set GK=null
set HK=SWI
set AK=99999
set BK=x
set CK=y
call GroupEnumUnitsInRange(g,x,y,2000,Condition(function OE2))
call NSI(g)
set g=null
return GK
endfunction
function TeleportationEffect_Remove takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I
if GetSpellAbilityId()==1093808945 then
set P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P8I,1114205798)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function OG2 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l
local real x
local real y
local unit P8I=GetSpellTargetUnit()
call SCI(SFI,4256,1)
if P8I==null then
set l=GetSpellTargetLoc()
set x=GetLocationX(l)
set y=GetLocationY(l)
call RemoveLocation(l)
if GetSpellAbilityId()==1093751349 then
set P8I=XKO(SFI,x,y)
else
set P8I=OF2(SFI,x,y)
endif
set x=GetUnitX(P8I)
set y=GetUnitY(P8I)
else
set x=GetUnitX(GetSpellTargetUnit())
set y=GetUnitY(GetSpellTargetUnit())
endif
if(IsUnitAlly(SFI,GetLocalPlayer())and GetLocalPlayer()!=GetOwningPlayer(SFI))or(C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70))then
call PingMinimapEx(x,y,3,255,255,255,false)
endif
set SFI=null
set l=null
endfunction
function TeleportationEffect_Main takes nothing returns boolean
if GetSpellAbilityId()==1093808945 then
call OG2()
endif
return false
endfunction
function OZ2 takes nothing returns nothing
call TCI(1311780946)
call TCI(1311788343)
call TCI(1311788363)
call TCI(1311788356)
call TCI(1311788373)
endfunction
function OV2 takes nothing returns nothing
if RYI(GetEnumUnit())and IsUnitAlly(GetEnumUnit(),BO[0])==false and GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>0.5 then
call UnitRemoveAbility(GetEnumUnit(),1110456392)
call P6I(PQ,GetEnumUnit(),2,500)
endif
endfunction
function OW2 takes nothing returns nothing
if RYI(GetEnumUnit())and IsUnitAlly(GetEnumUnit(),CO[0])==false and GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>0.5 then
call UnitRemoveAbility(GetEnumUnit(),1110456392)
call P6I(BX0,GetEnumUnit(),2,500)
endif
endfunction
function OX2 takes nothing returns boolean
local group g=NTI()
call GroupEnumUnitsInRect(g,G5,Condition(function N1I))
call ForGroup(g,function OV2)
call NSI(g)
set g=NTI()
call GroupEnumUnitsInRect(g,H5,Condition(function N1I))
call ForGroup(g,function OW2)
call NSI(g)
set g=null
return false
endfunction
function OJ2 takes string winner returns nothing
local integer i
local player p
local string id
local integer QHI=R2I(TimerGetElapsed(M)-N)
local integer BX1=QHI/60-1/2
local integer BY1=ModuloInteger(QHI,60)
call RTI()
set i=1
loop
exitwhen i>5
set p=BO[i]
set id=I2S(GetPlayerId(p))
call StoreInteger(OS,id,"1",(I[GetPlayerId((p))]))
call StoreInteger(OS,id,"2",(O[GetPlayerId((p))]))
call StoreInteger(OS,id,"3",(A[GetPlayerId((p))]))
call StoreInteger(OS,id,"4",(B[GetPlayerId((p))]))
call StoreInteger(OS,id,"5",(D[GetPlayerId((p))]))
call StoreInteger(OS,id,"6",(GetPlayerState((p),PLAYER_STATE_RESOURCE_GOLD)))
call StoreInteger(OS,id,"7",(LoadInteger(LY,(400+GetPlayerId((p))),(79))))
call StoreInteger(OS,id,"8_0",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(0)))))
call StoreInteger(OS,id,"8_1",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(1)))))
call StoreInteger(OS,id,"8_2",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(2)))))
call StoreInteger(OS,id,"8_3",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(3)))))
call StoreInteger(OS,id,"8_4",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(4)))))
call StoreInteger(OS,id,"8_5",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(5)))))
call StoreInteger(OS,id,"9",(GetUnitTypeId(K1[GetPlayerId((p))])))
call StoreInteger(OS,id,"id",i)
set p=CO[i]
set id=I2S(GetPlayerId(p))
call StoreInteger(OS,id,"1",(I[GetPlayerId((p))]))
call StoreInteger(OS,id,"2",(O[GetPlayerId((p))]))
call StoreInteger(OS,id,"3",(A[GetPlayerId((p))]))
call StoreInteger(OS,id,"4",(B[GetPlayerId((p))]))
call StoreInteger(OS,id,"5",(D[GetPlayerId((p))]))
call StoreInteger(OS,id,"6",(GetPlayerState((p),PLAYER_STATE_RESOURCE_GOLD)))
call StoreInteger(OS,id,"7",(LoadInteger(LY,(400+GetPlayerId((p))),(79))))
call StoreInteger(OS,id,"8_0",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(0)))))
call StoreInteger(OS,id,"8_1",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(1)))))
call StoreInteger(OS,id,"8_2",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(2)))))
call StoreInteger(OS,id,"8_3",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(3)))))
call StoreInteger(OS,id,"8_4",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(4)))))
call StoreInteger(OS,id,"8_5",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(5)))))
call StoreInteger(OS,id,"9",(GetUnitTypeId(K1[GetPlayerId((p))])))
call StoreInteger(OS,id,"id",i+5)
if GetLocalPlayer()==WO then
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"1")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"2")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"3")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"4")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"5")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"6")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"7")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"8_0")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"8_1")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"8_2")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"8_3")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"8_4")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"8_5")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"9")
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"id")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"1")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"2")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"3")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"4")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"5")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"6")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"7")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"8_0")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"8_1")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"8_2")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"8_3")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"8_4")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"8_5")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"9")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"id")
endif
set i=i+1
endloop
if RI0==false then
call StoreInteger(OS,"Global","Winner",R10)
call StoreInteger(OS,"Global","m",BX1)
call StoreInteger(OS,"Global","s",BY1)
if GetLocalPlayer()==WO then
call SyncStoredInteger(OS,"Global","Winner")
call SyncStoredInteger(OS,"Global","m")
call SyncStoredInteger(OS,"Global","s")
endif
endif
endfunction
function VL1 takes nothing returns nothing
call OJ2("1")
endfunction
function VK1 takes nothing returns nothing
local player p=RO0
local string id=I2S(GetPlayerId(p))
call StoreInteger(OS,id,"8_0",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(0)))))
call StoreInteger(OS,id,"8_1",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(1)))))
call StoreInteger(OS,id,"8_2",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(2)))))
call StoreInteger(OS,id,"8_3",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(3)))))
call StoreInteger(OS,id,"8_4",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(4)))))
call StoreInteger(OS,id,"8_5",(GetItemTypeId(UnitItemInSlot(K1[GetPlayerId((p))],(5)))))
if GetLocalPlayer()==WO then
call SyncStoredInteger(OS,I2S(GetPlayerId(p)),"8_0")
call SyncStoredInteger(OS,I2S(GetPlayerId(p)),"8_1")
call SyncStoredInteger(OS,I2S(GetPlayerId(p)),"8_2")
call SyncStoredInteger(OS,I2S(GetPlayerId(p)),"8_3")
call SyncStoredInteger(OS,I2S(GetPlayerId(p)),"8_4")
call SyncStoredInteger(OS,I2S(GetPlayerId(p)),"8_5")
endif
endfunction
function OK2 takes nothing returns boolean
call ExecuteFunc("QMO")
return false
endfunction
function OL2 takes nothing returns nothing
call SPI(GetEnumUnit())
endfunction
function OM2 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsInRange(g,0,0,12000,Condition(function C51))
call ForGroup(g,function OL2)
call NSI(g)
set g=null
endfunction
function ON2 takes nothing returns nothing
set bj_changeLevelShowScores=true
call DisableTrigger(RK)
call DisableTrigger(PK)
call ExecuteFunc("GYO")
if C2 then
call DisableTrigger(SJ0)
endif
call DisableTrigger(EX0)
call ClearTextMessages()
call QRI(bj_FORCE_ALL_PLAYERS,60,J3+" "+GetObjectName(1848653108)+" www.getdota.com.")
set Q2=true
call I91()
call DisableTrigger(ZG)
call DisableTrigger(FH)
call DisableTrigger(EW0)
call NRI()
endfunction
function OS2 takes nothing returns nothing
local trigger t=CreateTrigger()
call PanCameraToTimed(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function OK2))
set R10=2
set J3="|c0020c000"+GetObjectName(1848652623)+"|r"
call ON2()
call OM2()
call OJ2("2")
set t=null
endfunction
function OT2 takes nothing returns boolean
call SetUnitVertexColorBJ(BQ0,100,100,100,GetTriggerEvalCount(GetTriggeringTrigger()))
if GetTriggerEvalCount(GetTriggeringTrigger())==100 then
call ShowUnit(BQ0,false)
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function OR2 takes nothing returns nothing
local trigger t=CreateTrigger()
call PanCameraToTimed(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerAddCondition(t,Condition(function OK2))
set R10=1
set J3="|c00ff0303"+GetObjectName(1848652622)+"|r"
call ON2()
call OM2()
call OJ2("1")
call AddSpecialEffect("war3mapImported\\FrozenThronesDeath2.mdx",GetUnitX(BQ0)+150,GetUnitY(BQ0)+100)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function OT2))
set t=null
endfunction
function OQ2 takes real U0I returns boolean
return(100*GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE))<U0I
endfunction
function AntiTK_Building takes nothing returns boolean
return OQ2(10)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==true and GetUnitTypeId(GetTriggerUnit())!=1702129516 and GetUnitTypeId(GetTriggerUnit())!=1970172012
endfunction
function AntiTK_Hero takes nothing returns boolean
return OQ2(25)and(GetUnitAbilityLevel(GetTriggerUnit(),1112433775)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1111847784)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110454321)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110458705)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110458704)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455620)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455629)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455630)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455631)>0)
endfunction
function AntiTK_Creep takes nothing returns boolean
return OQ2(50)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==false and(IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false or GetUnitTypeId(GetTriggerUnit())==1700946284 or GetUnitTypeId(GetTriggerUnit())==1697657398 or GetUnitTypeId(GetTriggerUnit())==1970107511 or GetUnitTypeId(GetTriggerUnit())==1966092370)
endfunction
function AntiTK_Exception takes nothing returns boolean
return GetUnitTypeId(GetTriggerUnit())==1966092371 or GetUnitTypeId(GetTriggerUnit())==1865429334 or((LoadInteger(LY,(GetHandleId((GetAttacker()))),((4328))))==1)==true
endfunction
function OU2 takes nothing returns nothing
if not((OQ2(10)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==true and GetUnitTypeId(GetTriggerUnit())!=1702129516 and GetUnitTypeId(GetTriggerUnit())!=1970172012)or(OQ2(25)and(GetUnitAbilityLevel(GetTriggerUnit(),1112433775)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1111847784)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110454321)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110458705)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110458704)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455620)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455629)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455630)>0 or GetUnitAbilityLevel(GetTriggerUnit(),1110455631)>0))or(OQ2(50)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==false and(IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false or GetUnitTypeId(GetTriggerUnit())==1700946284 or GetUnitTypeId(GetTriggerUnit())==1697657398 or GetUnitTypeId(GetTriggerUnit())==1970107511 or GetUnitTypeId(GetTriggerUnit())==1966092370))or(GetUnitTypeId(GetTriggerUnit())==1966092371 or GetUnitTypeId(GetTriggerUnit())==1865429334 or((LoadInteger(LY,(GetHandleId((GetAttacker()))),((4328))))==1)==true))then
call IssueImmediateOrder(GetAttacker(),"stop")
endif
endfunction
function A02 takes nothing returns boolean
if IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call OU2()
elseif IsUnitType(GetAttacker(),UNIT_TYPE_HERO)==true or B61(GetAttacker())or IsUnitIllusion(GetAttacker())==true then
set R20=GetPlayerId(GetOwningPlayer(GetAttacker()))
if IsUnitIllusion(GetAttacker())==false then
if L90[R20]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitTypeId(GetTriggerUnit())!=1848651852 and IsUnitIllusion(GetAttacker())==false and EA1(GetAttacker(),FR0[HC0])==true then
call Z3O()
endif
if LC0[R20]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetAttacker())==false and(EA1(GetAttacker(),FR0[V10])==true or EA1(GetAttacker(),FR0[XD0])==true)then
call ZZO()
endif
if LE0[R20]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetAttacker())==false and EA1(GetAttacker(),FR0[VE0])==true then
call ZAO()
elseif(LF0[R20]>0 or M00[R20]>0)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetAttacker())==false and(EA1(GetAttacker(),FR0[VI0])==true or EA1(GetAttacker(),FR0[XC0])==true)then
call ZHO()
endif
endif
if MI0[R20]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and(EA1(GetAttacker(),FR0[V40])==true or EA1(GetAttacker(),FR0[V50])==true or EA1(GetAttacker(),FR0[V60])==true or EA1(GetAttacker(),FR0[V70])==true)then
if IsUnitIllusion(GetAttacker())==false or IsUnitType(GetAttacker(),UNIT_TYPE_MELEE_ATTACKER)==true then
call ZDO()
endif
endif
elseif GetUnitAbilityLevel(GetAttacker(),1093744467)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
call O12()
endif
return false
endfunction
function A12 takes nothing returns boolean
if BZ1(GetSpellAbilityId())and BV1(GetTriggerUnit())then
call PJI(GetTriggerUnit())
endif
return false
endfunction
function A22 takes nothing returns nothing
call C2O()
call C5O()
endfunction
function A42 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT or(LoadBoolean(LY,(GetHandleId(SFI)),(140)))==true then
if(LoadBoolean(LY,(GetHandleId(SFI)),(140)))==true then
call SaveBoolean(LY,(GetHandleId(SFI)),(140),(false))
call SaveInteger(LY,(GetHandleId((SFI))),((4259)),(2))
call UnitRemoveAbility(SFI,1093678162)
call BK1(SFI,false)
call PauseUnit(SFI,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetSpellTargetUnit()==SFI and GetSpellAbilityId()==R40 and(GetPlayerSlotState(GetOwningPlayer((SFI)))==PLAYER_SLOT_STATE_LEFT)and((LoadInteger(LY,(GetHandleId((SFI))),((4259))))==1)==true then
call SaveInteger(LY,(GetHandleId((SFI))),((4259)),(2))
call UnitRemoveAbility(SFI,1093678162)
call BK1(SFI,false)
call PauseUnit(SFI,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif IC1(SFI)==false then
call SetUnitX(SFI,x)
call SetUnitY(SFI,y)
call SaveInteger(LY,(GetHandleId((SFI))),((4259)),(1))
call UnitAddAbility(SFI,1093678162)
call BK1(SFI,true)
call PauseUnit(SFI,true)
endif
set SFI=null
set t=null
return false
endfunction
function A52 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetSpellTargetUnit()
call SaveBoolean(LY,(GetHandleId(SFI)),(140),(false))
call SaveInteger(LY,(GetHandleId((SFI))),((4259)),(1))
call UnitAddAbility(SFI,1093678162)
call BK1(SFI,true)
call PauseUnit(SFI,true)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(SFI))*1.0))
call TriggerRegisterTimerEvent(t,1,true)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function A42))
set t=null
set SFI=null
endfunction
function A62 takes nothing returns boolean
if OSI==true then
return false
endif
if GetSpellAbilityId()==R30 and(GetPlayerSlotState(GetOwningPlayer((GetSpellTargetUnit())))==PLAYER_SLOT_STATE_LEFT)and((LoadInteger(LY,(GetHandleId((GetSpellTargetUnit()))),((4259))))==1)==false then
call A52()
elseif(GetSpellAbilityId()==R40 or GetSpellAbilityId()==R30)and(GetPlayerSlotState(GetOwningPlayer((GetSpellTargetUnit())))==PLAYER_SLOT_STATE_LEFT)==false then
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652366))
endif
return false
endfunction
function A82 takes destructable d returns boolean
local real x=GetDestructableX(d)
local real y=GetDestructableY(d)
local group g=NTI()
local boolean A92
call GroupEnumUnitsInRange(g,x,y,250,Condition(function D51))
set A92=FirstOfGroup(g)!=null
call NSI(g)
set g=null
return A92
endfunction
function AA2 takes nothing returns nothing
if RJI(GetEnumDestructable())and GetDestructableLife(GetEnumDestructable())<1 and GetDestructableTypeId(GetEnumDestructable())!=1110454322 and GetDestructableTypeId(GetEnumDestructable())!=1110454323 then
if A82(GetEnumDestructable())==false then
call DestructableRestoreLife(GetEnumDestructable(),GetDestructableMaxLife(GetEnumDestructable()),false)
if BM[GetPlayerId(GetLocalPlayer())]==1 and GetDestructableTypeId(GetEnumDestructable())==1096053874 then
call SetDestructableAnimation(GetEnumDestructable(),"stand alternate")
endif
endif
endif
endfunction
function AB2 takes nothing returns nothing
call EnumDestructablesInRectAll(bj_mapInitialPlayableArea,function AA2)
endfunction
function AD2 takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())==1848651852 then
if IsUnitIllusion(GetAttacker())==true then
call KillUnit(GetAttacker())
elseif IsUnitInRegion(R60,GetAttacker())==false then
call PZI(GetOwningPlayer(GetAttacker()),GetObjectName(1848652597))
call IssueImmediateOrder(GetAttacker(),"stop")
endif
endif
return false
endfunction
function AF2 takes nothing returns boolean
return GetUnitTypeId(GetEnteringUnit())==1697656901 or GetUnitTypeId(GetEnteringUnit())==1697657394
endfunction
function AG2 takes nothing returns nothing
call ShowUnitHide(GetEnteringUnit())
call SetUnitPathing(GetEnteringUnit(),false)
call SetUnitInvulnerable(GetEnteringUnit(),true)
call UnitApplyTimedLifeBJ(20.00,1112820806,GetEnteringUnit())
endfunction
function AZ2 takes nothing returns boolean
if(GetUnitTypeId(GetDyingUnit())==1697656914)then
return true
endif
if(GetUnitTypeId(GetDyingUnit())==1697657137)then
return true
endif
if(GetUnitTypeId(GetDyingUnit())==1697656915)then
return true
endif
if(GetUnitTypeId(GetDyingUnit())==1697657145)then
return true
endif
return false
endfunction
function AV2 takes nothing returns boolean
if(not(GetDyingUnit()==IG0))then
return false
endif
if(not(IC1(IH0)==true))then
return false
endif
return true
endfunction
function AW2 takes nothing returns boolean
if(not(GetDyingUnit()==IH0))then
return false
endif
if(not(IC1(IG0)==true))then
return false
endif
return true
endfunction
function AX2 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1852010352 and IsPlayerAlly(GetOwningPlayer(GetFilterUnit()),JK)==true
endfunction
function AY2 takes player p returns nothing
local group g=NTI()
local unit u
set JK=p
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function AX2))
loop
set u=FirstOfGroup(g)
exitwhen FirstOfGroup(g)==null
if GetUnitAbilityLevel(u,1093743665)>0 then
call UnitRemoveAbility(u,1093743665)
call UnitAddAbility(u,1093743665)
else
call UnitRemoveAbility(u,1093752649)
call UnitAddAbility(u,1093752649)
endif
call GroupRemoveUnit(g,u)
endloop
call NSI(g)
set g=null
set u=null
endfunction
function AJ2 takes nothing returns nothing
if IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))then
set J[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=J[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
if(GetDyingUnit()==I70)then
call FL1("Tower"+I2S(0)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(IA0,false)
call R3I(GetKillingUnit(),1)
call AY2(GetOwningPlayer(GetTriggerUnit()))
endif
if(GetDyingUnit()==I80)then
call FL1("Tower"+I2S(0)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(IB0,false)
call R3I(GetKillingUnit(),1)
call AY2(GetOwningPlayer(GetTriggerUnit()))
endif
if(GetDyingUnit()==I90)then
call FL1("Tower"+I2S(0)+I2S(1)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(IC0,false)
call R3I(GetKillingUnit(),1)
call AY2(GetOwningPlayer(GetTriggerUnit()))
endif
if(GetDyingUnit()==IA0)then
call FL1("Tower"+I2S(0)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(ID0,false)
call R3I(GetKillingUnit(),2)
endif
if(GetDyingUnit()==IB0)then
call FL1("Tower"+I2S(0)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(IE0,false)
call R3I(GetKillingUnit(),2)
endif
if(GetDyingUnit()==IC0)then
call FL1("Tower"+I2S(0)+I2S(2)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(IF0,false)
call R3I(GetKillingUnit(),2)
endif
if(GetDyingUnit()==ID0)then
call FL1("Tower"+I2S(0)+I2S(3)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),3)
call BK1(IZ0,false)
call BK1(IX0,false)
call BK1(IG0,false)
call BK1(IH0,false)
call BK1(OI0,false)
call BK1(O10,false)
call BK1(OO0,false)
call BK1(O20,false)
call BK1(IK0,false)
call BK1(IL0,false)
call BK1(IM0,false)
call BK1(IN0,false)
call BK1(IS0,false)
call BK1(IT0,false)
call BK1(IR0,false)
call BK1(IP0,false)
call BK1(IQ0,false)
call BK1(IU0,false)
call BK1(O00,false)
endif
if(GetDyingUnit()==IE0)then
call FL1("Tower"+I2S(0)+I2S(3)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),3)
call BK1(IV0,false)
call BK1(IY0,false)
call BK1(IG0,false)
call BK1(IH0,false)
call BK1(OI0,false)
call BK1(O10,false)
call BK1(OO0,false)
call BK1(O20,false)
call BK1(IK0,false)
call BK1(IL0,false)
call BK1(IM0,false)
call BK1(IN0,false)
call BK1(IS0,false)
call BK1(IT0,false)
call BK1(IR0,false)
call BK1(IP0,false)
call BK1(IQ0,false)
call BK1(IU0,false)
call BK1(O00,false)
endif
if(GetDyingUnit()==IF0)then
call FL1("Tower"+I2S(0)+I2S(3)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),3)
call BK1(IW0,false)
call BK1(IJ0,false)
call BK1(IG0,false)
call BK1(IH0,false)
call BK1(OI0,false)
call BK1(O10,false)
call BK1(OO0,false)
call BK1(O20,false)
call BK1(IK0,false)
call BK1(IL0,false)
call BK1(IM0,false)
call BK1(IN0,false)
call BK1(IS0,false)
call BK1(IT0,false)
call BK1(IR0,false)
call BK1(IP0,false)
call BK1(IQ0,false)
call BK1(IU0,false)
call BK1(O00,false)
endif
if GetDyingUnit()==IG0 or GetDyingUnit()==IH0 then
call FL1("Tower"+I2S(0)+I2S(4)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),4)
endif
if(AV2())then
call BK1(I60,false)
endif
if(AW2())then
call BK1(I60,false)
endif
endfunction
function AL2 takes nothing returns boolean
if(GetUnitTypeId(GetDyingUnit())==1966092365)then
return true
endif
if(GetUnitTypeId(GetDyingUnit())==1966092356)then
return true
endif
if(GetUnitTypeId(GetDyingUnit())==1966092366)then
return true
endif
if(GetUnitTypeId(GetDyingUnit())==1966092372)then
return true
endif
return false
endfunction
function AM2 takes nothing returns boolean
if(not(GetDyingUnit()==C60))then
return false
endif
if(not(IC1(C70)==true))then
return false
endif
return true
endfunction
function AN2 takes nothing returns boolean
if(not(GetDyingUnit()==C70))then
return false
endif
if(not(IC1(C60)==true))then
return false
endif
return true
endfunction
function AS2 takes nothing returns nothing
if IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))then
set J[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=J[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
if(GetDyingUnit()==BU0)then
call FL1("Tower"+I2S(1)+I2S(1)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(C10,false)
call R3I(GetKillingUnit(),1)
call AY2(GetOwningPlayer(GetTriggerUnit()))
endif
if(GetDyingUnit()==C00)then
call FL1("Tower"+I2S(1)+I2S(1)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(CO0,false)
call R3I(GetKillingUnit(),1)
call AY2(GetOwningPlayer(GetTriggerUnit()))
endif
if(GetDyingUnit()==CI0)then
call FL1("Tower"+I2S(1)+I2S(1)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(C20,false)
call R3I(GetKillingUnit(),1)
call AY2(GetOwningPlayer(GetTriggerUnit()))
endif
if(GetDyingUnit()==C10)then
call FL1("Tower"+I2S(1)+I2S(2)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(C30,false)
call R3I(GetKillingUnit(),2)
endif
if(GetDyingUnit()==CO0)then
call FL1("Tower"+I2S(1)+I2S(2)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(C40,false)
call R3I(GetKillingUnit(),2)
endif
if(GetDyingUnit()==C20)then
call FL1("Tower"+I2S(1)+I2S(2)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call BK1(C50,false)
call R3I(GetKillingUnit(),2)
endif
if(GetDyingUnit()==C30)then
call FL1("Tower"+I2S(1)+I2S(3)+I2S(0),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),3)
call BK1(C80,false)
call BK1(CB0,false)
call BK1(C60,false)
call BK1(C70,false)
call BK1(CL0,false)
call BK1(CM0,false)
call BK1(CN0,false)
call BK1(CS0,false)
call BK1(CE0,false)
call BK1(CF0,false)
call BK1(CG0,false)
call BK1(CH0,false)
call BK1(CZ0,false)
call BK1(CV0,false)
call BK1(CW0,false)
call BK1(CX0,false)
call BK1(CY0,false)
call BK1(CJ0,false)
call BK1(CK0,false)
endif
if(GetDyingUnit()==C40)then
call FL1("Tower"+I2S(1)+I2S(3)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),3)
call BK1(C90,false)
call BK1(CC0,false)
call BK1(C60,false)
call BK1(C70,false)
call BK1(CL0,false)
call BK1(CM0,false)
call BK1(CN0,false)
call BK1(CS0,false)
call BK1(CE0,false)
call BK1(CF0,false)
call BK1(CG0,false)
call BK1(CH0,false)
call BK1(CZ0,false)
call BK1(CV0,false)
call BK1(CW0,false)
call BK1(CX0,false)
call BK1(CY0,false)
call BK1(CJ0,false)
call BK1(CK0,false)
endif
if(GetDyingUnit()==C50)then
call FL1("Tower"+I2S(1)+I2S(3)+I2S(2),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),3)
call BK1(CA0,false)
call BK1(CD0,false)
call BK1(C60,false)
call BK1(C70,false)
call BK1(CL0,false)
call BK1(CM0,false)
call BK1(CN0,false)
call BK1(CS0,false)
call BK1(CE0,false)
call BK1(CF0,false)
call BK1(CG0,false)
call BK1(CH0,false)
call BK1(CZ0,false)
call BK1(CV0,false)
call BK1(CW0,false)
call BK1(CX0,false)
call BK1(CY0,false)
call BK1(CJ0,false)
call BK1(CK0,false)
endif
if GetDyingUnit()==C60 or GetDyingUnit()==C70 then
call FL1("Tower"+I2S(1)+I2S(4)+I2S(1),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call R3I(GetKillingUnit(),4)
endif
if(AM2())then
call BK1(BQ0,false)
endif
if(AN2())then
call BK1(BQ0,false)
endif
endfunction
function AR2 takes nothing returns boolean
local integer x=0
if GetPlayerSlotState(BO[1])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(BO[2])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(BO[3])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(BO[4])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(BO[5])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(CO[1])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(CO[2])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(CO[3])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(CO[4])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
if GetPlayerSlotState(CO[5])==PLAYER_SLOT_STATE_EMPTY then
set x=x+1
endif
return x==9
endfunction
function SinglePlayer_Condition takes nothing returns boolean
return bj_isSinglePlayer and AR2()
endfunction
function AP2 takes nothing returns nothing
set R70=false
endfunction
function AQ2 takes nothing returns nothing
set R90=true
endfunction
function AU2 takes nothing returns nothing
set R70=true
endfunction
function B02 takes nothing returns nothing
set TK=false
set A2I=true
endfunction
function BI2 takes nothing returns boolean
if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false then
call KillUnit(GetFilterUnit())
endif
return false
endfunction
function B12 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,CO[0],Condition(function BI2))
call NSI(g)
set g=null
set W3=true
endfunction
function BO2 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,BO[0],Condition(function BI2))
call NSI(g)
set g=null
set W3=true
endfunction
function B22 takes nothing returns boolean
if GetUnitTypeId(GetFilterUnit())==1865429044 or GetUnitTypeId(GetFilterUnit())==1868921189 then
call KillUnit(GetFilterUnit())
endif
return false
endfunction
function B32 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function B22))
call NSI(g)
set g=null
set W3=true
endfunction
function B42 takes nothing returns nothing
call BO2()
call B12()
set W3=true
endfunction
function B52 takes nothing returns boolean
if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true then
call SetHeroLevel(GetFilterUnit(),GetHeroLevel(GetFilterUnit())+QAI(UJ,1),true)
endif
return false
endfunction
function B62 takes nothing returns nothing
local string B72=SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString()))
local integer SUI=S2I(B72)
local group g=NTI()
if SUI<1 then
set SUI=1
endif
set UJ=SUI
call GroupEnumUnitsOfPlayer(g,GetTriggerPlayer(),Condition(function B52))
call NSI(g)
set g=null
set W3=true
endfunction
function B82 takes nothing returns nothing
call TriggerExecute(ZG)
set W3=true
endfunction
function B92 takes nothing returns boolean
if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true then
call UnitResetCooldown(GetFilterUnit())
call TimerStart(EJ0[GetPlayerId((GetOwningPlayer(GetFilterUnit())))],0,false,null)
call SetUnitState(GetFilterUnit(),UNIT_STATE_LIFE,GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_LIFE))
call SetUnitState(GetFilterUnit(),UNIT_STATE_MANA,GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_MANA))
endif
return false
endfunction
function BA2 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,GetTriggerPlayer(),Condition(function B92))
call NSI(g)
set g=null
set W3=true
endfunction
function BB2 takes nothing returns nothing
call KillUnit(K1[GetPlayerId(GetTriggerPlayer())])
set W3=true
endfunction
function BC2 takes nothing returns nothing
local string BD2=SubString(GetEventPlayerChatString(),5,StringLength(GetEventPlayerChatString()))
local integer GW1=S2I(BD2)
if GW1<0 or GW1>24 then
set GW1=0
endif
call SetFloatGameState(GAME_STATE_TIME_OF_DAY,GW1)
set W3=true
endfunction
function BE2 takes nothing returns nothing
local string BF2=SubString(GetEventPlayerChatString(),5,StringLength(GetEventPlayerChatString()))
local integer ROI=S2I(BF2)
call SetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)+ROI)
set W3=true
endfunction
function BG2 takes nothing returns nothing
local unit AD1=K1[GetPlayerId(GetTriggerPlayer())]
local player I6O=GetTriggerPlayer()
local location I2O
if TOI(I6O)then
set I2O=GetRectCenter(S3)
else
set I2O=GetRectCenter(O4)
endif
if Q2==false and IC1(AD1)then
call VQ1(AD1,I6O,GetLocationX(I2O),GetLocationY(I2O),true)
if I0O(AD1)==false or GetUnitAbilityLevel(AD1,1093684567)==0 then
call ReviveHeroLoc(AD1,I2O,true)
else
call IOO(AD1,I2O)
endif
endif
call RemoveLocation(I2O)
set AD1=null
set I6O=null
set I2O=null
endfunction
function BH2 takes nothing returns nothing
local unit P7I=K1[GetPlayerId(GetTriggerPlayer())]
local player BZ2
local unit BV2
local real x=GetRectCenterX(Y5)
local real y=GetRectCenterX(Y5)
if TOI(GetOwningPlayer(P7I))then
set BZ2=BO[1]
else
set BZ2=CO[1]
endif
set BV2=CreateUnit(BZ2,1211117616,x,y,0)
call SetHeroLevel(BV2,10,false)
set P7I=null
set BV2=null
set BZ2=null
endfunction
function BW2 takes nothing returns nothing
call TriggerEvaluate(J20)
endfunction
function BX2 takes nothing returns nothing
call TriggerEvaluate(OH)
endfunction
function BY2 takes nothing returns nothing
call EnumDestructablesInRectAll(bj_mapInitialPlayableArea,function AA2)
endfunction
function BJ2 takes nothing returns boolean
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,"**** "+GetObjectName(1848653382)+" ****")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,GetObjectName(1848653622)+" -lvlup xx, -refresh, -spawncreeps, -powerup, -neutrals, -kill, -gold xxxx, -time xx, -killsent, -killscourge, -killall, -noherolimit, -trees, -killwards, -spawnoff, -spawnon, -roshan, -respawn, -dummy")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,"**** "+GetObjectName(1848653382)+" ****")
return false
endfunction
function BK2 takes nothing returns nothing
local player OnlyPlayer=WO
local trigger t
set R80=true
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,GetObjectName(1848653622)+" -lvlup xx, -refresh, -spawncreeps, -powerup, -neutrals, -kill, -gold xxxx, -time xx, -killsent, -killscourge, -killall, -noherolimit, -trees, -killwards, -spawnoff, -spawnon, -roshan, -respawn, -dummy")
set t=CreateTrigger()
call TriggerAddCondition(t,Condition(function BJ2))
call TriggerRegisterTimerEvent(t,GetRandomReal(60,100),false)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-lvlup",false)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-lvlup",false)
call TriggerAddAction(t,function B62)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-spawncreeps",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-spawncreeps",true)
call TriggerAddAction(t,function B82)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-refresh",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-refresh",true)
call TriggerAddAction(t,function BA2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-kill",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-kill",true)
call TriggerAddAction(t,function BB2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-gold",false)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-gold",false)
call TriggerAddAction(t,function BE2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-time",false)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-time",false)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-time",false)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-time",false)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-time",false)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-time",false)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-time",false)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-time",false)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-time",false)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-time",false)
call TriggerAddAction(t,function BC2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-powerup",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-powerup",true)
call TriggerAddAction(t,function BW2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-killall",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-killall",true)
call TriggerAddAction(t,function B42)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-killsent",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-killsent",true)
call TriggerAddAction(t,function BO2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-killscourge",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-killscourge",true)
call TriggerAddAction(t,function B12)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-neutrals",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-neutrals",true)
call TriggerAddAction(t,function BX2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-noherolimit",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-noherolimit",true)
call TriggerAddAction(t,function B02)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-trees",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-trees",true)
call TriggerAddAction(t,function BY2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-killwards",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-killwards",true)
call TriggerAddAction(t,function B32)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-spawnoff",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-spawnoff",true)
call TriggerAddAction(t,function AU2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-spawnon",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-spawnon",true)
call TriggerAddAction(t,function AP2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-roshan",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-roshan",true)
call TriggerAddAction(t,function AQ2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-respawn",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-respawn",true)
call TriggerAddAction(t,function BG2)
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-dummy",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-dummy",true)
call TriggerAddAction(t,function BH2)
endfunction
function BM2 takes nothing returns boolean
return not B0
endfunction
function BN2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit B71=(LoadUnitHandle(LY,(S5I),(26)))
if GetUnitTypeId(B71)!=1852010352 then
call UnitResetCooldown(B71)
call SetUnitManaPercentBJ(B71,100)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set B71=null
return false
endfunction
function BS2 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function BN2))
call SaveUnitHandle(LY,(S5I),(26),(GetTriggerUnit()))
set t=null
endfunction
function BT2 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer BR2=T8I(OO)+T8I(AO)
local integer NumRequired=Q9I(BR2,BR2/2+1)
local integer S5I=GetHandleId(t)
set A2I=true
if PE0==false then
set RA0=true
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60.00," ")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,90.00,GetObjectName(1848653623))
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,90.00,GetObjectName(1848653624))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddAction(t,function BS2)
endif
endfunction
function BQ2 takes nothing returns boolean
if QW1(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false then
call GK1(GetOwningPlayer(GetTriggerUnit()))
call FL1("Level"+I2S(GetHeroLevel(GetTriggerUnit())),GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
endif
return false
endfunction
function C02 takes nothing returns nothing
if PE0==false then
call BK2()
call S0I(GetTriggeringTrigger())
endif
endfunction
function CI2 takes nothing returns boolean
if B0==false and(bj_isSinglePlayer and AR2())==false then
call C02()
endif
return false
endfunction
function CO2 takes nothing returns boolean
local integer i=0
local real C22
local real C32
local real x
local real y
local boolean C42
loop
exitwhen i>11
if GetLocalPlayer()==Player(i)then
set C22=GetCameraTargetPositionX()
set C32=GetCameraTargetPositionY()
endif
set i=i+1
endloop
set i=0
call PauseGame(true)
call TriggerSleepAction(0)
loop
exitwhen i>11
if GetLocalPlayer()==Player(i)then
call SetCameraPosition(C22+1,C32+1)
endif
set i=i+1
endloop
call TriggerSleepAction(0)
call PauseGame(false)
set i=0
loop
exitwhen i>11
if GetLocalPlayer()==Player(i)then
set x=GetCameraTargetPositionX()
if x==C22+1 then
set C42=false
else
set C42=true
endif
call SetCameraPosition(C22,C32)
endif
set i=i+1
endloop
return C42
endfunction
function C52 takes nothing returns nothing
call CinematicModeBJ(true,bj_FORCE_ALL_PLAYERS)
call PauseGame(false)
call TriggerSleepAction(.0)
call EnableUserControl(false)
call TriggerSleepAction(.0)
if CO2()==false then
set RB0=true
endif
call EnableUserControl(true)
call M4I(1)
call CinematicModeBJ(false,bj_FORCE_ALL_PLAYERS)
endfunction
function C62 takes nothing returns boolean
local integer i=1
local unit SFI
loop
exitwhen i>5
set SFI=K1[GetPlayerId(BO[i])]
if SFI!=null and IC1(SFI)==false and IsUnitEnemy(SFI,GetLocalPlayer())==true then
if RB0 and(C2==false or(C2==true and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70)))then
if IsUnitVisible(SFI,GetLocalPlayer())==false then
if UK==2 then
call FY1(SFI)
endif
else
if UK==2 then
call FV1(SFI)
endif
endif
endif
endif
set SFI=K1[GetPlayerId(CO[i])]
if SFI!=null and IC1(SFI)==false and IsUnitEnemy(SFI,GetLocalPlayer())==true then
if RB0 and(C2==false or(C2==true and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70)))then
if IsUnitVisible(SFI,GetLocalPlayer())==false then
if UK==2 then
call FY1(SFI)
endif
else
if UK==2 then
call FV1(SFI)
endif
endif
endif
endif
set i=i+1
endloop
set SFI=null
return false
endfunction
function C72 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function C62))
set t=null
endfunction
function C82 takes nothing returns nothing
call C52()
call C72()
endfunction
function C92 takes unit SWI returns boolean
return(GetOwningPlayer(SWI)==BO[0])or(GetOwningPlayer(SWI)==CO[0])
endfunction
function CA2 takes nothing returns nothing
call SetUnitUserData(GetEnumUnit(),0)
call IssuePointOrderLoc(GetEnumUnit(),"attack",(O2[GetUnitAbilityLevel((GetEnumUnit()),I2)]))
endfunction
function CB2 takes nothing returns nothing
call IssueTargetOrder(GetEnumUnit(),"attack",RE0)
call GroupAddUnit(RD0,GetEnumUnit())
call SetUnitUserData(GetEnumUnit(),RF0)
endfunction
function CC2 takes nothing returns boolean
local integer id=GetUnitTypeId(GetFilterUnit())
if id==1700946284 or id==1697657398 or id==1970107511 or id==1966092370 then
return false
endif
if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(RE0))and(GetOwningPlayer(GetFilterUnit())==BO[0]or GetOwningPlayer(GetFilterUnit())==CO[0])and GetUnitUserData(GetFilterUnit())==0 then
return true
endif
return false
endfunction
function CD2 takes nothing returns nothing
if GetUnitCurrentOrder(GetEnumUnit())==0 and IsUnitInRange(GetEnumUnit(),RE0,GetUnitAcquireRange(GetEnumUnit()))==false then
call GroupRemoveUnit(RD0,GetEnumUnit())
call SetUnitUserData(GetEnumUnit(),0)
call IssuePointOrderLoc(GetEnumUnit(),"attack",(O2[GetUnitAbilityLevel((GetEnumUnit()),I2)]))
endif
endfunction
function CE2 takes nothing returns nothing
local integer S5I=GetHandleId((LoadUnitHandle(LY,(GetHandleId(GetExpiredTimer())),(2))))
local integer CF2=(LoadInteger(LY,(S5I),(143)))
local group CG2=(LoadGroupHandle(LY,(S5I),(144)))
set RC0[CF2]=null
call ForGroup(CG2,function CA2)
call GroupClear(CG2)
set CG2=null
endfunction
function CH2 takes unit SFI,unit Z4O returns nothing
local integer S5I=GetHandleId(SFI)
local group CG2=(LoadGroupHandle(LY,(S5I),(144)))
local integer CF2=(LoadInteger(LY,(S5I),(143)))
local unit CZ2=RC0[CF2]
local group g
if CZ2!=null and CZ2!=Z4O then
call ForGroup(CG2,function CA2)
call GroupClear(CG2)
endif
set RC0[CF2]=Z4O
set RD0=CG2
set RE0=Z4O
set RF0=CF2
call ForGroup(CG2,function CD2)
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(Z4O),GetUnitY(Z4O),500,Condition(function CC2))
call ForGroup(g,function CB2)
call NSI(g)
call TimerStart((LoadTimerHandle(LY,(S5I),(141))),2,false,function CE2)
set CG2=null
set CZ2=null
set g=null
endfunction
function CV2 takes nothing returns boolean
local unit SFI=GetTriggerUnit()
local unit P8I=GetOrderTargetUnit()
local integer CW2=GetIssuedOrderId()
local integer CF2
if IsUnitType(P8I,UNIT_TYPE_HERO)==true and IsUnitIllusion(P8I)==false and(CW2==851983 or CW2==851971)and IsUnitEnemy(P8I,GetOwningPlayer(SFI))and IsUnitVisible(SFI,GetOwningPlayer(P8I))then
set CF2=(LoadInteger(LY,(GetHandleId(P8I)),(143)))
if RC0[CF2]==null or RC0[CF2]==P8I or IC1(RC0[CF2])then
if CF2!=0 then
call CH2(P8I,SFI)
endif
endif
endif
set SFI=null
set P8I=null
return false
endfunction
function CX2 takes nothing returns boolean
local unit SFI=GetAttacker()
local unit P8I=GetTriggerUnit()
local integer CW2=GetIssuedOrderId()
local integer CF2
if C92(SFI)==false then
set CF2=(LoadInteger(LY,(GetHandleId(P8I)),(143)))
if RC0[CF2]==null or RC0[CF2]==P8I or IC1(RC0[CF2])then
if CF2!=0 then
call CH2(P8I,SFI)
endif
endif
endif
set SFI=null
set P8I=null
return false
endfunction
function CY2 takes unit SFI returns nothing
local group g
local trigger t
local timer tm
local integer S5I=GetHandleId(SFI)
set RG0=RG0+1
call SaveBoolean(LY,(S5I),(142),(true))
call SaveInteger(LY,(S5I),(143),(RG0))
set g=NTI()
call SaveGroupHandle(LY,(S5I),(144),(g))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerAddCondition(t,Condition(function CV2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function CX2))
set tm=CreateTimer()
call SaveTimerHandle(LY,(GetHandleId(SFI)),(141),(tm))
call SaveUnitHandle(LY,(GetHandleId(tm)),(2),(SFI))
set g=null
set t=null
endfunction
function CJ2 takes nothing returns boolean
if RRI(GetTriggerUnit())and(LoadBoolean(LY,(GetHandleId(GetTriggerUnit())),(142)))==false then
call CY2(GetTriggerUnit())
endif
return false
endfunction
function CL2 takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==BO[0]then
call SetUnitAbilityLevel(GetTriggerUnit(),I2,5)
if RC0[GetUnitUserData(GetTriggerUnit())]==null then
call SetUnitUserData(GetTriggerUnit(),0)
call IssuePointOrderLoc(GetTriggerUnit(),"attack",(O2[GetUnitAbilityLevel((GetTriggerUnit()),I2)]))
endif
elseif GetOwningPlayer(GetTriggerUnit())==CO[0]then
call SetUnitAbilityLevel(GetTriggerUnit(),I2,1)
if RC0[GetUnitUserData(GetTriggerUnit())]==null then
call SetUnitUserData(GetTriggerUnit(),0)
call IssuePointOrderLoc(GetTriggerUnit(),"attack",(O2[GetUnitAbilityLevel((GetTriggerUnit()),I2)]))
endif
endif
return false
endfunction
constant function InvisibilityUnitId takes nothing returns integer
return 1966092354
endfunction
function CN2 takes nothing returns nothing
local unit JMO=GetTriggerUnit()
local unit CS2=(LoadUnitHandle(LY,(GetHandleId(JMO)),(145)))
call RemoveUnit(CS2)
endfunction
function CT2 takes nothing returns nothing
local group g
local unit JMO
local unit CS2
local trigger t
local integer i
set t=CreateTrigger()
call TriggerAddAction(t,function CN2)
set g=NTI()
call GroupEnumUnitsOfPlayer(g,BO[0],Condition(function N1I))
loop
set JMO=FirstOfGroup(g)
exitwhen JMO==null
call GroupRemoveUnit(g,JMO)
if GetUnitAbilityLevel(JMO,1097102451)>0 or GetUnitAbilityLevel(JMO,1098150517)>0 then
call TriggerRegisterUnitEvent(t,JMO,EVENT_UNIT_DEATH)
set CS2=CreateUnit(BO[1],(1966092354),-5000,-5100,0)
call SetUnitScale(CS2,0,0,0)
call SetUnitPathing(CS2,false)
call SetUnitInvulnerable(CS2,true)
call SetUnitX(CS2,GetUnitX(JMO))
call SetUnitY(CS2,GetUnitY(JMO))
call SaveUnitHandle(LY,(GetHandleId(JMO)),(145),(CS2))
endif
endloop
call NSI(g)
set g=NTI()
call GroupEnumUnitsOfPlayer(g,CO[0],Condition(function N1I))
loop
set JMO=FirstOfGroup(g)
exitwhen JMO==null
call GroupRemoveUnit(g,JMO)
if GetUnitAbilityLevel(JMO,1097102451)>0 or GetUnitAbilityLevel(JMO,1098150517)>0 then
call TriggerRegisterUnitEvent(t,JMO,EVENT_UNIT_DEATH)
set CS2=CreateUnit(CO[1],(1966092354),3400,4400,0)
call SetUnitScale(CS2,0,0,0)
call SetUnitPathing(CS2,false)
call SetUnitInvulnerable(CS2,true)
call SetUnitX(CS2,GetUnitX(JMO))
call SetUnitY(CS2,GetUnitY(JMO))
call SaveUnitHandle(LY,(GetHandleId(JMO)),(145),(CS2))
endif
endloop
call NSI(g)
endfunction
function CP2 takes nothing returns nothing
local unit CQ2=GetTriggerUnit()
local unit P8I=RC0[GetUnitUserData(CQ2)]
call SetUnitPosition(CQ2,GetUnitX(CQ2),GetUnitY(CQ2))
if P8I!=null and IC1(P8I)==false and IsUnitVisible(P8I,GetOwningPlayer(P8I))then
call IssueTargetOrder(CQ2,"attack",P8I)
else
call DisableTrigger(GetTriggeringTrigger())
call IssuePointOrderLoc(CQ2,"attack",(O2[GetUnitAbilityLevel((CQ2),I2)]))
call EnableTrigger(GetTriggeringTrigger())
endif
set CQ2=null
set P8I=null
endfunction
function CU2 takes nothing returns boolean
if C92(GetTriggerUnit())then
call CP2()
endif
return false
endfunction
function D02 takes nothing returns nothing
local unit CQ2=GetTriggerUnit()
local unit P8I=RC0[GetUnitUserData(CQ2)]
call SetUnitPosition(CQ2,GetUnitX(CQ2),GetUnitY(CQ2))
if P8I!=null and IC1(P8I)==false and IsUnitVisible(P8I,GetOwningPlayer(P8I))then
call IssueTargetOrder(CQ2,"attack",P8I)
else
call DisableTrigger(GetTriggeringTrigger())
call IssuePointOrderLoc(CQ2,"attack",(O2[GetUnitAbilityLevel((CQ2),I2)]))
call EnableTrigger(GetTriggeringTrigger())
endif
set CQ2=null
set P8I=null
endfunction
function DI2 takes nothing returns boolean
if GetIssuedOrderId()==851986 then
call D02()
endif
return false
endfunction
function D12 takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())==BO[0]then
if IsUnitFogged(GetAttacker(),BO[1])or IsUnitFogged(GetAttacker(),CO[1])then
call O71(CreateFogModifierRadius(BO[1],FOG_OF_WAR_VISIBLE,GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),128,true,false),1)
endif
elseif GetOwningPlayer(GetTriggerUnit())==CO[0]then
if IsUnitFogged(GetAttacker(),BO[1])or IsUnitFogged(GetAttacker(),CO[1])then
call O71(CreateFogModifierRadius(CO[1],FOG_OF_WAR_VISIBLE,GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),128,true,false),1)
endif
endif
return false
endfunction
function DO2 takes nothing returns boolean
local trigger t
local group g
local unit u
if C2 then
set t=CreateTrigger()
call TriggerRegisterPlayerUnitEvent(t,BO[0],EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,Condition(function N1I))
call TriggerRegisterPlayerUnitEvent(t,CO[0],EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,Condition(function N1I))
call TriggerAddCondition(t,Condition(function DI2))
set t=CreateTrigger()
set g=NTI()
call GroupEnumUnitsOfPlayer(g,BO[0],Condition(function N1I))
loop
set u=FirstOfGroup(g)
exitwhen u==null
call GroupRemoveUnit(g,u)
if GetUnitAcquireRange(u)!=0 then
call TriggerRegisterUnitInRange(t,u,600,Condition(function N1I))
endif
endloop
call NSI(g)
set g=NTI()
call GroupEnumUnitsOfPlayer(g,CO[0],Condition(function N1I))
loop
set u=FirstOfGroup(g)
exitwhen u==null
call GroupRemoveUnit(g,u)
if GetUnitAcquireRange(u)!=0 and IsUnitType(u,UNIT_TYPE_STRUCTURE)then
call TriggerRegisterUnitInRange(t,u,600,Condition(function N1I))
endif
endloop
call NSI(g)
call TriggerAddCondition(t,Condition(function CU2))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function D12))
endif
call S0I(GetTriggeringTrigger())
return false
endfunction
function D32 takes unit SWI returns nothing
local integer i=0
loop
exitwhen(i==16)
if IsUnitAlly(SWI,Player(i))then
call UnitShareVision(SWI,Player(i),true)
endif
set i=i+1
endloop
endfunction
function D42 takes nothing returns nothing
call D32(GetEnumUnit())
endfunction
function D52 takes nothing returns nothing
local integer x
local group g
set x=1
loop
exitwhen x>5
call SetPlayerAlliance(BO[0],BO[x],ConvertAllianceType(5),false)
call SetPlayerAlliance(CO[0],CO[x],ConvertAllianceType(5),false)
set x=x+1
endloop
set g=NTI()
call GroupEnumUnitsOfPlayer(g,BO[0],Condition(function N1I))
call ForGroup(g,function D42)
call NSI(g)
set g=NTI()
call GroupEnumUnitsOfPlayer(g,CO[0],Condition(function N1I))
call ForGroup(g,function D42)
call NSI(g)
set g=null
endfunction
function D62 takes nothing returns nothing
local integer x
set x=0
loop
exitwhen x>5
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(0),false)
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(1),false)
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(2),false)
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(3),false)
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(4),false)
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(5),false)
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(6),false)
call SetPlayerAlliance(BO[x],DO,ConvertAllianceType(7),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(0),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(1),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(2),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(3),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(4),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(5),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(6),false)
call SetPlayerAlliance(CO[x],DO,ConvertAllianceType(7),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(0),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(1),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(2),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(3),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(4),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(5),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(6),false)
call SetPlayerAlliance(DO,BO[x],ConvertAllianceType(7),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(0),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(1),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(2),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(3),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(4),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(5),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(6),false)
call SetPlayerAlliance(DO,CO[x],ConvertAllianceType(7),false)
set x=x+1
endloop
endfunction
function D72 takes nothing returns boolean
return C92(GetTriggerUnit())
endfunction
function D82 takes nothing returns nothing
call D32(GetTriggerUnit())
endfunction
function D92 takes nothing returns nothing
local trigger t
if not C2 then
return
endif
call D52()
call D62()
set t=CreateTrigger()
call TriggerRegisterEnterRectSimple(t,GetWorldBounds())
call TriggerAddCondition(t,Condition(function D72))
call TriggerAddAction(t,function D82)
set t=null
endfunction
function DB2 takes nothing returns nothing
local string DC2=StringCase(GetEventPlayerChatString(),false)
local boolean R4O=DC2=="-random"or DC2=="-random int"or DC2=="-random agi"or DC2=="-random str"
local boolean DD2=DC2=="-repick"
local boolean DE2=DC2=="-gameinfo"
local boolean DF2=SubString(DC2,0,5)=="-swap"
local boolean DG2=DC2=="-recreate"
local boolean DH2=DC2=="-unstuck"
local boolean DZ2=DC2=="-matchup"or DC2=="-ma"
local boolean DV2=DC2=="-movespeed"or DC2=="-ms"
local boolean DW2=DC2=="-msa"
local boolean DX2=DC2=="-disablehelp"
local boolean DY2=DC2=="-enablehelp"
local boolean DJ2=DC2=="-creepstats"or DC2=="-cs"
local boolean DK2=DC2=="-cson"or DC2=="-csoff"
local boolean DL2=DC2=="-hidemsg"
local boolean DM2=DC2=="-showmsg"
local boolean DN2=DC2=="-weather snow"or DC2=="-weather rain"or DC2=="-weather off"or DC2=="-weather random"or DC2=="-weather wind"or DC2=="-weather moonlight"
local boolean DS2=DC2=="-showdeny"or DC2=="-hidedeny"
local boolean DT2=DC2=="-denyinfo"or DC2=="-di"
local boolean DR2=DC2=="-don"or DC2=="-deathon"or DC2=="-doff"or DC2=="-deathoff"
local boolean DP2=SubString(DC2,0,5)=="-roll"and DC2!="-rollhero"
local boolean DQ2=DC2=="-hhn"or DC2=="-hideheronames"
local boolean DU2=DC2=="-mute"
local boolean E02=DC2=="-afk"
local boolean EI2=SubString(DC2,0,8)=="-kickafk"
local boolean E12=DC2=="-apm"
local boolean EO2=DC2=="-clear"
local boolean BPO=DC2=="-courier"
local boolean AH=DC2=="-ah"
local boolean E22=DC2=="-invokelist"or DC2=="-il"
local boolean E32=DC2=="-list"
local boolean E42=DC2=="-rolloff"
local boolean E52=DC2=="-rollon"
local boolean E62=SubString(DC2,0,6)=="-music"
local boolean E72=SubString(DC2,0,6)=="-water"
local boolean E82=SubString(DC2,0,6)=="-quote"
local boolean E92=SubString(DC2,0,3)=="-cm"
local boolean EA2=SubString(DC2,0,9)=="-itemswap"
local boolean EB2=DC2=="-bonus"
local boolean EC2=DC2=="-rollhero"or DC2=="-rh"
local boolean ED2=SubString(DC2,0,9)=="-rickroll"
local boolean NoSwitch=DC2=="-noswitch"
local boolean EE2=SubString(DC2,0,7)=="-switch"or DC2=="-ok"or DC2=="-no"
local boolean Terrain=DC2=="-terrain"or DC2=="-terrain default"or DC2=="-terrain snow"
local boolean EF2=DC2=="-tips"
local boolean EG2=DC2=="-ii"or DC2=="-iteminfo"
local boolean EH2=DC2=="-center"or DC2=="-centeroff"or DC2=="-c"or DC2=="-co"
local boolean EZ2=DC2=="-unlock"
local boolean EV2=DC2=="-disableselection"or DC2=="-ds"
local boolean EW2=DC2=="-enableselection"or DC2=="-es"
local boolean EX2=DC2=="-sleep"
local boolean EY2=DC2=="-calm"
local boolean R4I=DC2=="-st"
local boolean EJ2=DC2=="-nosanta"
call PMI("EK2",R4O)
call PMI("EL2",DD2)
call PMI("EM2",DE2)
call PMI("EN2",DF2)
call PMI("ES2",DG2)
call PMI("ET2",DH2)
call PMI("ER2",DZ2)
call PMI("EP2",DV2)
call PMI("EQ2",DW2)
call PMI("EU2",DX2)
call PMI("F02",DY2)
call PMI("FI2",DJ2)
call PMI("F12",DK2)
call PMI("FO2",DL2)
call PMI("F22",DM2)
call PMI("F32",DN2)
call PMI("F42",DS2)
call PMI("F52",DT2)
call PMI("F62",DR2)
call PMI("F72",DP2)
call PMI("F82",DQ2)
call PMI("F92",DU2)
call PMI("FA2",E02)
call PMI("FB2",EI2)
call PMI("FC2",E12)
call PMI("FD2",EO2)
call PMI("FE2",BPO)
call PMI("FF2",AH)
call PMI("FG2",E22)
call PMI("FH2",E32)
call PMI("FZ2",E42)
call PMI("FV2",E52)
call PMI("FW2",E62)
call PMI("FY2",E72)
call PMI("FJ2",E82)
call PMI("FK2",E92)
call PMI("FL2",EA2)
call PMI("FM2",EB2)
call PMI("FN2",EC2)
call PMI("FS2",ED2)
call PMI("FT2",EE2)
call PMI("FR2",EG2)
call PMI("FP2",EF2)
call PMI("FQ2",EH2)
call PMI("FU2",EZ2)
call PMI("G02",EV2)
call PMI("GI2",EW2)
call PMI("G12",EX2)
call PMI("GO2",R4I)
call PMI("G22",EY2)
call PMI("G32",EJ2)
endfunction
function FS2 takes nothing returns nothing
local integer a=S2I(SubString(GetEventPlayerChatString(),10,StringLength(GetEventPlayerChatString())))
local integer MLI=GetPlayerId(GetTriggerPlayer())
set RH0[MLI]=RH0[MLI]+1
if RH0[MLI]>10 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848656977))
return
endif
if a<1 or a>8 then
set a=GetRandomInt(1,8)
endif
if a==1 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna give you up")
elseif a==2 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna let you down")
elseif a==3 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna run around")
elseif a==4 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna desert you")
elseif a==5 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna make you cry")
elseif a==6 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna say goodbye")
elseif a==7 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna tell a lie")
elseif a==8 then
call QRI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna hurt you")
endif
endfunction
function G52 takes nothing returns boolean
if O3==false then
return false
endif
if S0[GetPlayerId(L2)]==true then
return false
endif
if B0==false then
return false
endif
if K1[GetPlayerId(L2)]!=null and B3==false then
return false
endif
if D0[GetPlayerId(L2)]==true then
return false
endif
if C3[GetPlayerId(L2)]and B3==false then
return false
endif
if B3 and E3[GetPlayerId(L2)]then
return false
endif
return true
endfunction