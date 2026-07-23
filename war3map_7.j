function GU4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerAddCondition(t,Condition(function GQ4))
call TriggerRegisterTimerEvent(t,0.3,false)
call SaveUnitHandle(LY,(S5I),(14),(GetTriggerUnit()))
set t=null
endfunction
function H04 takes nothing returns boolean
if GetSpellAbilityId()==1093685847 then
call GU4()
endif
return false
endfunction
function KG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GP4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function H04))
set t=null
endfunction
function HI4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call IA1(I01,1093818423)
call IssueTargetOrderById(I01,852274,P7I)
set t=null
set P7I=null
return false
endfunction
function H14 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t
local integer S5I
if GetRandomInt(0,1)==0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.65,false)
call TriggerAddCondition(t,Condition(function HI4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
set t=null
set P7I=null
endfunction
function HO4 takes nothing returns boolean
if GetSpellAbilityId()==1093677903 then
call H14()
endif
return false
endfunction
function KH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HO4))
set t=null
endfunction
function H24 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
if GetUnitAbilityLevel(P7I,1095263841)==0 then
call IA1(P7I,1095263841)
if GetUnitAbilityLevel(P7I,1112504171)>0 then
call UnitRemoveAbility(P7I,1112504171)
endif
endif
call SetUnitAbilityLevel(P7I,1095263841,GetUnitAbilityLevel(P7I,1093817679))
set P7I=null
endfunction
function H34 takes nothing returns boolean
if GetLearnedSkill()==1093817679 and IsUnitIllusion(GetTriggerUnit())==false then
call H24()
endif
return false
endfunction
function MJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function H34))
set t=null
endfunction
function H44 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real H54=GetUnitState(P7I,UNIT_STATE_LIFE)
call UnitRemoveAbility(P7I,1093751344)
call UnitRemoveAbility(P7I,1110459445)
call G21(P7I,0)
call G61(P7I,0)
call SetUnitState(P7I,UNIT_STATE_LIFE,H54)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function H64 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093678161)
local real H74=GetUnitState(P8I,UNIT_STATE_LIFE)
local real H54=GetUnitState(P7I,UNIT_STATE_LIFE)
local integer H84=R2I((0.035+0.015*SUI)*H74)
local integer H94=R2I((0.35+0.15*SUI)*H74)
call G21(P7I,H84)
call G61(P7I,H94)
call IA1(P7I,1093751344)
call SetUnitState(P8I,UNIT_STATE_LIFE,1)
call P6I(P7I,P8I,2,20)
call P6I(P7I,P8I,1,20)
call P6I(P7I,P8I,3,20)
call SetUnitState(P7I,UNIT_STATE_LIFE,H54+H94)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",P8I,"chest"))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,35,false)
call TriggerAddCondition(t,Condition(function H44))
set P7I=null
set P8I=null
set t=null
endfunction
function HA4 takes nothing returns boolean
if GetSpellAbilityId()==1093678161 and GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)>0.5 and RYI(GetSpellTargetUnit())==false then
call H64()
endif
return false
endfunction
function MK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HA4))
set t=null
endfunction
function HB4 takes integer x returns boolean
return x==1093678680 or x==1093681489 or x==1093743695 or x==1093684805 or x==1093743695 or x==1093747504 or x==1093686082
endfunction
function HC4 takes nothing returns boolean
return(GetLearnedSkill()==1093683526)and(IsUnitIllusion(GetTriggerUnit())==false)
endfunction
function HD4 takes nothing returns boolean
return GetUnitAbilityLevel(GetTriggerUnit(),1110455896)>0 and(TQI(GetSpellAbilityId())or GetSpellAbilityId()==1093685065)and HB4(GetSpellAbilityId())==false and V81(GetSpellAbilityId())==false
endfunction
function HE4 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit PKI=GetTriggerUnit()
local unit HF4=(LoadUnitHandle(LY,(S5I),(254)))
local integer AK3=GetUnitAbilityLevel(HF4,1093683526)
if GetRandomInt(1,100)<=40 and QVI(PKI,HF4,1400)then
call SetUnitState(PKI,UNIT_STATE_MANA,GetUnitState(PKI,UNIT_STATE_MANA)+(0.05+0.05*AK3)*GetUnitState(PKI,UNIT_STATE_MAX_MANA))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\ReplenishManaCasterOverhead.mdl",PKI,"overhead"))
endif
endfunction
function HG4 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local integer AK3=GetUnitAbilityLevel(PKI,1093683526)
local trigger t
if(AK3==1)then
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HD4))
call TriggerAddAction(t,function HE4)
call SaveUnitHandle(LY,(GetHandleId(t)),(254),(PKI))
endif
if(AK3==1)then
call IA1(PKI,1093685068)
elseif(AK3==2)then
call IA1(PKI,1093685069)
elseif(AK3==3)then
call IA1(PKI,1093685070)
elseif(AK3==4)then
call IA1(PKI,1093685064)
endif
endfunction
function N21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function HC4))
call TriggerAddAction(t,function HG4)
endfunction
function HH4 takes nothing returns boolean
local real d
if GetUnitAbilityLevel(GetTriggerUnit(),1110455897)>0 and GetUnitAbilityLevel(GetEventDamageSource(),1093685065)>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
call UnitRemoveAbility(GetTriggerUnit(),1110455897)
set d=0.01*(5+GetUnitAbilityLevel(GetEventDamageSource(),1093685065))*(GetUnitState(GetEventDamageSource(),UNIT_STATE_MANA)+100)
if(IsUnitType(GetTriggerUnit(),UNIT_TYPE_SUMMONED)==true or IsUnitIllusion(GetTriggerUnit()))and GetUnitTypeId(GetTriggerUnit())!=1848651828 and GetUnitTypeId(GetTriggerUnit())!=1848652088 and GetUnitTypeId(GetTriggerUnit())!=1848652099 and GetUnitTypeId(GetTriggerUnit())!=1848652103 and GetUnitTypeId(GetTriggerUnit())!=1848651861 and GetUnitTypeId(GetTriggerUnit())!=1848651865 and GetUnitTypeId(GetTriggerUnit())!=1848651866 then
set d=d+100*GetUnitAbilityLevel(GetEventDamageSource(),1093685065)
endif
call UYI("+"+I2S(R2I(d)),1,GetTriggerUnit(),0.023,191,64,255,216)
if(GetRandomInt(1,100)<=GetUnitAbilityLevel(GetEventDamageSource(),1093683526)*10)and((LoadBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(264)))==false)then
call SetUnitState(GetEventDamageSource(),UNIT_STATE_MANA,GetUnitState(GetEventDamageSource(),UNIT_STATE_MANA)+0.25*GetUnitState(GetEventDamageSource(),UNIT_STATE_MAX_MANA))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\ReplenishManaCasterOverhead.mdl",GetEventDamageSource(),"overhead"))
endif
call DisableTrigger(GetTriggeringTrigger())
call P6I(GetEventDamageSource(),GetTriggerUnit(),3,d)
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function HZ4 takes nothing returns nothing
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
call TriggerAddCondition(t,Condition(function HH4))
endif
set t=null
set P8I=null
set P7I=null
endfunction
function HV4 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetUnitAbilityLevel(GetAttacker(),1093685065)>0 and(LoadBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))then
call HZ4()
endif
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if(GetIssuedOrderId()==OrderId("poisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(true))
elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(false))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093685065 then
call HZ4()
endif
return false
endfunction
function HW4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function HV4))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function HX4 takes nothing returns boolean
if GetLearnedSkill()==1093685065 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093685065)==1 then
call HW4()
endif
return false
endfunction
function N31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function HX4))
set t=null
endfunction
function HY4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer HJ4=(LoadInteger(LY,(S5I),(262)))
call SetHeroInt(P8I,GetHeroInt(P8I,false)+HJ4,true)
call SetHeroInt(P7I,GetHeroInt(P7I,false)-HJ4,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function HK4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call SaveInteger(LY,(GetHandleId((P8I))),((4303)),(2))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call SetUnitInvulnerable(P8I,false)
call PauseUnit(P8I,false)
call ShowUnit(P8I,true)
call ClearSelectionForPlayer(GetOwningPlayer(P8I))
call SelectUnitAddForPlayer(P8I,GetOwningPlayer(P8I))
call RemoveSavedHandle(LY,(GetHandleId(P7I)),(748))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function HL4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093685066)
local integer HJ4=Q9I(GetHeroInt(P8I,false),1+SUI*3)
local trigger t
local integer S5I
local unit I01=CreateUnit(GetOwningPlayer(P8I),1865429305,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitApplyTimedLife(I01,1112820806,(SUI+1))
if(IsUnitEnemy(P8I,GetOwningPlayer(P7I)))==false or NNI(GetSpellTargetUnit())==false then
call SaveInteger(LY,(GetHandleId((P8I))),((4303)),(1))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SelectUnitRemoveForPlayer(P8I,GetOwningPlayer(P8I))
call SetUnitInvulnerable(P8I,true)
call PauseUnit(P8I,true)
call ShowUnit(P8I,false)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkConversion\\ZombifyTarget.mdl",GetUnitX(P8I),GetUnitY(P8I))))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,SUI,false)
call TriggerAddCondition(t,Condition(function HK4))
if(IsUnitEnemy(P8I,GetOwningPlayer(P7I)))==true then
call SaveUnitHandle(LY,(GetHandleId(P7I)),(748),(P8I))
call SetHeroInt(P8I,GetHeroInt(P8I,false)-HJ4,true)
call SetHeroInt(P7I,GetHeroInt(P7I,false)+HJ4,true)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(262),(HJ4))
call TriggerRegisterTimerEvent(t,50,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function HY4))
endif
endif
set P7I=null
set P8I=null
set t=null
endfunction
function HM4 takes nothing returns boolean
if GetSpellAbilityId()==1093685066 then
call HL4()
endif
return false
endfunction
function HN4 takes nothing returns nothing
if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))and GetSpellTargetUnit()!=GetTriggerUnit()then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
endfunction
function HS4 takes nothing returns boolean
if GetSpellAbilityId()==1093685066 then
call HN4()
endif
return false
endfunction
function N41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HM4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function HS4))
set t=null
endfunction
function HT4 takes nothing returns boolean
return GetSpellAbilityId()==1093685067 or GetSpellAbilityId()==1093752407
endfunction
function HR4 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local unit HF4=GetTriggerUnit()
local integer HP4=GetHeroInt(HF4,true)-GetHeroInt(P8I,true)
local integer array HQ4
local integer SUI=GetUnitAbilityLevel(HF4,1093685067)
local integer HU4=7+1*SUI
if SUI==0 then
set SUI=GetUnitAbilityLevel(HF4,1093752407)
set HU4=7+1*SUI+1
endif
set HQ4[1]=10
set HQ4[2]=30
set HQ4[3]=50
if(HP4>0)then
call UnitDamageTarget(HF4,P8I,HP4*HU4,true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call UYI(I2S(R2I(HP4*HU4)),3,P8I,0.023,216,30,30,216)
if(HP4<HQ4[SUI]or GetUnitAbilityLevel(HF4,1093752407)>0)then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl",P8I,"overhead"))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)*.25)
endif
endif
endfunction
function Z04 takes nothing returns boolean
if(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)then
if(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())))then
return true
endif
endif
return false
endfunction
function ZI4 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local integer AK3=GetUnitAbilityLevel(PKI,1093685067)
local real x=GetLocationX(GetSpellTargetLoc())
local real y=GetLocationY(GetSpellTargetLoc())
local group Z51=NTI()
local integer DJ1=0
local unit Z14=(LoadUnitHandle(LY,(GetHandleId(PKI)),(748)))
if AK3==0 then
set AK3=GetUnitAbilityLevel(PKI,1093752407)
endif
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl",x,y))
loop
exitwhen DJ1>=360
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl",x+(200+AK3*50)*Cos(DJ1*bj_DEGTORAD),y+(200+AK3*50)*Sin(DJ1*bj_DEGTORAD)))
set DJ1=DJ1+45
endloop
call GroupEnumUnitsInRange(Z51,x,y,300+AK3*100,Condition(function Z04))
if Z14!=null and QNI(x,y,GetUnitX(Z14),GetUnitY(Z14))<(300+AK3*100)then
call SetUnitInvulnerable(Z14,false)
call GroupAddUnit(Z51,Z14)
endif
call ForGroup(Z51,function HR4)
if Z14!=null and IC1(Z14)==false then
call SetUnitInvulnerable(Z14,true)
endif
call NSI(Z51)
endfunction
function N51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HT4))
call TriggerAddAction(t,function ZI4)
endfunction
function ZO4 takes nothing returns nothing
call P6I(GTI,GetEnumUnit(),1,GRI)
endfunction
function Z24 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEvalCount(t)>200 or GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEvalCount(t)>1 and GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093685575 and GetSpellTargetUnit()==P8I)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(31))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
set g=NTI()
set GK=P7I
set GTI=P7I
set GRI=1.0+2.0*GetUnitAbilityLevel(P7I,1093685575)
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),275,Condition(function CA1))
call GroupRemoveUnit(g,P8I)
call ForGroup(g,function ZO4)
call NSI(g)
set P8I=null
endif
set t=null
set P7I=null
set g=null
return false
endfunction
function Z34 takes nothing returns nothing
local trigger t=CreateTrigger()
local effect fx=AddSpecialEffectTarget("war3mapImported\\NewSoulArmor.mdx",GetSpellTargetUnit(),"chest")
local integer S5I=GetHandleId(t)
call IO1(TC,GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveUnitHandle(LY,(S5I),(17),(GetSpellTargetUnit()))
call SaveEffectHandle(LY,(S5I),(31),(fx))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,GetSpellTargetUnit(),EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Z24))
set t=null
set fx=null
endfunction
function Z44 takes nothing returns boolean
if GetSpellAbilityId()==1093685575 then
call Z34()
endif
return false
endfunction
function NP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Z44))
set t=null
endfunction
function Z54 takes unit u returns boolean
return GetUnitAbilityLevel(u,1110454858)>0 or GetUnitAbilityLevel(u,1112896368)>0 or GetUnitAbilityLevel(u,1114993524)>0 or PII(u)
endfunction
function Z64 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer SUI
local unit P7I
local unit P8I
local real x1
local real y1
local real d
local real a
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set P8I=(LoadUnitHandle(LY,(S5I),(17)))
set d=(LoadReal(LY,(S5I),(138)))
set x=(LoadReal(LY,(S5I),(6)))
set y=(LoadReal(LY,(S5I),(7)))
set a=(LoadReal(LY,(S5I),(137)))
set x1=GetUnitX(P8I)+d/12*Cos(a)
set y1=GetUnitY(P8I)+d/12*Sin(a)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
call SetUnitPosition(P8I,x1,y1)
else
call SetUnitX(P8I,x1)
call SetUnitY(P8I,y1)
endif
if GetTriggerEvalCount(t)>19 then
set P7I=(LoadUnitHandle(LY,(S5I),(2)))
set SUI=(LoadInteger(LY,(S5I),(5)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P6I(P7I,P8I,1,SUI*40)
set P7I=null
endif
set P8I=null
endif
set t=null
return false
endfunction
function Z74 takes nothing returns nothing
local trigger t
local integer S5I
local unit P7I=GetTriggerUnit()
local unit P8I=GetEnumUnit()
if Z54(P8I)==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,0.025,true)
call TriggerAddCondition(t,Condition(function Z64))
call SaveReal(LY,(S5I),(6),((GPI)*1.0))
call SaveReal(LY,(S5I),(7),((GQI)*1.0))
call SaveReal(LY,(S5I),(138),((QNI(GPI,GQI,GetUnitX(P8I),GetUnitY(P8I)))*1.0))
call SaveReal(LY,(S5I),(137),((Atan2(GQI-GetUnitY(P8I),GPI-GetUnitX(P8I)))*1.0))
call SaveInteger(LY,(S5I),(5),(GUI))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
set t=null
set P7I=null
set P8I=null
endfunction
function Z84 takes nothing returns nothing
local group g=NTI()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093685573)
local real r=150+100*SUI+25
set GK=GetTriggerUnit()
call IO1(FE,x,y)
call DestroyEffect(AddSpecialEffect("war3mapImported\\Star Aura.mdx",x,y))
call GroupEnumUnitsInRange(g,x,y,r,Condition(function CE1))
set GPI=x
set GQI=y
set GUI=SUI
call ForGroup(g,function Z74)
call UPI(x,y,200)
call RemoveLocation(l)
call NSI(g)
set l=null
set g=null
endfunction
function Z94 takes nothing returns boolean
if GetSpellAbilityId()==1093685573 then
call Z84()
endif
return false
endfunction
function ZA4 takes nothing returns nothing
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
if UQI(x,y)==false or(IsPointInRegion(LN,((x)*1.0),((y)*1.0)))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652619))
endif
call RemoveLocation(l)
set l=null
endfunction
function ZB4 takes nothing returns boolean
if GetSpellAbilityId()==1093685573 then
call ZA4()
endif
return false
endfunction
function NR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Z94))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function ZB4))
set t=null
endfunction
function ZC4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P8I,1110456151)
call UnitRemoveAbility(P8I,1113746543)
call UnitRemoveAbility(P8I,1110455858)
call UnitRemoveAbility(P8I,1110455861)
call UnitRemoveAbility(P8I,1113813619)
call UnitRemoveAbility(P8I,1110454582)
call UnitRemoveAbility(P8I,1110455634)
return false
endfunction
function ZD4 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,GetUnitAbilityLevel(GetTriggerUnit(),1093685815)*1.5+1.5,false)
call TriggerAddCondition(t,Condition(function ZC4))
call SaveUnitHandle(LY,(GetHandleId(t)),(17),(GetSpellTargetUnit()))
call IO1(UD,GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()))
call DestroyEffect(AddSpecialEffectTarget("effects\\Surge.mdx",GetSpellTargetUnit(),"origin"))
endfunction
function ZE4 takes nothing returns boolean
if GetSpellAbilityId()==1093685815 then
call ZD4()
endif
return false
endfunction
function NQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ZE4))
set t=null
endfunction
function ZF4 takes boolean CK3 returns boolean
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit ZG4=(LoadUnitHandle(LY,(S5I),(259)))
local unit P8I=GetTriggerUnit()
local unit ZH4=CreateUnit(GetOwningPlayer(ZG4),1697657171,GetUnitX(P8I),GetUnitY(P8I),0)
local unit SFI=K1[GetPlayerId(GetOwningPlayer(ZG4))]
local integer SUI=GetUnitAbilityLevel(SFI,1093685579)
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093808465)
endif
call SetUnitAbilityLevel(ZG4,1093685580,SUI)
set H0I=GetUnitX(P8I)
set HII=GetUnitY(P8I)
set H1I=P8I
if CK3 then
call SetUnitAbilityLevel(ZG4,1093685580,3+SUI)
call IssueTargetOrderById(ZG4,852274,P8I)
call P6I(ZG4,P8I,1,150)
else
call IssueTargetOrderById(ZG4,852274,P8I)
call P6I(ZG4,P8I,1,150)
endif
call UnitApplyTimedLife(ZH4,1112820806,0.5)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl",GetUnitX(P8I),GetUnitY(P8I)))
set ZG4=null
set P8I=null
return false
endfunction
function ZZ4 takes nothing returns boolean
local group g
if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer((LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(259)))))and V51(GetUnitTypeId(GetFilterUnit()))==false then
set g=(LoadGroupHandle(LY,(GetHandleId(GetTriggeringTrigger())),(257)))
if IsUnitInGroup(GetFilterUnit(),g)==false then
call GroupAddUnit(g,GetFilterUnit())
call ZF4(false)
endif
endif
set g=null
return false
endfunction
function ZV4 takes nothing returns boolean
local group g
if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer((LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(259)))))and V51(GetUnitTypeId(GetFilterUnit()))==false then
set g=(LoadGroupHandle(LY,(GetHandleId(GetTriggeringTrigger())),(257)))
if IsUnitInGroup(GetFilterUnit(),g)==false then
call GroupAddUnit(g,GetFilterUnit())
call ZF4(true)
endif
endif
set g=null
return false
endfunction
function WallOfReplica_FindSource takes nothing returns nothing
if GetPlayerId(GetOwningPlayer(GetEnumUnit()))==UJ then
call GroupAddUnit(XK,GetEnumUnit())
endif
endfunction
function ZW4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
call GroupRemoveUnit((LoadGroupHandle(LY,(S5I),(257))),(LoadUnitHandle(LY,(S5I),(261))))
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
call FlushChildHashtable(LY,(S5I))
call DisableTrigger(t)
set t=null
return false
endfunction
function ZX4 takes nothing returns boolean
local unit ZG4=GetSummoningUnit()
local unit IYO=GetSummonedUnit()
local integer S5I=GetHandleId(ZG4)
local integer ZY4=(LoadInteger(LY,(S5I),(260)))
local trigger t=CreateTrigger()
call SetUnitVertexColor(IYO,255,255,255,100)
call TriggerRegisterUnitEvent(t,IYO,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function ZW4))
call SaveGroupHandle(LY,(GetHandleId(t)),(257),((LoadGroupHandle(LY,(S5I),(257)))))
call SaveUnitHandle(LY,(GetHandleId(t)),(261),(H1I))
set ZY4=ZY4+1
call SaveInteger(LY,(S5I),(260),(ZY4))
call SaveInteger(LY,(S5I),(2800+ZY4),(NKI(IYO)))
call SaveTriggerHandle(LY,(S5I),(2900+ZY4),(t))
call SetUnitX(IYO,H0I)
call SetUnitY(IYO,HII)
set ZG4=null
set IYO=null
return false
endfunction
function ZJ4 takes nothing returns nothing
call RemoveUnit(GetEnumUnit())
endfunction
function ZK4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer DW3=GetHandleId(t)
local trigger ZL4=(LoadTriggerHandle(LY,(DW3),(255)))
local integer KAO=GetHandleId(ZL4)
local trigger ZM4=(LoadTriggerHandle(LY,(KAO),(256)))
local group ZN4=(LoadGroupHandle(LY,(KAO),(257)))
local group ZS4=(LoadGroupHandle(LY,(KAO),(258)))
local unit ZG4=(LoadUnitHandle(LY,(KAO),(259)))
local integer ZT4=GetHandleId(ZG4)
local integer ZY4=(LoadInteger(LY,(ZT4),(260)))
local integer ZR4
local integer i
local unit u
call ForGroup(ZS4,function ZJ4)
set i=1
loop
exitwhen i>ZY4
set ZR4=(LoadInteger(LY,(ZT4),(2800+i)))
set u=NYI(ZR4)
call FlushChildHashtable(LY,(GetHandleId((LoadTriggerHandle(LY,(ZT4),(2900+i))))))
call S0I((LoadTriggerHandle(LY,(ZT4),(2900+i))))
if IsUnitIllusion(u)then
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl",GetUnitX(u),GetUnitY(u)))
call RemoveUnit(u)
call NXI(ZR4)
endif
set i=i+1
endloop
call FlushChildHashtable(LY,(DW3))
call FlushChildHashtable(LY,(KAO))
call FlushChildHashtable(LY,(ZT4))
call RemoveUnit(ZG4)
call NSI(ZN4)
call NSI(ZS4)
call S0I(ZL4)
call S0I(ZM4)
call S0I(t)
set t=null
set ZL4=null
set ZM4=null
set ZN4=null
set ZS4=null
set ZG4=null
set u=null
return false
endfunction
function ZP4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real ZQ4=GetUnitFacing(SFI)-45
local unit ZG4=CreateUnit(GetOwningPlayer(SFI),1747988559,x,y,ZQ4)
local unit u
local real UJ2
local real UK2
local integer i
local real DJ1
local trigger t=CreateTrigger()
local group g1=NTI()
local integer S5I=GetHandleId(t)
local group g2=NTI()
local trigger ZL4=t
local integer SUI=GetUnitAbilityLevel(SFI,1093685579)
local boolean CK3=false
if SUI==0 then
set CK3=true
set SUI=GetUnitAbilityLevel(SFI,1093808465)
endif
call SetUnitAbilityLevel(ZG4,1093685580,SUI)
call IO1(GE,x,y)
call SaveGroupHandle(LY,(S5I),(257),(g1))
call SaveGroupHandle(LY,(GetHandleId(ZG4)),(257),(g1))
call SaveGroupHandle(LY,(S5I),(258),(g2))
call SaveUnitHandle(LY,(S5I),(259),(ZG4))
call SaveInteger(LY,(GetHandleId(ZG4)),(260),(0))
set i=0
loop
exitwhen i>39
set UJ2=x+(500-25*i)*Cos((ZQ4-45)*bj_DEGTORAD)
set UK2=y+(500-25*i)*Sin((ZQ4-45)*bj_DEGTORAD)
set u=CreateUnit(GetOwningPlayer(SFI),1747988560,UJ2,UK2,ZQ4)
call SetUnitPathing(u,false)
call SetUnitX(u,UJ2)
call SetUnitY(u,UK2)
call GroupAddUnit(g2,u)
call TriggerRegisterUnitInRange(t,u,17,Condition(function N1I))
set i=i+1
endloop
if CK3 then
call TriggerAddCondition(t,Condition(function ZV4))
else
call TriggerAddCondition(t,Condition(function ZZ4))
endif
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,ZG4,EVENT_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function ZX4))
call SaveTriggerHandle(LY,(S5I),(256),(t))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,15*SUI,false)
call TriggerAddCondition(t,Condition(function ZK4))
call SaveTriggerHandle(LY,(GetHandleId(t)),(255),(ZL4))
call RemoveLocation(l)
set SFI=null
set l=null
set u=null
set t=null
set ZL4=null
set g1=null
set g2=null
set ZG4=null
endfunction
function ZU4 takes nothing returns boolean
if GetSpellAbilityId()==1093685579 or GetSpellAbilityId()==1093808465 then
call ZP4()
endif
return false
endfunction
function NU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ZU4))
set t=null
endfunction
function V04 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer VI4=(LoadInteger(LY,(S5I),(29)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
if(LoadBoolean(LY,(S5I),(276)))==false and GetTriggerUnit()==(LoadUnitHandle(LY,(S5I),(2)))then
call SaveBoolean(LY,(S5I),(276),(true))
call SetHeroStr((LoadUnitHandle(LY,(S5I),(2))),GetHeroStr((LoadUnitHandle(LY,(S5I),(2))),false)-VI4,true)
elseif(LoadBoolean(LY,(S5I),(277)))==false and GetTriggerUnit()==(LoadUnitHandle(LY,(S5I),(17)))then
call SaveBoolean(LY,(S5I),(277),(true))
call SetHeroStr((LoadUnitHandle(LY,(S5I),(17))),GetHeroStr((LoadUnitHandle(LY,(S5I),(17))),false)+VI4,true)
endif
else
if(LoadBoolean(LY,(S5I),(276)))==false then
call SaveBoolean(LY,(S5I),(276),(true))
call SetHeroStr((LoadUnitHandle(LY,(S5I),(2))),GetHeroStr((LoadUnitHandle(LY,(S5I),(2))),false)-VI4,true)
endif
if(LoadBoolean(LY,(S5I),(277)))==false then
call SaveBoolean(LY,(S5I),(277),(true))
call SetHeroStr((LoadUnitHandle(LY,(S5I),(17))),GetHeroStr((LoadUnitHandle(LY,(S5I),(17))),false)+VI4,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
return false
endfunction
function V14 takes nothing returns nothing
local unit P7I=HOI
local unit P8I=GetEnumUnit()
local integer VI4
local integer SUI=H2I
local trigger t
local integer S5I
if IsUnitType(P8I,UNIT_TYPE_HERO)==true and V51(GetUnitTypeId(P8I))==false then
set VI4=IMinBJ(GetHeroStr(P8I,false)-1,4)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SetHeroStr(P7I,GetHeroStr(P7I,false)+VI4,true)
call SetHeroStr(P8I,GetHeroStr(P8I,false)-VI4,true)
call TriggerRegisterTimerEvent(t,40,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function V04))
call SaveBoolean(LY,(S5I),(276),(false))
call SaveBoolean(LY,(S5I),(277),(false))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(29),(VI4))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",P7I,"origin"))
endif
call P6I(P7I,P8I,1,40*SUI-20)
set P7I=null
set P8I=null
set t=null
endfunction
function VO4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local group g=NTI()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093743955)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747990346,x,y,0)
call DestroyEffect(AddSpecialEffect("effects\\DecayGreen_Groundonly_1.mdx",x,y))
call RemoveLocation(l)
set GK=P7I
set HOI=P7I
set H2I=SUI
call GroupEnumUnitsInRange(g,x,y,325+25,Condition(function CE1))
call ForGroup(g,function V14)
call NSI(g)
call KillUnit(I01)
set P7I=null
set l=null
set g=null
set t=null
set I01=null
endfunction
function V24 takes nothing returns boolean
if GetSpellAbilityId()==1093743955 then
call VO4()
endif
return false
endfunction
function SA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function V24))
set t=null
endfunction
function V34 takes nothing returns nothing
if H6I<=H7I then
set H6I=H6I+1
call GroupAddUnit(H3I,GetEnumUnit())
endif
endfunction
function V44 takes unit P7I,unit P8I returns nothing
call UGI("SPLK",GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I),0.1,0.6,0.44,.9,0.6)
endfunction
function V54 takes nothing returns nothing
local integer PAI=14+4*GetUnitAbilityLevel(H4I,1093685813)
call SetUnitState(H5I,UNIT_STATE_LIFE,GetUnitState(H5I,UNIT_STATE_LIFE)+PAI)
if GetUnitTypeId(GetEnumUnit())!=1848657461 then
call A41(GetEnumUnit(),PAI)
endif
call V44(GetEnumUnit(),H5I)
endfunction
function V64 takes nothing returns nothing
local integer PAI=14+4*GetUnitAbilityLevel(H4I,1093685813)
call P6I(H4I,H5I,1,PAI)
if GetUnitTypeId(GetEnumUnit())!=1848657461 then
call A41(GetEnumUnit(),PAI)
endif
call V44(GetEnumUnit(),H5I)
endfunction
function V74 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local group g=NTI()
local integer V84=GetUnitAbilityLevel(SFI,1093685813)*2+8
set H3I=NTI()
set H6I=0
set H7I=V84
set GK=SFI
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),1300+25,Condition(function D81))
call GroupRemoveUnit(g,SFI)
call GroupRemoveUnit(g,GetSpellTargetUnit())
call ForGroup(g,function V34)
call NSI(g)
set g=H3I
set H5I=GetSpellTargetUnit()
set H4I=SFI
if IsUnitAlly(H5I,GetOwningPlayer(SFI))then
call ForGroup(g,function V54)
else
call ForGroup(g,function V64)
endif
call NSI(g)
set SFI=null
set g=null
endfunction
function V94 takes nothing returns boolean
if GetSpellAbilityId()==1093685813 and(IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_STRUCTURE)==false or GetOwningPlayer(GetSpellTargetUnit())==GetOwningPlayer(GetTriggerUnit()))then
call V74()
endif
return false
endfunction
function SC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function V94))
set t=null
endfunction
function VA4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit VB4=(LoadUnitHandle(LY,(S5I),(269)))
local real CV4=GetUnitState(P8I,UNIT_STATE_LIFE)
local real VC4=GetUnitState(P8I,UNIT_STATE_MAX_LIFE)
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerUnit()==P8I then
call KillUnit(VB4)
endif
elseif Q2==true then
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call PauseUnit(VB4,true)
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
call DisableTrigger(t)
call IssueTargetOrder(VB4,"attack",P8I)
call EnableTrigger(t)
elseif(CV4<(100*H9I)or CV4/VC4<(0.15+0.05*H9I))and GetUnitAbilityLevel(VB4,1110458702)==0 then
call IssueTargetOrder(HAI[GetPlayerId(GetOwningPlayer(VB4))],"bloodlust",VB4)
elseif IsUnitVisible(P8I,GetOwningPlayer(VB4))==false then
if(LoadBoolean(LY,(S5I),(270)))==true then
if(LoadBoolean(LY,(S5I),(271)))==true then
if(LoadBoolean(LY,(S5I),(272)))==true then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(VB4)
else
call SaveBoolean(LY,(S5I),(272),(true))
endif
else
call SaveBoolean(LY,(S5I),(271),(true))
endif
else
call SaveBoolean(LY,(S5I),(270),(true))
endif
else
call SaveBoolean(LY,(S5I),(270),(false))
call SaveBoolean(LY,(S5I),(271),(false))
call SaveBoolean(LY,(S5I),(272),(false))
endif
set t=null
set P8I=null
set VB4=null
return false
endfunction
function VD4 takes nothing returns boolean
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetEnumUnit()
local unit VB4=CreateUnit(H8I,1848657461,GetUnitX(P8I),GetUnitY(P8I),0)
call IssueTargetOrder(VB4,"attack",P8I)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,VB4,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,VB4,EVENT_UNIT_ISSUED_ORDER)
call TriggerRegisterUnitEvent(t,VB4,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,VB4,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function VA4))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(269),(VB4))
call SaveInteger(LY,(S5I),(5),(H9I))
set t=null
set P8I=null
set VB4=null
return false
endfunction
function VE4 takes nothing returns boolean
if GetUnitTypeId(GetFilterUnit())==1848657461 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 then
call KillUnit(GetFilterUnit())
endif
return false
endfunction
function VF4 takes player p returns nothing
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,p,Condition(function VE4))
call NSI(g)
set g=null
endfunction
function VG4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit VH4=(LoadUnitHandle(LY,(S5I),(266)))
local unit VZ4=(LoadUnitHandle(LY,(S5I),(267)))
local unit VV4=(LoadUnitHandle(LY,(S5I),(268)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g
local player VE2
if TII(GetOwningPlayer(P7I))then
set VE2=CO[0]
else
set VE2=BO[0]
endif
if GetTriggerEventId()==EVENT_UNIT_DEATH then
if(LoadBoolean(LY,(S5I),(265)))then
call I41(VE2,.4,GetUnitX(P7I),GetUnitY(P7I),600)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call ShowUnit(P7I,false)
call RemoveUnit(VH4)
call RemoveUnit(VZ4)
call RemoveUnit(VV4)
call VF4(GetOwningPlayer(P7I))
else
if IsUnitVisible(P7I,VE2)then
call SaveBoolean(LY,(S5I),(265),(true))
endif
set g=NTI()
set GK=P7I
set H8I=GetOwningPlayer(P7I)
set H9I=SUI
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),25+400+200*SUI,Condition(function C81))
if Q2==false then
call ForGroup(g,function VD4)
endif
call NSI(g)
set g=null
endif
set t=null
set P7I=null
set VH4=null
set VZ4=null
set VV4=null
return false
endfunction
function VW4 takes nothing returns nothing
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local unit P7I
local real UJ2
local real UK2
local real VX4
local unit VH4
local unit VZ4
local unit VV4
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093743958)
local integer id
if SUI==1 then
set P7I=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1848657482,x,y,0)
elseif SUI==2 then
set P7I=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1848657481,x,y,0)
elseif SUI==3 then
set P7I=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1848657462,x,y,0)
else
set P7I=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1848657480,x,y,0)
endif
call IO1(TF,x,y)
set id=GetPlayerId(GetOwningPlayer(P7I))
if HAI[id]==null then
set HAI[id]=CreateUnit(GetOwningPlayer(P7I),1697657174,x,y,0)
call IA1(HAI[id],1093744438)
endif
call SetUnitPosition(P7I,PTI(x),PUI(y))
call UnitApplyTimedLife(P7I,1112820806,10+5*SUI)
call RemoveLocation(l)
call UPI(x,y,300)
set UJ2=x+200*Cos(0*bj_DEGTORAD)
set UK2=y+200*Sin(0*bj_DEGTORAD)
set VX4=UEI(UJ2,UK2,x,y)
set VH4=CreateUnit(GetOwningPlayer(P7I),1747990344,UJ2,UK2,VX4)
call SetUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
call QueueUnitAnimation(VH4,"Stand Work Gold")
set UJ2=x+200*Cos(120*bj_DEGTORAD)
set UK2=y+200*Sin(120*bj_DEGTORAD)
set VX4=UEI(UJ2,UK2,x,y)
set VZ4=CreateUnit(GetOwningPlayer(P7I),1747990344,UJ2,UK2,VX4)
call SetUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
call QueueUnitAnimation(VZ4,"Stand Work Gold")
set UJ2=x+200*Cos(240*bj_DEGTORAD)
set UK2=y+200*Sin(240*bj_DEGTORAD)
set VX4=UEI(UJ2,UK2,x,y)
set VV4=CreateUnit(GetOwningPlayer(P7I),1747990344,UJ2,UK2,VX4)
call SetUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call QueueUnitAnimation(VV4,"Stand Work Gold")
call SetUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call QueueUnitAnimation(P7I,"Stand Work")
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,3,true)
call TriggerAddCondition(t,Condition(function VG4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(266),(VH4))
call SaveUnitHandle(LY,(S5I),(267),(VZ4))
call SaveUnitHandle(LY,(S5I),(268),(VV4))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveBoolean(LY,(S5I),(265),(false))
call TriggerEvaluate(t)
set P7I=null
set VH4=null
set VZ4=null
set VV4=null
set l=null
endfunction
function VY4 takes nothing returns boolean
if GetSpellAbilityId()==1093743958 then
call VW4()
endif
return false
endfunction
function SB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VY4))
set t=null
endfunction
function VJ4 takes unit SWI returns boolean
if ES1(SWI,FR0[JL0])!=null then
return true
endif
return false
endfunction
function FleshGolem_ValidCorpse takes nothing returns boolean
if GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IC1(GetFilterUnit())==true then
set HBI=HBI+1
endif
return false
endfunction
function VK4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093743946)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093744449,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function VL4 takes nothing returns nothing
if IsUnitType(GK,UNIT_TYPE_HERO)==true then
if VJ4(HK)then
call SetUnitState(HK,UNIT_STATE_LIFE,GetUnitState(HK,UNIT_STATE_LIFE)+GetUnitState(HK,UNIT_STATE_MAX_LIFE)*0.10)
else
call SetUnitState(HK,UNIT_STATE_LIFE,GetUnitState(HK,UNIT_STATE_LIFE)+GetUnitState(HK,UNIT_STATE_MAX_LIFE)*0.06)
endif
else
if VJ4(HK)then
call SetUnitState(HK,UNIT_STATE_LIFE,GetUnitState(HK,UNIT_STATE_LIFE)+GetUnitState(HK,UNIT_STATE_MAX_LIFE)*0.03)
else
call SetUnitState(HK,UNIT_STATE_LIFE,GetUnitState(HK,UNIT_STATE_LIFE)+GetUnitState(HK,UNIT_STATE_MAX_LIFE)*0.02)
endif
endif
endfunction
function VM4 takes nothing returns boolean
local trigger t2=GetTriggeringTrigger()
local integer KAO=GetHandleId(t2)
local trigger t1=(LoadTriggerHandle(LY,(KAO),(274)))
local integer DW3=GetHandleId(t1)
local unit P7I=(LoadUnitHandle(LY,(KAO),(2)))
local unit P8I
local real d
local real a
local boolean VN4=(LoadBoolean(LY,(KAO),(273)))
if(GetTriggerEventId()==EVENT_UNIT_DEATH and GetTriggerUnit()==P7I)or(GetTriggerEventId()!=EVENT_UNIT_DAMAGED and GetTriggerEventId()!=EVENT_UNIT_DEATH)then
call FlushChildHashtable(LY,(DW3))
call FlushChildHashtable(LY,(KAO))
call S0I(t1)
call S0I(t2)
elseif GetTriggerEventId()==EVENT_UNIT_DEATH then
if IsUnitIllusion(GetDyingUnit())==false then
call IJ1(GetDyingUnit(),P7I,1747990361,"VL4",600,false)
endif
elseif VN4==false then
set P8I=GetTriggerUnit()
set d=QLI(P7I,P8I)
if d<775 and GetEventDamage()>4 then
if VJ4(P7I)then
set a=25+5*HCI
else
set a=15+5*HCI
endif
if d>200 then
set a=a-15*((d-150)/(775-150))
endif
call SaveBoolean(LY,(KAO),(273),(true))
call P6I(GetEventDamageSource(),GetTriggerUnit(),7,GetEventDamage()*a/100)
call SaveBoolean(LY,(KAO),(273),(false))
endif
endif
set t2=null
set t1=null
set P7I=null
set P8I=null
return false
endfunction
function VS4 takes nothing returns boolean
local trigger t1=GetTriggeringTrigger()
local integer DW3=GetHandleId(t1)
local trigger t2=(LoadTriggerHandle(LY,(DW3),(275)))
local integer KAO=GetHandleId(t2)
local unit P8I=GetTriggerUnit()
local unit P7I=(LoadUnitHandle(LY,(DW3),(2)))
if IsUnitEnemy(P7I,GetOwningPlayer(P8I))==true and IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(P8I,1093678162)==0 then
if(LoadBoolean(LY,(KAO),(GetHandleId(P8I))))==false then
call TriggerRegisterUnitEvent(t2,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t2,P8I,EVENT_UNIT_DEATH)
call SaveBoolean(LY,(KAO),(GetHandleId(P8I)),(true))
endif
endif
set t1=null
set t2=null
set P8I=null
set P7I=null
return false
endfunction
function VT4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t1=CreateTrigger()
local integer DW3=GetHandleId(t1)
local trigger t2=CreateTrigger()
local integer KAO=GetHandleId(t2)
local trigger t3=CreateTrigger()
local integer ZT4=GetHandleId(t3)
local integer SUI=GetUnitAbilityLevel(P7I,1093743946)
set HCI=SUI
call TriggerRegisterUnitInRange(t1,P7I,750,Condition(function N1I))
call TriggerAddCondition(t1,Condition(function VS4))
call SaveTriggerHandle(LY,(DW3),(275),(t2))
call SaveUnitHandle(LY,(DW3),(2),(P7I))
call TriggerRegisterTimerEvent(t2,30,false)
call TriggerRegisterUnitEvent(t2,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t2,Condition(function VM4))
call SaveTriggerHandle(LY,(KAO),(274),(t1))
call SaveUnitHandle(LY,(KAO),(2),(P7I))
call SaveBoolean(LY,(KAO),(273),(false))
call TriggerRegisterTimerEvent(t3,0.01,false)
call TriggerAddCondition(t3,Condition(function VK4))
call SaveUnitHandle(LY,(ZT4),(2),(P7I))
set P7I=null
set t1=null
set t2=null
set t3=null
endfunction
function VR4 takes nothing returns boolean
if GetSpellAbilityId()==1093743946 and GetUnitTypeId(GetTriggerUnit())==1211117650 then
call VT4()
endif
return false
endfunction
function SD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VR4))
call Q1I(1093744449)
set t=null
endfunction
function VP4 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),HEI)==false and RKI(GetEnumUnit())==false then
call GroupAddUnit(HEI,GetEnumUnit())
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),HFI,false)
call AX1(GetEnumUnit(),HFI,1,3,1110455633)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\SpellShieldAmulet\\SpellShieldCaster.mdl",GetEnumUnit(),"overhead"))
endif
endfunction
function VQ4 takes nothing returns boolean
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
local integer SUI=GetUnitAbilityLevel(SFI,1093684299)
if QNI(x,y,x2,y2)<=HDI then
set x=x2
set y=y2
else
set x=PTI(II3+65*Cos(a*bj_DEGTORAD))
set y=PUI(I13+65*Sin(a*bj_DEGTORAD))
endif
if SUI==1 then
set HFI=1093810497
elseif SUI==2 then
set HFI=1093810489
elseif SUI==3 then
set HFI=1093810498
elseif SUI==4 then
set HFI=1093810488
endif
set GK=SFI
set HEI=PR2
call GroupEnumUnitsInRange(g,x,y,325,Condition(function CA1))
call ForGroup(g,function VP4)
call NSI(g)
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
call SetUnitPosition(SFI,x,y)
if(x==x2 and y==y2)or NPI>40 then
call SetUnitX(I01,x)
call SetUnitY(I01,y)
call IssueImmediateOrder(I01,"thunderclap")
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitAnimation(SFI,"stand")
call SetUnitPathing(SFI,true)
call SetUnitInvulnerable(SFI,false)
if GetUnitTypeId(SFI)==1160786520 then
call SetUnitVertexColor(SFI,255,255,255,255)
else
call SetUnitVertexColor(SFI,0,255,150,255)
endif
call SaveInteger(LY,(GetHandleId((SFI))),((4261)),(2))
endif
set t=null
set SFI=null
set I01=null
return false
endfunction
function VU4 takes nothing returns nothing
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
if GetSpellTargetUnit()==null then
set l=GetSpellTargetLoc()
else
set l=GetUnitLoc(GetSpellTargetUnit())
endif
set x2=GetLocationX(l)
set y2=GetLocationY(l)
set a=UEI(x1,y1,x2,y2)
call RemoveLocation(l)
call SetUnitAnimationByIndex(SFI,0)
call SetUnitPathing(SFI,false)
call SetUnitInvulnerable(SFI,true)
call SetUnitVertexColor(SFI,0,0,0,255)
call SaveInteger(LY,(GetHandleId((SFI))),((4261)),(1))
call SaveReal(LY,(S5I),(66),((PTI(x2))*1.0))
call SaveReal(LY,(S5I),(67),((PUI(y2))*1.0))
call SaveReal(LY,(S5I),(23),((x1)*1.0))
call SaveReal(LY,(S5I),(24),((y1)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call IA1(I01,1093684289)
call SetUnitAbilityLevel(I01,1093684289,GetUnitAbilityLevel(SFI,1093684299))
call TriggerRegisterTimerEvent(t,0.025,true)
call TriggerAddCondition(t,Condition(function VQ4))
set SFI=null
set l=null
set t=null
set I01=null
endfunction
function W04 takes nothing returns boolean
if GetSpellAbilityId()==1093684299 then
call VU4()
endif
return false
endfunction
function KV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function W04))
set t=null
endfunction
function WI4 takes nothing returns boolean
return GetLearnedSkill()==1093682010 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function W14 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local real PAI=GetEventDamage()
if(PAI>0)and GetUnitState(PKI,UNIT_STATE_LIFE)>1 and GetUnitAbilityLevel(PKI,1112433775)==0 then
if(GetRandomInt(1,100)<=(5+(5*GetUnitAbilityLevel(PKI,1093682010))))then
call SetUnitState(PKI,UNIT_STATE_LIFE,GetUnitState(PKI,UNIT_STATE_LIFE)+PAI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\WingedSerpentMissile\\WingedSerpentMissile.mdl",PKI,"hand,left"))
endif
endif
endfunction
function WO4 takes nothing returns nothing
local trigger t
if GetUnitAbilityLevel(GetTriggerUnit(),1093682010)==1 then
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
call TriggerAddAction(t,function W14)
endif
endfunction
function KX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function WI4))
call TriggerAddAction(t,function WO4)
endfunction
constant function Chronosphere_RawCode takes nothing returns integer
return 1093683761
endfunction
constant function Chronosphere_SphereCode takes nothing returns integer
return 1966092364
endfunction
function W24 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit W34=(LoadUnitHandle(LY,(S5I),(19)))
local real H71=(LoadReal(LY,(S5I),(6)))
local real H81=(LoadReal(LY,(S5I),(7)))
if W34==null or P7I==null then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if QLI(P7I,W34)<450 then
call SaveInteger(LY,(GetHandleId((P7I))),((4423)),(1))
call H61(P7I,H71,H81,1000.)
else
call SaveInteger(LY,(GetHandleId((P7I))),((4423)),(2))
endif
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
endif
set t=null
set P7I=null
set W34=null
return false
endfunction
function W44 takes unit P7I,unit W34 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(W34))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call TriggerRegisterTimerEvent(t,0.005,true)
call TriggerAddCondition(t,Condition(function W24))
set t=null
endfunction
function W54 takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(HHI)and GetUnitTypeId(GetFilterUnit())==GetUnitTypeId(HHI)then
call W44(GetFilterUnit(),HGI)
endif
return false
endfunction
function W64 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit W34=(LoadUnitHandle(LY,(S5I),(19)))
local unit u=GetTriggerUnit()
if W34==null then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set P7I=null
set u=null
return false
endif
if GetOwningPlayer(u)==GetOwningPlayer(P7I)and GetUnitTypeId(u)==GetUnitTypeId(P7I)then
call W44(u,W34)
endif
set P7I=null
set W34=null
set u=null
return false
endfunction
function W74 takes nothing returns boolean
return GetSpellAbilityId()==(1093683761)or GetSpellAbilityId()==1093747767
endfunction
function W84 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit W34=(LoadUnitHandle(LY,(S5I),(19)))
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
call DestroyTimer(t)
endfunction
function W94 takes unit SWI returns boolean
local integer ID=GetUnitTypeId(SWI)
return ID==1865429040 or ID==1865429041 or ID==1865429057 or ID==1865429080 or ID==1869836340 or ID==1865429048 or ID==1865429049 or ID==1700946284 or ID==1697657398 or ID==1970107511 or ID==1966092370 or ID==1162032181
endfunction
function WA4 takes nothing returns boolean
return GetOwningPlayer(GetFilterUnit())!=GetOwningPlayer(XO)and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 or W94(GetFilterUnit()))
endfunction
function WB4 takes nothing returns nothing
if GetUnitTypeId(GetEnumUnit())!=1162032181 then
call PauseUnit(GetEnumUnit(),true)
call SetUnitTimeScale(GetEnumUnit(),0)
call UnitRemoveAbility(GetEnumUnit(),1112896364)
call UnitRemoveAbility(GetEnumUnit(),1112896368)
call UnitRemoveAbility(GetEnumUnit(),1112896372)
call SaveInteger(LY,(GetHandleId((GetEnumUnit()))),((4306)),(1))
endif
endfunction
function WC4 takes nothing returns nothing
if GetUnitTypeId(GetEnumUnit())!=1162032181 then
call SaveInteger(LY,(GetHandleId((GetEnumUnit()))),((4306)),(2))
call PauseUnit(GetEnumUnit(),false)
call SetUnitTimeScale(GetEnumUnit(),1)
endif
endfunction
function WD4 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit W34=(LoadUnitHandle(LY,(S5I),(19)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group WE4=(LoadGroupHandle(LY,(S5I),(220)))
local integer QX2=(LoadInteger(LY,(S5I),(28)))
local real QJI=GetUnitX(W34)
local real QKI=GetUnitY(W34)
local boolexpr QL1=Condition(function WA4)
local group H03=NTI()
local integer DC1=35+SUI*5
if GetUnitAbilityLevel(SFI,1093747767)>0 then
set DC1=30+SUI*10
endif
call ForGroup(WE4,function WC4)
set XO=SFI
call GroupEnumUnitsInRange(H03,QJI,QKI,450,QL1)
call GroupClear(WE4)
call GroupAddGroup(H03,WE4)
call ForGroup(H03,function WB4)
call NSI(H03)
set QX2=QX2+1
call SaveInteger(LY,(S5I),(28),(QX2))
if QX2>DC1 then
if Q2==false then
call ForGroup(WE4,function WC4)
endif
call RemoveUnit(W34)
call NSI(WE4)
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
call DestroyTimer(t)
endif
endfunction
function WF4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,(1093683761))
local location P8I=GetSpellTargetLoc()
local real QJI=GetLocationX(P8I)
local real QKI=GetLocationY(P8I)
local unit W34=CreateUnit(GetOwningPlayer(SFI),(1966092364),QJI,QKI,0)
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
local group WE4=NTI()
local group g
local trigger WG4
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093747767)
endif
call SaveUnitHandle(LY,(GetHandleId(t)),(19),(W34))
call TimerStart(t,0.8,false,function W84)
set t=CreateTimer()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(19),(W34))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveGroupHandle(LY,(S5I),(220),(WE4))
call SaveInteger(LY,(S5I),(28),(0))
call SaveInteger(LY,(S5I),(5),(SUI))
call TimerStart(t,0.1,true,function WD4)
call RemoveLocation(P8I)
set HGI=W34
set HHI=SFI
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,25000,Condition(function W54))
call NSI(g)
set WG4=CreateTrigger()
set S5I=GetHandleId(WG4)
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(W34))
call TriggerRegisterEnterRectSimple(WG4,GetWorldBounds())
call TriggerAddCondition(WG4,Condition(function W64))
set g=null
set WG4=null
endfunction
function KY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function W74))
call TriggerAddAction(t,function WF4)
endfunction
function WH4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetUnitAbilityLevel(P7I,1110459186)==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitTimeScale(P7I,1)
call SaveInteger(LY,(GetHandleId((P7I))),((4280)),(2))
else
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",P7I,"origin"))
endif
set t=null
set P7I=null
return false
endfunction
function WZ4 takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitTimeScale(P7I,0)
call SaveInteger(LY,(GetHandleId((P7I))),((4280)),(1))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function WH4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
if((LoadInteger(LY,(GetHandleId((P7I))),((4306))))==1)==true then
call P6I(HZI,P7I,1,30+10*GetUnitAbilityLevel(HZI,1093679153))
endif
set t=null
endfunction
function WV4 takes nothing returns boolean
if GetUnitAbilityLevel(GetFilterUnit(),1110459186)>0 and((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((4280))))==1)==false then
call WZ4(GetFilterUnit())
endif
return false
endfunction
function WW4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g=NTI()
set HZI=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),450,Condition(function WV4))
call NSI(g)
set t=null
set P7I=null
set g=null
return false
endfunction
function WX4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function WW4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function WY4 takes nothing returns boolean
if GetLearnedSkill()==1093679153 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093679153)==1 then
call WX4()
endif
return false
endfunction
function KW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function WY4))
set t=null
endfunction
function WJ4 takes unit u,real WK4 returns nothing
local integer d=R2I(WK4)
local integer array b
local integer a=d
local integer c=1
local integer i=0
local integer EU1
local real VOO
set HWI[0]=1093808968
set HWI[1]=1093808971
set HWI[2]=1093808972
set HWI[3]=1093808970
set HWI[4]=1093808969
set HWI[5]=1093808973
if d<1 then
call UnitRemoveAbility(u,HWI[0])
call UnitRemoveAbility(u,HWI[1])
call UnitRemoveAbility(u,HWI[2])
call UnitRemoveAbility(u,HWI[3])
call UnitRemoveAbility(u,HWI[4])
call UnitRemoveAbility(u,HWI[5])
return
endif
loop
exitwhen c==0
set c=a/2
set b[i]=a-c*2
set a=c
set i=i+1
endloop
set EU1=5
set i=0
loop
exitwhen i>EU1
if b[i]==1 then
call IA1(u,HWI[i])
call SetPlayerAbilityAvailable(GetOwningPlayer(u),HWI[i],false)
else
call UnitRemoveAbility(u,HWI[i])
endif
set i=i+1
endloop
endfunction
function WL4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093808967)
local real Z7O=(LoadReal(LY,(GetHandleId(P8I)),(682)))
local integer NPI=(LoadInteger(LY,(GetHandleId(P8I)),(683)))-1
call WJ4(P8I,NPI*SUI)
call SaveInteger(LY,(GetHandleId(P8I)),(683),(NPI))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function WM4 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093808967)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=(LoadInteger(LY,(GetHandleId(P8I)),(683)))+1
call WJ4(P8I,NPI*SUI)
call SaveInteger(LY,(GetHandleId(P8I)),(683),(NPI))
call SaveReal(LY,(GetHandleId(P8I)),(682),(((TimerGetElapsed(M))+HVI-0.01)*1.0))
call TriggerRegisterTimerEvent(t,HVI,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function WL4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",P8I,"origin"))
set t=null
endfunction
function WN4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
if GetUnitAbilityLevel(P8I,1093678162)==0 then
call WM4(P7I,P8I)
endif
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
function WS4 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function WN4))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function WT4 takes nothing returns nothing
local unit P7I=GetAttacker()
if((LoadInteger(LY,(GetHandleId((P7I))),((4307))))==1)==false then
call SCI(P7I,4307,0.3)
call WS4()
endif
endfunction
function WR4 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093808967)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!=1848651852 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call WT4()
endif
return false
endfunction
function WP4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function WR4))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function WQ4 takes nothing returns boolean
if GetLearnedSkill()==1093808967 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093808967)==1 then
call WP4()
endif
return false
endfunction
function KJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function WQ4))
set t=null
endfunction
function WU4 takes nothing returns nothing
local real X04=QDI(QCI(GetUnitState(GetEnumUnit(),UNIT_STATE_MANA),HJI),0)
local real XI4=X04*0.5
if RKI(GetEnumUnit())==false and X04>0 and PII(GetEnumUnit())==false then
if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>(XI4+0.5)then
call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-XI4)
else
call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,1)
call P6I(HKI,GetEnumUnit(),1,XI4)
endif
call SetUnitState(GetEnumUnit(),UNIT_STATE_MANA,GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)-X04)
if(IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO))then
call SetUnitState(HKI,UNIT_STATE_MANA,GetUnitState(HKI,UNIT_STATE_MANA)+X04*0.5)
endif
endif
endfunction
function X14 takes unit P7I,unit I01,integer XO4,integer X24 returns nothing
local group g=NTI()
set HKI=P7I
set GK=P7I
set HJI=XO4*75+25
call GroupEnumUnitsInRange(g,GetUnitX(I01),GetUnitY(I01),700,Condition(function CA1))
call ForGroup(g,function WU4)
call NSI(g)
set g=null
endfunction
function X34 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit X44
local real X54=2.9
local real X64=HXI+(HYI-HXI)*NPI/(X54/0.05)
call SetUnitScale(I01,X64,X64,X64)
if NPI>(X54/0.05)then
call X14(P7I,I01,(LoadInteger(LY,(S5I),(3000))),(LoadInteger(LY,(S5I),(3002))))
set X44=CreateUnit(GetOwningPlayer(I01),1697657167,GetUnitX(I01),GetUnitY(I01),0)
call SetUnitTimeScale(X44,0.3)
call RemoveUnit(I01)
call KillUnit(X44)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set I01=null
set X44=null
return false
endfunction
function X74 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local location l=GetSpellTargetLoc()
local unit P7I=GetTriggerUnit()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697657165,x,y,a*bj_RADTODEG)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function X34))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(3000),((LoadInteger(LY,(GetHandleId(P7I)),(3000)))))
call SaveInteger(LY,(S5I),(3001),((LoadInteger(LY,(GetHandleId(P7I)),(3001)))))
call SaveInteger(LY,(S5I),(3002),((LoadInteger(LY,(GetHandleId(P7I)),(3002)))))
call RemoveLocation(l)
set t=null
set l=null
set P7I=null
endfunction
function X84 takes nothing returns boolean
if GetSpellAbilityId()==1093686867 then
call X74()
endif
return false
endfunction
function X94 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function X84))
set t=null
endfunction
function XA4 takes unit P7I,unit P8I,integer XO4,integer XB4 returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local unit XC4=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local real XD4=0.5+0.3*XB4
if XB4==7 then
set XD4=2.5
endif
call IA1(I01,1093687371)
call SetUnitAbilityLevel(I01,1093687371,XB4)
call IssueTargetOrder(I01,"cyclone",P8I)
call PDI(XC4,P8I,1,70+(XO4+XO4+XO4)*15.0,XD4)
set I01=null
set XC4=null
endfunction
function XE4 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XK)==false then
call GroupAddUnit(XK,GetEnumUnit())
call XA4(GK,GetEnumUnit(),UJ,IK)
endif
endfunction
function XF4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real x2=(LoadReal(LY,(S5I),(66)))
local real y2=(LoadReal(LY,(S5I),(67)))
local real a=(LoadReal(LY,(S5I),(137)))
local integer XO4=(LoadInteger(LY,(S5I),(3000)))
local integer XB4=(LoadInteger(LY,(S5I),(3001)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local real x=GetUnitX(I01)+25*Cos(a)
local real y=GetUnitY(I01)+25*Sin(a)
local group XG4=NTI()
local real QWI=QNI(x,y,x2,y2)
if QWI<=30 then
set x=x2
set y=y2
endif
call SetUnitX(I01,PTI(x))
call SetUnitY(I01,PTI(y))
set GK=I01
set XK=g
set UJ=XO4
set IK=XB4
call GroupEnumUnitsInRange(XG4,x,y,200+25,Condition(function CA1))
call ForGroup(XG4,function XE4)
call NSI(XG4)
if QWI<=30 or GetTriggerEvalCount(t)>125 then
call NSI(g)
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set I01=null
set g=null
set XG4=null
return false
endfunction
function XH4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local location l=GetSpellTargetLoc()
local unit P7I=GetTriggerUnit()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local unit I01
set x=GetUnitX(P7I)
set y=GetUnitY(P7I)
set I01=CreateUnit(GetOwningPlayer(P7I),1848652117,x,y,a*bj_RADTODEG)
call TriggerRegisterTimerEvent(t,0.025,true)
call TriggerAddCondition(t,Condition(function XF4))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(66),((x+(400+400.0*(LoadInteger(LY,(GetHandleId((P7I))),(3000))))*Cos(a))*1.0))
call SaveReal(LY,(S5I),(67),((y+(400+400.0*(LoadInteger(LY,(GetHandleId((P7I))),(3000))))*Sin(a))*1.0))
call SaveInteger(LY,(S5I),(3000),((LoadInteger(LY,(GetHandleId(P7I)),(3000)))))
call SaveInteger(LY,(S5I),(3001),((LoadInteger(LY,(GetHandleId(P7I)),(3001)))))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
call RemoveLocation(l)
set t=null
set l=null
set P7I=null
endfunction
function XZ4 takes nothing returns boolean
if GetSpellAbilityId()==1093686859 then
call XH4()
endif
return false
endfunction
function XV4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XZ4))
call Q3I(1093687371,GetRandomReal(1,25))
set t=null
endfunction
function XW4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P8I,1093686858)
call UnitRemoveAbility(P8I,1093742649)
if GetUnitAbilityLevel(P8I,1093686858)==0 or GetUnitAbilityLevel(P8I,1093742649)==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function XX4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093686858)
call UnitRemoveAbility(P8I,1093742649)
if GetUnitAbilityLevel(P8I,1093686858)>0 or GetUnitAbilityLevel(P8I,1093742649)>0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function XW4))
endif
set t=null
set P8I=null
return false
endfunction
function XY4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer XO4=(LoadInteger(LY,(GetHandleId(SFI)),(3000)))
local integer X24=(LoadInteger(LY,(GetHandleId(SFI)),(3002)))
call IA1(P8I,1093686858)
call SetUnitAbilityLevel(P8I,1093686858,XO4)
call IA1(P8I,1093742649)
call SetUnitAbilityLevel(P8I,1093742649,X24)
call TriggerRegisterTimerEvent(t,9,false)
call TriggerAddCondition(t,Condition(function XX4))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIsp\\SpeedTarget.mdl",P8I,"origin")))
set t=null
set SFI=null
set P8I=null
endfunction
function XJ4 takes nothing returns boolean
if GetSpellAbilityId()==1093686865 then
call XY4()
endif
return false
endfunction
function XK4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XJ4))
call Q3I(1093686858,GetRandomReal(1,25))
call Q3I(1093742649,GetRandomReal(1,25))
set t=null
endfunction
function XL4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if GetUnitAbilityLevel(SFI,1110456408)==0 then
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitAbilityLevel(I01,1093686856,(LoadInteger(LY,(GetHandleId(SFI)),(3001))))
call SetUnitX(I01,GetUnitX(SFI))
call SetUnitY(I01,GetUnitY(SFI))
endif
set t=null
set I01=null
set SFI=null
return false
endfunction
function XM4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697657174,GetUnitX(SFI),GetUnitY(SFI),0)
call IA1(I01,1093686856)
call SetUnitAbilityLevel(I01,1093686856,(LoadInteger(LY,(GetHandleId(SFI)),(3001))))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function XL4))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
set t=null
set SFI=null
endfunction
function XN4 takes nothing returns boolean
if GetSpellAbilityId()==1093687372 then
call XM4()
endif
return false
endfunction
function XS4 takes unit SFI returns nothing
if GetUnitAbilityLevel(SFI,1093687372)>0 then
call SetUnitAbilityLevel(SFI,1093687372,(LoadInteger(LY,(GetHandleId(SFI)),(3000))))
endif
endfunction
function XT4 takes nothing returns boolean
if IsUnitIllusion(GetTriggerUnit())==false then
call XS4(GetTriggerUnit())
endif
return false
endfunction
function XR4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XN4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function XT4))
call Q3I(1093686856,GetRandomReal(1,25))
set t=null
endfunction
function XP4 takes unit P7I,unit P8I,integer XO4 returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093686868)
call SetUnitAbilityLevel(I01,1093686868,XO4)
call IssueTargetOrder(I01,"drunkenhaze",P8I)
set I01=null
endfunction
function XQ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real RS2=(LoadReal(LY,(S5I),(193)))
local integer XO4=(LoadInteger(LY,(S5I),(3000)))
local integer XB4=(LoadInteger(LY,(S5I),(3001)))
local integer MKO=XB4*25/3
local real x
local real y
local integer NPI=GetTriggerEvalCount(t)
if NPI>MKO/3 then
call SaveReal(LY,(S5I),(193),((RS2*0.98)*1.0))
endif
if NPI>MKO or GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()!=EVENT_UNIT_DEATH then
call XP4(P7I,P8I,XO4)
endif
else
set x=PTI(GetUnitX(P8I)+RS2*Cos(RM2))
set y=PUI(GetUnitY(P8I)+RS2*Sin(RM2))
call UPI(x,y,150)
call SetUnitPosition(P8I,x,y)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function XU4 takes unit P7I,unit P8I,integer XO4,integer XB4,integer X24 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real RM2=Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I))
call P6I(P7I,P8I,1,X24*40)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveReal(LY,(S5I),(193),((6)*1.0))
call SaveInteger(LY,(S5I),(3000),(XO4))
call SaveInteger(LY,(S5I),(3001),(XB4))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function XQ4))
set t=null
endfunction
function Y04 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XK)==false and RKI(GetEnumUnit())==false then
call GroupAddUnit(XK,GetEnumUnit())
call XU4(GK,GetEnumUnit(),UJ,IK,OK)
endif
endfunction
function YI4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real a=(LoadReal(LY,(S5I),(137)))
local real x2=(LoadReal(LY,(S5I),(66)))
local real y2=(LoadReal(LY,(S5I),(67)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local integer XO4=(LoadInteger(LY,(S5I),(3000)))
local integer XB4=(LoadInteger(LY,(S5I),(3001)))
local integer X24=(LoadInteger(LY,(S5I),(3002)))
local real x=GetUnitX(I01)
local real y=GetUnitY(I01)
local group g2
if QNI(x,y,x2,y2)<100 then
set x=x2
set y=y2
else
set x=x+33*Cos(a)
set y=y+33*Sin(a)
endif
call SetUnitX(I01,PTI(x))
call SetUnitY(I01,PUI(y))
set g2=NTI()
set GK=I01
set XK=g
set UJ=XO4
set IK=XB4
set OK=X24
call GroupEnumUnitsInRange(g2,x,y,200,Condition(function CA1))
call ForGroup(g2,function Y04)
call NSI(g2)
if(x==x2 and y==y2)or GetTriggerEvalCount(t)>35 then
set g2=NTI()
set GK=I01
set XK=g
set UJ=XO4
set IK=XB4
set OK=X24
call GroupEnumUnitsInRange(g2,x,y,250,Condition(function CA1))
call ForGroup(g2,function Y04)
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
function Y14 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local location l=GetSpellTargetLoc()
local unit P7I=GetTriggerUnit()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local unit I01=CreateUnit(GetOwningPlayer(P7I),1848652120,GetUnitX(P7I),GetUnitY(P7I),a*bj_RADTODEG)
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function YI4))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(66),((GetUnitX(P7I)+1000*Cos(a))*1.0))
call SaveReal(LY,(S5I),(67),((GetUnitY(P7I)+1000*Sin(a))*1.0))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
call SaveInteger(LY,(S5I),(3000),((LoadInteger(LY,(GetHandleId(P7I)),(3000)))))
call SaveInteger(LY,(S5I),(3001),((LoadInteger(LY,(GetHandleId(P7I)),(3001)))))
call SaveInteger(LY,(S5I),(3002),((LoadInteger(LY,(GetHandleId(P7I)),(3002)))))
call RemoveLocation(l)
set t=null
set l=null
set P7I=null
endfunction
function YO4 takes nothing returns boolean
if GetSpellAbilityId()==1093686861 then
call Y14()
endif
return false
endfunction
function Y24 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YO4))
call Q3I(1093686868,GetRandomReal(1,25))
set t=null
endfunction
function Y34 takes unit SFI returns real
local integer X24=(LoadInteger(LY,(GetHandleId(SFI)),(3002)))
return(80+X24*35.0)/2
endfunction
function Y44 takes unit SFI returns real
local integer XO4=(LoadInteger(LY,(GetHandleId(SFI)),(3000)))
local integer XB4=(LoadInteger(LY,(GetHandleId(SFI)),(3001)))
local integer X24=(LoadInteger(LY,(GetHandleId(SFI)),(3002)))
return 325+XO4*175.0
endfunction
function Y54 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local real PAI=(LoadReal(LY,(S5I),(20)))
local effect FX=(LoadEffectHandle(LY,(S5I),(32)))
local integer NPI=GetTriggerEvalCount(t)
call P6I(P7I,P8I,1,PAI)
if NPI==3 then
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DestroyEffect(FX)
endif
set t=null
set P7I=null
set P8I=null
set FX=null
return false
endfunction
function Y64 takes unit P7I,unit P8I,real PAI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Environment\\SmallBuildingFire\\SmallBuildingFire2.mdl",P8I,"chest")))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function Y54))
set t=null
endfunction
function Y74 takes nothing returns nothing
call Y64(GK,GetEnumUnit(),AK/5)
call P6I(GK,GetEnumUnit(),1,AK)
endfunction
function Y84 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local real a=(LoadReal(LY,(S5I),(137)))
local integer NPI=GetTriggerEvalCount(t)-26
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real IV1
local real IW1
local unit I01
local group g
if NPI==1 then
set I01=CreateUnit(GetOwningPlayer(P7I),1697657164,x,y,a*bj_RADTODEG)
call SaveUnitHandle(LY,(S5I),(19),(I01))
elseif NPI>1 then
set I01=(LoadUnitHandle(LY,(S5I),(19)))
endif
if NPI>0 then
set IV1=PTI(GetUnitX(I01)+15*Cos(a))
set IW1=PUI(GetUnitY(I01)+15*Sin(a))
call SetUnitX(I01,IV1)
call SetUnitY(I01,IW1)
if(NPI>1 and ModuloInteger(NPI,10)==0)or NPI==1 then
set g=NTI()
set GK=P7I
set AK=Y34(P7I)
call GroupEnumUnitsInRange(g,IV1,IW1,300,Condition(function CA1))
call ForGroup(g,function Y74)
call NSI(g)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl",IV1,IW1))
endif
if NPI>Y44(P7I)/16.6 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
endif
endif
set t=null
set g=null
set I01=null
set P7I=null
return false
endfunction
function Y94 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local location l=GetSpellTargetLoc()
local unit P7I=GetTriggerUnit()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local unit YA4=CreateUnit(GetOwningPlayer(P7I),1697657163,x,y,a*bj_RADTODEG)
call SetUnitTimeScale(YA4,0.58)
call UnitApplyTimedLife(YA4,1112820806,1.75)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function Y84))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call RemoveLocation(l)
set t=null
set l=null
set P7I=null
endfunction
function YB4 takes nothing returns boolean
if GetSpellAbilityId()==1093686862 then
call Y94()
endif
return false
endfunction
function YC4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YB4))
set t=null
endfunction
function YD4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local real Z7O=(LoadReal(LY,(GetHandleId(P8I)),(3007)))
if Z7O+5<=(TimerGetElapsed(M))then
call UnitRemoveAbility(P8I,1093686871)
endif
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P8I=null
return false
endfunction
function YE4 takes unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P8I,1093686871)
if SUI==0 then
call IA1(P8I,1093686871)
endif
call SetUnitAbilityLevel(P8I,1093686871,SUI+1)
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveReal(LY,(GetHandleId(P8I)),(3007),(((TimerGetElapsed(M)))*1.0))
call TriggerRegisterTimerEvent(t,5,false)
call TriggerAddCondition(t,Condition(function YD4))
set t=null
endfunction
function YF4 takes nothing returns boolean
local real d
if GetUnitAbilityLevel(GetTriggerUnit(),1110456625)>0 and GetUnitAbilityLevel(GetEventDamageSource(),1093686870)>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
call UnitRemoveAbility(GetTriggerUnit(),1110456625)
call DisableTrigger(GetTriggeringTrigger())
call YE4(GetTriggerUnit())
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function YG4 takes nothing returns nothing
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
call TriggerAddCondition(t,Condition(function YF4))
endif
set t=null
set P8I=null
set P7I=null
endfunction
function YH4 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetUnitAbilityLevel(GetAttacker(),1093686870)>0 and(LoadBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(3008)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))then
call YG4()
endif
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if(GetIssuedOrderId()==OrderId("poisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(3008),(true))
elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(3008),(false))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093686870 then
call YG4()
endif
return false
endfunction
function YZ4 takes unit P7I returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function YH4))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call SaveBoolean(LY,(GetHandleId(t)),(3008),(true))
set t=null
endfunction
function YV4 takes nothing returns nothing
call KillUnit(GetEnumUnit())
endfunction
function YW4 takes nothing returns boolean
if GetUnitTypeId(GetFilterUnit())==1848652343 then
return true
endif
return false
endfunction
function YX4 takes player p returns nothing
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,p,Condition(function YW4))
call ForGroup(g,function YV4)
call NSI(g)
set g=null
endfunction
function YY4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit I01
local integer XB4=(LoadInteger(LY,(GetHandleId(P7I)),(3001)))
local integer X24=(LoadInteger(LY,(GetHandleId(P7I)),(3002)))
call YX4(GetOwningPlayer(P7I))
set I01=CreateUnit(GetOwningPlayer(P7I),1848652343,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call SetUnitColor(I01,GetPlayerColor(BO[0]))
call AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",I01,"chest")
call UnitApplyTimedLife(I01,1112820806,10+10*XB4)
call SetUnitAbilityLevel(I01,1093686870,X24)
call YZ4(I01)
if RW0[GetPlayerId(GetOwningPlayer(P7I))]then
call SelectUnitAddForPlayer(I01,GetOwningPlayer(P7I))
endif
if XB4>3 and X24>3 then
set I01=CreateUnit(GetOwningPlayer(P7I),1848652343,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call SetUnitColor(I01,GetPlayerColor(BO[0]))
call AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",I01,"chest")
call UnitApplyTimedLife(I01,1112820806,10+10*XB4)
call SetUnitAbilityLevel(I01,1093686870,X24)
call YZ4(I01)
if RW0[GetPlayerId(GetOwningPlayer(P7I))]then
call SelectUnitAddForPlayer(I01,GetOwningPlayer(P7I))
endif
endif
call SetPlayerTechResearched(GetOwningPlayer(P7I),1378889799,X24)
call SetPlayerTechResearched(GetOwningPlayer(P7I),1378889800,XB4)
set P7I=null
set I01=null
endfunction
function YJ4 takes nothing returns boolean
if GetSpellAbilityId()==1093686863 then
call YY4()
endif
return false
endfunction
function YK4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YJ4))
call Q3I(1093686870,GetRandomReal(1,25))
call Q3I(1093686871,GetRandomReal(1,25))
set t=null
endfunction
function YL4 takes unit P7I returns integer
local integer SUI=(LoadInteger(LY,(GetHandleId(P7I)),(3001)))
if SUI==1 then
return 1093808944
elseif SUI==2 then
return 1093808730
elseif SUI==3 then
return 1093808729
elseif SUI==4 then
return 1093808725
elseif SUI==5 then
return 1093808726
elseif SUI==6 then
return 1093808727
elseif SUI==7 then
return 1093808728
endif
return 1093808944
endfunction
function YM4 takes unit P8I returns nothing
call UnitRemoveAbility(P8I,1093808944)
call UnitRemoveAbility(P8I,1093808730)
call UnitRemoveAbility(P8I,1093808729)
call UnitRemoveAbility(P8I,1093808725)
call UnitRemoveAbility(P8I,1093808726)
call UnitRemoveAbility(P8I,1093808727)
call UnitRemoveAbility(P8I,1093808728)
call UnitRemoveAbility(P8I,1110456410)
endfunction
function YN4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(681)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()==EVENT_WIDGET_DEATH or LVO<(TimerGetElapsed(M))then
call YM4(P8I)
endif
set t=null
set P8I=null
return false
endfunction
function YS4 takes nothing returns nothing
local unit P7I=GK
local unit P8I=GetEnumUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(681)))
if LVO<(TimerGetElapsed(M))then
call IA1(P8I,YL4(P7I))
endif
call SaveReal(LY,(GetHandleId(P8I)),(681),(((TimerGetElapsed(M))+2)*1.0))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,2.01,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function YN4))
set t=null
set P7I=null
endfunction
function YT4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real QXI=(LoadReal(LY,(S5I),(6)))
local real QYI=(LoadReal(LY,(S5I),(7)))
local real a=(LoadReal(LY,(S5I),(137)))
local real DC1=(LoadReal(LY,(S5I),(57)))
local real x
local real y
local integer i=1
local integer NPI=GetTriggerEvalCount(t)
local group g
if NPI*0.1>DC1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
loop
exitwhen i>7
set x=QXI+80*i*Cos((a+90)*bj_DEGTORAD)
set y=QYI+80*i*Sin((a+90)*bj_DEGTORAD)
call GroupEnumUnitsInRange(g,x,y,105,Condition(function CE1))
call ForGroup(g,function YS4)
set x=QXI+80*i*Cos((a-90)*bj_DEGTORAD)
set y=QYI+80*i*Sin((a-90)*bj_DEGTORAD)
call GroupEnumUnitsInRange(g,x,y,105,Condition(function CE1))
call ForGroup(g,function YS4)
set i=i+1
endloop
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function YR4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real a=GetUnitFacing(P7I)
local integer i=1
local unit I01
local real x
local real y
local real QXI=GetUnitX(P7I)+225*Cos(a*bj_DEGTORAD)
local real QYI=GetUnitY(P7I)+225*Sin(a*bj_DEGTORAD)
local integer XB4=(LoadInteger(LY,(GetHandleId(P7I)),(3001)))
local integer X24=(LoadInteger(LY,(GetHandleId(P7I)),(3002)))
local real DC1=1.5+1.5*XB4
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
loop
exitwhen i>7
set x=QXI+80*i*Cos((a+90)*bj_DEGTORAD)
set y=QYI+80*i*Sin((a+90)*bj_DEGTORAD)
set I01=CreateUnit(GetOwningPlayer(P7I),1966092367,x,y,GetRandomReal(0,360))
call SetUnitAbilityLevel(I01,1395667016,XB4)
call SetUnitAbilityLevel(I01,1093687374,X24)
call SetUnitAnimation(I01,"birth")
call QueueUnitAnimation(I01,"stand")
call UnitApplyTimedLife(I01,1112820806,DC1)
set x=QXI+80*i*Cos((a-90)*bj_DEGTORAD)
set y=QYI+80*i*Sin((a-90)*bj_DEGTORAD)
set I01=CreateUnit(GetOwningPlayer(P7I),1966092367,x,y,GetRandomReal(0,360))
call SetUnitAbilityLevel(I01,1395667016,XB4)
call SetUnitAbilityLevel(I01,1093687374,X24)
call SetUnitAnimation(I01,"birth")
call QueueUnitAnimation(I01,"stand")
call UnitApplyTimedLife(I01,1112820806,DC1)
set i=i+1
endloop
call TriggerAddCondition(t,Condition(function YT4))
call TriggerRegisterTimerEvent(t,0.1,true)
call SaveReal(LY,(S5I),(6),((QXI)*1.0))
call SaveReal(LY,(S5I),(7),((QYI)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(57),((DC1)*1.0))
set I01=null
set P7I=null
set t=null
endfunction
function YP4 takes nothing returns boolean
if GetSpellAbilityId()==1093686864 then
call YR4()
endif
return false
endfunction
function YQ4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YP4))
call Q3I(1395667016,GetRandomReal(1,25))
call Q3I(1093687374,GetRandomReal(1,25))
set t=null
endfunction
function YU4 takes nothing returns nothing
if RYI(GetEnumUnit())==false then
call P6I(GK,GetEnumUnit(),3,AK)
endif
endfunction
function J04 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real PAI=(LoadReal(LY,(S5I),(20)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g=NTI()
local integer NPI
set GK=SFI
call GroupEnumUnitsInRange(g,x,y,200,Condition(function CA1))
set NPI=CountUnitsInGroup(g)
if NPI<1 then
set NPI=1
endif
set AK=PAI/NPI
call ForGroup(g,function YU4)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",x,y))
call NSI(g)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
set g=null
return false
endfunction
function JI4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real PAI=(LoadInteger(LY,(GetHandleId(SFI)),(3002)))*62.5+12.5+25
local string s=""
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(SFI))==true or(C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70))then
set s="Abilities\\Spells\\Items\\VampiricPotion\\VampPotionCaster.mdl"
endif
call I41(GetOwningPlayer(SFI),5.7,x,y,400)
call TriggerRegisterTimerEvent(t,1.7,false)
call TriggerAddCondition(t,Condition(function J04))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect(s,x,y)))
call RemoveLocation(l)
set t=null
set SFI=null
set l=null
endfunction
function J14 takes nothing returns boolean
if GetSpellAbilityId()==1093686855 then
call JI4()
endif
return false
endfunction
function JO4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function J14))
set t=null
endfunction
function J24 takes unit P7I,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093686857)
call IssueTargetOrder(I01,"thunderbolt",P8I)
if RKI(P8I)==false then
call P6I(P7I,P8I,1,SUI*7)
endif
set I01=null
endfunction
function J34 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamage()>10 and((LoadInteger(LY,(GetHandleId((t))),((4263))))==1)==false and GetOwningPlayer(GetEventDamageSource())!=GetOwningPlayer(GetTriggerUnit())then
call DisableTrigger(t)
call J24(P7I,P8I,SUI)
call EnableTrigger(t)
call S6I(t,4263,0.8-SUI*0.0285)
endif
else
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set P7I=null
return false
endfunction
function J44 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=(LoadInteger(LY,(GetHandleId(SFI)),(3001)))
call TriggerRegisterTimerEvent(t,2.5+SUI*0.5,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function J34))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl",P8I,"overhead")))
call J24(SFI,P8I,SUI)
set t=null
set SFI=null
set P8I=null
endfunction
function J54 takes nothing returns boolean
if GetSpellAbilityId()==1093686874 then
call J44()
endif
return false
endfunction
function J64 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function J54))
call Q3I(1093686857,GetRandomReal(1,25))
set t=null
endfunction
function J74 takes unit SFI returns nothing
local integer S5I=GetHandleId(SFI)
local boolean J84=(LoadBoolean(LY,(S5I),(3003)))
local trigger t
if J84 then
call SaveBoolean(LY,(S5I),(3003),(false))
set t=(LoadTriggerHandle(LY,(S5I),(3006)))
call FlushChildHashtable(LY,(GetHandleId(t)))
call S0I(t)
endif
set t=null
endfunction
function J94 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
call SetUnitState(SFI,UNIT_STATE_LIFE,GetUnitState(SFI,UNIT_STATE_LIFE)+SUI*1)
return false
endfunction
function JA4 takes unit SFI,integer SUI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(SFI)
call SaveBoolean(LY,(S5I),(3003),(true))
call SaveTriggerHandle(LY,(S5I),(3006),(t))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(SFI))
call SaveInteger(LY,(GetHandleId(t)),(5),(SUI))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J94))
set t=null
endfunction
function JB4 takes nothing returns nothing
local integer JC4=0
local unit SFI=GetTriggerUnit()
local integer S5I=GetHandleId(SFI)
local integer JD4=(LoadInteger(LY,(S5I),(3013)))
local integer JE4=(LoadInteger(LY,(S5I),(3014)))
local integer JF4=(LoadInteger(LY,(S5I),(3015)))
local integer JG4=(LoadInteger(LY,(S5I),(3016)))
local integer JH4=(LoadInteger(LY,(S5I),(3017)))
if JD4==3 and JE4==0 and JF4==0 then
set JC4=1
elseif JD4==2 and JE4==1 and JF4==0 then
set JC4=2
elseif JD4==2 and JE4==0 and JF4==1 then
set JC4=3
elseif JD4==1 and JE4==2 and JF4==0 then
set JC4=4
elseif JD4==1 and JE4==1 and JF4==1 then
set JC4=5
elseif JD4==1 and JE4==0 and JF4==2 then
set JC4=6
elseif JD4==0 and JE4==1 and JF4==2 then
set JC4=7
elseif JD4==0 and JE4==2 and JF4==1 then
set JC4=8
elseif JD4==0 and JE4==0 and JF4==3 then
set JC4=9
elseif JD4==0 and JE4==3 and JF4==0 then
set JC4=10
endif
if HLI[JC4]==JH4 then
return
endif
if JG4!=0 and JH4!=0 then
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JG4,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JH4,false)
set JG4=JH4
set JH4=HLI[JC4]
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JG4,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JH4,true)
elseif JG4==0 and JH4!=0 then
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JH4,false)
set JG4=JH4
set JH4=HLI[JC4]
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JG4,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JH4,true)
else
set JH4=HLI[JC4]
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),JH4,true)
endif
call SaveInteger(LY,(S5I),(3016),(JG4))
call SaveInteger(LY,(S5I),(3017),(JH4))
call XS4(SFI)
set SFI=null
endfunction
function JZ4 takes unit SFI returns nothing
local integer S5I=GetHandleId(SFI)
local integer JD4=(LoadInteger(LY,(S5I),(3013)))
local integer JE4=(LoadInteger(LY,(S5I),(3014)))
local integer JF4=(LoadInteger(LY,(S5I),(3015)))
local integer XO4=GetUnitAbilityLevel(SFI,1093808472)
local integer XB4=GetUnitAbilityLevel(SFI,1093808471)
local integer X24=GetUnitAbilityLevel(SFI,1093808470)
call UnitRemoveAbility(SFI,1093687108)
call UnitRemoveAbility(SFI,1093686853)
call J74(SFI)
call UnitRemoveAbility(SFI,1093686839)
if JD4>0 then
call IA1(SFI,1093687108)
call IA1(SFI,1093686853)
call SetUnitAbilityLevel(SFI,1093687108,JD4*XO4)
call SetUnitAbilityLevel(SFI,1093686853,JD4*XO4)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093687108,false)
endif
if JE4>0 then
call JA4(SFI,JE4*XB4)
endif
if JF4>0 then
call IA1(SFI,1093686839)
call SetUnitAbilityLevel(SFI,1093686839,JF4*X24)
endif
endfunction
function JV4 takes unit SFI,integer JD4,integer JE4,integer JF4 returns nothing
local integer Orb1=0
local integer Orb2=0
local integer Orb3=0
local integer JW4
local integer JX4
local integer JY4
local integer JJ4
local integer JK4
local integer JL4
local integer JM4
local integer JN4
local integer JS4
call UnitRemoveAbility(SFI,1093682254)
call UnitRemoveAbility(SFI,1093682247)
call UnitRemoveAbility(SFI,1093683544)
call UnitRemoveAbility(SFI,1093683505)
call UnitRemoveAbility(SFI,1093683504)
call UnitRemoveAbility(SFI,1093683290)
call UnitRemoveAbility(SFI,1093683523)
call UnitRemoveAbility(SFI,1093683522)
call UnitRemoveAbility(SFI,1093683524)
call UnitRemoveAbility(SFI,1093808707)
call UnitRemoveAbility(SFI,1093808708)
call UnitRemoveAbility(SFI,1093808709)
call UnitRemoveAbility(SFI,1093808710)
call UnitRemoveAbility(SFI,1093808711)
call UnitRemoveAbility(SFI,1093808712)
call UnitRemoveAbility(SFI,1093808713)
call UnitRemoveAbility(SFI,1093808714)
call UnitRemoveAbility(SFI,1093808715)
if EP1(SFI,K70)==null then
set JW4=1093682254
set JX4=1093682247
set JY4=1093683544
set JJ4=1093683505
set JK4=1093683504
set JL4=1093683290
set JM4=1093683523
set JN4=1093683522
set JS4=1093683524
else
set JW4=1093808707
set JX4=1093808708
set JY4=1093808709
set JJ4=1093808710
set JK4=1093808711
set JL4=1093808712
set JM4=1093808713
set JN4=1093808714
set JS4=1093808715
endif
if JD4==1 and JE4==0 and JF4==0 then
call IA1(SFI,JW4)
elseif JD4==0 and JE4==1 and JF4==0 then
call IA1(SFI,JJ4)
elseif JD4==0 and JE4==0 and JF4==1 then
call IA1(SFI,JM4)
elseif JD4==2 and JE4==0 and JF4==0 then
call IA1(SFI,JW4)
call IA1(SFI,JX4)
elseif JD4==1 and JE4==1 and JF4==0 then
call IA1(SFI,JW4)
call IA1(SFI,JK4)
elseif JD4==1 and JE4==0 and JF4==1 then
call IA1(SFI,JW4)
call IA1(SFI,JN4)
elseif JD4==0 and JE4==2 and JF4==0 then
call IA1(SFI,JJ4)
call IA1(SFI,JK4)
elseif JD4==0 and JE4==1 and JF4==1 then
call IA1(SFI,JJ4)
call IA1(SFI,JN4)
elseif JD4==0 and JE4==0 and JF4==2 then
call IA1(SFI,JM4)
call IA1(SFI,JN4)
elseif JD4==3 and JE4==0 and JF4==0 then
call IA1(SFI,JW4)
call IA1(SFI,JX4)
call IA1(SFI,JY4)
elseif JD4==2 and JE4==1 and JF4==0 then
call IA1(SFI,JW4)
call IA1(SFI,JX4)
call IA1(SFI,JL4)
elseif JD4==2 and JE4==0 and JF4==1 then
call IA1(SFI,JW4)
call IA1(SFI,JX4)
call IA1(SFI,JS4)
elseif JD4==1 and JE4==2 and JF4==0 then
call IA1(SFI,JW4)
call IA1(SFI,JK4)
call IA1(SFI,JL4)
elseif JD4==1 and JE4==1 and JF4==1 then
call IA1(SFI,JW4)
call IA1(SFI,JK4)
call IA1(SFI,JS4)
elseif JD4==1 and JE4==0 and JF4==2 then
call IA1(SFI,JW4)
call IA1(SFI,JN4)
call IA1(SFI,JS4)
elseif JD4==0 and JE4==1 and JF4==2 then
call IA1(SFI,JM4)
call IA1(SFI,JN4)
call IA1(SFI,JL4)
elseif JD4==0 and JE4==2 and JF4==1 then
call IA1(SFI,JJ4)
call IA1(SFI,JK4)
call IA1(SFI,JS4)
elseif JD4==0 and JE4==0 and JF4==3 then
call IA1(SFI,JM4)
call IA1(SFI,JN4)
call IA1(SFI,JS4)
elseif JD4==0 and JE4==3 and JF4==0 then
call IA1(SFI,JJ4)
call IA1(SFI,JK4)
call IA1(SFI,JL4)
endif
endfunction
function JT4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer S5I=GetHandleId(SFI)
local integer JR4=GetSpellAbilityId()
local integer JP4=(LoadInteger(LY,(S5I),(3010)))
local integer JQ4=(LoadInteger(LY,(S5I),(3011)))
local integer JU4=(LoadInteger(LY,(S5I),(3012)))
local integer JD4=0
local integer JE4=0
local integer JF4=0
set JP4=JQ4
set JQ4=JU4
set JU4=JR4
if JP4==1093808472 then
set JD4=JD4+1
elseif JP4==1093808471 then
set JE4=JE4+1
elseif JP4==1093808470 then
set JF4=JF4+1
endif
if JQ4==1093808472 then
set JD4=JD4+1
elseif JQ4==1093808471 then
set JE4=JE4+1
elseif JQ4==1093808470 then
set JF4=JF4+1
endif
if JU4==1093808472 then
set JD4=JD4+1
elseif JU4==1093808471 then
set JE4=JE4+1
elseif JU4==1093808470 then
set JF4=JF4+1
endif
call SaveInteger(LY,(S5I),(3010),(JP4))
call SaveInteger(LY,(S5I),(3011),(JQ4))
call SaveInteger(LY,(S5I),(3012),(JU4))
call SaveInteger(LY,(S5I),(3013),(JD4))
call SaveInteger(LY,(S5I),(3014),(JE4))
call SaveInteger(LY,(S5I),(3015),(JF4))
call JV4(SFI,JD4,JE4,JF4)
call JZ4(SFI)
call XS4(SFI)
endfunction
function FZO takes nothing returns nothing
local unit SFI=GK
local integer S5I=GetHandleId(SFI)
local integer JP4=(LoadInteger(LY,(S5I),(3010)))
local integer JQ4=(LoadInteger(LY,(S5I),(3011)))
local integer JU4=(LoadInteger(LY,(S5I),(3012)))
local integer JD4=0
local integer JE4=0
local integer JF4=0
if JP4==1093808472 then
set JD4=JD4+1
elseif JP4==1093808471 then
set JE4=JE4+1
elseif JP4==1093808470 then
set JF4=JF4+1
endif
if JQ4==1093808472 then
set JD4=JD4+1
elseif JQ4==1093808471 then
set JE4=JE4+1
elseif JQ4==1093808470 then
set JF4=JF4+1
endif
if JU4==1093808472 then
set JD4=JD4+1
elseif JU4==1093808471 then
set JE4=JE4+1
elseif JU4==1093808470 then
set JF4=JF4+1
endif
call JV4(SFI,JD4,JE4,JF4)
set SFI=null
endfunction
function K04 takes nothing returns boolean
if IsUnitIllusion(GetTriggerUnit())==false and(GetLearnedSkill()==1093808472 or GetLearnedSkill()==1093808471 or GetLearnedSkill()==1093808470)then
call JZ4(GetTriggerUnit())
if GetLearnedSkill()==1093808472 then
call SetHeroAgi(GetTriggerUnit(),GetHeroAgi(GetTriggerUnit(),false)+2,true)
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(3000),(GetUnitAbilityLevel(GetTriggerUnit(),1093808472)))
endif
if GetLearnedSkill()==1093808471 then
call SetHeroStr(GetTriggerUnit(),GetHeroStr(GetTriggerUnit(),false)+2,true)
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(3001),(GetUnitAbilityLevel(GetTriggerUnit(),1093808471)))
endif
if GetLearnedSkill()==1093808470 then
call SetHeroInt(GetTriggerUnit(),GetHeroInt(GetTriggerUnit(),false)+2,true)
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(3002),(GetUnitAbilityLevel(GetTriggerUnit(),1093808470)))
endif
endif
return false
endfunction
function KI4 takes nothing returns boolean
if GetSpellAbilityId()==1093808472 or GetSpellAbilityId()==1093808471 or GetSpellAbilityId()==1093808470 then
call JT4()
elseif GetSpellAbilityId()==1093808473 or GetSpellAbilityId()==1093748565 then
call JB4()
endif
return false
endfunction
function QU1 takes nothing returns nothing
local unit SFI=GK
local integer i=1
local integer OO1
if GetUnitTypeId(SFI)!=1211117653 then
return
endif
loop
exitwhen i>11
set OO1=HLI[i]
call IA1(SFI,OO1)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),OO1,false)
set i=i+1
endloop
set SFI=null
endfunction
function K14 takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())==1211117653 and IsUnitIllusion(GetTriggerUnit())==false then
set GK=GetTriggerUnit()
call QU1()
elseif(GetUnitTypeId(GetTriggerUnit())==1432510828 or GetUnitTypeId(GetTriggerUnit())==1160786520)and IsUnitIllusion(GetTriggerUnit())==false then
set GK=GetTriggerUnit()
call ExecuteFunc("KO4")
elseif GetUnitTypeId(GetTriggerUnit())==1211117641 and IsUnitIllusion(GetTriggerUnit())==false then
set GK=GetTriggerUnit()
call ExecuteFunc("K24")
endif
return false
endfunction
function SP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call Q1I((HLI[1]))
call Q1I((HLI[2]))
call Q1I((HLI[3]))
call Q1I((HLI[4]))
call Q1I((HLI[5]))
call Q1I((HLI[6]))
call Q1I((HLI[7]))
call Q1I((HLI[8]))
call Q1I((HLI[9]))
call Q1I((HLI[10]))
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function KI4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function K04))
set t=null
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848653383))
call Q3I(1093687375,GetRandomReal(1,25))
call Q3I(1093687108,GetRandomReal(1,25))
call Q3I(1093686853,GetRandomReal(1,25))
call Q3I(1093686839,GetRandomReal(1,25))
call Q3I(1093808470,GetRandomReal(1,25))
call Q3I(1093808472,GetRandomReal(1,25))
call Q3I(1093808471,GetRandomReal(1,25))
call X94()
call XV4()
call XK4()
call XR4()
call Y24()
call YC4()
call YK4()
call YQ4()
call JO4()
call J64()
endfunction
function K34 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real PAI
if SUI==1 then
set PAI=15
elseif SUI==2 then
set PAI=30
elseif SUI==3 then
set PAI=40
elseif SUI==4 then
set PAI=50
endif
if GetTriggerEvalCount(t)==3 or GetTriggerEvalCount(t)==4 then
call P6I(P7I,P8I,1,PAI)
endif
if GetTriggerEvalCount(t)==4 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093752403)
call UnitRemoveAbility(P8I,1110459470)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function K44 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1095267426)
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetEventDamageSource()==P7I and GetEventDamage()==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function K34))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",P8I,"chest")))
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093752403,false)
call IA1(P8I,1093752403)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function K54 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real d=QLI(P7I,P8I)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function K44))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function K64 takes nothing returns nothing
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIfb\\AIfbSpecialArt.mdl",GetTriggerUnit(),"weapon"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIfb\\AIfbSpecialArt.mdl",GetTriggerUnit(),"hand"))
endfunction
function K74 takes nothing returns boolean
if GetSpellAbilityId()==1095267426 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
call K64()
elseif NNI(GetSpellTargetUnit())==false then
call K54()
endif
endif
return false
endfunction
function T81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function K74))
set t=null
endfunction
function K84 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call SelectUnitForPlayerSingle(P7I,GetOwningPlayer(P7I))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function K94 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093677401)
local real DC1=360-100*SUI
local unit I01
if SUI==3 then
endif
if TimerGetRemaining(EJ0[GetPlayerId(GetOwningPlayer(P7I))])==0 and GetUnitState(P7I,UNIT_STATE_MANA)>=140 then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitAddAbility(I01,1093809972)
call IssueImmediateOrder(I01,"thunderclap")
call TimerStart(EJ0[GetPlayerId(GetOwningPlayer(P7I))],DC1,false,null)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,3+0.01,false)
call TriggerAddCondition(t,Condition(function K84))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
endif
set t=null
set P7I=null
set I01=null
return false
endfunction
function KA4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function K94))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function KB4 takes nothing returns boolean
if GetLearnedSkill()==1093677401 and GetUnitAbilityLevel(GetTriggerUnit(),1093677401)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call KA4()
endif
return false
endfunction
function TA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function KB4))
set t=null
endfunction
function KC4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093817136)
local real KD4=(LoadReal(LY,(S5I),(797)))
local real KE4=(LoadReal(LY,(S5I),(798)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call SaveInteger(LY,(GetHandleId((P7I))),((4338)),(2))
call IA1(P7I,1093816922)
call SetUnitAbilityLevel(P7I,1093816922,SUI)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif KD4>0 then
call SaveInteger(LY,(GetHandleId((P7I))),((4338)),(2))
if GetUnitTypeId(P7I)==1313026096 then
call IA1(P7I,1093816922)
call SetUnitAbilityLevel(P7I,1093816922,SUI)
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if IC1(P7I)==false then
call SetUnitState(P7I,UNIT_STATE_LIFE,QDI(1,GetUnitState(P7I,UNIT_STATE_LIFE)-KD4))
endif
if IC1(P8I)==false then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+KD4)
endif
else
set KD4=GetUnitState(P8I,UNIT_STATE_MAX_LIFE)*0.2
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+KD4)
call SetUnitState(P8I,UNIT_STATE_LIFE,QDI(1,GetUnitState(P8I,UNIT_STATE_LIFE)-KD4))
call SaveReal(LY,(S5I),(797),((KD4)*1.0))
call SaveReal(LY,(S5I),(798),((KE4)*1.0))
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function KF4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerRegisterTimerEvent(t,7,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function KC4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(797),((0)*1.0))
call SaveReal(LY,(S5I),(798),((0)*1.0))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\MortalStrikeCaster.mdx",P7I,"overhead")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\MortalStrikeTarget.mdx",P8I,"overhead")))
call SaveInteger(LY,(GetHandleId((P7I))),((4338)),(1))
call UnitRemoveAbility(P7I,1093816922)
set t=null
set P7I=null
set P8I=null
endfunction
function KG4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093817136)
if SUI==1 then
call IA1(P7I,1093816922)
elseif((LoadInteger(LY,(GetHandleId((P7I))),((4338))))==1)==false then
call SetUnitAbilityLevel(P7I,1093816922,SUI)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093816922,false)
set P7I=null
endfunction
function KH4 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
if GetLearnedSkill()==1093817136 and IsUnitIllusion(GetTriggerUnit())==false then
call KG4()
endif
else
if GetSpellAbilityId()==1093817136 then
if NNI(GetSpellTargetUnit())==false then
call KF4()
endif
endif
endif
return false
endfunction
function T91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function KH4))
set t=null
endfunction
function KZ4 takes unit u returns boolean
return GetUnitTypeId(u)==1160785973 or GetUnitTypeId(u)==1211117637 or GetUnitTypeId(u)==1211117639 or GetUnitTypeId(u)==1211119684 or GetUnitTypeId(u)==1211119683 or GetUnitTypeId(u)==1211119668 or GetUnitTypeId(u)==1211119682 or GetUnitTypeId(u)==1160786511
endfunction
function KV4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and GetEventDamage()>0 then
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+GetEventDamage()*(0.1+0.05*SUI))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",P7I,"origin"))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
return false
endfunction
function KW4 takes unit P7I,unit P8I,integer SUI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function KV4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
set t=null
endfunction
function KX4 takes nothing returns boolean
if(KZ4(GetAttacker())==true or IsUnitIllusion(GetAttacker())==true)and GetUnitAbilityLevel(GetAttacker(),1110460249)>0 and((LoadInteger(LY,(GetHandleId((GetAttacker()))),((4419))))==1)==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call KW4(GetAttacker(),GetTriggerUnit(),(LoadInteger(LY,(GetHandleId(GetAttacker())),(819))))
call SCI(GetAttacker(),4419,0.25)
endif
return false
endfunction
function KY4 takes nothing returns nothing
if HTI or(IC1(GetEnumUnit())or IsUnitInRangeXY(GetEnumUnit(),GetUnitX(HNI),GetUnitY(HNI),900)==false or IsUnitType(GetEnumUnit(),UNIT_TYPE_RANGED_ATTACKER)==false)then
call GroupRemoveUnit(HMI,GetEnumUnit())
call UnitRemoveAbility(GetEnumUnit(),1093817932)
if IsUnitType(GetEnumUnit(),UNIT_TYPE_RANGED_ATTACKER)==false then
call UnitRemoveAbility(GetEnumUnit(),1110460249)
call UnitRemoveAbility(GetEnumUnit(),1110460468)
endif
endif
endfunction
function KJ4 takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_RANGED_ATTACKER)and IsUnitInGroup(GetEnumUnit(),HMI)==false then
call GroupAddUnit(HMI,GetEnumUnit())
endif
endfunction
function KK4 takes unit SWI,integer U9I returns boolean
local item BA1
local boolean F81=false
local boolean F91=true
set BA1=CreateItem(U9I,GetUnitX(SWI),GetUnitY(SWI))
if GetUnitAbilityLevel(SWI,1095331446)==0 then
set F81=true
call IA1(SWI,1095331446)
endif
if UnitAddItem(SWI,BA1)==false then
call RemoveItem(BA1)
set F91=false
elseif GetWidgetLife(BA1)>0 then
call RemoveItem(BA1)
set F91=false
else
call RemoveItem(BA1)
endif
if F81 then
call UnitRemoveAbility(SWI,1095331446)
endif
set BA1=null
return F91
endfunction
function KL4 takes nothing returns nothing
local unit P8I=GetEnumUnit()
if KZ4(P8I)or IsUnitIllusion(P8I)==true then
call UnitRemoveAbility(P8I,1110460468)
call IA1(P8I,1093817932)
call SaveInteger(LY,(GetHandleId(P8I)),(819),(HSI))
else
call UnitRemoveAbility(P8I,1093817932)
call UnitRemoveAbility(P8I,1110460249)
call DisableTrigger(LY0)
call KK4(P8I,HRI[HSI])
call EnableTrigger(LY0)
endif
set P8I=null
endfunction
function KM4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group FX4=(LoadGroupHandle(LY,(S5I),(22)))
local group g
if GetTriggerEventId()==EVENT_WIDGET_DEATH or P7I==null then
set HTI=true
call ForGroup(FX4,function KY4)
call NSI(FX4)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set HMI=FX4
set HSI=GetUnitAbilityLevel(P7I,1096114550)
set HTI=false
set HNI=P7I
set GK=P7I
call ForGroup(FX4,function KY4)
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),900+25,Condition(function CT1))
call ForGroup(g,function KJ4)
call NSI(g)
set g=null
call ForGroup(FX4,function KL4)
endif
set t=null
set P7I=null
set FX4=null
return false
endfunction
function KN4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
if IsUnitIllusion(P7I)then
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterTimerEvent(t,1,true)
else
call TriggerRegisterTimerEvent(t,0.2,true)
endif
call TriggerAddCondition(t,Condition(function KM4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
set t=null
set P7I=null
endfunction
function KS4 takes nothing returns boolean
if GetLearnedSkill()==1096114550 and GetUnitAbilityLevel(GetTriggerUnit(),1096114550)==1 then
call KN4()
endif
return false
endfunction
function TB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function KS4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function KX4))
set HRI[1]=1227903297
set HRI[2]=1227903298
set HRI[3]=1227903299
set HRI[4]=1227903300
set t=null
endfunction
constant function Poof_RawCode takes nothing returns integer
return 1093684792
endfunction
constant function Poof_PrimaryUnitCode takes nothing returns integer
return 1211117641
endfunction
constant function Poof_SecondaryUnitCode takes nothing returns integer
return 1211117642
endfunction
function KT4 takes unit SWI returns boolean
return(GetUnitTypeId(SWI)==(1211117641)or GetUnitTypeId(SWI)==(1211117642)or GetUnitTypeId(SWI)==GetUnitTypeId(GetTriggerUnit()))and GetUnitState(SWI,UNIT_STATE_LIFE)>0.5 and GetOwningPlayer(SWI)==GetOwningPlayer(GetTriggerUnit())
endfunction
function KR4 takes nothing returns boolean
return GetSpellAbilityId()==(1093684792)
endfunction
function KP4 takes nothing returns boolean
return KT4(GetFilterUnit())
endfunction
function KQ4 takes nothing returns nothing
local unit HO2=GetEnumUnit()
local real KU4=QMI(HO2,X3)
if KU4<JO then
set JO=KU4
set XO=HO2
endif
endfunction
function L04 takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0
endfunction
function LI4 takes nothing returns nothing
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\ArcaneTowerAttack.mdl",GetEnumUnit(),"origin"))
call UnitDamageTarget(GetTriggerUnit(),GetEnumUnit(),JO,true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE,WEAPON_TYPE_WHOKNOWS)
endfunction
function L14 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local location AM3
local real x
local real y
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local group Z51
local boolexpr QL1
local boolean LO4=false
if P8I!=null and KT4(P8I)then
set x=GetUnitX(P8I)
set y=GetUnitY(P8I)
set LO4=true
else
set QL1=Condition(function KP4)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,0,0,999999,QL1)
if P8I!=null then
set AM3=GetUnitLoc(P8I)
else
set AM3=GetSpellTargetLoc()
endif
set XO=FirstOfGroup(Z51)
if XO!=null then
set LO4=true
call GroupRemoveUnit(Z51,XO)
set JO=QMI(XO,AM3)
set X3=AM3
call ForGroup(Z51,function KQ4)
set P8I=XO
set x=GetUnitX(P8I)
set y=GetUnitY(P8I)
endif
call NSI(Z51)
call RemoveLocation(AM3)
endif
if LO4 then
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\ToonBoom\\ToonBoom.mdl",QXI,QYI))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\ToonBoom\\ToonBoom.mdl",x,y))
call SetUnitX(P7I,x)
call SetUnitY(P7I,y)
set JO=60+GetUnitAbilityLevel(GetTriggerUnit(),(1093684792))*20
set QL1=Condition(function L04)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,QXI,QYI,400,QL1)
call ForGroup(Z51,function LI4)
call NSI(Z51)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,400,QL1)
call ForGroup(Z51,function LI4)
call NSI(Z51)
endif
endfunction
function L24 takes nothing returns boolean
return GetSpellAbilityId()==(1093684792)
endfunction
function L34 takes nothing returns nothing
call SetUnitAnimationByIndex((LoadUnitHandle(LY,(GetHandleId(GetExpiredTimer())),(221))),2)
endfunction
function L44 takes nothing returns nothing
local timer t=CreateTimer()
call SetUnitAnimationByIndex(GetTriggerUnit(),2)
call SaveUnitHandle(LY,(GetHandleId(t)),(221),(GetTriggerUnit()))
call TimerStart(t,1,false,function L34)
endfunction
function NW1 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=1
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
call TriggerAddCondition(t,Condition(function L24))
call TriggerAddAction(t,function L44)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function KR4))
call TriggerAddAction(t,function L14)
loop
exitwhen i>5
call SetPlayerAbilityAvailable(BO[i],1093816641,false)
call SetPlayerAbilityAvailable(CO[i],1093816641,false)
set i=i+1
endloop
endfunction
constant function Trap_CastCode takes nothing returns integer
return 1093684802
endfunction
constant function Trap_EffectCode takes nothing returns integer
return 1093684803
endfunction
constant function Trap_Projectile takes nothing returns integer
return 1747988547
endfunction
constant function Trap_DummyNet takes nothing returns integer
return 1747988537
endfunction
constant function Trap_Radius takes nothing returns integer
return 245
endfunction
function L54 takes nothing returns boolean
return GetSpellAbilityId()==(1093684802)
endfunction
function L64 takes nothing returns boolean
return RKI(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(XO))and(BU1(GetFilterUnit())==false or IsUnitVisible(GetFilterUnit(),GetOwningPlayer(XO))==true)and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0.5 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitTypeId(GetFilterUnit())!=1848651852
endfunction
function L74 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(GetEnumUnit()),1697656901,JO,Y3,0)
call IA1(I01,(1093684803))
call IssueTargetOrder(I01,"ensnare",GetEnumUnit())
endfunction
function L84 takes unit IG1,real x,real y returns nothing
local boolexpr QL1=Condition(function L64)
local group Z51=NTI()
set XO=IG1
call GroupEnumUnitsInRange(Z51,x,y,(245),QL1)
set JO=x
set Y3=y
call ForGroup(Z51,function L74)
call NSI(Z51)
endfunction
function L94 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real QXI=GetUnitX(IG1)
local real QYI=GetUnitY(IG1)
local real IV1=GetUnitX(IG1)+30*Cos(RM2)
local real IW1=GetUnitY(IG1)+30*Sin(RM2)
if(IV1-QJI)*(IV1-QJI)+(IW1-QKI)*(IW1-QKI)<1200 then
call SetUnitX(IG1,QJI)
call SetUnitY(IG1,QKI)
call L84(IG1,QJI,QKI)
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
call KillUnit(IG1)
call DestroyTimer(t)
else
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
endif
endfunction
function LA4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location AM3=GetSpellTargetLoc()
local real QJI=PTI(GetLocationX(AM3))
local real QKI=PUI(GetLocationY(AM3))
local real QXI=PTI(GetUnitX(SFI))
local real QYI=PUI(GetUnitY(SFI))
local unit IG1=CreateUnit(GetOwningPlayer(SFI),(1747988547),QXI,QYI,0)
local real RM2=Atan2(QKI-QYI,QJI-QXI)
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
call SetUnitScale(IG1,2,2,2)
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call TimerStart(t,0.035,true,function L94)
call RemoveLocation(AM3)
endfunction
function NX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddAction(t,function LA4)
call TriggerAddCondition(t,Condition(function L54))
endfunction
function LB4 takes unit u returns boolean
return GetUnitTypeId(u)==1211117641 or GetUnitTypeId(u)==1211117642
endfunction
constant function DoubleTrouble_RawCode takes nothing returns integer
return 1093684567
endfunction
constant function DoubleTrouble_PrimaryUnitCode takes nothing returns integer
return 1211117641
endfunction
constant function DoubleTrouble_SecondaryUnitCode takes nothing returns integer
return 1211117642
endfunction
constant function DoubleTrouble_Ability1 takes nothing returns integer
return 1093684792
endfunction
constant function DoubleTrouble_Ability2 takes nothing returns integer
return 1093684802
endfunction
constant function DoubleTrouble_Ability3 takes nothing returns integer
return 1093684791
endfunction
constant function DoubleTrouble_Item9 takes nothing returns integer
return FR0[ZI0]
endfunction
constant function DoubleTrouble_Item8 takes nothing returns integer
return FR0[Z00]
endfunction
constant function DoubleTrouble_Item7 takes nothing returns integer
return FR0[X90]
endfunction
constant function DoubleTrouble_Item6 takes nothing returns integer
return FR0[XI0]
endfunction
constant function DoubleTrouble_Item5 takes nothing returns integer
return FR0[ZL0]
endfunction
constant function DoubleTrouble_Item4 takes nothing returns integer
return FR0[ZM0]
endfunction
constant function DoubleTrouble_Item3 takes nothing returns integer
return FR0[ZN0]
endfunction
constant function DoubleTrouble_Item2 takes nothing returns integer
return FR0[ZK0]
endfunction
constant function DoubleTrouble_Item1 takes nothing returns integer
return FR0[G40]
endfunction
function LC4 takes unit SWI returns boolean
return GetUnitTypeId(SWI)==(1211117641)or GetUnitTypeId(SWI)==(1211117642)
endfunction
function DoubleTrouble_IsKoboldCondition takes nothing returns boolean
return GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(XO)and GetFilterUnit()!=XO and(GetUnitTypeId(GetFilterUnit())==(1211117641)or GetUnitTypeId(GetFilterUnit())==(1211117642))
endfunction
function DoubleTrouble_UnshareXPCondition takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(XO))==true and LC4(GetFilterUnit())==false
endfunction
function DoubleTrouble_UnshareXPGive takes nothing returns nothing
call AddHeroXP(GetEnumUnit(),YO,true)
endfunction
function LD4 takes nothing returns nothing
local integer LE4=GetHandleId(GetTriggeringTrigger())
local player T4I=(LoadPlayerHandle(LY,(LE4),(370)))
local integer LF4=GetHandleId(T4I)
local unit W41=(LoadUnitHandle(LY,(LF4),(699)))
local unit W51=(LoadUnitHandle(LY,(LF4),(700)))
local unit W61=(LoadUnitHandle(LY,(LF4),(701)))
local unit W71=(LoadUnitHandle(LY,(LF4),(702)))
local unit W81=(LoadUnitHandle(LY,(LF4),(703)))
local integer LG4=GetUnitAbilityLevel(W41,1096904043)*2
local integer JJ3=GetHeroAgi(W41,false)
local integer LH4=GetHeroAgi(W41,true)-JJ3-LG4
local integer JK3=GetHeroStr(W41,false)
local integer LZ4=GetHeroStr(W41,true)-JK3-LG4
local integer LV4=GetHeroInt(W41,false)
local integer LW4=GetHeroInt(W41,true)-LV4-LG4
local real LX4=0
local integer LY4
local integer LJ4
local integer LK4
if Z0I then
set LX4=1.0
endif
set LY4=R2I(JJ3+LH4*LX4)
set LJ4=R2I(JK3+LZ4*LX4)
set LK4=R2I(LV4+LW4*LX4)
if GetUnitState(W41,UNIT_STATE_LIFE)>1 then
if W51!=null then
call SetHeroAgi(W51,LY4,false)
call SetHeroStr(W51,LJ4,false)
call SetHeroInt(W51,LK4,false)
endif
if W61!=null then
call SetHeroAgi(W61,LY4,false)
call SetHeroStr(W61,LJ4,false)
call SetHeroInt(W61,LK4,false)
endif
if W71!=null then
call SetHeroAgi(W71,LY4,false)
call SetHeroStr(W71,LJ4,false)
call SetHeroInt(W71,LK4,false)
endif
if W81!=null then
call SetHeroAgi(W81,LY4,false)
call SetHeroStr(W81,LJ4,false)
call SetHeroInt(W81,LK4,false)
endif
endif
endfunction
function LL4 takes nothing returns nothing
local integer LE4=GetHandleId(GetTriggeringTrigger())
local player T4I=(LoadPlayerHandle(LY,(LE4),(370)))
local integer LF4=GetHandleId(T4I)
local unit W41=(LoadUnitHandle(LY,(LF4),(699)))
local unit W51=(LoadUnitHandle(LY,(LF4),(700)))
local unit W61=(LoadUnitHandle(LY,(LF4),(701)))
local unit W71=(LoadUnitHandle(LY,(LF4),(702)))
local unit W81=(LoadUnitHandle(LY,(LF4),(703)))
local integer LM4=GetHandleId(W41)
local integer LN4=GetHandleId(W51)
local integer LS4=GetHandleId(W61)
local integer LT4=GetHandleId(W71)
local integer LR4=GetHandleId(W81)
local integer LP4=(LoadInteger(LY,(LM4),(367)))
local integer LQ4=(LoadInteger(LY,(LM4),(368)))
local integer LU4=(LoadInteger(LY,(LN4),(367)))
local integer M04=(LoadInteger(LY,(LN4),(368)))
local integer MI4=(LoadInteger(LY,(LS4),(367)))
local integer M14=(LoadInteger(LY,(LS4),(368)))
local integer MO4=(LoadInteger(LY,(LT4),(367)))
local integer M24=(LoadInteger(LY,(LT4),(368)))
local integer M34=(LoadInteger(LY,(LR4),(367)))
local integer M44=(LoadInteger(LY,(LR4),(368)))
local integer M54=GetHeroXP(W41)
local integer M64=GetHeroXP(W51)
local integer M74=GetHeroXP(W61)
local integer M84=GetHeroXP(W71)
local integer M94=GetHeroXP(W81)
local integer MA4=M54-LP4-LQ4
local integer MB4=M64-LU4-M04
local integer MC4=M74-MI4-M14
local integer MD4=M84-MO4-M24
local integer ME4=M94-M34-M44
if GetUnitState(W41,UNIT_STATE_LIFE)>1 then
set LP4=LP4+MA4
set LU4=LU4+MB4
set MI4=MI4+MC4
set MO4=MO4+MD4
set M34=M34+ME4
if W41!=null then
call AddHeroXP(W51,MA4,false)
if GetHeroXP(W51)!=M64 then
set M04=M04+MA4
endif
call AddHeroXP(W61,MA4,false)
if GetHeroXP(W61)!=M74 then
set M14=M14+MA4
endif
call AddHeroXP(W71,MA4,false)
if GetHeroXP(W71)!=M84 then
set M24=M24+MA4
endif
call AddHeroXP(W81,MA4,false)
if GetHeroXP(W81)!=M94 then
set M44=M44+MA4
endif
endif
if W51!=null then
call AddHeroXP(W41,MB4,false)
if GetHeroXP(W41)!=M54 then
set LQ4=LQ4+MB4
endif
call AddHeroXP(W61,MB4,false)
if GetHeroXP(W61)!=M74 then
set M14=M14+MB4
endif
call AddHeroXP(W71,MB4,false)
if GetHeroXP(W71)!=M84 then
set M24=M24+MB4
endif
call AddHeroXP(W81,MB4,false)
if GetHeroXP(W81)!=M94 then
set M44=M44+MB4
endif
endif
if W61!=null then
call AddHeroXP(W51,MC4,false)
if GetHeroXP(W51)!=M64 then
set M04=M04+MC4
endif
call AddHeroXP(W41,MC4,false)
if GetHeroXP(W41)!=M54 then
set LQ4=LQ4+MC4
endif
call AddHeroXP(W71,MC4,false)
if GetHeroXP(W71)!=M84 then
set M24=M24+MC4
endif
call AddHeroXP(W81,MC4,false)
if GetHeroXP(W81)!=M94 then
set M44=M44+MC4
endif
endif
if W71!=null then
call AddHeroXP(W51,MD4,false)
if GetHeroXP(W51)!=M64 then
set M04=M04+MD4
endif
call AddHeroXP(W61,MD4,false)
if GetHeroXP(W61)!=M74 then
set M14=M14+MD4
endif
call AddHeroXP(W41,MD4,false)
if GetHeroXP(W41)!=M54 then
set LQ4=LQ4+MD4
endif
call AddHeroXP(W81,MD4,false)
if GetHeroXP(W81)!=M94 then
set M44=M44+MD4
endif
endif
if W81!=null then
call AddHeroXP(W51,ME4,false)
if GetHeroXP(W51)!=M64 then
set M04=M04+ME4
endif
call AddHeroXP(W61,ME4,false)
if GetHeroXP(W61)!=M74 then
set M14=M14+ME4
endif
call AddHeroXP(W41,ME4,false)
if GetHeroXP(W41)!=M54 then
set LQ4=LQ4+ME4
endif
call AddHeroXP(W71,ME4,false)
if GetHeroXP(W71)!=M84 then
set M24=M24+ME4
endif
endif
call SaveInteger(LY,(LM4),(367),(LP4))
call SaveInteger(LY,(LM4),(368),(LQ4))
call SaveInteger(LY,(LN4),(367),(LU4))
call SaveInteger(LY,(LN4),(368),(M04))
call SaveInteger(LY,(LS4),(367),(MI4))
call SaveInteger(LY,(LS4),(368),(M14))
call SaveInteger(LY,(LT4),(367),(MO4))
call SaveInteger(LY,(LT4),(368),(M24))
call SaveInteger(LY,(LR4),(367),(M34))
call SaveInteger(LY,(LR4),(368),(M44))
endif
endfunction
function MF4 takes nothing returns boolean
return LC4(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function MG4 takes nothing returns nothing
local unit AD1=GetTriggerUnit()
local integer S5I=GetHandleId(GetOwningPlayer(AD1))
local unit W41=(LoadUnitHandle(LY,(S5I),(699)))
local unit W51=(LoadUnitHandle(LY,(S5I),(700)))
local unit W61=(LoadUnitHandle(LY,(S5I),(701)))
local unit W71=(LoadUnitHandle(LY,(S5I),(702)))
local unit W81=(LoadUnitHandle(LY,(S5I),(703)))
local boolean I4O=false
call DisableTrigger(EG)
if W41!=null and W41!=AD1 then
call KillUnit(W41)
endif
if W51!=null and W51!=AD1 then
call KillUnit(W51)
endif
if W61!=null and W61!=AD1 then
call KillUnit(W61)
endif
if W71!=null and W71!=AD1 then
call KillUnit(W71)
endif
if W81!=null and W81!=AD1 then
call KillUnit(W81)
endif
call EnableTrigger(EG)
endfunction
function MH4 takes nothing returns boolean
return LC4(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function MZ4 takes unit MV4,unit SFI returns nothing
local trigger t=(LoadTriggerHandle(LY,(GetHandleId(GetOwningPlayer(SFI))),(369)))
local integer i=0
local boolean MW4=false
local boolean MX4=false
local boolean MY4=false
local boolean MJ4=false
local boolean MK4=false
local boolean ML4=false
local boolean MM4=false
local boolean MN4=false
local boolean MS4=false
call DisableTrigger(t)
call DisableTrigger(LY0)
loop
exitwhen i>5
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[G40])then
set MW4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[ZK0])then
set MX4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[ZN0])then
set MY4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[ZM0])then
set MJ4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[ZL0])then
set MK4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[XI0])then
set ML4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[X90])then
set MM4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[Z00])then
set MN4=true
endif
if GetItemTypeId(UnitItemInSlot(SFI,i))==(FR0[ZI0])then
set MS4=true
endif
set i=i+1
endloop
if MS4 then
call UnitAddItem(MV4,CreateItem((FR0[ZI0]),0,0))
elseif MN4 then
call UnitAddItem(MV4,CreateItem((FR0[Z00]),0,0))
elseif MM4 then
call UnitAddItem(MV4,CreateItem((FR0[X90]),0,0))
elseif ML4 then
call UnitAddItem(MV4,CreateItem((FR0[XI0]),0,0))
elseif MK4 then
call UnitAddItem(MV4,CreateItem((FR0[ZL0]),0,0))
elseif MJ4 then
call UnitAddItem(MV4,CreateItem((FR0[ZM0]),0,0))
elseif MY4 then
call UnitAddItem(MV4,CreateItem((FR0[ZN0]),0,0))
elseif MX4 then
call UnitAddItem(MV4,CreateItem((FR0[ZK0]),0,0))
elseif MW4 then
call UnitAddItem(MV4,CreateItem((FR0[G40]),0,0))
endif
call EnableTrigger(t)
call EnableTrigger(LY0)
endfunction
function MT4 takes nothing returns nothing
local unit W91=GetTriggerUnit()
local integer i=0
local boolean MW4=false
local boolean MX4=false
local boolean MY4=false
local boolean MJ4=false
local boolean MK4=false
local boolean ML4=false
local boolean MM4=false
local boolean MN4=false
local boolean MS4=false
local integer LF4=GetHandleId(GetOwningPlayer(W91))
local unit W41=(LoadUnitHandle(LY,(LF4),(699)))
local unit W51=(LoadUnitHandle(LY,(LF4),(700)))
local unit W61=(LoadUnitHandle(LY,(LF4),(701)))
local unit W71=(LoadUnitHandle(LY,(LF4),(702)))
local unit W81=(LoadUnitHandle(LY,(LF4),(703)))
local integer FH1
local boolean MR4=false
local integer MP4=0
local integer MQ4=0
local integer MU4=0
local integer N04=0
local integer NI4=0
local integer N14=0
local integer NO4=0
local integer N24=0
local integer N34=0
call DisableTrigger(GetTriggeringTrigger())
if GetUnitTypeId(W91)==(1211117642)then
call UnitRemoveItemFromSlot(W91,0)
call EnableTrigger(GetTriggeringTrigger())
return
endif
if not(GetItemTypeId(GetManipulatedItem())==(FR0[G40])or GetItemTypeId(GetManipulatedItem())==(FR0[ZK0])or GetItemTypeId(GetManipulatedItem())==(FR0[ZN0])or GetItemTypeId(GetManipulatedItem())==(FR0[ZM0])or GetItemTypeId(GetManipulatedItem())==(FR0[ZL0])or GetItemTypeId(GetManipulatedItem())==(FR0[XI0])or GetItemTypeId(GetManipulatedItem())==(FR0[X90])or GetItemTypeId(GetManipulatedItem())==(FR0[Z00])or GetItemTypeId(GetManipulatedItem())==(FR0[ZI0]))then
call EnableTrigger(GetTriggeringTrigger())
return
endif
call DisableTrigger(LY0)
if GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM then
set MR4=true
endif
loop
exitwhen i>5
set FH1=GetItemTypeId(UnitItemInSlot(W91,i))
if FH1==(FR0[G40])then
set MP4=MP4+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(MP4>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MW4=true
endif
endif
if FH1==(FR0[ZK0])then
set MQ4=MQ4+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(MQ4>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MX4=true
endif
endif
if FH1==(FR0[ZN0])then
set MU4=MU4+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(MU4>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MY4=true
endif
endif
if FH1==(FR0[ZM0])then
set N04=N04+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(N04>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MJ4=true
endif
endif
if FH1==(FR0[ZL0])then
set NI4=NI4+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(NI4>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MK4=true
endif
endif
if FH1==(FR0[XI0])then
set N14=N14+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(N14>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set ML4=true
endif
endif
if FH1==(FR0[X90])then
set NO4=NO4+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(NO4>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MM4=true
endif
endif
if FH1==(FR0[Z00])then
set N24=N24+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(N24>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MN4=true
endif
endif
if FH1==(FR0[ZI0])then
set N34=N34+1
if(not(MR4 and FH1==GetItemTypeId(GetManipulatedItem())))or(N24>1 and FH1==GetItemTypeId(GetManipulatedItem()))then
set MS4=true
endif
endif
set i=i+1
endloop
call RemoveItem(UnitRemoveItemFromSlot(W51,0))
if W61!=null then
call RemoveItem(UnitRemoveItemFromSlot(W61,0))
endif
if W71!=null then
call RemoveItem(UnitRemoveItemFromSlot(W71,0))
endif
if W81!=null then
call RemoveItem(UnitRemoveItemFromSlot(W81,0))
endif
if MS4 then
call UnitAddItem(W51,CreateItem((FR0[ZI0]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[ZI0]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[ZI0]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[ZI0]),0,0))
endif
elseif MN4 then
call UnitAddItem(W51,CreateItem((FR0[Z00]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[Z00]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[Z00]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[Z00]),0,0))
endif
elseif MM4 then
call UnitAddItem(W51,CreateItem((FR0[X90]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[X90]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[X90]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[X90]),0,0))
endif
elseif ML4 then
call UnitAddItem(W51,CreateItem((FR0[XI0]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[XI0]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[XI0]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[XI0]),0,0))
endif
elseif MK4 then
call UnitAddItem(W51,CreateItem((FR0[ZL0]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[ZL0]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[ZL0]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[ZL0]),0,0))
endif
elseif MJ4 then
call UnitAddItem(W51,CreateItem((FR0[ZM0]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[ZM0]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[ZM0]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[ZM0]),0,0))
endif
elseif MY4 then
call UnitAddItem(W51,CreateItem((FR0[ZN0]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[ZN0]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[ZN0]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[ZN0]),0,0))
endif
elseif MX4 then
call UnitAddItem(W51,CreateItem((FR0[ZK0]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[ZK0]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[ZK0]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[ZK0]),0,0))
endif
elseif MW4 then
call UnitAddItem(W51,CreateItem((FR0[G40]),0,0))
if W61!=null then
call UnitAddItem(W61,CreateItem((FR0[G40]),0,0))
endif
if W71!=null then
call UnitAddItem(W71,CreateItem((FR0[G40]),0,0))
endif
if W81!=null then
call UnitAddItem(W81,CreateItem((FR0[G40]),0,0))
endif
endif
call EnableTrigger(GetTriggeringTrigger())
call EnableTrigger(LY0)
endfunction
function N44 takes unit N54,integer N64 returns nothing
local integer LF4=GetHandleId(GetOwningPlayer(N54))
local unit W41=(LoadUnitHandle(LY,(LF4),(699)))
local unit W51=(LoadUnitHandle(LY,(LF4),(700)))
local unit W61=(LoadUnitHandle(LY,(LF4),(701)))
local unit W71=(LoadUnitHandle(LY,(LF4),(702)))
local unit W81=(LoadUnitHandle(LY,(LF4),(703)))
if W41!=null and W41!=N54 then
call SelectHeroSkill(W41,N64)
endif
if W51!=null and W51!=N54 then
call SelectHeroSkill(W51,N64)
endif
if W61!=null and W61!=N54 then
call SelectHeroSkill(W61,N64)
endif
if W71!=null and W71!=N54 then
call SelectHeroSkill(W71,N64)
endif
if W81!=null and W81!=N54 then
call SelectHeroSkill(W81,N64)
endif
endfunction
function N74 takes integer IB1,unit H02,unit HI2 returns nothing
local integer TGI=1
local integer THI=GetUnitAbilityLevel(H02,IB1)
loop
exitwhen TGI>THI
call SelectHeroSkill(HI2,IB1)
set TGI=TGI+1
endloop
endfunction
function N84 takes unit MV4,unit N94 returns nothing
call AddHeroXP(MV4,GetHeroXP(N94),false)
call SaveInteger(LY,(GetHandleId(MV4)),(368),(GetHeroXP(N94)))
call SaveInteger(LY,(GetHandleId(MV4)),(367),(0))
call N74((1093684792),N94,MV4)
call N74((1093684802),N94,MV4)
call N74((1093684791),N94,MV4)
call N74(1096904043,N94,MV4)
call N74((1093684567),N94,MV4)
call N74(1093809987,N94,MV4)
endfunction
function NA4 takes unit W51,unit W61,integer N64,integer MP4,integer MQ4 returns nothing
if MP4>MQ4 then
call SelectHeroSkill(W61,N64)
elseif MQ4>MP4 then
call SelectHeroSkill(W51,N64)
endif
endfunction
function NB4 takes unit W51,unit W61 returns nothing
local integer M64=GetHeroXP(W51)
local integer M74=GetHeroXP(W61)
local integer LN4=GetHandleId(W51)
local integer LS4=GetHandleId(W61)
local integer M04=(LoadInteger(LY,(LN4),(368)))
local integer M14=(LoadInteger(LY,(LS4),(368)))
local integer GV2
if M64>M74 then
set GV2=M64-M74
call AddHeroXP(W61,GV2,true)
if M74!=GetHeroXP(W61)then
call SaveInteger(LY,(LS4),(368),(M14+GV2))
endif
elseif M64<M74 then
set GV2=M74-M64
call AddHeroXP(W51,GV2,true)
if M64!=GetHeroXP(W51)then
call SaveInteger(LY,(LN4),(368),(M04+GV2))
endif
endif
endfunction
function NC4 takes unit W51,unit W61 returns nothing
local integer ND4=GetUnitAbilityLevel(W51,(1093684792))
local integer NE4=GetUnitAbilityLevel(W51,(1093684802))
local integer NF4=GetUnitAbilityLevel(W51,(1093684791))
local integer NG4=GetUnitAbilityLevel(W51,(1093684567))
local integer NH4=GetUnitAbilityLevel(W51,1096904043)
local integer NZ4=GetUnitAbilityLevel(W51,1093809987)
local integer NV4=GetUnitAbilityLevel(W61,(1093684792))
local integer NW4=GetUnitAbilityLevel(W61,(1093684802))
local integer NX4=GetUnitAbilityLevel(W61,(1093684791))
local integer NY4=GetUnitAbilityLevel(W61,(1093684567))
local integer NJ4=GetUnitAbilityLevel(W61,1096904043)
local integer NK4=GetUnitAbilityLevel(W61,1093809987)
call NB4(W51,W61)
call NA4(W51,W61,(1093684792),ND4,NV4)
call NA4(W51,W61,(1093684802),NE4,NW4)
call NA4(W51,W61,(1093684791),NF4,NX4)
call NA4(W51,W61,(1093684567),NG4,NY4)
call NA4(W51,W61,1093809987,NZ4,NK4)
call NA4(W51,W61,1096904043,NH4,NJ4)
endfunction
function NL4 takes unit W51,unit W61 returns nothing
if W51!=null and W61!=null then
call NC4(W51,W61)
endif
endfunction
function NM4 takes nothing returns nothing
local integer LF4=GetHandleId((LoadPlayerHandle(LY,(GetHandleId(GetTriggeringTrigger())),(370))))
local unit W41=(LoadUnitHandle(LY,(LF4),(699)))
local unit W51=(LoadUnitHandle(LY,(LF4),(700)))
local unit W61=(LoadUnitHandle(LY,(LF4),(701)))
local unit W71=(LoadUnitHandle(LY,(LF4),(702)))
local unit W81=(LoadUnitHandle(LY,(LF4),(703)))
call DisableTrigger(HQI)
call NL4(W41,W51)
call NL4(W41,W61)
call NL4(W41,W71)
call NL4(W41,W81)
call NL4(W51,W61)
call NL4(W51,W71)
call NL4(W51,W81)
call NL4(W61,W71)
call NL4(W61,W81)
call NL4(W71,W81)
call EnableTrigger(HQI)
endfunction
function NN4 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddAction(t,function NM4)
call SavePlayerHandle(LY,(GetHandleId(t)),(370),(GetOwningPlayer(GetTriggerUnit())))
endfunction
function NS4 takes unit P7I returns nothing
local trigger t
call SaveUnitHandle(LY,(GetHandleId(GetOwningPlayer(P7I))),(699),(P7I))
call SaveInteger(LY,(GetHandleId(P7I)),(367),(GetHeroXP(P7I)))
call SaveInteger(LY,(GetHandleId(P7I)),(368),(0))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddAction(t,function LL4)
call SavePlayerHandle(LY,(GetHandleId(t)),(370),(GetOwningPlayer(P7I)))
call SaveTriggerHandle(LY,(GetHandleId(GetOwningPlayer(P7I))),(371),(t))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.3,true)
call TriggerAddAction(t,function LD4)
call SavePlayerHandle(LY,(GetHandleId(t)),(370),(GetOwningPlayer(P7I)))
call SaveTriggerHandle(LY,(GetHandleId(GetOwningPlayer(P7I))),(372),(t))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(t,function MG4)
call TriggerAddCondition(t,Condition(function MF4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call UMI(t,EVENT_PLAYER_UNIT_DROP_ITEM)
call TriggerAddAction(t,function MT4)
call TriggerAddCondition(t,Condition(function MH4))
call SaveTriggerHandle(LY,(GetHandleId(GetOwningPlayer(P7I))),(369),(t))
call ExecuteFunc("NN4")
endfunction
function NT4 takes unit P7I,boolean G4O returns nothing
local player T4I=GetOwningPlayer(P7I)
local integer S5I=GetHandleId(T4I)
local unit MV4
set HUI=HUI+1
if HUI==1 then
call NS4(P7I)
endif
call TriggerExecute((LoadTriggerHandle(LY,(GetHandleId(GetOwningPlayer(P7I))),(371))))
call TriggerExecute((LoadTriggerHandle(LY,(GetHandleId(GetOwningPlayer(P7I))),(372))))
if G4O==false then
call N44(P7I,1093684567)
call N44(P7I,1093809987)
endif
set MV4=CreateUnit(GetOwningPlayer(P7I),1211117642,GetUnitX(P7I),GetUnitY(P7I),0)
call N84(MV4,P7I)
call MZ4(MV4,P7I)
call SaveUnitHandle(LY,(S5I),(699+HUI),(MV4))
endfunction
function X9O takes nothing returns nothing
if Z0I==false then
set Z0I=true
call DisableTrigger(HQI)
call NT4(GK,true)
call EnableTrigger(HQI)
endif
endfunction
function NR4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if IsUnitIllusion(GetTriggerUnit())==false and GetOwningPlayer(GetTriggerUnit())==GetOwningPlayer(P7I)and LB4(GetTriggerUnit())then
if GetLearnedSkill()==1093684567 or GetLearnedSkill()==1093809987 then
call DisableTrigger(GetTriggeringTrigger())
call NT4(GetTriggerUnit(),false)
call EnableTrigger(GetTriggeringTrigger())
elseif GetLearnedSkill()==1096904043 or GetLearnedSkill()==1093684792 or GetLearnedSkill()==1093684802 or GetLearnedSkill()==1093684791 then
call TriggerExecute((LoadTriggerHandle(LY,(GetHandleId(GetOwningPlayer(GetTriggerUnit()))),(371))))
call TriggerExecute((LoadTriggerHandle(LY,(GetHandleId(GetOwningPlayer(GetTriggerUnit()))),(372))))
call DisableTrigger(GetTriggeringTrigger())
call N44(GetTriggerUnit(),GetLearnedSkill())
call EnableTrigger(GetTriggeringTrigger())
endif
endif
return false
endfunction
function K24 takes nothing returns nothing
local unit P7I=GK
local integer S5I
set HPI=CreateTrigger()
set HQI=HPI
set S5I=GetHandleId(HPI)
call UMI(HPI,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(HPI,Condition(function NR4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
endfunction
function NP4 takes nothing returns nothing
local location l=GetSpellTargetLoc()
call U7I("Abilities\\Spells\\Orc\\EarthQuake\\EarthQuakeTarget.mdl",GetLocationX(l),GetLocationY(l),2)
call TerrainDeformationRippleBJ(0.3,false,l,0,300,100,0.4,20)
call RemoveLocation(l)
set l=null
endfunction
function NQ4 takes nothing returns boolean
if GetSpellAbilityId()==1093678679 then
call NP4()
endif
return false
endfunction
function KK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function NQ4))
endfunction
function GenericCondition_BasicsAndStructureNoInvul takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IC1(GetFilterUnit())==false and BL1(GetFilterUnit())==false
endfunction
function NU4 takes nothing returns boolean
return IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IC1(GetFilterUnit())==false and BL1(GetFilterUnit())==false)
endfunction
function S04 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g
local unit u
local real d
local real a
local real UJ2
local real UK2
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local real PAI
if GetTriggerEvalCount(t)>40 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=SFI
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),500,Condition(function NU4))
set u=GroupPickRandomUnit(g)
if u==null then
set d=GetRandomReal(175,400)
set a=GetRandomReal(0,6)
set UJ2=GetUnitX(SFI)+d*Cos(a)
set UK2=GetUnitY(SFI)+d*Sin(a)
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl",UJ2,UK2))
else
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl",u,"origin"))
set PAI=9*SUI
if IsUnitType(u,UNIT_TYPE_STRUCTURE)==true then
set PAI=PAI*1.4
endif
call P6I(I01,u,2,PAI)
endif
call NSI(g)
endif
set u=null
set g=null
set t=null
set SFI=null
return false
endfunction
function SI4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\RocketMissile\\RocketMissile.mdl",SFI,"hand right"))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(SFI,1093808212)))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function S04))
set t=null
set SFI=null
endfunction
function S14 takes nothing returns boolean
if GetSpellAbilityId()==1093808212 then
call SI4()
endif
return false
endfunction
function KL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function S14))
endfunction
function SO4 takes unit P7I,unit P8I returns nothing
call AX1(P8I,1093818202,1,0.75,1110460470)
endfunction
function S24 takes nothing returns nothing
local real d
if IsUnitInGroup(GetEnumUnit(),ZOI)==false then
set d=QLI(GetEnumUnit(),Z1I)
if d<Z2I then
set Z2I=d
set ZII=GetEnumUnit()
endif
endif
endfunction
function S34 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093678678)
call GroupAddUnit(PR2,P8I)
call SO4(P7I,P8I)
set GK=P7I
set ZII=null
set Z1I=P8I
set ZOI=PR2
set Z2I=999999
call GroupEnumUnitsInRange(g,x,y,650+25,Condition(function CF1))
call ForGroup(g,function S24)
call NSI(g)
if ZII==null or GetTriggerEvalCount(t)>3+SUI then
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set P8I=ZII
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
set g=null
set t=null
set P7I=null
set P8I=null
set PR2=null
return false
endfunction
function S44 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group PR2=NTI()
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveGroupHandle(LY,(S5I),(187),(PR2))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function S34))
set P7I=null
set P8I=null
set t=null
endfunction
function S54 takes nothing returns boolean
if GetSpellAbilityId()==1093678678 and NNI(GetSpellTargetUnit())==false then
call S44()
endif
return false
endfunction
function KM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function S54))
set t=null
endfunction
function S64 takes nothing returns nothing
local unit P7I=Z3I
local unit P8I=GetEnumUnit()
call P6I(P7I,P8I,1,Z4I)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",P8I,"origin"))
set P7I=null
set P8I=null
endfunction
function S74 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093808454)
local group g
if SUI!=0 then
if SUI==1 then
set Z4I=100
elseif SUI==2 then
set Z4I=130
else
set Z4I=160
endif
else
set SUI=GetUnitAbilityLevel(P7I,1093808455)
if SUI==1 then
set Z4I=160
elseif SUI==2 then
set Z4I=190
else
set Z4I=220
endif
endif
if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetUnitState(P7I,UNIT_STATE_MANA)<20*SUI or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==-1 or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()==1093808456 or GetSpellAbilityId()==1093809992))then
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093808454 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808454,true)
endif
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093808455 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808455,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808456,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)-20*SUI)
set GK=P7I
set Z3I=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),475,Condition(function CA1))
call ForGroup(g,function S64)
call NSI(g)
set g=null
endif
set t=null
return false
endfunction
function S84 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",P7I,"origin"))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808454,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808455,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093808456,true)
call UnitAddAbility(P7I,1093808456)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function S74))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerEvaluate(t)
set P7I=null
set t=null
endfunction
function S94 takes nothing returns boolean
if GetSpellAbilityId()==1093808454 or GetSpellAbilityId()==1093808455 then
call S84()
endif
return false
endfunction
function KN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function S94))
set t=null
endfunction
function SA4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(813)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()==EVENT_WIDGET_DEATH or LVO<(TimerGetElapsed(M))then
call UnitRemoveAbility(P8I,1093817649)
call UnitRemoveAbility(P8I,1110460246)
call UnitRemoveAbility(P8I,1093817650)
call UnitRemoveAbility(P8I,1110460247)
call UnitRemoveAbility(P8I,1093817652)
endif
set t=null
set P8I=null
return false
endfunction
function SB4 takes unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real DC1=3.0
local integer SC4=1093817650
local integer SD4=1110460247
if IsUnitType(P8I,UNIT_TYPE_HERO)then
set DC1=2.0
endif
set SC4=1093817649
set SD4=1110460246
call IA1(P8I,SC4)
call IA1(P8I,SD4)
call IA1(P8I,1093817652)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterTimerEvent(t,DC1,false)
call TriggerAddCondition(t,Condition(function SA4))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(GetHandleId(P8I)),(813),(((TimerGetElapsed(M))+DC1-0.1)*1.0))
set t=null
endfunction
function SE4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(812)))
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetTriggerUnit()==P8I then
call SB4(GetAttacker())
endif
elseif(TimerGetElapsed(M))>LVO then
call UnitRemoveAbility(P8I,1093817648)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function SF4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t
local integer S5I
local integer DC1=40
local integer SUI=GetUnitAbilityLevel(P7I,1093679186)
local real LVO=(LoadReal(LY,(GetHandleId(P8I)),(812)))
call SaveReal(LY,(GetHandleId(P8I)),(812),(((TimerGetElapsed(M))+DC1)*1.0))
call IA1(P8I,1093817648)
call SetUnitAbilityLevel(P8I,1093817648,SUI)
if LVO<(TimerGetElapsed(M))then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function SE4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
set P7I=null
set P8I=null
set t=null
endfunction
function SG4 takes nothing returns boolean
if GetSpellAbilityId()==1093679186 then
call SF4()
endif
return false
endfunction
function KS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SG4))
set t=null
endfunction
function SH4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit WF3=(LoadUnitHandle(LY,(S5I),(374)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer SZ4=(LoadInteger(LY,(S5I),(233)))
local integer MKO=(LoadInteger(LY,(S5I),(12)))
local unit I01
local group g
local real a
local real x
local real y
local integer DT1=(LoadInteger(LY,(S5I),(720)))
if DT1>0 then
set DT1=DT1-1
call SaveInteger(LY,(S5I),(720),(DT1))
return false
endif
if QNI(GetUnitX(WF3),GetUnitY(WF3),GetUnitX(P8I),GetUnitY(P8I))>20 then
set a=UEI(GetUnitX(WF3),GetUnitY(WF3),GetUnitX(P8I),GetUnitY(P8I))
call SetUnitFacing(WF3,a)
set x=GetUnitX(WF3)+13.5*Cos(a*bj_DEGTORAD)
set y=GetUnitY(WF3)+13.5*Sin(a*bj_DEGTORAD)
call SetUnitX(WF3,x)
call SetUnitY(WF3,y)
else
if IC1(P8I)==false then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093679409)
call SetUnitAbilityLevel(I01,1093679409,SUI)
call IssueTargetOrder(I01,"frostnova",P8I)
endif
if SZ4>MKO then
call RemoveUnit(WF3)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),600,Condition(function C81))
call GroupRemoveUnit(g,P8I)
set P8I=GroupPickRandomUnit(g)
call NSI(g)
if P8I==null then
call RemoveUnit(WF3)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveInteger(LY,(S5I),(720),(10))
call SaveInteger(LY,(S5I),(233),(SZ4+1))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
endif
endif
set t=null
set P7I=null
set P8I=null
set WF3=null
set I01=null
set g=null
return false
endfunction
function SV4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093678420)
local integer MKO=10
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit WF3
if GetSpellAbilityId()==1093679176 then
set SUI=GetUnitAbilityLevel(P7I,1093679176)+1
set MKO=100000
endif
set WF3=CreateUnit(GetOwningPlayer(P7I),1697656889,GetUnitX(P7I),GetUnitY(P7I),0)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(374),(WF3))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(233),(1))
call SaveInteger(LY,(S5I),(12),(MKO))
call SaveInteger(LY,(S5I),(720),(0))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function SH4))
set P7I=null
set P8I=null
set WF3=null
set t=null
endfunction
function SW4 takes nothing returns boolean
if GetSpellAbilityId()==1093678420 or GetSpellAbilityId()==1093679176 then
call SV4()
endif
return false
endfunction
function KT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SW4))
set t=null
endfunction
function SX4 takes nothing returns nothing
if B81(GetUnitTypeId(GetEnumUnit()))==false then
set Z5I=Z5I+1
endif
endfunction
function SY4 takes nothing returns nothing
if B81(GetUnitTypeId(GetFilterUnit()))==false then
call AddHeroXP(GetEnumUnit(),Z6I,true)
endif
endfunction
function SJ4 takes unit P8I returns nothing
local group g=NTI()
local integer SK4=ALO(P8I)
set Z5I=0
set GK=P8I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),1300+25,Condition(function DO1))
call ForGroup(g,function SX4)
if Z5I>0 then
set Z6I=SK4/Z5I
call ForGroup(g,function SY4)
endif
call NSI(g)
set Z5I=0
set GK=P8I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),1300+25,Condition(function CU1))
call ForGroup(g,function SX4)
if Z5I>0 then
set Z6I=SK4/Z5I
call ForGroup(g,function SY4)
endif
call NSI(g)
set g=null
endfunction
function SL4 takes unit u,integer d returns nothing
local texttag t=CreateTextTag()
call SetTextTagText(t,"+"+I2S(d)+" "+GetObjectName(1848659025),0.03)
call SetTextTagPosUnit(t,u,0)
call SetTextTagColorBJ(t,50,75,255,15)
call SetTextTagVelocity(t,0,0.035)
call SetTextTagFadepoint(t,3)
call SetTextTagLifespan(t,2.5)
call SetTextTagPermanent(t,false)
call SetTextTagVisibility(t,false)
call SetTextTagVisibility(t,true)
if IsUnitVisible(u,GetLocalPlayer())or P0I(GetLocalPlayer())then
call SetTextTagVisibility(t,true)
else
call SetTextTagVisibility(t,false)
endif
set t=null
endfunction
function SM4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093678387)
local real OA2=GetUnitState(P8I,UNIT_STATE_LIFE)*(SUI*0.15+0.1)
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+OA2)
call SL4(P8I,R2I(OA2))
call SJ4(P8I)
call KillUnit(P8I)
set P7I=null
set P8I=null
endfunction
function SN4 takes nothing returns boolean
if GetSpellAbilityId()==1093678387 and RYI(GetSpellTargetUnit())==false then
call SM4()
endif
return false
endfunction
function KR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function SN4))
set t=null
endfunction
function SS4 takes nothing returns nothing
local location l
local unit SFI=GetTriggerUnit()
local real x1=GetUnitX(SFI)
local real y1=GetUnitY(SFI)
local real a
local real x2
local real y2
local integer SUI=GetUnitAbilityLevel(SFI,1093687349)
local real PAI
local real DC1
local unit DT1=null
if GetSpellTargetUnit()!=null then
set l=GetUnitLoc(GetSpellTargetUnit())
else
set l=GetSpellTargetLoc()
endif
set x2=GetLocationX(l)
set y2=GetLocationY(l)
set a=Atan2(y2-y1,x2-x1)
set x2=x1+700*Cos(a)
set y2=y1+700*Sin(a)
if SUI==1 then
set PAI=80
set DC1=0.5
elseif SUI==2 then
set PAI=140
set DC1=1
elseif SUI==3 then
set PAI=200
set DC1=1.5
elseif SUI==4 then
set PAI=260
set DC1=2
endif
if GetSpellTargetUnit()!=null and NNI(GetSpellTargetUnit())then
set DT1=GetSpellTargetUnit()
endif
call DS1(SFI,DT1,PAI,DC1,0.52,x1,y1,x2,y2,150,null,true,1600)
call RemoveLocation(l)
set l=null
set SFI=null
endfunction
function ST4 takes nothing returns boolean
if GetSpellAbilityId()==1093687349 then
call SS4()
endif
return false
endfunction
function TI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ST4))
call Q1I(1093687350)
set t=null
endfunction
function SR4 takes nothing returns boolean
if(GetSpellAbilityId()==1093679413 or GetSpellAbilityId()==1093679447)and RKI(GetSpellTargetUnit())then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659026))
endif
return false
endfunction
function T11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function SR4))
set t=null
endfunction
function SP4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosDone.mdl",SFI,"origin"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",SFI,"origin"))
set t=null
set SFI=null
return false
endfunction
function SQ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call KillUnit(I01)
endif
call UnitRemoveAbility(SFI,1093687875)
call UnitRemoveAbility(SFI,1110454358)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerRegisterDeathEvent(t,SFI)
call TriggerAddCondition(t,Condition(function SP4))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
set t=null
set SFI=null
set I01=null
return false
endfunction
function SU4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real H71=(LoadReal(LY,(S5I),(6)))
local real H81=(LoadReal(LY,(S5I),(7)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call H61(SFI,H71,H81,650)
call SaveReal(LY,(S5I),(6),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(SFI))*1.0))
endif
set t=null
set SFI=null
return false
endfunction
function T04 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosDone.mdl",SFI,"origin"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",SFI,"origin"))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,18-0.1,false)
call TriggerRegisterDeathEvent(t,SFI)
call TriggerAddCondition(t,Condition(function SQ4))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.005,true)
call TriggerRegisterDeathEvent(t,I01)
call TriggerAddCondition(t,Condition(function SU4))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(SFI))*1.0))
set t=null
set SFI=null
set I01=null
return false
endfunction
function TI4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697657174,0,0,0)
local real DC1=18
call IA1(I01,1093687875)
call UnitApplyTimedLife(I01,1112820806,DC1)
call A91(SFI,DC1,175)
call TriggerRegisterTimerEvent(t,0.1,false)
call TriggerAddCondition(t,Condition(function T04))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
set t=null
set SFI=null
endfunction
function T14 takes nothing returns boolean
if GetSpellAbilityId()==1093679411 and GetUnitTypeId(GetTriggerUnit())==1429221432 then
call TI4()
endif
return false
endfunction
function T51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function T14))
set t=null
endfunction
function GW2 takes nothing returns nothing
local unit P7I=XM
local unit P8I=YM
local unit I01=(LoadUnitHandle(LY,(GetHandleId(P7I)),(219)))
call SaveUnitHandle(LY,(GetHandleId(P7I)),(219),(I01))
call SetUnitOwner(I01,GetOwningPlayer(P8I),true)
set P7I=null
set P8I=null
set I01=null
endfunction
function AZO takes nothing returns nothing
local unit SFI=NK
local unit I01=(LoadUnitHandle(LY,(GetHandleId(SFI)),(219)))
if I01!=null and GetUnitTypeId(I01)==1697657174 then
call RemoveUnit(I01)
endif
endfunction
function TO4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if I01!=null and GetUnitTypeId(I01)==1697657174 then
if IC1(P7I)==false then
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
endif
endif
set t=null
set I01=null
set P7I=null
return false
endfunction
function T24 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093677893)
local unit I01
local trigger t
local integer S5I
if SUI==1 then
set I01=CreateUnit(GetOwningPlayer(SFI),1697657174,0,0,0)
call IA1(I01,1093687882)
call SaveUnitHandle(LY,(GetHandleId(SFI)),(219),(I01))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerAddCondition(t,Condition(function TO4))
call TriggerRegisterTimerEvent(t,0.2,true)
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
else
set I01=(LoadUnitHandle(LY,(GetHandleId(SFI)),(219)))
endif
if SUI==2 then
call UnitRemoveAbility(I01,1093687882)
call IA1(I01,1093687881)
elseif SUI==3 then
call UnitRemoveAbility(I01,1093687882)
call UnitRemoveAbility(I01,1093687881)
call IA1(I01,1093687880)
elseif SUI==4 then
call UnitRemoveAbility(I01,1093687882)
call UnitRemoveAbility(I01,1093687881)
call UnitRemoveAbility(I01,1093687880)
call IA1(I01,1093687879)
endif
set SFI=null
set I01=null
endfunction
function T34 takes nothing returns boolean
if GetLearnedSkill()==1093677893 and IsUnitIllusion(GetTriggerUnit())==false then
call T24()
endif
return false
endfunction
function T61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function T34))
set t=null
endfunction
function T44 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01
local integer i=1
local boolean RZI=TII(GetOwningPlayer(SFI))
local player p
local integer T54
local integer T64
local integer SUI=GetUnitAbilityLevel(SFI,1093687878)
if SUI==1 then
set T54=1093742644
set T64=1093742647
elseif SUI==2 then
set T54=1093742641
set T64=1093742646
elseif SUI==3 then
set T54=1093742642
set T64=1093742645
elseif SUI==4 then
set T54=1093742643
set T64=1093742648
endif
loop
exitwhen i>5
if RZI then
set p=BO[i]
else
set p=CO[i]
endif
set I01=CreateUnit(p,1697657174,0,0,0)
call IA1(I01,T54)
call IA1(I01,T64)
call UnitApplyTimedLife(I01,1112820806,10)
set i=i+1
endloop
set SFI=null
set I01=null
set p=null
endfunction
function T74 takes nothing returns boolean
if GetSpellAbilityId()==1093687878 then
call T44()
endif
return false
endfunction
function T71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function T74))
set t=null
endfunction
function T84 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093679412)
local integer T94=GetHeroLevel(P8I)
local real PAI=GetUnitState(P8I,UNIT_STATE_MAX_LIFE)*0.2
if ModuloInteger(T94,7-SUI)==0 or T94==25 then
call P6I(P7I,P8I,1,PAI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl",P8I,"chest"))
endif
set P7I=null
set P8I=null
endfunction
function TA4 takes nothing returns boolean
if GetSpellAbilityId()==1093679412 then
call T84()
endif
return false
endfunction
function KP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TA4))
set t=null
endfunction
function TB4 takes unit P7I returns nothing
call UnitRemoveAbility(P7I,1093750609)
call UnitRemoveAbility(P7I,1093750610)
call UnitRemoveAbility(P7I,1093750611)
call UnitRemoveAbility(P7I,1093750612)
call UnitRemoveAbility(P7I,1093750613)
call UnitRemoveAbility(P7I,1093750614)
call UnitRemoveAbility(P7I,1093750615)
call UnitRemoveAbility(P7I,1093750616)
call UnitRemoveAbility(P7I,1093750617)
call UnitRemoveAbility(P7I,1395667021)
call UnitRemoveAbility(P7I,1093750618)
call UnitRemoveAbility(P7I,1395667022)
call UnitRemoveAbility(P7I,1093750832)
call UnitRemoveAbility(P7I,1093750833)
call UnitRemoveAbility(P7I,1093750839)
call UnitRemoveAbility(P7I,1093750849)
call UnitRemoveAbility(P7I,1093750835)
call UnitRemoveAbility(P7I,1093750836)
call UnitRemoveAbility(P7I,1093750837)
call UnitRemoveAbility(P7I,1093750838)
call UnitRemoveAbility(P7I,1093812551)
endfunction
function TC4 takes unit P7I,unit P8I returns nothing
local integer TD4=GetUnitTypeId(P8I)
local integer TE4=0
local integer TF4=0
if TD4==1848658008 then
set TE4=1093750609
elseif TD4==1852796263 then
set TE4=1093750610
elseif TD4==1852207221 then
set TE4=1093750611
set TF4=1395667022
elseif TD4==1853060204 then
set TE4=1093750612
elseif TD4==1853055348 then
set TE4=1093750613
elseif TD4==1853060200 then
set TE4=1093750614
set TF4=1093750615
elseif TD4==1848651859 then
set TE4=1093750616
set TF4=1093750617
elseif TD4==1852534636 then
set TE4=1395667021
elseif TD4==1852207976 then
set TE4=1093750618
set TF4=1093812551
elseif TD4==1852010091 then
set TE4=1093750832
elseif TD4==1852272243 then
set TE4=1093750833
elseif TD4==1852270641 then
set TE4=1093750839
set TF4=1093750849
elseif TD4==1852798821 then
set TE4=1093750835
set TF4=1093750836
elseif TD4==1852077175 then
set TE4=1093750837
set TF4=1093750838
elseif TD4==1853320295 then
set TE4=1093750617
endif
if TE4!=0 then
call TB4(P7I)
call IA1(P7I,TE4)
endif
if TF4!=0 then
call IA1(P7I,TF4)
endif
endfunction
function TG4 takes real TH4 returns string
local string c1="|c00ff0303"
local string c="||"
local string p=" "
local string s=c1+c+"|r"
local string FB1
if TH4>85 then
set FB1=s+p+s+p+s+p+s+p+s+p+s+p+s
elseif TH4>70 then
set FB1=s+p+s+p+s+p+s+p+s+p+s+p+c
elseif TH4>55 then
set FB1=s+p+s+p+s+p+s+p+s+p+c+p+c
elseif TH4>40 then
set FB1=s+p+s+p+s+p+s+p+c+p+c+p+c
elseif TH4>25 then
set FB1=s+p+s+p+s+p+c+p+c+p+c+p+c
elseif TH4>10 then
set FB1=s+p+s+p+c+p+c+p+c+p+c+p+c
elseif TH4>0 then
set FB1=s+p+c+p+c+p+c+p+c+p+c+p+c
else
set FB1=c+p+c+p+c+p+c+p+c+p+c+p+c
endif
return FB1
endfunction
function TZ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer TV4=(LoadInteger(LY,(S5I),(230)))
local real HP=(LoadReal(LY,(S5I),(232)))
local texttag tt=(LoadTextTagHandle(LY,(S5I),(231)))
local integer NPI=GetTriggerEvalCount(t)
local real TW4=QDI(HP-NPI,0)
local boolean TX4=true
call SetTextTagText(tt,TG4(100*TW4/HP),0.018)
call SetTextTagPosUnit(tt,SFI,0)
if IsUnitVisible(SFI,GetLocalPlayer())==false and P0I(GetLocalPlayer())==false then
set TX4=false
endif
call SetTextTagVisibility(tt,TX4)
if TW4==0 then
call OL1(GetOwningPlayer(SFI),SFI,25*SUI)
endif
if TW4==0 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093742674,true)
call UnitRemoveAbility(SFI,1093742675)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DestroyTextTag(tt)
endif
set t=null
set SFI=null
return false
endfunction
function TY4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093742674)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real HP=GetUnitState(P8I,UNIT_STATE_LIFE)
local integer G33=GetUnitLevel(P8I)
local integer TV4=GetUnitTypeId(P8I)
local texttag tt=CreateTextTag()
local boolean TX4=true
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,0,0,0)
call UGI("SPLK",GetUnitX(SFI),GetUnitY(SFI),GetUnitX(P8I),GetUnitY(P8I),0.1,0.1,0.2,.9,0.5)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\Devour\\DevourEffectArt.mdl",GetUnitX(P8I),GetUnitY(P8I)))
if IsUnitVisible(SFI,GetLocalPlayer())==false then
set TX4=false
endif
call TC4(SFI,P8I)
call SetTextTagText(tt,TG4(100),0.018)
call SetTextTagPosUnit(tt,SFI,0)
call SetTextTagVisibility(tt,TX4)
call SetTextTagPermanent(tt,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093742674,false)
call IA1(SFI,1093742675)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveTextTagHandle(LY,(S5I),(231),(tt))
call SaveInteger(LY,(S5I),(230),(TV4))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(232),((HP)*1.0))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function TZ4))
call ShowUnit(P8I,false)
call UnitRemoveBuffs(P8I,true,true)
call UnitRemoveAbility(P8I,1097167980)
call UnitDamageTarget(I01,P8I,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
set t=null
set SFI=null
set P8I=null
endfunction
function TJ4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093742674)
local integer G33=GetUnitLevel(P8I)
if(GetOwningPlayer(P8I)!=BO[0]and GetOwningPlayer(P8I)!=CO[0])and((SUI==1 and G33>2)or(SUI==2 and G33>4)or(SUI==3 and G33>5)or(SUI==4 and G33>6))then
endif
set SFI=null
set P8I=null
endfunction
function TK4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer id=(LoadInteger(LY,(S5I),(34)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function TL4 takes nothing returns nothing
local integer id=GetSpellAbilityId()
local trigger t
local integer S5I
if id==1093750609 or id==1093750610 or id==1093750611 or id==1093750612 or id==1093750613 or id==1093750614 or id==1093750615 or id==1093750616 or id==1093750617 or id==1395667021 or id==1093750618 or id==1395667022 or id==1093750832 or id==1093750833 or id==1093750834 or id==1093750835 or id==1093750836 or id==1093750837 or id==1093750838 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function TK4))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveInteger(LY,(S5I),(34),(id))
set t=null
endif
endfunction
function TM4 takes nothing returns boolean
if GetSpellAbilityId()==1093742674 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
call TJ4()
else
call TY4()
endif
elseif GetUnitTypeId(GetTriggerUnit())==1430467634 then
call TL4()
endif
return false
endfunction
function KQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function TM4))
set t=null
endfunction
function TN4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1093750604)
call UnitRemoveAbility(P7I,1093750606)
call UnitRemoveAbility(P7I,1093750607)
call UnitRemoveAbility(P7I,1093750605)
call UnitRemoveAbility(P7I,1110455370)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function TS4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093750608)
if SUI==1 then
call IA1(P7I,1093750604)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750604,false)
elseif SUI==2 then
call IA1(P7I,1093750606)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750606,false)
elseif SUI==3 then
call IA1(P7I,1093750607)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750607,false)
elseif SUI==4 then
call IA1(P7I,1093750605)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750605,false)
endif
call TriggerRegisterTimerEvent(t,8+2*SUI,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function TN4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function TT4 takes nothing returns boolean
if GetSpellAbilityId()==1093750608 then
call TS4()
endif
return false
endfunction
function KU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TT4))
set t=null
endfunction
function TR4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if QLI(P7I,P8I)>900 or IC1(P7I)==true then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
endif
if NPI>16*10 then
call UnitRemoveAbility(P8I,1112433775)
call UnitRemoveAbility(P8I,1110460493)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetUnitAbilityLevel(P8I,1112433775)==0 and GetUnitAbilityLevel(P8I,1110460493)==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function TP4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093684565)
local real PAI=5+15*SUI
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093681458)
set PAI=20+20*SUI
endif
if GetUnitAbilityLevel(P8I,1112433775)==0 and GetUnitAbilityLevel(P8I,1110460493)==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call P6I(P7I,P8I,7,PAI)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function TQ4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function TP4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
if GetSpellAbilityId()==1093681458 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UnitRemoveBuffs(P8I,true,false)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function TR4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(34),(0))
endif
set P7I=null
set P8I=null
set t=null
endfunction
function TU4 takes nothing returns boolean
if GetSpellAbilityId()==1093684565 or GetSpellAbilityId()==1093681458 then
if NNI(GetSpellTargetUnit())==false then
call TQ4()
endif
endif
return false
endfunction
function L01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function TU4))
set t=null
endfunction
function R04 takes nothing returns boolean
local real x
local real y
if(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))then
set x=Z7I+GetRandomReal(20,70)*Cos(GetUnitFacing(GetTriggerUnit())*bj_DEGTORAD)
set y=Z8I+GetRandomReal(20,70)*Sin(GetUnitFacing(GetTriggerUnit())*bj_DEGTORAD)
call SetUnitPosition(GetFilterUnit(),x,y)
endif
return false
endfunction
function RI4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local group g=NTI()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,x,y,0)
local integer SUI=GetUnitAbilityLevel(SFI,1093810508)
set Z7I=GetUnitX(SFI)+100*Cos(GetUnitFacing(SFI)*bj_DEGTORAD)
set Z8I=GetUnitY(SFI)+100*Sin(GetUnitFacing(SFI)*bj_DEGTORAD)
call GroupEnumUnitsInRange(g,x,y,410+24,Condition(function R04))
call NSI(g)
call IA1(I01,1093678662)
call SetUnitAbilityLevel(I01,1093678662,SUI)
call IssueImmediateOrder(I01,"stomp")
set SFI=null
set g=null
endfunction
function R14 takes nothing returns boolean
if GetSpellAbilityId()==1093810508 then
call RI4()
endif
return false
endfunction
function LI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function R14))
set t=null
endfunction
function RO4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetUnitAbilityLevel(P8I,1110454357)==0 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P8I,1093751088)
call UnitRemoveAbility(P8I,1093751089)
call UnitRemoveAbility(P8I,1093751090)
call UnitRemoveAbility(P8I,1093751091)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function R24 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093677879)
local integer OO1
if SUI==1 then
set OO1=1093751088
elseif SUI==2 then
set OO1=1093751089
elseif SUI==3 then
set OO1=1093751090
elseif SUI==4 then
set OO1=1093751091
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),OO1,false)
call IA1(P8I,OO1)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function RO4))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function R34 takes nothing returns boolean
if GetSpellAbilityId()==1093677879 then
call R24()
endif
return false
endfunction
function L11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function R34))
set t=null
endfunction
function R44 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P8I,1093751094)
call UnitRemoveAbility(P8I,1110459224)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P8I=null
return false
endfunction
function R54 takes unit P7I,unit P8I,integer SUI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitPathing(P8I,true)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function R44))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(P8I,1093751094)
call UnitMakeAbilityPermanent(P8I,true,1093751094)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093751094,false)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodKnight.mdl",P8I,"chest"))
call P6I(P7I,P8I,1,70*SUI)
set t=null
endfunction
function R64 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit R74=(LoadUnitHandle(LY,(S5I),(393)))
local unit R84=(LoadUnitHandle(LY,(S5I),(394)))
local unit R94=(LoadUnitHandle(LY,(S5I),(395)))
local unit RA4=(LoadUnitHandle(LY,(S5I),(396)))
local unit RB4=(LoadUnitHandle(LY,(S5I),(397)))
local unit RC4=(LoadUnitHandle(LY,(S5I),(398)))
local unit RD4=(LoadUnitHandle(LY,(S5I),(399)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real IO3=(LoadReal(LY,(S5I),(6)))
local real I23=(LoadReal(LY,(S5I),(7)))
local real IV1=PPI(IO3+19*Cos(RM2))
local real IW1=Q0I(I23+19*Sin(RM2))
local group g
local integer RE4=(LoadInteger(LY,(S5I),(12)))
local location l
call SetUnitPosition(P7I,IV1,IW1)
call SetUnitFacing(P7I,RM2*bj_RADTODEG)
call SaveReal(LY,(S5I),(6),((IV1)*1.0))
call SaveReal(LY,(S5I),(7),((IW1)*1.0))
if ModuloInteger(GetTriggerEvalCount(t),4)==0 then
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",IV1,IW1))
endif
if GetTriggerEvalCount(t)==2 then
call SetUnitAnimationByIndex(P7I,3)
endif
if R74==null or R84==null or R94==null or RA4==null or RB4==null or RC4==null or RD4==null then
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,IV1,IW1,125+25,Condition(function D21))
if FirstOfGroup(g)!=null then
if R74!=null then
call GroupRemoveUnit(g,R74)
endif
if R84!=null then
call GroupRemoveUnit(g,R84)
endif
if R94!=null then
call GroupRemoveUnit(g,R94)
endif
if RA4!=null then
call GroupRemoveUnit(g,RA4)
endif
if RB4!=null then
call GroupRemoveUnit(g,RB4)
endif
if RC4!=null then
call GroupRemoveUnit(g,RC4)
endif
if RD4!=null then
call GroupRemoveUnit(g,RD4)
endif
if FirstOfGroup(g)!=null then
if R74==null then
set R74=FirstOfGroup(g)
call SetUnitPathing(R74,false)
call SCI(R74,4404,5)
elseif R84==null then
set R84=FirstOfGroup(g)
call SetUnitPathing(R84,false)
call SCI(R84,4404,5)
elseif R94==null then
set R94=FirstOfGroup(g)
call SetUnitPathing(R94,false)
call SCI(R94,4404,5)
elseif RA4==null then
set RA4=FirstOfGroup(g)
call SetUnitPathing(RA4,false)
call SCI(RA4,4404,5)
elseif RB4==null then
set RB4=FirstOfGroup(g)
call SetUnitPathing(RB4,false)
call SCI(RB4,4404,5)
elseif RC4==null then
set RC4=FirstOfGroup(g)
call SetUnitPathing(RC4,false)
call SCI(RC4,4404,5)
elseif RD4==null then
set RD4=FirstOfGroup(g)
call SetUnitPathing(RD4,false)
call SCI(RD4,4404,5)
endif
endif
endif
call NSI(g)
set g=null
endif
call SaveUnitHandle(LY,(S5I),(393),(R74))
call SaveUnitHandle(LY,(S5I),(394),(R84))
call SaveUnitHandle(LY,(S5I),(395),(R94))
call SaveUnitHandle(LY,(S5I),(396),(RA4))
call SaveUnitHandle(LY,(S5I),(397),(RB4))
call SaveUnitHandle(LY,(S5I),(398),(RC4))
call SaveUnitHandle(LY,(S5I),(399),(RD4))
if R74!=null then
call SetUnitPosition(R74,IV1,IW1)
endif
if R84!=null then
call SetUnitPosition(R84,IV1,IW1)
endif
if R94!=null then
call SetUnitPosition(R94,IV1,IW1)
endif
if RA4!=null then
call SetUnitPosition(RA4,IV1,IW1)
endif
if RB4!=null then
call SetUnitPosition(RB4,IV1,IW1)
endif
if RC4!=null then
call SetUnitPosition(RC4,IV1,IW1)
endif
if RD4!=null then
call SetUnitPosition(RD4,IV1,IW1)
endif
if ModuloInteger(GetTriggerEvalCount(t),3)==0 then
call UPI(IV1,IW1,200)
endif
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>RE4 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call SetUnitAnimationByIndex(P7I,0)
call SetUnitTimeScale(P7I,1.0)
call SetUnitPathing(P7I,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if R74!=null then
if IsPointInRegion(LN,GetUnitX(R74),GetUnitY(R74))==true then
set l=BN1(GetUnitX(R74),GetUnitY(R74))
call SetUnitX(R74,PPI(GetLocationX(l)))
call SetUnitY(R74,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
call R54(P7I,R74,SUI)
call UPI(GetUnitX(R74),GetUnitY(R74),300)
endif
if R84!=null then
if IsPointInRegion(LN,GetUnitX(R84),GetUnitY(R84))==true then
set l=BN1(GetUnitX(R84),GetUnitY(R84))
call SetUnitX(R84,PPI(GetLocationX(l)))
call SetUnitY(R84,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
call R54(P7I,R84,SUI)
call UPI(GetUnitX(R84),GetUnitY(R84),300)
endif
if R94!=null then
if IsPointInRegion(LN,GetUnitX(R94),GetUnitY(R94))==true then
set l=BN1(GetUnitX(R94),GetUnitY(R94))
call SetUnitX(R94,PPI(GetLocationX(l)))
call SetUnitY(R94,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
call R54(P7I,R94,SUI)
call UPI(GetUnitX(R94),GetUnitY(R94),300)
endif
if RA4!=null then
if IsPointInRegion(LN,GetUnitX(RA4),GetUnitY(RA4))==true then
set l=BN1(GetUnitX(RA4),GetUnitY(RA4))
call SetUnitX(RA4,PPI(GetLocationX(l)))
call SetUnitY(RA4,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
call R54(P7I,RA4,SUI)
call UPI(GetUnitX(RA4),GetUnitY(RA4),300)
endif
if RB4!=null then
if IsPointInRegion(LN,GetUnitX(RB4),GetUnitY(RB4))==true then
set l=BN1(GetUnitX(RB4),GetUnitY(RB4))
call SetUnitX(RB4,PPI(GetLocationX(l)))
call SetUnitY(RB4,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
call R54(P7I,RB4,SUI)
call UPI(GetUnitX(RB4),GetUnitY(RB4),300)
endif
if RC4!=null then
if IsPointInRegion(LN,GetUnitX(RC4),GetUnitY(RC4))==true then
set l=BN1(GetUnitX(RC4),GetUnitY(RC4))
call SetUnitX(RC4,PPI(GetLocationX(l)))
call SetUnitY(RC4,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
call R54(P7I,RC4,SUI)
call UPI(GetUnitX(RC4),GetUnitY(RC4),300)
endif
if RD4!=null then
if IsPointInRegion(LN,GetUnitX(RD4),GetUnitY(RD4))==true then
set l=BN1(GetUnitX(RD4),GetUnitY(RD4))
call SetUnitX(RD4,PPI(GetLocationX(l)))
call SetUnitY(RD4,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
call R54(P7I,RD4,SUI)
call UPI(GetUnitX(RD4),GetUnitY(RD4),300)
endif
if R74!=null and IC1(R74)==false then
call IssueTargetOrder(P7I,"attack",R74)
elseif R84!=null and IC1(R84)==false then
call IssueTargetOrder(P7I,"attack",R84)
elseif R94!=null and IC1(R94)==false then
call IssueTargetOrder(P7I,"attack",R94)
elseif RA4!=null and IC1(RA4)==false then
call IssueTargetOrder(P7I,"attack",RA4)
elseif RB4!=null and IC1(RB4)==false then
call IssueTargetOrder(P7I,"attack",RB4)
elseif RC4!=null and IC1(RC4)==false then
call IssueTargetOrder(P7I,"attack",RC4)
elseif RD4!=null and IC1(RD4)==false then
call IssueTargetOrder(P7I,"attack",RD4)
endif
call UPI(IV1,IW1,375)
if IsPointInRegion(LN,GetUnitX(P7I),GetUnitY(P7I))==true then
set l=BN1(GetUnitX(P7I),GetUnitY(P7I))
call SetUnitX(P7I,PPI(GetLocationX(l)))
call SetUnitY(P7I,Q0I(GetLocationY(l)))
call RemoveLocation(l)
set l=null
endif
endif
set t=null
set P7I=null
return false
endfunction
function RF4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real QJI=PPI(GetSpellTargetX())
local real QKI=Q0I(GetSpellTargetY())
local unit P7I=GetTriggerUnit()
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local integer SUI=GetUnitAbilityLevel(P7I,1093751364)
local real a=UEI(QXI,QYI,QJI,QKI)*bj_DEGTORAD
local real QWI=600+150*SUI+25
if QNI(QXI,QYI,QJI,QKI)>QWI then
set QJI=PPI(QXI+QWI*Cos(a))
set QKI=Q0I(QYI+QWI*Sin(a))
endif
call SetUnitPathing(P7I,false)
call SetUnitAnimationByIndex(P7I,3)
call SetUnitTimeScale(P7I,1.5)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function R64))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(393),(null))
call SaveUnitHandle(LY,(S5I),(394),(null))
call SaveUnitHandle(LY,(S5I),(395),(null))
call SaveUnitHandle(LY,(S5I),(396),(null))
call SaveUnitHandle(LY,(S5I),(397),(null))
call SaveUnitHandle(LY,(S5I),(398),(null))
call SaveUnitHandle(LY,(S5I),(399),(null))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(6),((QXI)*1.0))
call SaveReal(LY,(S5I),(7),((QYI)*1.0))
call SaveReal(LY,(S5I),(13),((Atan2(QKI-QYI,QJI-QXI))*1.0))
call SaveInteger(LY,(S5I),(12),(R2I(QNI(QXI,QYI,QJI,QKI)/19.0)))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\SkewerTuskGlow_1.mdx",P7I,"head")))
set t=null
set P7I=null
endfunction
function RG4 takes nothing returns boolean
if GetSpellAbilityId()==1093751364 then
call RF4()
endif
return false
endfunction
function RH4 takes nothing returns boolean
if GetSpellAbilityId()==1093751364 then
call SetUnitAnimationByIndex(GetTriggerUnit(),7)
endif
return false
endfunction
function LO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function RG4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function RH4))
set t=null
endfunction
function MysticSnake_DoNothing takes nothing returns nothing
endfunction
function RZ4 takes nothing returns boolean
local real d
if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(ZAI))==true and IsUnitInGroup(GetFilterUnit(),ZCI)==false and C01(GetFilterUnit(),GetOwningPlayer(ZBI))==true then
set d=QNI(GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()),GetUnitX(ZAI),GetUnitY(ZAI))
if d<ZDI then
set Z9I=GetFilterUnit()
set ZDI=d
endif
endif
return false
endfunction
function RV4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local real RW4=(LoadReal(LY,(S5I),(222)))
local real RX4=(LoadReal(LY,(S5I),(223)))
local real RY4=(LoadReal(LY,(S5I),(224)))
local real OA2
local group g
local real a
local real x
local real y
local integer RJ4=GetUnitAbilityLevel(P7I,1093747028)
set a=Atan2(GetUnitY(P8I)-GetUnitY(I01),GetUnitX(P8I)-GetUnitX(I01))
if P7I==P8I then
set x=GetUnitX(I01)+24*Cos(a)
set y=GetUnitY(I01)+24*Sin(a)
else
set x=GetUnitX(I01)+24*Cos(a)
set y=GetUnitY(I01)+24*Sin(a)
endif
call SetUnitX(I01,x)
call SetUnitY(I01,y)
if QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))<60 then
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
if P7I==P8I then
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+RW4)
call KillUnit(I01)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if BU1(P8I)==false or IsUnitVisible(P8I,GetOwningPlayer(I01))==true then
if(GetUnitAbilityLevel(P8I,1093817420)>0)then
call P6I(P7I,P8I,3,((40+40*SUI)+0.25*RY4*(40+40*SUI))/(1.2+0.1*RJ4))
else
call P6I(P7I,P8I,1,(40+40*SUI)+0.25*RY4*(40+40*SUI))
endif
set RY4=RY4+1
if GetUnitState(P8I,UNIT_STATE_MANA)>0 then
set OA2=RMinBJ(GetUnitState(P8I,UNIT_STATE_MANA),(5+15*SUI)+0.25*RX4*(10+10*SUI))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)-OA2)
call IO1(RE,GetUnitX(P8I),GetUnitY(P8I))
set RW4=RW4+OA2
set RX4=RX4+1
endif
endif
call SaveReal(LY,(S5I),(222),((RW4)*1.0))
call SaveReal(LY,(S5I),(224),((RY4)*1.0))
call SaveReal(LY,(S5I),(223),((RX4)*1.0))
set g=NTI()
set Z9I=null
set ZAI=P8I
set ZCI=PR2
set ZDI=99999
set ZBI=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),500,Condition(function RZ4))
call NSI(g)
if Z9I==null or RY4==(2+SUI)then
call SaveInteger(LY,(S5I),(30),(NKI(P7I)))
else
call SaveInteger(LY,(S5I),(30),(NKI(Z9I)))
call GroupAddUnit(PR2,Z9I)
endif
endif
call NXI(PCI)
endif
set t=null
set P7I=null
set P8I=null
set g=null
return false
endfunction
function RK4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093682994)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g=NTI()
local real RY4=0
local real RX4=0
local real OA2=0
local real RW4=0
local unit I01=CreateUnit(GetOwningPlayer(P7I),1747990832,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call IO1(TE,GetUnitX(P7I),GetUnitY(P7I))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function RV4))
call SaveGroupHandle(LY,(S5I),(187),(g))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveInteger(LY,(S5I),(34),(0))
call SaveReal(LY,(S5I),(222),((RW4)*1.0))
call SaveReal(LY,(S5I),(224),((RY4)*1.0))
call SaveReal(LY,(S5I),(223),((RX4)*1.0))
call GroupAddUnit(g,P8I)
set P7I=null
set P8I=null
set t=null
set g=null
endfunction
function RL4 takes nothing returns boolean
if GetSpellAbilityId()==1093682994 then
call RK4()
endif
return false
endfunction
function L31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function RL4))
set t=null
endfunction
function RM4 takes nothing returns nothing
local unit P8I=GetEnumUnit()
call SaveReal(LY,(GetHandleId(P8I)),(799),((0)*1.0))
set P8I=null
endfunction
function RN4 takes nothing returns nothing
local unit P8I=GetEnumUnit()
call UnitRemoveAbility(P8I,1093817139)
call UnitRemoveAbility(P8I,1093817421)
call UnitRemoveAbility(P8I,1110458961)
call SetUnitTurnSpeed(P8I,GetUnitDefaultTurnSpeed(P8I))
set P8I=null
endfunction
function RS4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093747028)
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
call DisableTrigger(t)
call P6I(GetEventDamageSource(),P8I,7,GetEventDamage()*(0.2+0.1*SUI))
call EnableTrigger(t)
if IC1(P8I)==true then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093817137)
call UnitRemoveAbility(P8I,1093817420)
endif
else
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093817137)
call UnitRemoveAbility(P8I,1093817420)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function RT4 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local unit I01
if IsUnitIllusion(P8I)==true then
call KillUnit(P8I)
return
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093817140)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,3,false)
call TriggerAddCondition(t,Condition(function RS4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\EtherealForm\\SpiritWalkerChange.mdl",P8I,"chest")))
call IA1(P8I,1093817137)
call IA1(P8I,1093817420)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093817137,false)
set t=null
endfunction
function RR4 takes nothing returns nothing
local unit P8I=GetEnumUnit()
call SaveReal(LY,(GetHandleId(P8I)),(799),(((LoadReal(LY,(GetHandleId(P8I)),(799)))+0.02)*1.0))
if GetUnitAbilityLevel(P8I,1093817139)==0 then
call IA1(P8I,1093817139)
call IA1(P8I,1093817421)
call SetUnitTurnSpeed(P8I,GetUnitDefaultTurnSpeed(P8I)*0.5)
endif
if(LoadReal(LY,(GetHandleId(P8I)),(799)))==2.0 then
call RT4(ZEI,P8I)
endif
set P8I=null
endfunction
function RP4 takes unit P7I,unit P8I returns boolean
local real a=UDI(P8I,P7I)
local real V53=GetUnitFacing(P8I)
local real c1
local real c2
local real d1=-1.0
local real d2=-1.0
local real e1
local real e2
local real f1=-1.0
local real f2=-1.0
set c1=RMaxBJ(V53-85,0)
set c2=V53
if V53-85<=0 then
set d1=360-(85-(c2-c1))
set d2=360
endif
set e1=V53
set e2=RMinBJ(V53+85,360)
if V53+85>=360 then
set f1=0
set f2=0+(85-(e2-e1))
endif
if a<0 then
set a=a+360
elseif a>360 then
set a=a-360
endif
if(a>c1 and a<c2)or(d1!=-1 and a>d1 and a<d2)or(a>e1 and a<e2)or(f1!=-1 and a>f1 and a<f2)then
return true
endif
return false
endfunction
function RQ4 takes nothing returns boolean
return(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and RP4(GK,GetFilterUnit())
endfunction
function RU4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093747028)
local group g1=NTI()
local group g2=NTI()
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
set ZFI=PR2
set ZEI=P7I
set GK=P7I
call GroupEnumUnitsInRange(g1,GetUnitX(P7I),GetUnitY(P7I),1025,Condition(function RQ4))
call ForGroup(g1,function RR4)
call GroupAddGroup(g1,PR2)
call GroupAddGroup(PR2,g2)
call GroupRemoveGroup(g1,g2)
call NSI(g1)
call NSI(g2)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
if GetTriggerEvalCount(t)>R2I(ZGI/0.02)then
call S0I(t)
call FlushChildHashtable(LY,(S5I))
call ForGroup(PR2,function RN4)
call ForGroup(PR2,function RM4)
call NSI(PR2)
else
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\EtherealForm\\SpiritWalkerChange.mdl",P7I,"chest")))
endif
set P7I=null
set g1=null
set g2=null
set PR2=null
set t=null
return false
endfunction
function P04 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function RU4))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\EtherealForm\\SpiritWalkerChange.mdl",GetTriggerUnit(),"chest")))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call TriggerEvaluate(t)
set t=null
endfunction
function PI4 takes nothing returns boolean
if GetSpellAbilityId()==1093747028 then
call P04()
endif
return false
endfunction
function L41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PI4))
set t=null
endfunction
function P14 takes nothing returns boolean
if GetSpellAbilityId()==1093747504 then
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093748052,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093748051,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093748049,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093748050,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093818188,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093808966,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093818187,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093818186,false)
endif
return false
endfunction
function L21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function P14))
set t=null
endfunction
function PO4 takes integer NPI,unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
if NPI==0 then
call IssueTargetOrder(P7I,"attack",P8I)
elseif NPI==1 then
call IA1(I01,1093686344)
call SetUnitAbilityLevel(I01,1093686344,1)
call IssueTargetOrder(I01,"slow",P8I)
elseif NPI==2 then
call IA1(I01,1093686344)
call SetUnitAbilityLevel(I01,1093686344,1)
call IssueTargetOrder(I01,"slow",P8I)
elseif NPI==3 then
call IA1(I01,1093686344)
call SetUnitAbilityLevel(I01,1093686344,2)
call IssueTargetOrder(I01,"slow",P8I)
elseif NPI==4 then
call IA1(I01,1093686344)
call SetUnitAbilityLevel(I01,1093686344,3)
call IssueTargetOrder(I01,"slow",P8I)
elseif NPI==5 then
call IA1(I01,1093686344)
call SetUnitAbilityLevel(I01,1093686344,4)
call IssueTargetOrder(I01,"slow",P8I)
elseif NPI==6 then
call IA1(I01,1093686344)
call SetUnitAbilityLevel(I01,1093686344,5)
call IssueTargetOrder(I01,"slow",P8I)
endif
set I01=null
endfunction
function P24 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local real AB3=(10.0+SUI*5.0)/100.0
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
set NPI=NPI+1
call PO4(NPI,P7I,P8I)
if NPI==9 then
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveInteger(LY,(S5I),(34),(NPI))
endif
elseif RSI(GetEventDamage())and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))and IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==false then
if IsUnitType(GetEventDamageSource(),UNIT_TYPE_HERO)or GetUnitAbilityLevel(GetEventDamageSource(),1093678162)==0 then
call SetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE,GetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE)+GetEventDamage()*AB3)
else
call SetUnitState(K1[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))],UNIT_STATE_LIFE,GetUnitState(K1[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))],UNIT_STATE_LIFE)+GetEventDamage()*AB3)
endif
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",GetEventDamageSource(),"origin"))
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function P34 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call PO4(0,P7I,P8I)
call SaveInteger(LY,(S5I),(375),(0))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(P7I,1093744948)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function P24))
set t=null
set P7I=null
set P8I=null
endfunction
function P44 takes nothing returns boolean
if GetSpellAbilityId()==1093744948 and NNI(GetSpellTargetUnit())==false then
call P34()
endif
return false
endfunction
function SR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function P44))
set t=null
call Q1I(1093686344)
endfunction
function Snatch_Damage takes nothing returns nothing
call P6I(ZHI,GetEnumUnit(),1,ZZI*125+25)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaBlood\\NagaBloodWindserpent.mdl",GetEnumUnit(),"overhead"))
endfunction
function Snatch_Process takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local real PAI=(LoadReal(LY,(S5I),(20)))
call P6I(P7I,P8I,1,PAI)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaBlood\\NagaBloodWindserpent.mdl",P8I,"overhead"))
set P7I=null
set P8I=null
endfunction
function P54 takes nothing returns nothing
local unit P7I=ZHI
local unit P8I=GetEnumUnit()
local integer SUI=ZZI
local trigger t=IJ1(P7I,P8I,1747993670,"P64",600,false)
local integer S5I=GetHandleId(t)
call SaveReal(LY,(S5I),(20),((SUI*125+25)*1.0))
set P7I=null
set P8I=null
endfunction
function P74 takes unit P7I,unit P8I,integer SUI returns nothing
local group g=NTI()
set GK=P7I
set ZHI=P7I
set ZZI=SUI
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),700+25,Condition(function CA1))
call ForGroup(g,function P54)
call NSI(g)
set g=null
endfunction
function P84 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call UnitShareVision(P8I,GetOwningPlayer(SFI),false)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl",GetUnitX(P8I),GetUnitY(P8I)))
call SetUnitPosition(SFI,GetUnitX(P8I),GetUnitY(P8I))
call PauseUnit(SFI,false)
call ShowUnit(SFI,true)
call SetUnitPathing(SFI,true)
call ClearSelectionForPlayer(GetOwningPlayer(SFI))
call SelectUnitForPlayerSingle(SFI,GetOwningPlayer(SFI))
call SetUnitInvulnerable(SFI,false)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call RemoveUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P74(SFI,P8I,SUI)
call SaveInteger(LY,(GetHandleId((SFI))),((4310)),(2))
elseif IsUnitType(P8I,UNIT_TYPE_HERO)==true and IsUnitEnemy(P8I,GetOwningPlayer(SFI))==true then
call UnitShareVision(P8I,GetOwningPlayer(SFI),false)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl",GetUnitX(P8I),GetUnitY(P8I)))
call SetUnitPosition(SFI,GetUnitX(P8I),GetUnitY(P8I))
call PauseUnit(SFI,false)
call ShowUnit(SFI,true)
call SetUnitPathing(SFI,true)
call ClearSelectionForPlayer(GetOwningPlayer(SFI))
call SelectUnitForPlayerSingle(SFI,GetOwningPlayer(SFI))
call SetUnitInvulnerable(SFI,false)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call RemoveUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P74(SFI,P8I,SUI)
call SaveInteger(LY,(GetHandleId((SFI))),((4310)),(2))
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093686104 then
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl",GetUnitX(P8I),GetUnitY(P8I)))
if IsUnitType(P8I,UNIT_TYPE_HERO)==false then
call SetUnitState(SFI,UNIT_STATE_LIFE,GetUnitState(SFI,UNIT_STATE_LIFE)+GetUnitState(P8I,UNIT_STATE_LIFE))
endif
call UnitShareVision(P8I,GetOwningPlayer(SFI),false)
call SetUnitPosition(SFI,GetUnitX(P8I),GetUnitY(P8I))
call PauseUnit(SFI,false)
call ShowUnit(SFI,true)
call SetUnitPathing(SFI,true)
call SetUnitAnimation(SFI,"Stand Victory")
call OE1(SFI,1.5)
call ClearSelectionForPlayer(GetOwningPlayer(SFI))
call SelectUnitForPlayerSingle(SFI,GetOwningPlayer(SFI))
call SetUnitInvulnerable(SFI,false)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call RemoveUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call P74(SFI,P8I,SUI)
if IsUnitType(P8I,UNIT_TYPE_HERO)==false then
if TII(GetOwningPlayer(SFI))then
set I01=CreateUnit(CO[0],1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call SetUnitOwner(P8I,CO[0],false)
else
set I01=CreateUnit(BO[0],1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call SetUnitOwner(P8I,BO[0],false)
endif
call UnitAddAbility(I01,1093873971)
call IssueTargetOrder(I01,"charm",P8I)
call UnitRemoveBuffs(P8I,true,true)
call DU1(P8I,0,0)
call P6I(SFI,P8I,1,100000)
call P6I(SFI,P8I,2,100000)
call P6I(SFI,P8I,3,100000)
endif
call SaveInteger(LY,(GetHandleId((SFI))),((4310)),(2))
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SELECTED then
if IsUnitType(P8I,UNIT_TYPE_HERO)==true or IsUnitIllusion(P8I)==true then
call ClearSelectionForPlayer(GetOwningPlayer(SFI))
call SelectUnitAddForPlayer(I01,GetOwningPlayer(SFI))
endif
else
call SetUnitPosition(SFI,GetUnitX(P8I),GetUnitY(P8I))
endif
set t=null
set P8I=null
set SFI=null
return false
endfunction
function P94 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697657136,7260,-7732,0)
local string PA4="Objects\\Spawnmodels\\Naga\\NagaBlood\\NagaBloodWindserpent.mdl"
local string PB4="Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBase.mdl"
local string PC4="Abilities\\Spells\\Other\\Aneu\\AneuTarget.mdl"
if IsPlayerEnemy(GetLocalPlayer(),GetOwningPlayer(SFI))and P0I(GetLocalPlayer())==false then
set PA4=""
set PB4=""
set PC4=""
endif
call UnitRemoveBuffs(SFI,true,true)
call DU1(SFI,0,0)
call SetUnitInvulnerable(I01,true)
call IA1(I01,1093686104)
call ClearSelectionForPlayer(GetOwningPlayer(SFI))
call SelectUnitForPlayerSingle(I01,GetOwningPlayer(SFI))
call UnitShareVision(P8I,GetOwningPlayer(SFI),true)
call SetUnitInvulnerable(SFI,true)
call ShowUnit(SFI,false)
call PauseUnit(SFI,true)
call SetUnitPathing(SFI,false)
call DestroyEffect(AddSpecialEffectTarget(PA4,P8I,"overhead"))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(PB4,P8I,"overhead")))
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffectTarget(PC4,P8I,"overhead")))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(SFI,1093686103)))
call TriggerRegisterDeathEvent(t,P8I)
call TriggerRegisterPlayerUnitEvent(t,GetOwningPlayer(SFI),EVENT_PLAYER_UNIT_SELECTED,Condition(function N1I))
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function P84))
call SaveInteger(LY,(GetHandleId((SFI))),((4310)),(1))
if IsUnitType(P8I,UNIT_TYPE_HERO)==false and IsUnitIllusion(P8I)==false then
call IA1(P8I,1093686104)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_SPELL_EFFECT)
set I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093873971)
call IssueTargetOrder(I01,"charm",P8I)
call ClearSelectionForPlayer(GetOwningPlayer(SFI))
call SelectUnitForPlayerSingle(P8I,GetOwningPlayer(SFI))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MAX_MANA))
endif
set t=null
set SFI=null
set P8I=null
endfunction
function PD4 takes nothing returns boolean
if GetSpellAbilityId()==1093686103 then
call P94()
endif
return false
endfunction
function PE4 takes nothing returns boolean
if GetSpellAbilityId()==1093686103 and IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetSpellTargetUnit()))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659030))
endif
return false
endfunction
function ST1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PD4))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function PE4))
set t=null
endfunction
function PF4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if GetUnitTypeId(SFI)==1160786520 then
call SetUnitVertexColor(SFI,255,255,255,255)
else
call SetUnitVertexColor(SFI,100,100,100,255)
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call UnitRemoveAbility(SFI,1093686098)
call UnitRemoveAbility(SFI,1093686100)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function PG4 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093817428)
call SetUnitVertexColor(SFI,0,0,0,255)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093686100,false)
call IA1(SFI,1093686100)
call IA1(SFI,1093686098)
call SetUnitAbilityLevel(SFI,1093686098,SUI)
call DU1(SFI,0,0)
call UnitRemoveAbility(SFI,1112044643)
call UnitRemoveAbility(SFI,1110454869)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Bloodlust\\BloodlustTarget.mdl",SFI,"right hand")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Bloodlust\\BloodlustTarget.mdl",SFI,"left hand")))
call TriggerRegisterTimerEvent(t,2+SUI,false)
call TriggerAddCondition(t,Condition(function PF4))
set SFI=null
set t=null
endfunction
function PH4 takes nothing returns boolean
if GetSpellAbilityId()==1093817428 then
call PG4()
endif
return false
endfunction
function SS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PH4))
set t=null
endfunction
function PZ4 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093686099)
local real PAI=(0.03+0.01*SUI)*GetUnitState(P8I,UNIT_STATE_LIFE)
if GetUnitAbilityLevel(P8I,1093678162)==0 and GetUnitAbilityLevel(P7I,1112433775)==0 then
call P6I(P7I,P8I,2,PAI)
call SetUnitState(P7I,UNIT_STATE_LIFE,PAI+GetUnitState(P7I,UNIT_STATE_LIFE))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",P7I,"origin"))
endif
endfunction
function PV4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call PZ4(P7I,P8I)
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
function PW4 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function PV4))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function PX4 takes nothing returns nothing
local unit P7I=GetAttacker()
if((LoadInteger(LY,(GetHandleId((P7I))),((4274))))==1)==false then
call SCI(P7I,4274,0.4)
call PW4()
endif
endfunction
function PY4 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093686099)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!=1848651852 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
call PX4()
endif
return false
endfunction
function PJ4 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function PY4))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function PK4 takes nothing returns boolean
if GetLearnedSkill()==1093686099 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093686099)==1 then
call PJ4()
endif
return false
endfunction
function SN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function PK4))
set t=null
endfunction
function PL4 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local unit P7I=ZVI
local real KMO=GetUnitState(P8I,UNIT_STATE_LIFE)
local real PM4=GetUnitState(P8I,UNIT_STATE_MAX_LIFE)
local real PN4=((0.003+0.003*ZWI)*PM4)/2
if KMO<PN4 then
call SetUnitState(P8I,UNIT_STATE_LIFE,1)
call P6I(P7I,P8I,3,100)
call P6I(P7I,P8I,1,100)
call P6I(P7I,P8I,2,100)
else
call SetUnitState(P8I,UNIT_STATE_LIFE,QDI(GetUnitState(P8I,UNIT_STATE_LIFE)-PN4,1))
endif
set P8I=null
set P7I=null
endfunction
function PS4 takes nothing returns boolean
return(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),1110456372)>0
endfunction
function PT4 takes nothing returns boolean
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g
if IC1(P7I)==false then
set g=NTI()
set GK=P7I
set ZVI=P7I
set ZWI=GetUnitAbilityLevel(P7I,1093677390)
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1225,Condition(function PS4))
call ForGroup(g,function PL4)
call NSI(g)
endif
set g=null
set P7I=null
return false
endfunction
function PR4 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function PT4))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(GetTriggerUnit()))
set t=null
endfunction
function PP4 takes nothing returns boolean
if GetLearnedSkill()==1093677390 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093677390)==1 then
call PR4()
endif
return false
endfunction
function L81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function PP4))
set t=null
endfunction
function PQ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093678640)
local real PU4=2*SUI
local real Q04=SUI
local integer AB3=(LoadInteger(LY,(S5I),(34)))
if SUI==4 then
set PU4=10
endif
set Q04=Q04*AB3
set PU4=PU4*AB3
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+PU4)
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+Q04)
if GetTriggerEvalCount(t)>5 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function QI4 takes unit P7I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093678640)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",P7I,"origin"))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function PQ4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
call SaveInteger(LY,(S5I),(34),(10))
else
call SaveInteger(LY,(S5I),(34),(1))
endif
set t=null
endfunction
function Q14 takes nothing returns boolean
if GetUnitAbilityLevel(GetKillingUnit(),1110454866)>0 then
call QI4(GetKillingUnit())
elseif((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4333))))==1)then
call QI4(ZJI)
endif
return false
endfunction
function L51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function Q14))
set t=null
endfunction
function P64 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local real PAI=(LoadReal(LY,(S5I),(20)))
local real MR3=(LoadReal(LY,(S5I),(21)))
if IsUnitAlly(P8I,GetOwningPlayer(P7I))then
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+MR3)
else
call P6I(P7I,P8I,1,PAI)
endif
set P7I=null
set P8I=null
endfunction
function QO4 takes nothing returns nothing
local trigger t=IJ1(GK,GetEnumUnit(),1747988567,"P64",400,false)
local integer S5I=GetHandleId(t)
call SaveReal(LY,(S5I),(20),((AK)*1.0))
call SaveReal(LY,(S5I),(21),((BK)*1.0))
set t=null
endfunction
function Q24 takes nothing returns nothing
call QO4()
endfunction
function Q34 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(SFI,ZXI)
local real r
local real PAI
local real MR3
if SUI==1 then
set PAI=75
set MR3=70
set r=500
elseif SUI==2 then
set PAI=125
set MR3=90
set r=500
elseif SUI==3 then
set PAI=200
set MR3=110
set r=500
elseif SUI==4 then
set PAI=275
set MR3=130
set r=500
endif
set GK=SFI
set AK=PAI
set BK=MR3
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),r,Condition(function D41))
call GroupRemoveUnit(g,SFI)
call ForGroup(g,function Q24)
call NSI(g)
call SetUnitState(SFI,UNIT_STATE_LIFE,GetUnitState(SFI,UNIT_STATE_LIFE)+MR3)
set SFI=null
set g=null
endfunction
function Q44 takes nothing returns boolean
if GetSpellAbilityId()==ZXI then
call Q34()
endif
return false
endfunction
function L61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Q44))
set t=null
endfunction
function Q54 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real AB3=(LoadReal(LY,(S5I),(680)))
local integer Q64=GetUnitAbilityLevel(P7I,1093679184)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",P8I,"origin"))
if Q64>0 then
set ZYI=true
call P6I(P7I,P8I,1,AB3*(GetUnitState(P8I,UNIT_STATE_MAX_LIFE)-GetUnitState(P8I,UNIT_STATE_LIFE)))
set ZYI=false
else
call P6I(P7I,P8I,1,AB3*(GetUnitState(P8I,UNIT_STATE_MAX_LIFE)-GetUnitState(P8I,UNIT_STATE_LIFE)))
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function Q74 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer Q84=GetUnitAbilityLevel(P7I,1093678647)
local integer Q94=GetUnitAbilityLevel(P7I,1093679184)
local real AB3
if Q84==1 then
set AB3=0.4
elseif Q84==2 or Q94==1 then
set AB3=0.6
elseif Q84==3 or Q94==2 then
set AB3=0.9
elseif Q94==3 then
set AB3=1.2
endif
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(680),((AB3)*1.0))
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerAddCondition(t,Condition(function Q54))
call SCI(P8I,4333,1.5)
if Q94>0 then
call SCI(P8I,4418,1.51)
endif
set ZJI=P7I
set t=null
set P7I=null
set P8I=null
endfunction
function QA4 takes nothing returns boolean
if(GetSpellAbilityId()==1093678647 or GetSpellAbilityId()==1093679184)and NNI(GetSpellTargetUnit())==false then
call Q74()
endif
return false
endfunction
function L71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QA4))
set t=null
endfunction
function QB4 takes nothing returns nothing
local location l
local unit SFI=GetTriggerUnit()
local real x1=GetUnitX(SFI)
local real y1=GetUnitY(SFI)
local real a
local real x2
local real y2
local integer SUI=GetUnitAbilityLevel(SFI,1093687351)
local real PAI
local real DC1
local unit DT1=null
if GetSpellTargetUnit()!=null then
set l=GetUnitLoc(GetSpellTargetUnit())
else
set l=GetSpellTargetLoc()
endif
set x2=GetLocationX(l)
set y2=GetLocationY(l)
set a=Atan2(y2-y1,x2-x1)
set x2=x1+700*Cos(a)
set y2=y1+700*Sin(a)
if SUI==1 then
set PAI=80
set DC1=0.75
elseif SUI==2 then
set PAI=140
set DC1=1.25
elseif SUI==3 then
set PAI=200
set DC1=1.75
elseif SUI==4 then
set PAI=260
set DC1=2.25
endif
if GetSpellTargetUnit()!=null and NNI(GetSpellTargetUnit())then
set DT1=GetSpellTargetUnit()
endif
call DS1(SFI,DT1,PAI,DC1,0.52,x1,y1,x2,y2,150,null,true,1600)
call RemoveLocation(l)
set l=null
set SFI=null
endfunction
function QC4 takes nothing returns boolean
if GetSpellAbilityId()==1093687351 then
call QB4()
endif
return false
endfunction
function TO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QC4))
call Q1I(1093687350)
set t=null
endfunction
function QD4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093748789)
local real r=GetHeroInt(P8I,true)*(3+0.5*SUI)
local integer ZCO=IMinBJ(R2I(r),R2I(GetUnitState(P8I,UNIT_STATE_MANA)))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)-ZCO)
call P6I(P7I,P8I,1,ZCO)
call AL1("MBUR",P7I,P8I,1,1,1,1,0.5)
call UYI("-"+I2S(ZCO),3,P8I,0.023,82,82,255,255)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\ManaBurn\\ManaBurnTarget.mdl",P8I,"chest"))
set P7I=null
set P8I=null
endfunction
function QE4 takes nothing returns boolean
if GetSpellAbilityId()==1093748789 and NNI(GetSpellTargetUnit())==false then
call QD4()
endif
return false
endfunction
function T21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QE4))
set t=null
endfunction
function QF4 takes nothing returns nothing
call IssueTargetOrder(ZKI,"soulburn",GetEnumUnit())
endfunction
function QG4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
local group g=NTI()
set ZKI=I01
call IA1(I01,1093748551)
call GroupEnumUnitsInRange(g,x,y,325,Condition(function C51))
call ForGroup(g,function QF4)
call NSI(g)
call KillUnit(P7I)
call SetUnitAnimation(P7I,"death")
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadLargeDeathExplode\\UndeadLargeDeathExplode.mdl",x,y))
set P7I=null
set I01=null
set g=null
endfunction
function QH4 takes nothing returns boolean
if GetSpellAbilityId()==1093748808 then
call QG4()
endif
return false
endfunction
function T31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QH4))
call Q1I(1093748551)
set t=null
endfunction
function QZ4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I
local integer SUI=GetUnitAbilityLevel(P7I,1093815119)
local group PR2=(LoadGroupHandle(LY,(S5I),(22)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamage()>0 and IsPlayerEnemy(GetOwningPlayer(GetEventDamageSource()),GetOwningPlayer(P7I))==true then
if T2I(GetOwningPlayer(GetEventDamageSource()))and RSI(GetEventDamage())then
set P8I=GetEventDamageSource()
if GetUnitAbilityLevel(P8I,1093678162)>0 then
set P8I=K1[GetPlayerId(GetOwningPlayer(P8I))]
endif
if IsUnitInGroup(P8I,PR2)==false then
call GroupAddUnit(PR2,P8I)
call QGI(P7I,GetEventDamage())
if IC1(P8I)==false then
call DD1(P7I,P8I,0.6*SUI)
call P6I(P7I,P8I,3,GetEventDamage())
endif
endif
endif
endif
else
call UnitRemoveAbility(P7I,1093815120)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function QV4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,2.25,false)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function QZ4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(22),(NTI()))
call IA1(P7I,1093815120)
set P7I=null
set t=null
endfunction
function QW4 takes nothing returns boolean
if GetSpellAbilityId()==1093815119 then
call QV4()
endif
return false
endfunction
function T41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QW4))
set t=null
endfunction
constant function Shadowraze_RawCode1 takes nothing returns integer
return 1093682521
endfunction
constant function Shadowraze_RawCode2 takes nothing returns integer
return 1093682760
endfunction
constant function Shadowraze_RawCode3 takes nothing returns integer
return 1093682736
endfunction
constant function Shadowraze_Area takes nothing returns integer
return 275
endfunction
function QX4 takes nothing returns boolean
return GetSpellAbilityId()==(1093682521)or GetSpellAbilityId()==(1093682760)or GetSpellAbilityId()==(1093682736)
endfunction
function QY4 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitAbilityLevel(GetFilterUnit(),1093678162)!=1
endfunction
function QJ4 takes nothing returns nothing
call UnitDamageTarget(GetTriggerUnit(),GetEnumUnit(),25+75*GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId()),true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_DEATH,WEAPON_TYPE_WHOKNOWS)
endfunction
function QK4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01
local group Z51=NTI()
local boolexpr QL1=Condition(function QY4)
local real MAI=GetUnitFacing(SFI)
local real x
local real y
if GetSpellAbilityId()==(1093682521)then
set x=GetUnitX(SFI)+200*Cos(MAI*bj_DEGTORAD)
set y=GetUnitY(SFI)+200*Sin(MAI*bj_DEGTORAD)
set I01=CreateUnit(GetOwningPlayer(SFI),1697656886,x,y,0)
call UnitApplyTimedLife(I01,1112820806,2)
call GroupEnumUnitsInRange(Z51,x,y,(275),QL1)
call ForGroup(Z51,function QJ4)
call GroupClear(Z51)
endif
if GetSpellAbilityId()==(1093682760)then
set x=GetUnitX(SFI)+450*Cos(MAI*bj_DEGTORAD)
set y=GetUnitY(SFI)+450*Sin(MAI*bj_DEGTORAD)
set I01=CreateUnit(GetOwningPlayer(SFI),1697656886,x,y,0)
call UnitApplyTimedLife(I01,1112820806,2)
call GroupEnumUnitsInRange(Z51,x,y,(275),QL1)
call ForGroup(Z51,function QJ4)
call GroupClear(Z51)
endif
if GetSpellAbilityId()==(1093682736)then
set x=GetUnitX(SFI)+700*Cos(MAI*bj_DEGTORAD)
set y=GetUnitY(SFI)+700*Sin(MAI*bj_DEGTORAD)
set I01=CreateUnit(GetOwningPlayer(SFI),1697656886,x,y,0)
call UnitApplyTimedLife(I01,1112820806,2)
call GroupEnumUnitsInRange(Z51,x,y,(275),QL1)
call ForGroup(Z51,function QJ4)
call GroupClear(Z51)
endif
call NSI(Z51)
endfunction
function LA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddAction(t,function QK4)
call TriggerAddCondition(t,Condition(function QX4))
endfunction
function QL4 takes nothing returns nothing
if(GetLearnedSkill()==1093682521)then
if(GetUnitAbilityLevelSwapped(1093682521,GetTriggerUnit())==1)then
call UnitAddAbility(GetTriggerUnit(),1093682736)
call UnitAddAbility(GetTriggerUnit(),1093682760)
else
call SetUnitAbilityLevelSwapped(1093682736,GetTriggerUnit(),GetUnitAbilityLevelSwapped(1093682521,GetTriggerUnit()))
call SetUnitAbilityLevelSwapped(1093682760,GetTriggerUnit(),GetUnitAbilityLevelSwapped(1093682521,GetTriggerUnit()))
endif
endif
if(GetLearnedSkill()==1093681746)then
if(GetUnitAbilityLevelSwapped(1093681746,GetTriggerUnit())==1)then
call UnitAddAbility(GetTriggerUnit(),1093682001)
endif
endif
endfunction
function NL takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddAction(t,function QL4)
endfunction
function QM4 takes nothing returns boolean
return GetSpellAbilityId()==1093810506 or GetSpellAbilityId()==1093750096
endfunction
function QN4 takes unit PKI,integer QS4 returns nothing
local integer QT4=QS4
local integer QR4
local integer THI
local location BFO=GetUnitLoc(GetTriggerUnit())
local location OM3
local integer SUI=GetUnitAbilityLevelSwapped(1093810506,GetTriggerUnit())
if SUI==0 then
return
endif
set QT4=QT4/2
set QR4=1
set THI=QT4
loop
exitwhen QR4>THI
set OM3=M7I(BFO,50.00,(I2R(QR4)*(360/QT4)))
call CreateNUnitsAtLoc(1,1697656899,GetOwningPlayer(PKI),BFO,bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093683271)
call SetUnitAbilityLevelSwapped(1093683271,bj_lastCreatedUnit,SUI)
call UnitApplyTimedLifeBJ(2.00,1112820806,bj_lastCreatedUnit)
call IssuePointOrderLoc(bj_lastCreatedUnit,"carrionswarm",OM3)
call SetUnitPathing(bj_lastCreatedUnit,false)
call SetUnitInvulnerable(bj_lastCreatedUnit,true)
call UnitAddAbility(bj_lastCreatedUnit,1097625443)
call RemoveLocation(OM3)
set QR4=QR4+1
endloop
call RemoveLocation(BFO)
endfunction
function QP4 takes nothing returns nothing
local integer QT4=(LoadInteger(LY,(GetHandleId(GetTriggerUnit())),(710)))
local unit PKI=GetTriggerUnit()
call QN4(PKI,QT4)
set PKI=null
endfunction
function LB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QM4))
call TriggerAddAction(t,function QP4)
endfunction
function QQ4 takes nothing returns boolean
return GetSpellAbilityId()==1093810506 or GetSpellAbilityId()==1093750096
endfunction
function QU4 takes nothing returns boolean
if(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true)then
return false
endif
if(GetUnitAbilityLevelSwapped(1093678162,GetFilterUnit())==1)then
return false
endif
if(IsUnitAliveBJ(GetFilterUnit())==false)then
return false
endif
if(GetUnitTypeId(GetFilterUnit())==1865429043)then
return false
endif
if(IsUnitEnemy(GetFilterUnit(),GetTriggerPlayer())==false)then
return false
endif
if(GetTriggerUnit()==GetFilterUnit())then
return false
endif
if(IsUnitVisible(GetFilterUnit(),GetTriggerPlayer())==false)then
return false
endif
return true
endfunction
function UI4 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local location BFO=GetUnitLoc(PKI)
local integer SUI=GetUnitAbilityLevelSwapped(1093810506,GetTriggerUnit())
if SUI==0 then
set SUI=GetUnitAbilityLevelSwapped(1093750096,GetTriggerUnit())
endif
call CreateNUnitsAtLoc(1,1697656899,GetOwningPlayer(GetEnumUnit()),BFO,bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093683272)
call SetUnitAbilityLevelSwapped(1093683272,bj_lastCreatedUnit,SUI)
call UnitApplyTimedLifeBJ(2.00,1112820806,bj_lastCreatedUnit)
call IssueTargetOrder(bj_lastCreatedUnit,"cripple",GetEnumUnit())
call SetUnitPathing(bj_lastCreatedUnit,false)
call SetUnitInvulnerable(bj_lastCreatedUnit,true)
call UnitAddAbility(bj_lastCreatedUnit,1097625443)
call RemoveLocation(BFO)
endfunction
function U14 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local location BFO=GetUnitLoc(PKI)
local integer SUI=GetUnitAbilityLevelSwapped(1093810506,GetTriggerUnit())
if SUI==0 then
set SUI=GetUnitAbilityLevelSwapped(1093750096,GetTriggerUnit())
endif
call CreateNUnitsAtLoc(1,1697656899,GetOwningPlayer(GetEnumUnit()),BFO,bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093683272)
call SetUnitAbilityLevelSwapped(1093683272,bj_lastCreatedUnit,SUI)
call UnitApplyTimedLifeBJ(2.00,1112820806,bj_lastCreatedUnit)
call IssueTargetOrder(bj_lastCreatedUnit,"cripple",GetEnumUnit())
call SetUnitPathing(bj_lastCreatedUnit,false)
call SetUnitInvulnerable(bj_lastCreatedUnit,true)
call UnitAddAbility(bj_lastCreatedUnit,1097625443)
call RemoveLocation(BFO)
endfunction
function UO4 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local location BFO=GetUnitLoc(PKI)
local integer SUI=GetUnitAbilityLevelSwapped(1093810506,GetTriggerUnit())
if SUI==0 then
set SUI=GetUnitAbilityLevelSwapped(1093750096,GetTriggerUnit())
endif
call CreateNUnitsAtLoc(1,1697656899,GetOwningPlayer(GetEnumUnit()),BFO,bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093683272)
call SetUnitAbilityLevelSwapped(1093683272,bj_lastCreatedUnit,SUI)
call UnitApplyTimedLifeBJ(2.00,1112820806,bj_lastCreatedUnit)
call IssueTargetOrder(bj_lastCreatedUnit,"cripple",GetEnumUnit())
call SetUnitPathing(bj_lastCreatedUnit,false)
call SetUnitInvulnerable(bj_lastCreatedUnit,true)
call UnitAddAbility(bj_lastCreatedUnit,1097625443)
call RemoveLocation(BFO)
endfunction
function U24 takes nothing returns nothing
local location BFO=GetUnitLoc(GetTriggerUnit())
local unit PKI=GetTriggerUnit()
local group Z51
set Z51=NTI()
call GroupEnumUnitsInRangeOfLoc(Z51,BFO,700,Condition(function QU4))
call ForGroup(Z51,function UI4)
call NSI(Z51)
set Z51=NTI()
call GroupEnumUnitsInRangeOfLoc(Z51,BFO,400,Condition(function QU4))
call ForGroup(Z51,function U14)
call NSI(Z51)
set Z51=NTI()
call GroupEnumUnitsInRangeOfLoc(Z51,BFO,200,Condition(function QU4))
call ForGroup(Z51,function UO4)
call NSI(Z51)
call RemoveLocation(BFO)
endfunction
function LC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QQ4))
call TriggerAddAction(t,function U24)
endfunction
function U34 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=HK
local unit P8I=GK
local integer QT4=GetUnitAbilityLevel(P7I,1093682001)
local integer U44
local integer SUI=GetUnitAbilityLevel(P7I,1093681746)
if SUI==1 then
set U44=15
elseif SUI==2 then
set U44=22
elseif SUI==3 then
set U44=29
else
set U44=36
endif
set U44=U44+1
if IsUnitType(P8I,UNIT_TYPE_HERO)==false then
set QT4=QT4+1
else
set QT4=QT4+12
endif
set QT4=IMinBJ(U44,QT4)
call SetUnitAbilityLevel(P7I,1093682001,QT4)
call SaveInteger(LY,(GetHandleId(P7I)),(710),(QT4))
set P7I=null
endfunction
function U54 takes nothing returns nothing
local integer QT4
local integer SUI
local integer U44
local trigger t
local integer S5I
local unit P7I=GetKillingUnit()
if GetUnitTypeId(P7I)==1697656899 then
set P7I=K1[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
endif
set QT4=GetUnitAbilityLevel(P7I,1093682001)
set SUI=GetUnitAbilityLevel(P7I,1093681746)
if SUI==1 then
set U44=15
elseif SUI==2 then
set U44=22
elseif SUI==3 then
set U44=29
else
set U44=36
endif
if QT4<=U44 then
set t=IJ1(GetTriggerUnit(),P7I,1747993426,"U34",500,false)
set S5I=GetHandleId(t)
set t=null
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\ZigguratMissile\\ZigguratMissile.mdl",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
endif
endfunction
function U64 takes nothing returns nothing
local integer U74=(LoadInteger(LY,(GetHandleId(GetTriggerUnit())),(710)))
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(710),(R2I(GetUnitAbilityLevel(GetTriggerUnit(),1093682001)*0.5)+1))
call SetUnitAbilityLevel(GetTriggerUnit(),1093682001,R2I(GetUnitAbilityLevel(GetTriggerUnit(),1093682001)*0.5)+1)
call QN4(GetTriggerUnit(),U74-(LoadInteger(LY,(GetHandleId(GetTriggerUnit())),(710))))
endfunction
function U84 takes nothing returns boolean
if GetUnitAbilityLevel(GetKillingUnit(),1093681746)>0 and IsUnitIllusion(GetTriggerUnit())==false then
call U54()
elseif GetUnitAbilityLevel(K1[GetPlayerId(GetOwningPlayer(GetKillingUnit()))],1093681746)>0 and GetUnitTypeId(GetKillingUnit())==1697656899 then
call U54()
endif
if GetUnitAbilityLevel(GetTriggerUnit(),1093681746)>0 and IsUnitIllusion(GetTriggerUnit())==false then
call U64()
endif
return false
endfunction
function U94 takes nothing returns boolean
local unit SFI=K1[GetPlayerId(GetTriggerPlayer())]
local integer UA4=GetUnitAbilityLevel(SFI,1093682001)-1
local integer UB4=0
local integer SUI=GetUnitAbilityLevel(SFI,1093681746)
if SUI==1 then
set UB4=12
elseif SUI==2 then
set UB4=20
elseif SUI==3 then
set UB4=28
elseif SUI==4 then
set UB4=36
endif
set UA4=IMaxBJ(IMinBJ(UA4,UB4),0)
if GetUnitTypeId(SFI)==1315334514 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848658757)+" "+I2S(UA4)+"/"+I2S(UB4))
endif
return false
endfunction
function L91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function U84))
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
call TriggerAddCondition(t,Condition(function U94))
set t=null
endfunction
function UC4 takes nothing returns boolean
return GetSpellAbilityId()==1093677640
endfunction
function UD4 takes nothing returns nothing
local unit I01
if(PLI()==false)then
set I01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1697656901,GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()),bj_UNIT_FACING)
call IA1(I01,1093677650)
call IssueTargetOrder(I01,"slow",GetSpellTargetUnit())
else
set I01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1697656901,GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()),bj_UNIT_FACING)
call IA1(I01,1093748785)
call IssueTargetOrder(I01,"slow",GetSpellTargetUnit())
endif
endfunction
function LE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UC4))
call TriggerAddAction(t,function UD4)
endfunction
function UE4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
call ResetUnitAnimation(P7I)
call RemoveUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set P7I=null
set I01=null
set t=null
return false
endfunction
function UF4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1966092617,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function UE4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SetUnitVertexColorBJ(I01,0,0,0,75)
call SetUnitAnimation(I01,"spell third")
set P7I=null
set I01=null
set t=null
endfunction
function UG4 takes nothing returns boolean
if GetSpellAbilityId()==1093679171 and GetUnitAbilityLevel(GetTriggerUnit(),1093679171)<5 then
call UF4()
endif
return false
endfunction
function LF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function UG4))
set t=null
endfunction
function UH4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function UZ4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer DC1
local integer SUI=GetUnitAbilityLevel(P7I,1093677899)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093747248)
endif
if SUI==1 then
set DC1=25
elseif SUI==2 then
set DC1=50
elseif SUI==3 then
set DC1=80
endif
call TriggerRegisterTimerEvent(t,DC1,false)
call TriggerAddCondition(t,Condition(function UH4))
set P7I=null
set t=null
endfunction
function UV4 takes nothing returns boolean
if GetSpellAbilityId()==1093677899 or GetSpellAbilityId()==1093747248 then
call UZ4()
endif
return false
endfunction
function LG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function UV4))
set t=null
endfunction
function UW4 takes nothing returns boolean
return(GetLearnedSkill()==1093679158 or GetLearnedSkill()==1093679173)and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function UX4 takes nothing returns boolean
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit UY4=(LoadUnitHandle(LY,(S5I),(304)))
local unit XO3=(LoadUnitHandle(LY,(S5I),(305)))
if UY4==null or IC1(UY4)or PLI()or ES1(UY4,FR0[K30])==null then
call ShowUnit(XO3,false)
else
call ShowUnit(XO3,true)
call SetUnitX(XO3,GetUnitX(UY4))
call SetUnitY(XO3,GetUnitY(UY4))
endif
if GetOwningPlayer(XO3)!=GetOwningPlayer(UY4)then
call SetUnitOwner(XO3,GetOwningPlayer(UY4),true)
endif
return false
endfunction
function UJ4 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit UY4=(LoadUnitHandle(LY,(S5I),(304)))
if UY4!=null and PLI()and IC1(UY4)==false then
call UnitRemoveAbility(UY4,1093742902)
call UnitRemoveAbility(UY4,1093742903)
call SetUnitAbilityLevel(UY4,1395667009,5)
call SetUnitAbilityLevel(UY4,1093679171,5)
elseif UY4!=null and PLI()==false and IC1(UY4)==false then
call IA1(UY4,1093742902)
call IA1(UY4,1093742903)
call SetUnitAbilityLevel(UY4,1395667009,GetUnitAbilityLevel(UY4,1093679158))
call SetUnitAbilityLevel(UY4,1093679171,GetUnitAbilityLevel(UY4,1093679173))
endif
endfunction
function UK4 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggerUnit())
local trigger t
if((LoadBoolean(LY,(S5I),(306)))==false)then
call SaveBoolean(LY,(S5I),(306),(true))
set t=CreateTrigger()
call TriggerRegisterTimerEventPeriodic(t,2.00)
call TriggerRegisterGameStateEventTimeOfDay(t,LESS_THAN,6.00)
call TriggerRegisterGameStateEventTimeOfDay(t,GREATER_THAN,18.00)
call TriggerAddAction(t,function UJ4)
call SaveUnitHandle(LY,(GetHandleId(t)),(304),(GetTriggerUnit()))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function UX4))
call SaveUnitHandle(LY,(S5I),(304),(GetTriggerUnit()))
call SaveUnitHandle(LY,(S5I),(305),(CreateUnit(GetOwningPlayer(GetTriggerUnit()),1865429313,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)))
endif
if(GetLearnedSkill()==1093679158)then
call IA1(GetTriggerUnit(),1395667009)
if(PLI())then
call SetUnitAbilityLevel(GetTriggerUnit(),1395667009,5)
else
call SetUnitAbilityLevel(GetTriggerUnit(),1395667009,GetUnitAbilityLevel(GetTriggerUnit(),1093679158))
endif
endif
if(GetLearnedSkill()==1093679173)then
call UnitAddAbility(GetTriggerUnit(),1093679171)
if(PLI())then
call SetUnitAbilityLevel(GetTriggerUnit(),1093679171,5)
else
call SetUnitAbilityLevel(GetTriggerUnit(),1093679171,GetUnitAbilityLevel(GetTriggerUnit(),1093679173))
endif
endif
endfunction
function LD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function UW4))
call TriggerAddAction(t,function UK4)
endfunction
function UL4 takes nothing returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=GK
local unit P8I=HK
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real PAI=20+SUI*40
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer UM4=GetUnitAbilityLevel(P7I,1093677905)
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
set PAI=PAI/2
endif
if UM4>0 and GetRandomReal(0,100)<15 then
set PAI=PAI*(1.2+1.1*UM4)
call UYI(I2S(R2I(PAI))+"!",3,P8I,0.02,255,0,0,255)
endif
call IA1(I01,1093687628)
call SetUnitAbilityLevel(I01,1093687628,SUI)
call IssueTargetOrder(I01,"slow",P8I)
call P6I(P7I,P8I,3,PAI)
set P7I=null
set P8I=null
set I01=null
endfunction
function UN4 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=IJ1(SFI,P8I,1747988784,"UL4",1200,true)
local integer S5I=GetHandleId(t)
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(SFI,1093687629)))
set SFI=null
set P8I=null
set t=null
endfunction
function US4 takes nothing returns boolean
if GetSpellAbilityId()==1093687629 and NNI(GetSpellTargetUnit())==false then
call UN4()
endif
return false
endfunction
function LZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function US4))
set t=null
endfunction
function UT4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call UnitRemoveAbility(P7I,1093747535)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetTriggerUnit()!=P8I and GetAttacker()==P7I then
call UnitRemoveAbility(P7I,1093747535)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerUnit()==P8I and GetAttacker()==P7I then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==4 then
call UnitRemoveAbility(P7I,1093747535)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
else
call UnitRemoveAbility(P7I,1093747535)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function UR4 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093685324)
local trigger t
local integer S5I
call DestroyEffect(AddSpecialEffect("war3mapImported\\PhantomStrike.mdx",GetUnitX(P7I),GetUnitY(P7I)))
call SetUnitX(P7I,GetUnitX(P8I))
call SetUnitY(P7I,GetUnitY(P8I))
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call IA1(P7I,1093747535)
call IssueTargetOrder(P7I,"attack",P8I)
call TriggerRegisterTimerEvent(t,3,false)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function UT4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
endif
set P7I=null
set P8I=null
set t=null
endfunction
function UP4 takes nothing returns boolean
if GetSpellAbilityId()==1093685324 then
call UR4()
endif
return false
endfunction
function LV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UP4))
set t=null
endfunction
function UQ4 takes unit P7I,boolean SG2 returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093677904)
if SG2==false then
call UnitRemoveAbility(P7I,1093743430)
call UnitRemoveAbility(P7I,1110458674)
else
call IA1(P7I,1093743430)
endif
endfunction
function UU4 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local boolean I05=(LoadBoolean(LY,(S5I),(674)))
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if P7I!=null and IC1(P7I)==false and GetUnitAbilityLevel(P7I,1093677904)>0 then
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1625,Condition(function CB1))
if FirstOfGroup(g)!=null then
if I05==true and NPI>7 then
set I05=false
call SaveBoolean(LY,(S5I),(674),(I05))
set NPI=0
call SaveInteger(LY,(S5I),(34),(NPI))
endif
if I05==false then
set NPI=0
call SaveInteger(LY,(S5I),(34),(NPI))
call SaveInteger(LY,(GetHandleId((P7I))),((4302)),(2))
call UQ4(P7I,false)
call SetUnitVertexColorBJ(P7I,100,100,100,0)
if GetUnitAbilityLevel(P7I,1093808211)==0 then
call UnitSetUsesAltIcon(P7I,false)
endif
endif
else
if I05==false and NPI>7 then
set I05=true
set NPI=0
call SaveBoolean(LY,(S5I),(674),(I05))
call SaveInteger(LY,(S5I),(34),(NPI))
endif
if I05==true then
set NPI=0
call SaveInteger(LY,(S5I),(34),(NPI))
call SaveInteger(LY,(GetHandleId((P7I))),((4302)),(1))
call UQ4(P7I,true)
call SetUnitVertexColorBJ(P7I,100,100,100,75)
if IsPlayerEnemy(GetOwningPlayer(P7I),GetLocalPlayer())==true and P0I(GetLocalPlayer())==false then
call UnitSetUsesAltIcon(P7I,true)
else
call UnitSetUsesAltIcon(P7I,false)
endif
endif
endif
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function II5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function UU4))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(0))
call SaveBoolean(LY,(S5I),(674),(false))
set t=null
set P7I=null
endfunction
function I15 takes nothing returns boolean
if GetLearnedSkill()==1093677904 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093677904)==1 then
call II5()
endif
return false
endfunction
function LH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function I15))
set t=null
endfunction
function IO5 takes nothing returns nothing
local unit I01
if IsUnitInGroup(GetEnumUnit(),XK)==false then
call GroupAddUnit(XK,GetEnumUnit())
set I01=CreateUnit(GetOwningPlayer(GetEnumUnit()),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call IA1(I01,1093685833)
call SetUnitAbilityLevel(I01,1093685833,GetUnitAbilityLevel(ZNI,1093685825))
call IssueTargetOrder(I01,"ensnare",GetEnumUnit())
call P6I(ZNI,GetEnumUnit(),1,100)
endif
set I01=null
endfunction
function I25 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer i
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group DY1=NTI()
local unit PKI=(LoadUnitHandle(LY,(S5I),(221)))
set GK=PKI
set ZNI=PKI
call GroupEnumUnitsInRange(DY1,x,y,300,Condition(function CA1))
set XK=g
call ForGroup(DY1,function IO5)
call NSI(DY1)
if GetTriggerEvalCount(t)>ZLI*10 then
set i=1
loop
exitwhen i>16
call DestroyEffect((LoadEffectHandle(LY,(S5I),(2700+i))))
set i=i+1
endloop
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set g=null
set DY1=null
set PKI=null
return false
endfunction
function I35 takes nothing returns nothing
local integer i=1
local location l=GetSpellTargetLoc()
local real I45=GetLocationX(l)
local real I55=GetLocationY(l)
local real x
local real y
local integer JF2=16
local string fx="Abilities\\Spells\\Undead\\Graveyard\\GraveMarker.mdl"
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g=NTI()
call IO1(EC,I45,I55)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function I25))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveUnitHandle(LY,(S5I),(221),(GetTriggerUnit()))
call SaveReal(LY,(S5I),(6),((I45)*1.0))
call SaveReal(LY,(S5I),(7),((I55)*1.0))
loop
exitwhen i>JF2
set x=I45+ZMI*Cos(i*360/JF2*bj_DEGTORAD)
set y=I55+ZMI*Sin(i*360/JF2*bj_DEGTORAD)
call SaveEffectHandle(LY,(S5I),(2700+i),(AddSpecialEffect(fx,x,y)))
if i==1 or i==5 or i==9 or i==13 then
set x=I45+275*Cos(i*360/JF2*bj_DEGTORAD)
set y=I55+275*Sin(i*360/JF2*bj_DEGTORAD)
endif
set i=i+1
endloop
set t=null
set g=null
endfunction
function I65 takes nothing returns boolean
if GetSpellAbilityId()==1093685825 then
call I35()
endif
return false
endfunction
function S41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function I65))
set t=null
endfunction
function I75 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(393)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer R2O=90
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093815618 then
call KillUnit(I01)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
endif
if SUI==1 then
set R2O=160
elseif SUI==2 then
set R2O=120
endif
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
if NPI>R2O then
call KillUnit(I01)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
elseif NPI>30 then
call UnitRemoveAbility(I01,1097625443)
call ShowUnit(I01,true)
call IA1(I01,1097625443)
endif
set t=null
set I01=null
set P7I=null
return false
endfunction
function I85 takes nothing returns nothing
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
call SCI(GetEnumUnit(),4406,1)
call SetUnitPosition(GetEnumUnit(),AK,BK)
call PanCameraToTimedForPlayer(GetOwningPlayer(GetEnumUnit()),AK,BK,0)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
endfunction
function I95 takes unit P7I,unit P8I returns nothing
local group g=NTI()
call DestroyEffect(AddSpecialEffect("Doodads\\Cinematic\\ShimmeringPortal\\ShimmeringPortal.mdl",GetUnitX(P7I),GetUnitY(P7I)))
call DestroyEffect(AddSpecialEffect("Doodads\\Cinematic\\ShimmeringPortal\\ShimmeringPortal.mdl",GetUnitX(P8I),GetUnitY(P8I)))
set AK=GetUnitX(P8I)
set BK=GetUnitY(P8I)
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),475,Condition(function CU1))
call ForGroup(g,function I85)
call NSI(g)
set g=null
endfunction
function IA5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
if GetTriggerEventId()==EVENT_UNIT_DEATH or P8I==null or IC1(P8I)then
call S0I(t)
call FlushChildHashtable(LY,(S5I))
call UnitRemoveType(P8I,UNIT_TYPE_PEON)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093685808,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815618,false)
call PZI(GetOwningPlayer(P7I),GetObjectName(1848652614))
elseif P7I==null or IC1(P7I)then
call S0I(t)
call FlushChildHashtable(LY,(S5I))
call UnitRemoveType(P8I,UNIT_TYPE_PEON)
call PZI(GetOwningPlayer(P7I),GetObjectName(1848652615))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093685808,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815618,false)
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093815618 then
call S0I(t)
call FlushChildHashtable(LY,(S5I))
call UnitRemoveType(P8I,UNIT_TYPE_PEON)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093685808,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815618,false)
endif
else
call S0I(t)
call FlushChildHashtable(LY,(S5I))
call UnitRemoveType(P8I,UNIT_TYPE_PEON)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093685808,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815618,false)
call I95(P7I,P8I)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function IB5 takes nothing returns boolean
local real d
if IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==false or GetUnitAbilityLevel(GetFilterUnit(),1093678162)>0 or GetOwningPlayer(GetFilterUnit())==Player(15)then
return false
endif
if(IC1(GetFilterUnit()))then
return false
endif
if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)or(UJ>0 and C92(GetFilterUnit()))then
set d=QNI(BK,CK,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
if d<AK then
set AK=d
set GK=GetFilterUnit()
endif
endif
return false
endfunction
function IC5 takes unit P7I returns unit
local location l
local group g
local real x
local real y
set l=GetSpellTargetLoc()
set x=GetLocationX(l)
set y=GetLocationY(l)
set g=NTI()
set UJ=GetUnitAbilityLevel(P7I,1093685808)
set GK=null
set AK=9999
set BK=x
set CK=y
call GroupEnumUnitsInRange(g,x,y,4000,Condition(function IB5))
call NSI(g)
call RemoveLocation(l)
set l=null
set g=null
return GK
endfunction
function ID5 takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetSpellTargetUnit()
local real x
local real y
local unit u
if P8I==null then
set P8I=IC5(P7I)
endif
if P8I==null then
call PZI(GetOwningPlayer(P7I),GetObjectName(1848652616))
return
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093685808,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093815618,true)
call IA1(P7I,1093815618)
call TriggerRegisterTimerEvent(t,6-GetUnitAbilityLevel(P7I,1093685808),false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IA5))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\DarkHands.mdl",P8I,"overhead")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call UnitAddType(P8I,UNIT_TYPE_PEON)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,.03,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function I75))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(P7I,1093685808)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set u=CreateUnit(GetOwningPlayer(P7I),1747990840,GetUnitX(P7I),GetUnitY(P7I),0)
call SaveUnitHandle(LY,(S5I),(393),(u))
call ShowUnit(u,false)
set t=null
set P8I=null
endfunction
function IE5 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local unit SFI=GetTriggerUnit()
if P8I!=null then
if IsUnitAlly(P8I,GetOwningPlayer(SFI))==false then
call PJI(SFI)
call PZI(GetOwningPlayer(SFI),GetObjectName(1848652849))
elseif GetUnitAbilityLevel(SFI,1093685808)>0 and C92(P8I)==false then
call PJI(SFI)
call PZI(GetOwningPlayer(SFI),GetObjectName(1848652849))
endif
endif
if P8I==null then
set P8I=IC5(SFI)
endif
if P8I==null then
call PJI(SFI)
call PZI(GetOwningPlayer(SFI),GetObjectName(1848652848))
endif
set P8I=null
set SFI=null
endfunction
function IF5 takes nothing returns boolean
if GetSpellAbilityId()==1093685808 then
call IE5()
endif
return false
endfunction
function IG5 takes nothing returns boolean
if GetSpellAbilityId()==1093685808 then
call ID5(GetTriggerUnit())
endif
return false
endfunction
function S21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function IF5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IG5))
set t=null
call A51(1747990836)
call A51(1747990837)
call A51(1747990838)
endfunction
function IH5 takes nothing returns nothing
call P6I(ZTI,GetEnumUnit(),1,ZSI)
endfunction
function IZ5 takes nothing returns nothing
call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+ZSI*0.5)
endfunction
function IV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g=NTI()
local real r1=600
local real r2=600
local unit IW5
set x=GetUnitX(SFI)
set y=GetUnitY(SFI)
call GroupEnumUnitsInRange(g,x,y,r1,Condition(function D91))
set IW5=FirstOfGroup(g)
call NSI(g)
if IW5==null then
if(LoadBoolean(LY,(S5I),(307)))==true and(LoadBoolean(LY,(S5I),(308)))==true then
call UnitRemoveAbility(SFI,1093810227)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if(LoadBoolean(LY,(S5I),(307)))==false then
call SaveBoolean(LY,(S5I),(307),(true))
else
call SaveBoolean(LY,(S5I),(308),(true))
endif
endif
else
set x=GetUnitX(IW5)
set y=GetUnitY(IW5)
call SaveBoolean(LY,(S5I),(307),(false))
call SaveBoolean(LY,(S5I),(308),(false))
call FlushChildHashtable(LY,(GetHandleId(IW5)))
call DestroyEffect(AddSpecialEffect("war3mapImported\\CorpseExplosion.mdx",x,y))
call RemoveUnit(IW5)
set g=NTI()
set GK=SFI
set ZTI=SFI
set ZSI=20*GetUnitAbilityLevel(SFI,1093810232)
call GroupEnumUnitsInRange(g,x,y,r2,Condition(function CA1))
call ForGroup(g,function IH5)
set GK=SFI
call GroupEnumUnitsInRange(g,x,y,r2,Condition(function CT1))
call ForGroup(g,function IZ5)
call NSI(g)
endif
set g=null
set SFI=null
set IW5=null
set t=null
return false
endfunction
function IX5 takes nothing returns nothing
local real x=GetUnitX(GetTriggerUnit())
local real y=GetUnitY(GetTriggerUnit())
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call IO1(QF,x,y)
call TriggerRegisterTimerEvent(t,1.5,true)
call TriggerAddCondition(t,Condition(function IV5))
call IA1(GetTriggerUnit(),1093810227)
call SaveUnitHandle(LY,(S5I),(14),(GetTriggerUnit()))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveBoolean(LY,(S5I),(307),(false))
call SaveBoolean(LY,(S5I),(308),(false))
set t=null
endfunction
function IY5 takes nothing returns boolean
if GetSpellAbilityId()==1093810232 then
call IX5()
endif
return false
endfunction
function S31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IY5))
set t=null
endfunction
function IJ5 takes nothing returns nothing
endfunction
function IK5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local group g=NTI()
set GK=P7I
set ZRI=GetUnitAbilityLevel(P7I,1093677385)*10+10
call GroupEnumUnitsInRange(g,GetUnitX(I01),GetUnitY(I01),475,Condition(function CT1))
call ForGroup(g,function IJ5)
call NSI(g)
if GetTriggerEvalCount(t)==5 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set I01=null
return false
endfunction
function IL5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local integer SUI=GetUnitAbilityLevel(P7I,1093677385)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call TriggerAddCondition(t,Condition(function IK5))
call TriggerRegisterTimerEvent(t,1,true)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call IA1(I01,1093809714)
call SetUnitAbilityLevel(I01,1093809714,SUI)
call IssuePointOrder(I01,"rainoffire",x,y)
set P7I=null
set I01=null
endfunction
function IM5 takes nothing returns boolean
if GetSpellAbilityId()==1093677385 then
call IL5()
endif
return false
endfunction
function S51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IM5))
set t=null
endfunction
function IN5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093809233)
local integer JV3
local real IS5
local real IT5=3+SUI
if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(t)>4*IT5 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveAbility(P8I,1093809242)
call UnitRemoveAbility(P8I,1093809456)
call UnitRemoveAbility(P8I,1093809240)
call UnitRemoveAbility(P8I,1093809457)
call UnitRemoveAbility(P8I,1093809241)
call UnitRemoveAbility(P8I,1110459720)
else
set IS5=100*GetUnitState(P8I,UNIT_STATE_LIFE)/GetUnitState(P8I,UNIT_STATE_MAX_LIFE)
if IS5<20 then
set JV3=5
elseif IS5<40 then
set JV3=4
elseif IS5<60 then
set JV3=3
elseif IS5<80 then
set JV3=2
else
set JV3=1
endif
if JV3==1 then
if GetUnitAbilityLevel(P8I,1093809242)==0 then
call UnitRemoveAbility(P8I,1093809456)
call UnitRemoveAbility(P8I,1093809240)
call UnitRemoveAbility(P8I,1093809457)
call UnitRemoveAbility(P8I,1093809241)
call UnitRemoveAbility(P8I,1110459720)
call UnitAddAbility(P8I,1093809242)
endif
elseif JV3==2 then
if GetUnitAbilityLevel(P8I,1093809456)==0 then
call UnitRemoveAbility(P8I,1093809242)
call UnitRemoveAbility(P8I,1093809240)
call UnitRemoveAbility(P8I,1093809457)
call UnitRemoveAbility(P8I,1093809241)
call UnitRemoveAbility(P8I,1110459720)
call UnitAddAbility(P8I,1093809456)
endif
elseif JV3==3 then
if GetUnitAbilityLevel(P8I,1093809240)==0 then
call UnitRemoveAbility(P8I,1093809242)
call UnitRemoveAbility(P8I,1093809456)
call UnitRemoveAbility(P8I,1093809457)
call UnitRemoveAbility(P8I,1093809241)
call UnitRemoveAbility(P8I,1110459720)
call UnitAddAbility(P8I,1093809240)
endif
elseif JV3==4 then
if GetUnitAbilityLevel(P8I,1093809457)==0 then
call UnitRemoveAbility(P8I,1093809242)
call UnitRemoveAbility(P8I,1093809456)
call UnitRemoveAbility(P8I,1093809240)
call UnitRemoveAbility(P8I,1093809241)
call UnitRemoveAbility(P8I,1110459720)
call UnitAddAbility(P8I,1093809457)
endif
elseif JV3==5 then
if GetUnitAbilityLevel(P8I,1093809241)==0 then
call UnitRemoveAbility(P8I,1093809242)
call UnitRemoveAbility(P8I,1093809456)
call UnitRemoveAbility(P8I,1093809240)
call UnitRemoveAbility(P8I,1093809457)
call UnitRemoveAbility(P8I,1110459720)
call UnitAddAbility(P8I,1093809241)
endif
endif
call P6I(P7I,P8I,1,0.01*4*0.25*GetUnitState(P8I,UNIT_STATE_MAX_LIFE))
if ModuloInteger(GetTriggerEvalCount(t),4)==0 then
call CreateCorpse(GetOwningPlayer(P7I),1969711215,GetUnitX(P8I),GetUnitY(P8I),0)
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function IR5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093809233)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\EntanglingBonesTarget.mdx",P8I,"chest")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function IN5))
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809242,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809456,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809240,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809457,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093809241,false)
set P7I=null
set P8I=null
set t=null
endfunction
function IP5 takes nothing returns boolean
if GetSpellAbilityId()==1093809233 and NNI(GetSpellTargetUnit())==false then
call IR5()
endif
return false
endfunction
function S61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IP5))
set t=null
endfunction
function IQ5 takes unit P7I,integer IU5 returns nothing
call SaveInteger(LY,(GetHandleId(P7I)),(687),(IU5))
call UnitRemoveAbility(P7I,1093809496)
call UnitRemoveAbility(P7I,1093809497)
call UnitRemoveAbility(P7I,1093809498)
call UnitRemoveAbility(P7I,1093809492)
call UnitRemoveAbility(P7I,1093809494)
call UnitRemoveAbility(P7I,1093809493)
call UnitRemoveAbility(P7I,1093809491)
call UnitRemoveAbility(P7I,1093809490)
call UnitRemoveAbility(P7I,1093809495)
call UnitRemoveAbility(P7I,1093809712)
call UnitRemoveAbility(P7I,1093809741)
call UnitRemoveAbility(P7I,1093809740)
call UnitRemoveAbility(P7I,1093809735)
call UnitRemoveAbility(P7I,1093809736)
call UnitRemoveAbility(P7I,1093809734)
call UnitRemoveAbility(P7I,1093809733)
call UnitRemoveAbility(P7I,1093809462)
call UnitRemoveAbility(P7I,1093809737)
call UnitRemoveAbility(P7I,1093809738)
call UnitRemoveAbility(P7I,1093809739)
call UnitRemoveAbility(P7I,1093809732)
if IU5==0 then
call UnitAddAbility(P7I,1093809741)
endif
if IU5==1 then
call IA1(P7I,1093809496)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809496,false)
call UnitAddAbility(P7I,1093809740)
elseif IU5==2 then
call IA1(P7I,1093809497)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809497,false)
call UnitAddAbility(P7I,1093809735)
elseif IU5==3 then
call IA1(P7I,1093809498)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809498,false)
call UnitAddAbility(P7I,1093809736)
elseif IU5==4 then
call IA1(P7I,1093809492)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809492,false)
call UnitAddAbility(P7I,1093809734)
elseif IU5==5 then
call IA1(P7I,1093809494)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809494,false)
call UnitAddAbility(P7I,1093809733)
elseif IU5==6 then
call IA1(P7I,1093809493)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809493,false)
call UnitAddAbility(P7I,1093809462)
elseif IU5==7 then
call IA1(P7I,1093809491)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809491,false)
call UnitAddAbility(P7I,1093809737)
elseif IU5==8 then
call IA1(P7I,1093809490)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809490,false)
call UnitAddAbility(P7I,1093809738)
elseif IU5==9 then
call IA1(P7I,1093809495)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809495,false)
call UnitAddAbility(P7I,1093809739)
elseif IU5==10 then
call IA1(P7I,1093809712)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809712,false)
call UnitAddAbility(P7I,1093809732)
endif
endfunction
function O05 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer IU5=(LoadInteger(LY,(GetHandleId(P7I)),(687)))
local group g
local unit IW5
local integer SUI=GetUnitAbilityLevel(P7I,1093809713)
local integer OI5=2+2*SUI
if IU5<OI5 and IC1(P7I)==false then
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),925,Condition(function D91))
set IW5=FirstOfGroup(g)
call NSI(g)
if IW5!=null then
set IU5=IU5+1
call IQ5(P7I,IU5)
call IJ1((IW5),(P7I),1747993654,"CorpseCollector_FX_Nothing",400,false)
call RemoveUnit(IW5)
endif
endif
set t=null
set P7I=null
set IW5=null
return false
endfunction
function O15 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,4,true)
call TriggerAddCondition(t,Condition(function O05))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function OO5 takes nothing returns nothing
call P6I(ZPI,GetEnumUnit(),1,ZQI)
endfunction
function O25 takes unit P7I,integer SUI,real QJI,real QKI,integer IU5,boolean EB2 returns nothing
local group g=NTI()
set ZPI=P7I
set ZQI=30*IU5
if EB2 then
set ZQI=ZQI+10*IU5
endif
set GK=P7I
call GroupEnumUnitsInRange(g,QJI,QKI,350,Condition(function CA1))
call ForGroup(g,function OO5)
call NSI(g)
endfunction
function O35 takes unit P7I,real IO3,real I23 returns boolean
local real QJI=(LoadReal(LY,(GetHandleId(P7I)),(690)))
local real QKI=(LoadReal(LY,(GetHandleId(P7I)),(691)))
if QJI==0 and QKI==0 then
return false
endif
if QNI(IO3,I23,QJI,QKI)<425 then
return true
endif
return false
endfunction
function O45 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer IU5=(LoadInteger(LY,(S5I),(34)))
local integer SUI=GetUnitAbilityLevel(P7I,1093809713)
local integer i=1
local unit I01
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real x
local real y
local real a=(LoadReal(LY,(S5I),(137)))
local boolean EB2=(LoadBoolean(LY,(S5I),(688)))
local boolean O55=(LoadBoolean(LY,(S5I),(689)))
local real O65=(LoadReal(LY,(S5I),(549)))
local real O75=(LoadReal(LY,(S5I),(567)))
set O65=PTI(O65+10*Cos(a))
set O75=PUI(O75+10*Sin(a))
call SaveReal(LY,(S5I),(549),((O65)*1.0))
call SaveReal(LY,(S5I),(567),((O75)*1.0))
if EB2==false then
set EB2=O35(P7I,O65,O75)
if EB2==true then
call SaveBoolean(LY,(S5I),(688),(EB2))
endif
endif
if EB2 and O55==false then
set O55=true
call SaveBoolean(LY,(S5I),(689),(O55))
loop
exitwhen i>IU5
set I01=(LoadUnitHandle(LY,(S5I),(393+i)))
call SaveEffectHandle(LY,(S5I),(609+i),(AddSpecialEffectTarget("war3mapImported\\CorpseFire.mdx",I01,"origin")))
set i=i+1
endloop
endif
set i=1
if QNI(O65,O75,QJI,QKI)<15 then
loop
exitwhen i>IU5
if EB2 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(609+i))))
endif
call KillUnit((LoadUnitHandle(LY,(S5I),(393+i))))
set i=i+1
endloop
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call O25(P7I,SUI,QJI,QKI,IU5,EB2)
else
loop
exitwhen i>IU5
set I01=(LoadUnitHandle(LY,(S5I),(393+i)))
set x=(LoadReal(LY,(S5I),(549+i)))
set y=(LoadReal(LY,(S5I),(567+i)))
set x=PTI(x+10*Cos(a))
set y=PUI(y+10*Sin(a))
call SaveReal(LY,(S5I),(549+i),((x)*1.0))
call SaveReal(LY,(S5I),(567+i),((y)*1.0))
call SetUnitX(I01,x)
call SetUnitY(I01,y)
set i=i+1
endloop
endif
set t=null
set I01=null
set P7I=null
return false
endfunction
function O85 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real QJI=GetSpellTargetX()
local real QKI=GetSpellTargetY()
local integer SUI=GetUnitAbilityLevel(P7I,1093809713)
local integer IU5=(LoadInteger(LY,(GetHandleId(P7I)),(687)))
local integer i=1
local unit I01
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local real a=UEI(GetUnitX(P7I),GetUnitY(P7I),QJI,QKI)*bj_DEGTORAD
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(IU5))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveReal(LY,(S5I),(549),((x)*1.0))
call SaveReal(LY,(S5I),(567),((y)*1.0))
call SaveBoolean(LY,(S5I),(688),(false))
call SaveBoolean(LY,(S5I),(689),(false))
loop
exitwhen i>IU5
set I01=CreateUnit(GetOwningPlayer(P7I),1747993655,x+GetRandomInt(-200,200),y+GetRandomInt(-200,200),0)
call SaveUnitHandle(LY,(S5I),(393+i),(I01))
call SaveReal(LY,(S5I),(549+i),((GetUnitX(I01))*1.0))
call SaveReal(LY,(S5I),(567+i),((GetUnitY(I01))*1.0))
set i=i+1
endloop
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function O45))
call IQ5(P7I,0)
set P7I=null
set t=null
set I01=null
endfunction
function O95 takes nothing returns boolean
if GetSpellAbilityId()==1093809713 then
call O85()
endif
return false
endfunction
function OA5 takes nothing returns boolean
if GetLearnedSkill()==1093809713 and GetUnitAbilityLevel(GetTriggerUnit(),1093809713)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call O15()
endif
return false
endfunction
function S71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O95))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function OA5))
set t=null
endfunction
function OB5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit X44
if GetTriggerEventId()==EVENT_UNIT_SPELL_FINISH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
call UnitApplyTimedLife(I01,1112820806,0.1)
elseif IC1(I01)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveReal(LY,(S5I),(6),((GetUnitX(I01))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(I01))*1.0))
if x!=GetUnitX(I01)or y!=GetUnitY(I01)then
call UnitRemoveAbility(I01,1093815348)
else
call UnitAddAbility(I01,1093815348)
endif
endif
return false
endfunction
function OC5 takes nothing returns boolean
return GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(ZUI)and GetUnitTypeId(GetFilterUnit())==1966092633
endfunction
function OD5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1966092633,GetUnitX(P7I)+100,GetUnitY(P7I)+100,0)
local group g
local integer SUI=GetUnitAbilityLevel(P7I,1093815350)
local real GW1
local unit OE5
local unit OF5
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_SPELL_FINISH)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function OB5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveReal(LY,(S5I),(6),((GetUnitX(I01))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(I01))*1.0))
call UnitAddAbility(I01,1093815348)
call SetUnitAbilityLevel(I01,1093815349,GetUnitAbilityLevel(P7I,1093815350))
call SaveReal(LY,(GetHandleId(I01)),(34),(((TimerGetElapsed(M)))*1.0))
set ZUI=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function OC5))
if CountUnitsInGroup(g)>SUI+1 then
set OF5=FirstOfGroup(g)
set GW1=(LoadReal(LY,(GetHandleId(OF5)),(34)))
set OE5=OF5
call GroupRemoveUnit(g,OF5)
loop
exitwhen OF5==null
if GW1>(LoadReal(LY,(GetHandleId(OF5)),(34)))then
set GW1=(LoadReal(LY,(GetHandleId(OF5)),(34)))
set OE5=OF5
endif
set OF5=FirstOfGroup(g)
call GroupRemoveUnit(g,OF5)
endloop
call KillUnit(OE5)
endif
call NSI(g)
set g=null
set I01=null
set P7I=null
set t=null
endfunction
function OG5 takes nothing returns boolean
if GetSpellAbilityId()==1093815350 then
call OD5()
endif
return false
endfunction
function S81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OG5))
endfunction
function OH5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer EB2=(LoadInteger(LY,(S5I),(34)))
call SaveInteger(LY,(GetHandleId(P7I)),(783),((LoadInteger(LY,(GetHandleId(P7I)),(783)))-EB2))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set P7I=null
set t=null
return false
endfunction
function OZ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit IFO=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1095328612)
local integer EB2
local integer E01
if IsUnitInRange(P7I,IFO,900+25)and IC1(P7I)==false and IsUnitAlly(P7I,GetOwningPlayer(IFO))==false and GetUnitTypeId(IFO)!=1848657461 and IsUnitIllusion(IFO)==false and V51(GetUnitTypeId(IFO))==false and GetUnitAbilityLevel(IFO,1093678162)==0 then
set E01=(LoadInteger(LY,(GetHandleId(P7I)),(783)))
if IsUnitType(IFO,UNIT_TYPE_HERO)==true then
set EB2=30
else
set EB2=5
endif
set E01=E01+EB2
call SaveInteger(LY,(GetHandleId(P7I)),(783),(E01))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,25+SUI*5,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function OH5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(EB2))
endif
set t=null
set P7I=null
set IFO=null
return false
endfunction
function OV5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer E01=(LoadInteger(LY,(GetHandleId(P7I)),(783)))
local integer O64=(LoadInteger(LY,(S5I),(238)))
if O64!=E01 then
call G21(P7I,E01)
call SaveInteger(LY,(S5I),(238),(E01))
endif
set t=null
set P7I=null
return false
endfunction
function OW5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function OZ5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function OV5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function OX5 takes nothing returns boolean
if GetLearnedSkill()==1095328612 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1095328612)==1 then
call OW5()
endif
return false
endfunction
function S91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function OX5))
set t=null
endfunction
function OY5 takes nothing returns boolean
return GetUnitAbilityLevel(GetTriggerUnit(),1093678667)>0
endfunction
function OJ5 takes nothing returns nothing
if(GetIssuedOrderId()==String2OrderIdBJ("immolation"))then
call IA1(GetTriggerUnit(),1093681498)
endif
if(GetIssuedOrderId()==String2OrderIdBJ("unimmolation"))then
call UnitRemoveAbility(GetTriggerUnit(),1093681498)
endif
endfunction
function LW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call USI(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function OY5))
call TriggerAddAction(t,function OJ5)
endfunction
function OK5 takes nothing returns nothing
local integer S5I=GetHandleId(GetEnumUnit())
if GetTriggerUnit()!=GetEnumUnit()then
call SaveInteger(LY,(S5I),(672),((LoadInteger(LY,(S5I),(672)))+1))
endif
endfunction
function OL5 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1429221446 and IsUnitIllusion(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==true
endfunction
function OM5 takes nothing returns boolean
local group g
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and V51(GetUnitTypeId(GetTriggerUnit()))==false and IsUnitIllusion(GetTriggerUnit())==false then
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),475,Condition(function OL5))
if GetUnitTypeId(GetKillingUnit())==1429221446 then
call GroupAddUnit(g,GetKillingUnit())
endif
call ForGroup(g,function OK5)
call NSI(g)
set g=null
endif
return false
endfunction
function ON5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEvalCount(t)==1 then
call ShowUnit(P7I,false)
elseif GetTriggerEvalCount(t)>80 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function OS5 takes nothing returns boolean
local unit I01
local unit P7I
local unit IFO
local trigger t
local integer S5I
if GetUnitTypeId(GetTriggerUnit())==1429221446 then
set P7I=GetTriggerUnit()
set IFO=GetKillingUnit()
if P7I==IFO then
set I01=CreateUnit(GetOwningPlayer(P7I),1747993154,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call SetUnitTimeScale(I01,0.75)
call UnitApplyTimedLife(I01,1112820806,1.0)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodAbomination.mdl",I01,"origin"))
set I01=null
call SetSoundPosition(PE,GetUnitX(P7I),GetUnitY(P7I),50)
call SetSoundVolumeBJ(PE,100)
call PlaySoundBJ(PE)
call SetSoundPosition(UE,GetUnitX(P7I),GetUnitY(P7I),50)
call SetSoundVolumeBJ(UE,100)
call PlaySoundBJ(UE)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,.1,true)
call TriggerAddCondition(t,Condition(function ON5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
endif
set P7I=null
set IFO=null
endif
return false
endfunction
function OT5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local unit P7I=(LoadUnitHandle(LY,(GetHandleId(t)),(2)))
local integer S5I=GetHandleId(P7I)
local integer OR5=(LoadInteger(LY,(S5I),(672)))
local integer OP5=(LoadInteger(LY,(S5I),(673)))
local integer SUI=GetUnitAbilityLevel(P7I,1093678660)
local integer OQ5=R2I(I2R(OR5)*(0.5+0.5*SUI))
if OQ5>OP5 then
call ModifyHeroStat(0,P7I,0,OQ5-OP5)
call SaveInteger(LY,(S5I),(673),(OQ5))
call UYI("+"+I2S(OQ5-OP5)+" "+GetObjectName(1848659274),3,P7I,0.023,0,255,0,230)
endif
set t=null
set P7I=null
return false
endfunction
function OU5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function OT5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function A05 takes nothing returns boolean
if GetLearnedSkill()==1093678660 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093678660)==1 then
call OU5()
endif
return false
endfunction
function AI5 takes nothing returns boolean
if GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1429221446 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848654162)+" "+I2S((LoadInteger(LY,(GetHandleId(K1[GetPlayerId(GetTriggerPlayer())])),(673))))+" "+GetObjectName(1848654163))
endif
return false
endfunction
function LX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function A05))
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
call TriggerAddCondition(t,Condition(function AI5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function OS5))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function OM5))
set t=null
endfunction
function A15 takes unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local unit X44=CreateUnit(GetOwningPlayer(P7I),1697657409,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093685338)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call UnitApplyTimedLife(I01,1112820806,1)
call UnitApplyTimedLife(X44,1112820806,1)
set I01=null
set X44=null
endfunction
function AO5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer A25=(LoadInteger(LY,(S5I),(376)))
local boolean A35=(LoadBoolean(LY,(S5I),(377)))
local unit P8I
local unit A45=(LoadUnitHandle(LY,(S5I),(2100+A25)))
if A35 then
set P8I=(LoadUnitHandle(LY,(S5I),(17)))
call SetUnitX(P8I,GetUnitX(A45))
call SetUnitY(P8I,GetUnitY(A45))
endif
call RemoveUnit(A45)
set A25=A25-1
call SaveInteger(LY,(S5I),(376),(A25))
if A25==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if IsUnitInRegion(MN,P8I)then
call B41(P8I)
endif
endif
set t=null
set P8I=null
return false
endfunction
function A55 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer A25=(LoadInteger(LY,(S5I),(376)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local trigger CR3=(LoadTriggerHandle(LY,(S5I),(11)))
local integer CN3=GetHandleId(CR3)
local group g
local unit u
local real x
local real y
local real z
if A25<16+2*SUI then
set A25=A25+1
call SaveInteger(LY,(S5I),(376),(A25))
set x=GetUnitX(SFI)+A25*50*Cos(RM2*bj_DEGTORAD)
set y=GetUnitY(SFI)+A25*50*Sin(RM2*bj_DEGTORAD)
call SaveUnitHandle(LY,(CN3),(2100+A25),(CreateUnit(GetOwningPlayer(SFI),1966092360,x,y,RM2)))
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,125,Condition(function D31))
call GroupRemoveUnit(g,SFI)
set u=GroupPickRandomUnit(g)
call NSI(g)
if u!=null then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call TriggerRegisterTimerEvent(CR3,0.03,true)
call TriggerAddCondition(CR3,Condition(function AO5))
call SaveInteger(LY,(CN3),(376),(A25))
call SaveBoolean(LY,(CN3),(377),(true))
call SaveUnitHandle(LY,(CN3),(17),(u))
if IsUnitEnemy(u,GetOwningPlayer(SFI))then
if IsUnitType(u,UNIT_TYPE_HERO)==true then
call FL1("HA_Hits"+I2S(GetPlayerId(GetOwningPlayer(SFI))),V0I[GetPlayerId(GetOwningPlayer(SFI))])
set V0I[GetPlayerId(GetOwningPlayer(SFI))]=V0I[GetPlayerId(GetOwningPlayer(SFI))]+1
call SCI(SFI,4400,1.5)
endif
set VII[GetPlayerId(GetOwningPlayer(SFI))]=VII[GetPlayerId(GetOwningPlayer(SFI))]+1
call FL1("HA_Total"+I2S(GetPlayerId(GetOwningPlayer(SFI))),VII[GetPlayerId(GetOwningPlayer(SFI))])
call A15(SFI,u)
call P6I(SFI,u,3,90*SUI)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",u,"origin"))
endif
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set VII[GetPlayerId(GetOwningPlayer(SFI))]=VII[GetPlayerId(GetOwningPlayer(SFI))]+1
call TriggerRegisterTimerEvent(CR3,0.03,true)
call TriggerAddCondition(CR3,Condition(function AO5))
call SaveInteger(LY,(CN3),(376),(A25))
call SaveBoolean(LY,(CN3),(377),(false))
endif
set t=null
set SFI=null
set CR3=null
set g=null
set u=null
return false
endfunction
function A65 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real RM2=UEI(GetUnitX(SFI),GetUnitY(SFI),GetLocationX(l),GetLocationY(l))
local integer SUI=GetUnitAbilityLevel(SFI,1093678665)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveInteger(LY,(S5I),(376),(0))
call SaveTriggerHandle(LY,(S5I),(11),(CreateTrigger()))
call TriggerRegisterTimerEvent(t,0.0375,true)
call TriggerAddCondition(t,Condition(function A55))
call RemoveLocation(l)
set SFI=null
set l=null
set t=null
endfunction
function A75 takes nothing returns boolean
if GetSpellAbilityId()==1093678665 then
call A65()
endif
return false
endfunction
function A85 takes nothing returns boolean
local integer YT3=V0I[GetPlayerId(GetTriggerPlayer())]
local integer QHI=VII[GetPlayerId(GetTriggerPlayer())]
if GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1429221446 and QHI>0 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848657228)+" "+R2S(I2R(YT3)/I2R(QHI)*100)+"% ("+I2S(YT3)+"/"+I2S(QHI)+")")
endif
return false
endfunction
function LY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function A75))
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
call TriggerAddCondition(t,Condition(function A85))
set t=null
endfunction
function A95 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real PAI=(25+50*SUI)+(1.0)*GetHeroStr(P7I,true)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and GetSpellAbilityId()==1093747544)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
elseif GetTriggerEvalCount(t)>4 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call PJI(P7I)
else
if SUI>0 then
set NPI=NPI+1
if(NPI<4 and IsUnitType(P8I,UNIT_TYPE_HERO)==true)or(NPI<8 and IsUnitType(P8I,UNIT_TYPE_HERO)==false)then
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+PAI)
call P6I(P7I,P8I,1,PAI)
endif
call SaveInteger(LY,(S5I),(34),(NPI))
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AA5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093747544)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function A95))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveInteger(LY,(S5I),(34),(0))
call TriggerEvaluate(t)
set t=null
set P7I=null
set P8I=null
endfunction
function AB5 takes nothing returns boolean
if GetSpellAbilityId()==1093747544 and NNI(GetSpellTargetUnit())==false then
call AA5()
endif
return false
endfunction
function LJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AB5))
set t=null
endfunction
function AC5 takes nothing returns boolean
if(GetUnitTypeId(GetSummonedUnit())==1865429068)then
return true
endif
if(GetUnitTypeId(GetSummonedUnit())==1865429069)then
return true
endif
if(GetUnitTypeId(GetSummonedUnit())==1865429070)then
return true
endif
if(GetUnitTypeId(GetSummonedUnit())==1865429071)then
return true
endif
return false
endfunction
function AD5 takes unit SWI,real PAI returns nothing
local real QHI=GetUnitState(SWI,UNIT_STATE_MAX_LIFE)
local real QZI=GetUnitState(SWI,UNIT_STATE_LIFE)
if PAI>0 then
if PAI>(QHI-QZI)then
if PAI>=QZI then
call SetUnitState(SWI,UNIT_STATE_LIFE,QHI)
call QFI(SWI,PAI-(QHI-QZI))
else
call QFI(SWI,PAI)
endif
else
call SetUnitState(SWI,UNIT_STATE_LIFE,GetUnitState(SWI,UNIT_STATE_LIFE)+PAI)
endif
endif
endfunction
function AE5 takes nothing returns nothing
endfunction
function AF5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if IsUnitType(GetEventDamageSource(),UNIT_TYPE_HERO)==true then
call AD5(I01,GetEventDamage()-1)
else
call AD5(I01,GetEventDamage()-0.25)
endif
else
set g=NTI()
set GK=I01
call GroupEnumUnitsInRange(g,GetUnitX(I01),GetUnitY(I01),400+300*4+25,Condition(function CA1))
call ForGroup(g,function AE5)
call NSI(g)
set g=null
endif
set t=null
set I01=null
return false
endfunction
function AG5 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=GetSummonedUnit()
call TriggerRegisterDeathEvent(t,I01)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function AF5))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(GetSummoningUnit(),1093679428)))
call SetUnitAbilityLevelSwapped(1093679188,GetSummonedUnit(),GetUnitAbilityLevelSwapped(1093679428,GetSummoningUnit()))
call SetUnitAbilityLevelSwapped(1093681990,GetSummonedUnit(),GetUnitAbilityLevelSwapped(1093679428,GetSummoningUnit()))
call IssueImmediateOrder(GetSummonedUnit(),"manaflareon")
endfunction
function NW takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function AC5))
call TriggerAddAction(t,function AG5)
endfunction
function AH5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call DisableTrigger(t)
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==true then
call QGI(P8I,GetEventDamage()*0.107)
else
call P6I(GetEventDamageSource(),P8I,1,GetEventDamage()*0.071/1.4)
endif
call EnableTrigger(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AZ5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call SetUnitVertexColor(P8I,255,255,255,255)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P8I=null
return false
endfunction
function AV5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093817412)
local trigger t
local integer S5I
if IsUnitAlly(P8I,GetOwningPlayer(P8I))==true then
call UnitAddAbility(I01,1093818955)
call SetUnitAbilityLevel(I01,1093818955,SUI)
else
call UnitAddAbility(I01,1093681989)
call SetUnitAbilityLevel(I01,1093681989,SUI)
endif
call IssueTargetOrder(I01,"banish",P8I)
if GetUnitTypeId(P8I)==1848657482 or GetUnitTypeId(P8I)==1848657481 or GetUnitTypeId(P8I)==1848657462 or GetUnitTypeId(P8I)==1848657480 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1.5+0.5*SUI,false)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function AZ5))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SetUnitVertexColor(P8I,50,255,50,150)
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffect("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetUnitX(P8I),GetUnitY(P8I))))
set t=null
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1.5+0.5*SUI,false)
call TriggerAddCondition(t,Condition(function AH5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set P7I=null
set P8I=null
set I01=null
endfunction
function AW5 takes nothing returns boolean
if GetSpellAbilityId()==1093817412 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
if(IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_STRUCTURE)==false and RKI(GetSpellTargetUnit())==false)or GetUnitTypeId(GetSpellTargetUnit())==1848657482 or GetUnitTypeId(GetSpellTargetUnit())==1848657481 or GetUnitTypeId(GetSpellTargetUnit())==1848657462 or GetUnitTypeId(GetSpellTargetUnit())==1848657480 then
else
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848658745))
endif
else
call AV5()
endif
endif
return false
endfunction
function LK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AW5))
set t=null
endfunction
function AX5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093681987)
local real ZO3=80+40*SUI
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093677658)
set ZO3=120+60*SUI
endif
set ZO3=ZO3*0.25
if GetUnitAbilityLevel(P7I,1113875308)==0 or(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and(GetSpellAbilityId()==1093681987 or GetSpellAbilityId()==1093677658))then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_SPELL_ENDCAST then
if GetUnitState(P7I,UNIT_STATE_LIFE)+ZO3>=GetUnitState(P7I,UNIT_STATE_MAX_LIFE)then
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+ZO3+GetUnitState(P7I,UNIT_STATE_LIFE)-GetUnitState(P7I,UNIT_STATE_MAX_LIFE))
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function AY5 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function AX5))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set P7I=null
set P8I=null
set t=null
endfunction
function AJ5 takes nothing returns boolean
if(GetSpellAbilityId()==1093681987 or GetSpellAbilityId()==1093677658)and IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)then
call AY5()
endif
return false
endfunction
function LL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AJ5))
set t=null
endfunction
function AK5 takes unit P7I,unit P8I returns nothing
local real AL5=10+20*VOI
local real AM5=80+50*VOI
local real DH1=(AL5+AM5*V3I/700)*0.5
call P6I(P7I,P8I,1,DH1)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\ChimaeraLightningMissile\\ChimaeraLightningMissile.mdl",P8I,"chest"))
endfunction
function AN5 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local group JAO=V1I
local unit P7I=V2I
if IsUnitInGroup(P8I,JAO)==false then
call GroupAddUnit(JAO,P8I)
call AK5(P7I,P8I)
endif
set P8I=null
set JAO=null
set P7I=null
endfunction
function AS5 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local effect fx
local integer NPI=GetTriggerEvalCount(t)
local real x
local real x0=GetUnitX(P7I)
local real y
local real y0=GetUnitY(P7I)
local integer i
local integer d
local group g=NTI()
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
set V1I=JAO
set V2I=P7I
set VOI=GetUnitAbilityLevel(P7I,1093748023)
if NPI>20 then
set d=21*36+(20-NPI)*36
set V3I=d
set i=0
loop
exitwhen i>36
set x=x0+d*Cos(360*i/36*bj_DEGTORAD)
set y=y0+d*Sin(360*i/36*bj_DEGTORAD)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,100,Condition(function CH1))
call ForGroup(g,function AN5)
set i=i+1
endloop
else
set d=NPI*36
set V3I=d
set i=0
loop
exitwhen i>36
set x=x0+d*Cos(360*i/36*bj_DEGTORAD)
set y=y0+d*Sin(360*i/36*bj_DEGTORAD)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,100,Condition(function CH1))
call ForGroup(g,function AN5)
set i=i+1
endloop
endif
call NSI(g)
if NPI==40 then
call KillUnit(I01)
call NSI(JAO)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif NPI==20 then
call GroupClear(JAO)
set fx=null
endif
set t=null
set I01=null
set JAO=null
set P7I=null
set g=null
return false
endfunction