function R02 takes nothing returns boolean
if J2 then
call TVI()
call QRI(bj_FORCE_ALL_PLAYERS,20.00,C0[GetPlayerId(WO)]+(D80[GetPlayerId((WO))])+"|r"+" "+GetObjectName(1848656717))
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
set AL=true
call VU2()
call HJ2()
call P7O()
call UHO()
call UR1()
endif
call TU2()
call S0I(GetTriggeringTrigger())
return false
endfunction
function RI2 takes nothing returns boolean
set B0=true
call S0I(GetTriggeringTrigger())
return false
endfunction
function RO2 takes nothing returns nothing
set O0=true
endfunction
function R32 takes nothing returns nothing
set UO=true
endfunction
function R52 takes nothing returns nothing
set H3=true
endfunction
function R72 takes nothing returns boolean
if IsUnitIllusion(GetFilterUnit())==true and GetOwningPlayer(GetFilterUnit())!=GetOwningPlayer(GK)then
call SetUnitOwner(GetFilterUnit(),GetOwningPlayer(GK),true)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",GetFilterUnit(),"origin"))
endif
return false
endfunction
function R82 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local item BA1=(LoadItemHandle(LY,(S5I),(96)))
local group g
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
if GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==BA1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM then
if IC1(SFI)==false then
set g=NTI()
set GK=SFI
call GroupEnumUnitsInRange(g,x,y,1000,Condition(function R72))
call NSI(g)
set g=null
endif
endif
set t=null
set SFI=null
set BA1=null
return false
endfunction
function R92 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function R82))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveItemHandle(LY,(S5I),(96),(GetManipulatedItem()))
set t=null
set SFI=null
endfunction
function GenuineMKB_Main takes nothing returns boolean
if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and F01(GetManipulatedItem())==XZ0 then
call R92()
endif
return false
endfunction
function RA2 takes string s returns nothing
call QRI(bj_FORCE_ALL_PLAYERS,20.00,"|c00CC0000"+GetObjectName(1848659525)+": |r|c006699CC"+s+"|r")
call StartSound(XF)
endfunction
function RB2 takes nothing returns nothing
call RA2(GetObjectName((1848659527)))
call CreateItem(FT0[XZ0],GetUnitX(A8I),GetUnitY(A8I))
call ReviveHero(A8I,GetUnitX(A8I),GetUnitY(A8I),false)
call RemoveUnit(A8I)
endfunction
function RC2 takes nothing returns nothing
call RA2(GetObjectName((1848659528)))
call SetItemVisible(A4I,true)
call SetItemPosition(A4I,GetUnitX(A8I),GetUnitY(A8I))
call RemoveUnit(A8I)
endfunction
function RD2 takes nothing returns boolean
local item i=ES1(GetFilterUnit(),FR0[W60])
if i!=null then
call RemoveItem(i)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetFilterUnit(),"chest"))
endif
set i=null
return false
endfunction
function RE2 takes nothing returns boolean
if IsUnitIllusion(GetFilterUnit())==true and GetOwningPlayer(GetFilterUnit())!=GetOwningPlayer(A8I)then
call SetUnitOwner(GetFilterUnit(),GetOwningPlayer(A8I),true)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",GetFilterUnit(),"origin"))
endif
return false
endfunction
function RF2 takes nothing returns nothing
local unit P7I=GetEnumUnit()
local integer x=0
local item i
if IsUnitIllusion(P7I)==true then
return
endif
loop
exitwhen x>5
set i=UnitItemInSlot(P7I,x)
call UnitRemoveItem(P7I,i)
set x=x+1
endloop
set P7I=null
endfunction
function RG2 takes nothing returns nothing
local unit P7I=GetEnumUnit()
local integer x=0
local unit I01
if IsUnitIllusion(P7I)==true then
return
endif
set I01=CreateUnit(GetOwningPlayer(A8I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,1093817945)
call IssueTargetOrder(I01,"ensnare",P7I)
set P7I=null
set I01=null
endfunction
function RH2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x=GetUnitX(A8I)
local real y=GetUnitY(A8I)
local group g
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
call RB2()
return false
elseif GetTriggerEvalCount(t)>12000 or(AOI and GetTriggerEvalCount(t)>600)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
if AOI then
call RB2()
else
call RC2()
endif
return false
endif
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,1000,Condition(function RE2))
call NSI(g)
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,1000,Condition(function RD2))
call NSI(g)
if ModuloInteger(GetTriggerEvalCount(t),200)==0 then
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,1000,Condition(function D51))
call ForGroup(g,function RF2)
call NSI(g)
endif
if ModuloInteger(GetTriggerEvalCount(t),300)==0 then
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,1000,Condition(function D51))
call ForGroup(g,function RG2)
call NSI(g)
endif
set g=null
set t=null
return false
endfunction
function RZ2 takes nothing returns boolean
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitInvulnerable(A8I,false)
call UnitRemoveAbility(A8I,1096971630)
call RA2(GetObjectName((1848659524)))
set A3I=true
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterDeathEvent(t,A8I)
call TriggerAddCondition(t,Condition(function RH2))
set t=null
return false
endfunction
function RV2 takes nothing returns nothing
local trigger t=CreateTrigger()
call RA2(GetObjectName((1848659512)))
call SetUnitInvulnerable(A8I,true)
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function RZ2))
set t=null
endfunction
function RW2 takes nothing returns nothing
call RA2(GetObjectName((1848659526)))
if AOI then
call RV2()
else
call RemoveUnit(A8I)
endif
endfunction
function RX2 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(A8I),GetUnitY(A8I),1000,Condition(function D51))
set ACI=GroupPickRandomUnit(g)
call NSI(g)
set g=null
endfunction
function RY2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x0
local real y0
local real x1
local real y1
local real x2
local real y2
local real x3
local real y3
local integer r=GetRandomInt(0,2)
if GetTriggerEvalCount(t)==1 then
call RX2()
if ACI==null then
call RemoveUnit(A8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
return false
endif
call RA2(GetObjectName((1848659521)))
call SaveEffectHandle(LY,(GetHandleId(t)),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl",ACI,"overhead")))
if r==0 then
set x0=AFI
set y0=AGI
set x1=AHI
set y1=AZI
set x2=AVI
set y2=AWI
set x3=AXI
set y3=AYI
elseif r==1 then
set x0=AVI
set y0=AWI
set x1=AFI
set y1=AGI
set x2=AHI
set y2=AZI
set x3=AXI
set y3=AYI
elseif r==2 then
set x0=AHI
set y0=AZI
set x1=AXI
set y1=AYI
set x2=AVI
set y2=AWI
set x3=AFI
set y3=AGI
endif
call ClearSelection()
call SetUnitPosition(A8I,x0,y0)
set A9I=CreateUnit(GetOwningPlayer(A8I),1211123027,x1,y1,GetUnitFacing(A8I))
set AAI=CreateUnit(GetOwningPlayer(A8I),1211123027,x2,y2,GetUnitFacing(A8I))
set ABI=CreateUnit(GetOwningPlayer(A8I),1211123027,x3,y3,GetUnitFacing(A8I))
call IssueImmediateOrder(ACI,"holdposition")
call SetUnitVertexColor(A9I,220,255,255,255)
call SetUnitVertexColor(AAI,220,255,255,255)
call SetUnitVertexColor(ABI,220,255,255,255)
call TriggerRegisterUnitEvent(t,A8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,A9I,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,AAI,EVENT_UNIT_DAMAGED)
call TriggerRegisterUnitEvent(t,ABI,EVENT_UNIT_DAMAGED)
call PauseUnit(A8I,true)
call SetUnitInvulnerable(A8I,false)
call PauseUnit(A9I,true)
call PauseUnit(AAI,true)
call PauseUnit(ABI,true)
call SetHeroLevel(A9I,25,false)
call SetHeroLevel(AAI,25,false)
call SetHeroLevel(ABI,25,false)
if AOI then
call SetUnitVertexColor(A8I,0,255,255,255)
endif
elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetEventDamage()>0 and GetEventDamageSource()==ACI then
call PauseUnit(A8I,false)
call PauseUnit(A9I,false)
call PauseUnit(AAI,false)
call PauseUnit(ABI,false)
call RemoveUnit(A9I)
call RemoveUnit(AAI)
call RemoveUnit(ABI)
if GetTriggerUnit()==A8I then
call RV2()
else
call RW2()
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
return false
endfunction
function RJ2 takes nothing returns nothing
local trigger t=CreateTrigger()
call RA2(GetObjectName((1848659522)))
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function RY2))
set t=null
endfunction
function RK2 takes nothing returns nothing
call RA2(GetObjectName((1848659523)))
if AOI then
call RJ2()
else
call RemoveUnit(A8I)
endif
endfunction
function RL2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local real x0=2897
local real y0=-2814
local real x1=GetUnitX(A8I)
local real y1=GetUnitY(A8I)
local real RM2
local real RN2
local real RS2
local real RT2
local real IV1
local real IW1
local location l
local real d=QNI(ADI,AEI,2897,-2814)
local real r=d/200
local real RR2=0.1
if QNI(GetUnitX(ACI),GetUnitY(ACI),2897,-2814)<100 then
call RJ2()
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call SetUnitAnimationByIndex(A8I,0)
call SetUnitFlyHeight(A8I,GetUnitDefaultFlyHeight(A8I),0)
call SetUnitPosition(A8I,2897,-2814)
call PauseUnit(A8I,false)
call SetUnitPathing(A8I,true)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endif
set RM2=UEI(x1,y1,x0,y0)
set RT2=(NPI-100)*(NPI-100)*RR2
set IV1=x1+r*Cos(RM2*bj_DEGTORAD)
set IW1=y1+r*Sin(RM2*bj_DEGTORAD)
if NPI<201 then
call SetUnitFlyHeight(A8I,10000*RR2-RT2,0)
call SetUnitPosition(A8I,IV1,IW1)
else
call SetUnitFlyHeight(A8I,GetUnitDefaultFlyHeight(A8I),0)
call PauseUnit(A8I,false)
call SetUnitPathing(A8I,true)
set l=Location(IV1,IW1)
call TerrainDeformationRippleBJ(0.2,true,l,1.00,300.00,96.00,1,64.00)
call RemoveLocation(l)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl",GetUnitX(A8I),GetUnitY(A8I)))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call SetUnitAnimationByIndex(A8I,0)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call RK2()
endif
set t=null
return false
endfunction
function RP2 takes effect RQ2,effect RU2 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01
call SetUnitPosition(A8I,ADI,AEI)
set I01=CreateUnit(GetOwningPlayer(A8I),1697656901,GetUnitX(A8I),GetUnitY(A8I),0)
call SetUnitPosition(ACI,GetUnitX(A8I)+50,GetUnitY(A8I)+50)
call PauseUnit(A8I,false)
call PauseUnit(ACI,false)
call IA1(A8I,1097691750)
call UnitRemoveAbility(A8I,1097691750)
call IA1(I01,1093817945)
call IssueTargetOrder(I01,"ensnare",ACI)
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function RL2))
call SaveEffectHandle(LY,(S5I),(175),(RQ2))
call SaveEffectHandle(LY,(S5I),(176),(RU2))
set t=null
set I01=null
endfunction
function P02 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(A8I),GetUnitY(A8I),1800,Condition(function D51))
set ACI=GroupPickRandomUnit(g)
call NSI(g)
set g=null
endfunction
function PI2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
if GetTriggerEvalCount(t)==1 then
call P02()
if ACI==null then
call RemoveUnit(A8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
return false
endif
call RA2(GetObjectName((1848659513)))
call TriggerRegisterTimerEvent(t,1,true)
call SaveEffectHandle(LY,(GetHandleId(t)),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl",ACI,"overhead")))
call SaveEffectHandle(LY,(GetHandleId(t)),(176),(AddSpecialEffect("Objects\\InventoryItems\\BattleStandard\\BattleStandard.mdl",2897,-2814)))
call PingMinimap(2897,-2814,5)
call SetUnitPosition(A8I,ADI,AEI)
call SetUnitPosition(ACI,GetUnitX(A8I)+50,GetUnitY(A8I)+50)
call PauseUnit(A8I,true)
call SetUnitAnimationByIndex(A8I,7)
call SetUnitPathing(A8I,false)
call PauseUnit(ACI,true)
else
call RA2(I2S(6-GetTriggerEvalCount(t)))
if GetTriggerEvalCount(t)==6 then
call RP2((LoadEffectHandle(LY,(S5I),(175))),(LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
return false
endfunction
function P12 takes nothing returns boolean
if A3I==false then
call SetUnitState(A8I,UNIT_STATE_LIFE,GetUnitState(A8I,UNIT_STATE_MAX_LIFE))
call SetUnitState(A8I,UNIT_STATE_MANA,GetUnitState(A8I,UNIT_STATE_MAX_MANA))
endif
return false
endfunction
function PO2 takes nothing returns nothing
local trigger t
if A2I==false or AOI then
set t=CreateTrigger()
set A8I=CreateUnit(DO,1211123027,ADI,AEI,0)
call IA1(A8I,1096971630)
call PauseUnit(A8I,true)
call SetUnitInvulnerable(A8I,true)
call SetHeroLevel(A8I,25,false)
call PingMinimap(ADI,AEI,4)
call SetCameraPosition(GetUnitX(A8I),GetUnitY(A8I))
call RA2(GetObjectName((1848659511)))
call TriggerRegisterTimerEvent(t,20,false)
call TriggerAddCondition(t,Condition(function PI2))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,A8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerAddCondition(t,Condition(function P12))
endif
set t=null
endfunction
function P22 takes nothing returns nothing
endfunction
function P32 takes nothing returns nothing
local real x=GetSpellTargetX()
local real y=GetSpellTargetY()
local location l1=Location(x-450,y-450)
local location l2=Location(x+450,y+450)
local rect r=RectFromLoc(l1,l2)
call RemoveLocation(l1)
call RemoveLocation(l2)
set A6I=false
set A7I=false
call EnumItemsInRect(r,null,function P22)
if A6I and A7I then
call SetItemVisible(A4I,false)
call RemoveItem(A5I)
call PO2()
endif
set l1=null
set l2=null
set r=null
endfunction
function Torrent_Damage takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function P52 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real RT2
local unit I01
set RT2=0.6*(NPI-25)*(NPI-25)
if NPI<51 and GetTriggerEventId()!=EVENT_UNIT_DEATH then
if ModuloInteger(NPI,5)==0 then
call P6I(P7I,P8I,1,3+3*SUI)
endif
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,500-RT2,0)
endif
else
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093742924)
call SetUnitAbilityLevel(I01,1093742924,SUI)
call IssueTargetOrder(I01,"slow",P8I)
if RNI(P8I)==false then
call SetUnitFlyHeight(P8I,GetUnitDefaultFlyHeight(P8I),0)
endif
if Q2==false then
call PauseUnit(P8I,false)
endif
call SetUnitPathing(P8I,true)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
set I01=null
return false
endfunction
function P62 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GK
local unit P8I=GetEnumUnit()
local integer SUI=UJ
call PauseUnit(P8I,true)
call SetUnitPathing(P8I,false)
if RNI(P8I)==false then
call IA1(P8I,1097691750)
call UnitRemoveAbility(P8I,1097691750)
endif
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function P52))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveInteger(LY,(S5I),(5),(SUI))
call P6I(P7I,P8I,1,30+30*SUI)
set t=null
set P7I=null
set P8I=null
endfunction
function P72 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g=NTI()
local ubersplat AR1=CreateUbersplat(x,y,"THNN",255,255,255,255,false,false)
call SetUbersplatRenderAlways(AR1,true)
call I41(GetOwningPlayer(SFI),4,x,y,400)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(178))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(179))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(180))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",x,y))
call DestroyEffect(AddSpecialEffect("effects\\TidalErruption.mdx",x,y))
set GK=SFI
set UJ=SUI
call GroupEnumUnitsInRange(g,x,y,225+25,Condition(function CE1))
call ForGroup(g,function P62)
call NSI(g)
set t=null
set SFI=null
return false
endfunction
function P82 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(SFI,1093743414)
local string s=""
local real a
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(SFI))==true or P0I(GetLocalPlayer())then
set s="Objects\\Spawnmodels\\Other\\IllidanFootprint\\IllidanWaterSpawnFootPrint.mdl"
endif
call RemoveLocation(l)
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
set a=0
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffect(s,x+40*Cos(a/6*360*bj_DEGTORAD),y+40*Sin(a/6*360*bj_DEGTORAD))))
set a=1
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffect(s,x+40*Cos(a/6*360*bj_DEGTORAD),y+40*Sin(a/6*360*bj_DEGTORAD))))
set a=2
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffect(s,x+40*Cos(a/6*360*bj_DEGTORAD),y+40*Sin(a/6*360*bj_DEGTORAD))))
set a=3
call SaveEffectHandle(LY,(S5I),(178),(AddSpecialEffect(s,x+40*Cos(a/6*360*bj_DEGTORAD),y+40*Sin(a/6*360*bj_DEGTORAD))))
set a=4
call SaveEffectHandle(LY,(S5I),(179),(AddSpecialEffect(s,x+40*Cos(a/6*360*bj_DEGTORAD),y+40*Sin(a/6*360*bj_DEGTORAD))))
set a=5
call SaveEffectHandle(LY,(S5I),(180),(AddSpecialEffect(s,x+40*Cos(a/6*360*bj_DEGTORAD),y+40*Sin(a/6*360*bj_DEGTORAD))))
call TriggerRegisterTimerEvent(t,1.6,false)
call TriggerAddCondition(t,Condition(function P72))
set SFI=null
set t=null
set l=null
endfunction
function P92 takes nothing returns boolean
if GetSpellAbilityId()==1093743414 then
call P82()
endif
return false
endfunction
function TG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function P92))
set t=null
endfunction
function GY2 takes nothing returns nothing
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093743671,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093743672,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093742933,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093743673,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093743671,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093743672,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093742933,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093743673,false)
endfunction
function PA2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and(GetEventDamage()>40 or IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==true or GetUnitTypeId(P8I)==1970107511 or GetUnitTypeId(P8I)==1700946284)and(LoadBoolean(LY,(GetHandleId(P7I)),(183)))==true then
call SaveBoolean(LY,(GetHandleId(P7I)),(183),(false))
call SaveReal(LY,(GetHandleId(P7I)),(184),(((TimerGetElapsed(M)))*1.0))
call UnitRemoveAbility(P7I,1093742927)
call UnitRemoveAbility(P7I,1093742930)
call UnitRemoveAbility(P7I,1093743671)
call UnitRemoveAbility(P7I,1093743672)
call UnitRemoveAbility(P7I,1093742933)
call UnitRemoveAbility(P7I,1093743673)
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
function PB2 takes nothing returns boolean
local trigger t
local integer S5I
local unit P8I
local unit P7I
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(183),(false))
call SaveReal(LY,(GetHandleId(GetTriggerUnit())),(184),(((TimerGetElapsed(M)))*1.0))
call UnitRemoveAbility(GetTriggerUnit(),1093742927)
call UnitRemoveAbility(GetTriggerUnit(),1093742930)
call UnitRemoveAbility(GetTriggerUnit(),1093743671)
call UnitRemoveAbility(GetTriggerUnit(),1093743672)
call UnitRemoveAbility(GetTriggerUnit(),1093742933)
call UnitRemoveAbility(GetTriggerUnit(),1093743673)
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
call TriggerAddCondition(t,Condition(function PA2))
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
function PC2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real QZI=(TimerGetElapsed(M))
local integer SUI=GetUnitAbilityLevel(SFI,1093743444)
local real PD2=(LoadReal(LY,(GetHandleId(SFI)),(184)))
local boolean PE2=(LoadBoolean(LY,(GetHandleId(SFI)),(183)))
if QZI-PD2>16-SUI*3 and PE2==false and GetUnitTypeId(SFI)==1211119187 and IC1(SFI)==false then
call SaveBoolean(LY,(GetHandleId(SFI)),(183),(true))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function PB2))
call SaveUnitHandle(LY,(S5I),(182),(SFI))
call IA1(SFI,1093742927)
call SetUnitAbilityLevel(SFI,1093742927,SUI)
call IA1(SFI,1093742930)
if SUI==1 then
call IA1(SFI,1093743671)
elseif SUI==2 then
call IA1(SFI,1093743672)
elseif SUI==3 then
call IA1(SFI,1093742933)
elseif SUI==4 then
call IA1(SFI,1093743673)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093743671,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093743672,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093742933,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093743673,false)
elseif PE2==false then
call UnitRemoveAbility(SFI,1093742927)
call UnitRemoveAbility(SFI,1093742930)
call UnitRemoveAbility(SFI,1093743671)
call UnitRemoveAbility(SFI,1093743672)
call UnitRemoveAbility(SFI,1093742933)
call UnitRemoveAbility(SFI,1093743673)
endif
set t=null
set SFI=null
return false
endfunction
function PF2 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function PC2))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(181),(0))
set SFI=null
set t=null
endfunction
function PG2 takes nothing returns boolean
if GetLearnedSkill()==1093743444 and GetUnitAbilityLevel(GetTriggerUnit(),1093743444)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call PF2()
endif
return false
endfunction
function TH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function PG2))
set t=null
endfunction
function PH2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local image i=(LoadImageHandle(LY,(S5I),(185)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093743428)then
if GetTriggerEventId()!=EVENT_UNIT_DEATH and RKI(P8I)==false then
if IsUnitHidden(P8I)then
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
else
call SetUnitPosition(P8I,x,y)
endif
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093743428,false)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093742926 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093742926,true)
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call ShowImage(i,false)
call DestroyImage(i)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set i=null
set P7I=null
return false
endfunction
function PZ2 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local real UJI=90
local image i=CreateImage("Fonts\\X.blp",UJI,UJI,0,x-UJI/2,y-UJI/2,0,0,0,0,2)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local string fx=""
local integer SUI=GetUnitAbilityLevel(P7I,1093742926)
call SCI(P8I,4401,5)
call IA1(P7I,1093743428)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093743428,true)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093742926,false)
call SetImageRenderAlways(i,true)
if IsUnitAlly(P7I,GetOwningPlayer(P8I))==false or IsUnitAlly(P8I,GetLocalPlayer())==true or P0I(GetLocalPlayer())then
set fx="effects\\BlackTide.mdx"
call ShowImage(i,true)
else
call ShowImage(i,false)
endif
call SetImageColor(i,255,0,0,255)
call UnitApplyTimedLife(CreateUnit(GetOwningPlayer(P7I),1865429338,x,y,0),1112820806,5)
if IsUnitAlly(P8I,GetOwningPlayer(P7I))==true then
call TriggerRegisterTimerEvent(t,8,false)
else
call TriggerRegisterTimerEvent(t,4,false)
endif
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PH2))
call SaveImageHandle(LY,(S5I),(185),(i))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(fx,P8I,"overhead")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set P8I=null
set i=null
set t=null
endfunction
function PV2 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093742926 and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))or NNI(GetSpellTargetUnit())==false)then
call PZ2()
endif
else
if GetLearnedSkill()==1093742926 then
call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),1093743428,false)
call IA1(GetTriggerUnit(),1093743428)
endif
endif
return false
endfunction
function PW2 takes nothing returns boolean
if GetSpellAbilityId()==1093742926 then
if(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
endif
return false
endfunction
function TZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function PV2))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function PW2))
set t=null
endfunction
function PX2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer O91=1
local player p
local real d
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer PY2=(LoadInteger(LY,(S5I),(136)))
local integer DC1=(LoadInteger(LY,(S5I),(188)))
if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(t)>DC1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
loop
exitwhen O91>PY2
set p=(LoadPlayerHandle(LY,(S5I),(1300+O91)))
set d=(LoadReal(LY,(S5I),(1200+O91)))
if p==null then
set O91=PY2
else
call SetUnitState(P8I,UNIT_STATE_LIFE,QDI(1,GetUnitState(P8I,UNIT_STATE_LIFE)-d/DC1))
endif
set O91=O91+1
endloop
endif
set t=null
set p=null
set P8I=null
return false
endfunction
function PJ2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local trigger PK2=(LoadTriggerHandle(LY,(S5I),(135)))
local integer O91=GetTriggerEvalCount(t)
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call TriggerRegisterTimerEvent(PK2,1,true)
call TriggerAddCondition(PK2,Condition(function PX2))
call UnitRemoveAbility(P8I,1110456661)
else
set S5I=GetHandleId(PK2)
call SetUnitState(P8I,UNIT_STATE_LIFE,GetUnitState(P8I,UNIT_STATE_LIFE)+0.5*GetEventDamage())
call SavePlayerHandle(LY,(S5I),(1300+O91),(GetOwningPlayer(GetEventDamageSource())))
call SaveReal(LY,(S5I),(1200+O91),((0.5*GetEventDamage())*1.0))
call SaveInteger(LY,(S5I),(136),(O91))
endif
set t=null
set P8I=null
set p=null
set PK2=null
return false
endfunction
function PL2 takes nothing returns nothing
local unit P7I=AKI
local unit P8I=GetEnumUnit()
local integer SUI=ALI
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer DC1=10
local trigger PK2=CreateTrigger()
call AH1(P8I,1093743158,1,DC1)
call UnitMakeAbilityPermanent(P8I,true,1093743158)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093743158,false)
call TriggerRegisterTimerEvent(t,DC1+0.01,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function PJ2))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(P7I)))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveTriggerHandle(LY,(S5I),(135),(PK2))
call SaveUnitHandle(LY,(GetHandleId(PK2)),(17),(P8I))
call SaveInteger(LY,(GetHandleId(PK2)),(188),(DC1))
set P7I=null
set P8I=null
set t=null
set PK2=null
endfunction
function PM2 takes nothing returns boolean
if(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and IsUnitInGroup(GetFilterUnit(),AJI)==false then
call GroupAddUnit(AJI,GetFilterUnit())
return true
endif
return false
endfunction
function PN2 takes nothing returns nothing
local unit P7I=AKI
local unit P8I=GetEnumUnit()
local integer SUI=ALI
call DD1(P7I,P8I,1.4)
call P6I(P7I,P8I,1,300+100*SUI)
set P7I=null
set P8I=null
endfunction
function PS2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local unit PT2
local real RM2=(LoadReal(LY,(S5I),(13)))
local real QXI=GetUnitX(IG1)
local real QYI=GetUnitY(IG1)
local real QJI=(LoadReal(LY,(S5I),(66)))
local real QKI=(LoadReal(LY,(S5I),(67)))
local integer NPI=GetTriggerEvalCount(t)
local real IV1=PTI(QJI+13.33*NPI*Cos(RM2))
local real IW1=PUI(QKI+13.33*NPI*Sin(RM2))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local group g
if NPI<19 then
call SetUnitVertexColor(IG1,255,255,255,5+NPI*10)
set PT2=(LoadUnitHandle(LY,(S5I),(186)))
call SetUnitVertexColor(PT2,255,255,255,5+NPI*10)
elseif NPI<125 then
call SetUnitVertexColor(IG1,255,255,255,190)
elseif NPI<150 then
endif
set g=NTI()
set AJI=PR2
set GK=IG1
set AKI=IG1
set ALI=SUI
call GroupEnumUnitsInRange(g,GetUnitX(IG1),GetUnitY(IG1),425,Condition(function PM2))
call ForGroup(g,function PL2)
call NSI(g)
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
if NPI==140 then
set PT2=(LoadUnitHandle(LY,(S5I),(186)))
call KillUnit(PT2)
elseif NPI<140 then
set PT2=(LoadUnitHandle(LY,(S5I),(186)))
call SetUnitX(PT2,IV1)
call SetUnitY(PT2,IW1)
endif
if NPI==150 then
set g=NTI()
set GK=IG1
call GroupEnumUnitsInRange(g,IV1,IW1,425+25,Condition(function CA1))
call ForGroup(g,function PN2)
call NSI(g)
call KillUnit(IG1)
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set IG1=null
set PT2=null
set PR2=null
set g=null
return false
endfunction
function PP2 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local real QXI=GetUnitX(SFI)
local real QYI=GetUnitY(SFI)
local location l=GetSpellTargetLoc()
local real x0=GetLocationX(l)
local real y0=GetLocationY(l)
local real RM2
local real x1
local real y1
local real x2
local real y2
local trigger t
local integer S5I
local integer SUI
local unit IG1
local unit PT2
local string s=""
local integer PQ2=1747990101
if GetRandomInt(0,5)==0 then
set PQ2=1747993674
endif
if IsPlayerAlly(GetOwningPlayer(SFI),GetLocalPlayer())or P0I(GetLocalPlayer())then
set s="war3mapImported\\Whirlpool.mdx"
endif
if x0==GetUnitX(SFI)and y0==GetUnitY(SFI)then
set x0=x0+50*Cos(GetUnitFacing(SFI)*bj_DEGTORAD)
set y0=y0+50*Sin(GetUnitFacing(SFI)*bj_DEGTORAD)
endif
set RM2=Atan2(y0-QYI,x0-QXI)
set x1=QXI-1000*Cos(RM2)
set y1=QYI-1000*Sin(RM2)
set x2=QXI+1000*Cos(RM2)
set y2=QYI+1000*Sin(RM2)
set t=CreateTrigger()
set S5I=GetHandleId(t)
set SUI=GetUnitAbilityLevel(SFI,1093742923)
set IG1=CreateUnit(GetOwningPlayer(SFI),PQ2,x1,y1,Atan2(y0-QYI,x0-QXI)*bj_RADTODEG)
set PT2=CreateUnit(GetOwningPlayer(SFI),1747990102,x1,y1,Atan2(y0-QYI,x0-QXI)*bj_RADTODEG)
call SetUnitVertexColor(IG1,255,255,255,0)
call SetUnitPathing(IG1,false)
call RemoveLocation(l)
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveUnitHandle(LY,(S5I),(186),(PT2))
call SaveReal(LY,(S5I),(66),((x1)*1.0))
call SaveReal(LY,(S5I),(67),((y1)*1.0))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call DestroyEffect(AddSpecialEffect(s,PTI(x2),PUI(y2)))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function PS2))
set SFI=null
set t=null
set IG1=null
set PT2=null
set l=null
endfunction
function PU2 takes nothing returns boolean
if GetSpellAbilityId()==1093742923 then
call PP2()
endif
return false
endfunction
function TV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function PU2))
call Q1I(1093742924)
set t=null
endfunction
function Q02 takes nothing returns nothing
call P6I(AMI,GetEnumUnit(),2,ATI)
call DD1(AMI,GetEnumUnit(),ASI)
endfunction
function QI2 takes unit P7I,unit P8I,real UH1 returns nothing
local group g
local integer SUI=GetUnitAbilityLevel(P7I,1093750345)
local real x
local real y
set AMI=P7I
set ATI=(80+70*SUI)*UH1/5.0
set ASI=(1+0.75*SUI)*UH1/5.0
set ANI=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(ANI,1093687350)
call SetUnitAbilityLevel(ANI,1093687350,DB1(ASI))
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),175+25,Condition(function CA1))
if GetUnitTypeId(P8I)!=1747993156 then
call GroupAddUnit(g,P8I)
endif
call ForGroup(g,function Q02)
call NSI(g)
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherFireMissile\\DemolisherFireMissile.mdl",GetUnitX(P8I),GetUnitY(P8I)))
endfunction
function Q12 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real UH1=(LoadReal(LY,(S5I),(444)))
local real QO2=(LoadReal(LY,(S5I),(445)))
local real RM2=UEI(GetUnitX(IG1),GetUnitY(IG1),GetUnitX(P8I),GetUnitY(P8I))
local real x=GetUnitX(IG1)+18*Cos(RM2*bj_DEGTORAD)
local real y=GetUnitY(IG1)+18*Sin(RM2*bj_DEGTORAD)
call SetUnitX(IG1,x)
call SetUnitY(IG1,y)
if QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))<=18 then
call KillUnit(IG1)
call QI2(P7I,P8I,UH1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
set IG1=null
return false
endfunction
function Q22 takes unit P7I,unit P8I,real UH1,real QO2 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(P7I),1747993156,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call SaveReal(LY,(S5I),(444),((UH1)*1.0))
call SaveReal(LY,(S5I),(445),((QO2)*1.0))
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function Q12))
set t=null
set IG1=null
endfunction
function Q32 takes string UWI,unit P8I,unit SFI returns nothing
local texttag tt=CreateTextTag()
call SetTextTagText(tt,UWI,0.033)
call SetTextTagPosUnit(tt,P8I,64)
call SetTextTagColor(tt,255,0,0,255)
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
function Q42 takes real DC1 returns string
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
function Q52 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real QO2=(LoadReal(LY,(S5I),(442)))
local real GW1=(TimerGetElapsed(M))
local real BQO=5.0-(GW1-QO2)
local real QHI=QCI(GW1-QO2,5.0)
local integer NPI=(LoadInteger(LY,(S5I),(34)))+1
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call QI2(P7I,P7I,5.0)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093750345 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750345,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750344,false)
call SetUnitVertexColor(P7I,255,255,255,255)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093750344 then
if NNI(GetSpellTargetUnit())==false then
call Q22(P7I,GetSpellTargetUnit(),QHI,QO2)
endif
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093750345 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750345,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750344,false)
call SetUnitVertexColor(P7I,255,255,255,255)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
else
call SaveInteger(LY,(S5I),(34),(NPI))
if BQO>=0 then
call Q32(Q42(BQO),P7I,P7I)
if ModuloInteger(NPI,2)==0 then
call SetUnitVertexColor(P7I,255,125,125,255)
else
call SetUnitVertexColor(P7I,255,175,175,255)
endif
else
call SetUnitVertexColor(P7I,255,0,0,255)
endif
if GW1-QO2>(5.0+0.5)then
call QI2(P7I,P7I,5.0)
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093750345 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750345,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750344,false)
call SetUnitVertexColor(P7I,255,255,255,255)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set P7I=null
return false
endfunction
function Q62 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local string s="war3mapImported\\UnstableConcoctionRangeDisplay3.mdx"
if GetLocalPlayer()!=GetOwningPlayer(P7I)then
set s=""
endif
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M)))*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(s,P7I,"origin")))
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function Q52))
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750345,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093750344,true)
call IA1(P7I,1093750344)
call UnitMakeAbilityPermanent(P7I,true,1093750344)
call TriggerEvaluate(t)
set P7I=null
set t=null
endfunction
function Q72 takes nothing returns boolean
if GetSpellAbilityId()==1093750345 then
call Q62()
endif
return false
endfunction
function NA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function Q72))
call Q1I(1093687350)
set t=null
endfunction
function Q82 takes nothing returns boolean
return GetUnitAbilityLevel(GetKillingUnit(),1093685043)>0 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function Q92 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit u=(LoadUnitHandle(LY,(S5I),(26)))
call SaveInteger(LY,(GetHandleId(u)),(27),((LoadInteger(LY,(GetHandleId(u)),(27)))-1))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set u=null
set t=null
return false
endfunction
function QA2 takes nothing returns nothing
local unit PKI=GetKillingUnit()
local unit QB2=GetTriggerUnit()
local integer S5I=GetHandleId(PKI)
local integer QC2=(LoadInteger(LY,(S5I),(27)))
local integer SUI=GetUnitAbilityLevel(PKI,1093685043)
local integer QD2=4+8*SUI
local integer QE2=QC2*3
local integer QF2=Q9I(QE2+SUI*2+4,QD2)
local texttag tt=CreateTextTag()
local player p=GetOwningPlayer(PKI)
local trigger t=CreateTrigger()
set ARI[GetPlayerId(p)]=ARI[GetPlayerId(p)]+QF2
call TriggerRegisterTimerEvent(t,30,false)
call TriggerAddCondition(t,Condition(function Q92))
call SaveUnitHandle(LY,(GetHandleId(t)),(26),(PKI))
call SaveInteger(LY,(S5I),(27),(QC2+1))
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,QF2+GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD))
call SetTextTagText(tt,"+"+I2S(QF2),0.025)
call SetTextTagPosUnit(tt,QB2,0)
call SetTextTagColor(tt,255,220,0,255)
call SetTextTagVelocity(tt,0,0.03)
if GetLocalPlayer()==p then
call SetTextTagVisibility(tt,true)
else
call SetTextTagVisibility(tt,false)
endif
call SetTextTagFadepoint(tt,2)
call SetTextTagLifespan(tt,3)
call SetTextTagPermanent(tt,false)
set t=null
endfunction
function QG2 takes nothing returns boolean
local integer EB2=ARI[GetPlayerId(GetTriggerPlayer())]
if(GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1311781193 or GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1311781192 or GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1311781204 or GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1311781194)and EB2>0 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848657745)+" "+I2S(EB2))
endif
return false
endfunction
function N91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function Q82))
call TriggerAddAction(t,function QA2)
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
call TriggerAddCondition(t,Condition(function QG2))
set t=null
endfunction
constant function AcidSpray_RawCode takes nothing returns integer
return 1093683532
endfunction
constant function AcidSpray_EffectCode takes nothing returns integer
return 1093683764
endfunction
function QH2 takes nothing returns boolean
return GetSpellAbilityId()==(1093683532)
endfunction
function QZ2 takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(XO))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitTypeId(GetFilterUnit())!=1848657461
endfunction
function QV2 takes nothing returns nothing
call P6I(XO,GetEnumUnit(),2,JO)
endfunction
function QW2 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer QX2=(LoadInteger(LY,(S5I),(28)))
local real x=GetUnitX(I01)
local real y=GetUnitY(I01)
local boolexpr QL1
local group Z51
if QX2>16 then
call KillUnit(I01)
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
call DestroyTimer(t)
else
set XO=SFI
set JO=8+GetUnitAbilityLevel(SFI,(1093683532))*4
set QL1=Condition(function QZ2)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,650,QL1)
call ForGroup(Z51,function QV2)
call NSI(Z51)
set QX2=QX2+1
call SaveInteger(LY,(S5I),(28),(QX2))
endif
endfunction
function QY2 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location BFO=GetSpellTargetLoc()
local real x=GetLocationX(BFO)
local real y=GetLocationY(BFO)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697657157,x,y,0)
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
call RemoveLocation(BFO)
call IA1(I01,(1093683764))
call SetUnitAbilityLevel(I01,(1093683764),GetUnitAbilityLevel(SFI,(1093683532)))
call IA1(I01,1097625443)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(28),(0))
call TimerStart(t,1,true,function QW2)
endfunction
function NB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddAction(t,function QY2)
call TriggerAddCondition(t,Condition(function QH2))
call Q1I((1093683764))
endfunction
function QJ2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real OA2=GetUnitState(SFI,UNIT_STATE_MANA)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitState(SFI,UNIT_STATE_MANA,GetUnitState(SFI,UNIT_STATE_MAX_MANA))
call SetUnitState(SFI,UNIT_STATE_MANA,OA2)
set t=null
set SFI=null
return false
endfunction
function QK2 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,0.1,false)
call TriggerAddCondition(t,Condition(function QJ2))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
set t=null
set SFI=null
endfunction
function QL2 takes nothing returns boolean
if GetSpellAbilityId()==1095656306 and GetUnitTypeId(GetTriggerUnit())==1311781193 then
call QK2()
endif
return false
endfunction
function Register_ChemicalRage takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QL2))
set t=null
endfunction
function QM2 takes nothing returns nothing
call P6I(AQI,GetEnumUnit(),1,API)
endfunction
function QN2 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093818181)
local real PAI=(0.35+0.25*SUI)*(GetUnitState(P8I,UNIT_STATE_MAX_MANA)-GetUnitState(P8I,UNIT_STATE_MANA))
local group g=NTI()
call DD1(SFI,P8I,0.1*SUI)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl",P8I,"chest"))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl",P8I,"chest"))
call DestroyEffect(AddSpecialEffect("war3mapImported\\Enchantment.mdx",GetUnitX(P8I),GetUnitY(P8I)))
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),500+25,Condition(function C51))
set API=PAI
set AQI=SFI
call ForGroup(g,function QM2)
call PlaySoundOnUnitBJ(PC,100,P8I)
call NSI(g)
set SFI=null
set P8I=null
set g=null
endfunction
function QS2 takes nothing returns boolean
if GetSpellAbilityId()==1093818181 and NNI(GetSpellTargetUnit())==false then
call QN2()
endif
return false
endfunction
function WZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function QS2))
set t=null
endfunction
function QT2 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093752374)
local real QR2=16+12*SUI
local real QP2=GetUnitState(P8I,UNIT_STATE_MANA)
local real ZCO=RMinBJ(QR2,QP2)
if ZCO>0 then
call SetUnitState(P8I,UNIT_STATE_MANA,QP2-ZCO)
call P6I(P7I,P8I,2,ZCO*0.6)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl",P8I,"origin"))
endif
endfunction
function QQ2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call QT2(P7I,P8I)
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
function QU2 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,0.4,false)
call TriggerAddCondition(t,Condition(function QQ2))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function UI2 takes nothing returns nothing
local unit P7I=GetAttacker()
if((LoadInteger(LY,(GetHandleId((P7I))),((4274))))==1)==false then
call SCI(P7I,4274,0.4)
call QU2()
endif
endfunction
function U12 takes nothing returns boolean
if GetUnitAbilityLevel(GetAttacker(),1093752374)>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!=1848651852 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))and RKI(GetTriggerUnit())==false then
call UI2()
endif
return false
endfunction
function UO2 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function U12))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function U22 takes nothing returns boolean
if GetLearnedSkill()==1093752374 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093752374)==1 then
call UO2()
endif
return false
endfunction
function WW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function U22))
set t=null
endfunction
function U32 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer NPI=GetTriggerEvalCount(t)
local integer R2O=R2I(((0.9-0.3)/0.5)/0.03)
local integer U42=R2I((175/R2O))
local integer U52=R2I((255/R2O)*1.75)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
if NPI>R2O then
call SetUnitVertexColor(I01,255,255,255,0)
call SetUnitVertexColor(SFI,255,255,255,255)
call ShowUnit(I01,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitVertexColor(I01,255,255,255,175-U42*NPI)
call SetUnitX(I01,x)
call SetUnitY(I01,y)
call SetUnitVertexColor(SFI,255,255,255,U52*NPI)
endif
set t=null
set I01=null
set SFI=null
return false
endfunction
function U62 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01=(LoadUnitHandle(LY,(GetHandleId(SFI)),(293)))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
call SetUnitX(I01,x)
call SetUnitY(I01,y)
call SetUnitX(SFI,x)
call SetUnitY(SFI,y)
call SetUnitVertexColor(SFI,255,255,255,0)
call SetUnitVertexColor(I01,255,255,255,175)
call SetUnitTimeScale(I01,0.5)
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function U32))
set SFI=null
set I01=null
set t=null
endfunction
function U72 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01
local integer S5I=GetHandleId(SFI)
local location l=GetSpellTargetLoc()
local real a=UEI(GetUnitX(SFI),GetUnitY(SFI),GetLocationX(l),GetLocationY(l))
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
call RemoveLocation(l)
call SetUnitPathing(SFI,false)
call IA1(SFI,1097167976)
set I01=CreateUnit(GetOwningPlayer(SFI),1747990091,GetUnitX(SFI),GetUnitY(SFI),a)
call ON1(I01,5)
call SetUnitPathing(I01,false)
call IA1(I01,1097167976)
call IA1(I01,1097625443)
call IA1(I01,1093678162)
call SetUnitVertexColor(I01,255,255,255,0)
call SetUnitX(I01,x)
call SetUnitY(I01,y)
call SetUnitX(SFI,x)
call SetUnitY(SFI,y)
call SetUnitAnimation(I01,"Spell Throw")
call SetUnitPathing(SFI,true)
call UnitRemoveAbility(SFI,1097167976)
call SaveUnitHandle(LY,(S5I),(293),(I01))
set SFI=null
set I01=null
endfunction
function U82 takes nothing returns boolean
if GetSpellAbilityId()==1095066220 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call U62()
else
call U72()
endif
endif
return false
endfunction
function WV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function U82))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function U82))
set t=null
call A51(1747990091)
endfunction
function U92 takes nothing returns boolean
return GetSpellAbilityId()==1093685041
endfunction
function TreeKiller takes nothing returns nothing
call KillDestructable(GetEnumDestructable())
endfunction
function UA2 takes unit PKI,real x,real y,group JAO returns nothing
local group Z51=NTI()
local unit WH1
call UPI(x,y,150)
call GroupEnumUnitsInRange(Z51,x,y,150,Condition(function N1I))
loop
set WH1=FirstOfGroup(Z51)
exitwhen WH1==null
if(IsUnitInGroup(WH1,JAO)==false and IsUnitEnemy(WH1,GetOwningPlayer(PKI)))then
if(GetUnitAbilityLevel(WH1,1093678162)!=1 and GetUnitState(WH1,UNIT_STATE_LIFE)>0 and IsUnitType(WH1,UNIT_TYPE_STRUCTURE)==false)then
call GroupAddUnit(JAO,WH1)
call P6I(PKI,WH1,2,40+GetUnitAbilityLevel(PKI,1093685041)*30)
call AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",WH1,"overhead")
endif
endif
call GroupRemoveUnit(Z51,WH1)
endloop
call NSI(Z51)
endfunction
function UB2 takes nothing returns nothing
local integer S5I=GetHandleId(GetExpiredTimer())
local unit UC2=(LoadUnitHandle(LY,(S5I),(290)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real Ax=(LoadReal(LY,(S5I),(284)))
local real Ay=(LoadReal(LY,(S5I),(285)))
local real Cx=(LoadReal(LY,(S5I),(286)))
local real Cy=(LoadReal(LY,(S5I),(287)))
local real Bx=(LoadReal(LY,(S5I),(288)))
local real By=(LoadReal(LY,(S5I),(289)))
local real a=(LoadReal(LY,(S5I),(137)))
local real b=1-a
local boolean UD2=(LoadBoolean(LY,(S5I),(291)))
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local real UE2=RMaxBJ(QNI(Ax,Ay,Cx,Cy)/1300,0.4)
call SetUnitX(UC2,PTI(Ax*a*a+Bx*2*a*b+Cx*b*b))
call SetUnitY(UC2,PUI(Ay*a*a+By*2*a*b+Cy*b*b))
call UA2(SFI,GetUnitX(UC2),GetUnitY(UC2),JAO)
if(UD2)then
call SaveReal(LY,(S5I),(137),((a-.02/UE2)*1.0))
else
call SaveReal(LY,(S5I),(137),((a+.02/UE2)*1.0))
call SaveReal(LY,(S5I),(284),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(285),((GetUnitY(SFI))*1.0))
endif
if(a<0 and UD2)then
call SaveBoolean(LY,(S5I),(291),(false))
call SaveReal(LY,(S5I),(288),((Ax+300*Cos(Atan2(Cy-Ay,Cx-Ax)+(LoadReal(LY,(S5I),(292)))))*1.0))
call SaveReal(LY,(S5I),(289),((Ay+300*Sin(Atan2(Cy-Ay,Cx-Ax)+(LoadReal(LY,(S5I),(292)))))*1.0))
endif
if(a>1 and UD2==false)then
call PauseTimer(GetExpiredTimer())
call NSI(JAO)
call FlushChildHashtable(LY,(S5I))
call RemoveUnit(UC2)
call DestroyTimer(GetExpiredTimer())
endif
endfunction
function UF2 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local real Ax=GetUnitX(PKI)
local real Ay=GetUnitY(PKI)
local real Cx=GetLocationX(GetSpellTargetLoc())
local real Cy=GetLocationY(GetSpellTargetLoc())
local unit UG2=CreateUnit(GetOwningPlayer(PKI),1697657172,Ax,Ay,270.0)
local unit UH2=CreateUnit(GetOwningPlayer(PKI),1697657172,Ax,Ay,270.0)
local integer UZ2
local integer UV2
local timer UW2=CreateTimer()
local timer UX2=CreateTimer()
if GetSpellTargetUnit()!=null then
set Cx=GetUnitX(GetSpellTargetUnit())
set Cy=GetUnitY(GetSpellTargetUnit())
endif
call IA1(UG2,1097691750)
call UnitRemoveAbility(UG2,1097691750)
call SetUnitFlyHeight(UG2,150,0)
call IA1(UH2,1097691750)
call UnitRemoveAbility(UH2,1097691750)
call SetUnitFlyHeight(UH2,150,0)
set UZ2=GetHandleId(UW2)
call SaveUnitHandle(LY,(UZ2),(14),(PKI))
call SaveUnitHandle(LY,(UZ2),(290),(UG2))
call SaveGroupHandle(LY,(UZ2),(133),(NTI()))
call SaveReal(LY,(UZ2),(284),((Ax)*1.0))
call SaveReal(LY,(UZ2),(285),((Ay)*1.0))
call SaveReal(LY,(UZ2),(286),((Cx)*1.0))
call SaveReal(LY,(UZ2),(287),((Cy)*1.0))
call SaveReal(LY,(UZ2),(288),((Ax+300*Cos(Atan2(Cy-Ay,Cx-Ax)+45))*1.0))
call SaveReal(LY,(UZ2),(289),((Ay+300*Sin(Atan2(Cy-Ay,Cx-Ax)+45))*1.0))
call SaveReal(LY,(UZ2),(137),((1)*1.0))
call SaveReal(LY,(UZ2),(292),((-45)*1.0))
call SaveBoolean(LY,(UZ2),(291),(true))
set UV2=GetHandleId(UX2)
call SaveUnitHandle(LY,(UV2),(14),(PKI))
call SaveUnitHandle(LY,(UV2),(290),(UH2))
call SaveGroupHandle(LY,(UV2),(133),(NTI()))
call SaveReal(LY,(UV2),(284),((Ax)*1.0))
call SaveReal(LY,(UV2),(285),((Ay)*1.0))
call SaveReal(LY,(UV2),(286),((Cx)*1.0))
call SaveReal(LY,(UV2),(287),((Cy)*1.0))
call SaveReal(LY,(UV2),(288),((Ax+300*Cos(Atan2(Cy-Ay,Cx-Ax)-45))*1.0))
call SaveReal(LY,(UV2),(289),((Ay+300*Sin(Atan2(Cy-Ay,Cx-Ax)-45))*1.0))
call SaveReal(LY,(UV2),(137),((1)*1.0))
call SaveReal(LY,(UV2),(292),((45)*1.0))
call SaveBoolean(LY,(UV2),(291),(true))
call TimerStart(UW2,.025,true,function UB2)
call TimerStart(UX2,.025,true,function UB2)
endfunction
function WY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function U92))
call TriggerAddAction(t,function UF2)
endfunction
function UY2 takes nothing returns nothing
local real x=GetUnitX(GetEnumUnit())
local real y=GetUnitY(GetEnumUnit())
local real a=bj_RADTODEG*Atan2(y-BK,x-AK)
local real UJ2
local real UK2
if Sin((a-CK)*bj_DEGTORAD)<0 then
set UJ2=GetUnitX(GetEnumUnit())+15*Cos((CK-90)*bj_DEGTORAD)
set UK2=GetUnitY(GetEnumUnit())+15*Sin((CK-90)*bj_DEGTORAD)
call SetUnitPosition(GetEnumUnit(),UJ2,UK2)
call SetUnitFacingTimed(GetEnumUnit(),CK+90,0.3)
else
set UJ2=GetUnitX(GetEnumUnit())+15*Cos((CK+90)*bj_DEGTORAD)
set UK2=GetUnitY(GetEnumUnit())+15*Sin((CK+90)*bj_DEGTORAD)
call SetUnitPosition(GetEnumUnit(),UJ2,UK2)
call SetUnitFacingTimed(GetEnumUnit(),CK-90,0.3)
endif
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",GetEnumUnit(),"origin"))
endfunction
function UL2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real RM2=(LoadReal(LY,(S5I),(13)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
if GetTriggerEvalCount(t)>20 then
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set AK=x
set BK=y
set CK=RM2
call ForGroup(g,function UY2)
endif
set t=null
set g=null
return false
endfunction
function UM2 takes nothing returns nothing
call P6I(GK,GetEnumUnit(),1,AK)
endfunction
function UN2 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093685042)
local unit I01
local real RM2=bj_RADTODEG*Atan2(GetUnitY(P8I)-GetUnitY(SFI),GetUnitX(P8I)-GetUnitX(SFI))
local real x
local real y
local group g=NTI()
local group g2=NTI()
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093810233)
endif
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveReal(LY,(S5I),(6),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(SFI))*1.0))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerAddCondition(t,Condition(function UL2))
set x=GetUnitX(SFI)+50*Cos(RM2*bj_DEGTORAD)
set y=GetUnitY(SFI)+50*Sin(RM2*bj_DEGTORAD)
call GroupEnumUnitsInRange(g2,x,y,325,Condition(function C51))
call GroupAddGroup(g2,g)
call GroupClear(g2)
set I01=CreateUnit(GetOwningPlayer(SFI),1865429081,x,y,RM2)
call UnitApplyTimedLife(I01,1112820806,1)
call IA1(I01,1093684825)
call SetUnitAbilityLevel(I01,1093684825,SUI)
call IssueImmediateOrder(I01,"thunderclap")
set x=GetUnitX(SFI)+250*Cos(RM2*bj_DEGTORAD)
set y=GetUnitY(SFI)+250*Sin(RM2*bj_DEGTORAD)
call GroupEnumUnitsInRange(g2,x,y,325,Condition(function C51))
call GroupAddGroup(g2,g)
call GroupClear(g2)
set I01=CreateUnit(GetOwningPlayer(SFI),1865429081,x,y,RM2)
call UnitApplyTimedLife(I01,1112820806,1)
call IA1(I01,1093684825)
call SetUnitAbilityLevel(I01,1093684825,SUI)
call IssueImmediateOrder(I01,"thunderclap")
set x=GetUnitX(SFI)+450*Cos(RM2*bj_DEGTORAD)
set y=GetUnitY(SFI)+450*Sin(RM2*bj_DEGTORAD)
call GroupEnumUnitsInRange(g2,x,y,325,Condition(function C51))
call GroupAddGroup(g2,g)
call GroupClear(g2)
set I01=CreateUnit(GetOwningPlayer(SFI),1865429081,x,y,RM2)
call UnitApplyTimedLife(I01,1112820806,1)
call IA1(I01,1093684825)
call SetUnitAbilityLevel(I01,1093684825,SUI)
call IssueImmediateOrder(I01,"thunderclap")
if GetUnitAbilityLevel(SFI,1093685042)==0 then
set x=GetUnitX(SFI)+650*Cos(RM2*bj_DEGTORAD)
set y=GetUnitY(SFI)+650*Sin(RM2*bj_DEGTORAD)
call GroupEnumUnitsInRange(g2,x,y,325,Condition(function C51))
call GroupAddGroup(g2,g)
call GroupClear(g2)
set I01=CreateUnit(GetOwningPlayer(SFI),1865429081,x,y,RM2)
call UnitApplyTimedLife(I01,1112820806,1)
call IA1(I01,1093684825)
call SetUnitAbilityLevel(I01,1093684825,SUI)
call IssueImmediateOrder(I01,"thunderclap")
endif
call NSI(g2)
call GroupRemoveUnit(g,P8I)
set AK=150+50*SUI
set GK=SFI
call ForGroup(g,function UM2)
set t=null
set SFI=null
set P8I=null
set I01=null
set g=null
set g2=null
endfunction
function US2 takes nothing returns boolean
if(GetSpellAbilityId()==1093685042 or GetSpellAbilityId()==1093810233)and NNI(GetSpellTargetUnit())==false then
call UN2()
endif
return false
endfunction
function WX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function US2))
set t=null
endfunction
function UT2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1093743664)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function UR2 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call IA1(P7I,1093743664)
call TriggerRegisterTimerEvent(t,5,false)
call TriggerAddCondition(t,Condition(function UT2))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function UP2 takes nothing returns boolean
if GetSpellAbilityId()==1093743450 then
call UR2()
endif
return false
endfunction
function WK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UP2))
set t=null
endfunction
function UQ2 takes nothing returns boolean
return GetSpellAbilityId()==1093685071 or GetSpellAbilityId()==1093817653
endfunction
function UU2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I03=(LoadUnitHandle(LY,(S5I),(2)))
local real II3=(LoadReal(LY,(S5I),(6)))
local real I13=(LoadReal(LY,(S5I),(7)))
local real IO3=GetUnitX(I03)
local real I23=GetUnitY(I03)
call SaveReal(LY,(S5I),(6),((IO3)*1.0))
call SaveReal(LY,(S5I),(7),((I23)*1.0))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if II3==IO3 and I13==I23 then
if GetUnitAbilityLevel(I03,1093752647)==0 then
call IA1(I03,1093752647)
endif
else
if GetUnitAbilityLevel(I03,1093752647)>0 then
call UnitRemoveAbility(I03,1093752647)
endif
endif
endif
set t=null
set I03=null
return false
endfunction
function I33 takes nothing returns nothing
if AUI then
if(GetUnitTypeId(GetEnumUnit())==1848652113 or GetUnitTypeId(GetEnumUnit())==1848652114)then
endif
elseif B0I then
if(GetUnitTypeId(GetEnumUnit())==1848652109 or GetUnitTypeId(GetEnumUnit())==1848652115)then
endif
endif
endfunction
function I43 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local player T4I=GetOwningPlayer(PKI)
local integer SUI=GetUnitAbilityLevel(PKI,1093685071)
local real x=GetUnitX(PKI)
local real y=GetUnitY(PKI)
local group Z51=NTI()
local unit I03
local trigger t
local integer S5I
local boolean I53=GetSpellAbilityId()==1093685071
local boolean I63=GetSpellAbilityId()==1093817653
set AUI=I53
set B0I=I63
call GroupEnumUnitsOfPlayer(Z51,T4I,Condition(function N1I))
call ForGroup(Z51,function I33)
call NSI(Z51)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",x,y))
if(I53)then
if(SUI==1)then
set I03=CreateUnit(T4I,1848652113,x,y,270)
call UnitApplyTimedLife(I03,1112820806,60)
elseif(SUI==2)then
set I03=CreateUnit(T4I,1848659544,x,y,270)
call UnitApplyTimedLife(I03,1112820806,60)
elseif(SUI==3)then
set I03=CreateUnit(T4I,1848659542,x,y,270)
call UnitApplyTimedLife(I03,1112820806,60)
elseif(SUI==4)then
set I03=CreateUnit(T4I,1848659543,x,y,270)
call UnitApplyTimedLife(I03,1112820806,60)
endif
if SUI==3 or SUI==4 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,I03,EVENT_UNIT_DEATH)
call SaveReal(LY,(S5I),(6),((GetUnitX(I03))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(I03))*1.0))
call SaveUnitHandle(LY,(S5I),(2),(I03))
call TriggerAddCondition(t,Condition(function UU2))
endif
endif
if(I63)then
if(SUI==1)then
call UnitApplyTimedLife(CreateUnit(T4I,1848659540,x,y,270),1112820806,60)
elseif(SUI==2)then
call UnitApplyTimedLife(CreateUnit(T4I,1848652109,x,y,270),1112820806,60)
elseif(SUI==3)then
call UnitApplyTimedLife(CreateUnit(T4I,1848659539,x,y,270),1112820806,60)
elseif(SUI==4)then
call UnitApplyTimedLife(CreateUnit(T4I,1848659541,x,y,270),1112820806,60)
endif
endif
endfunction
function I73 takes nothing returns boolean
if GetLearnedSkill()==1093685071 and IsUnitIllusion(GetTriggerUnit())==false then
if GetUnitAbilityLevel(GetTriggerUnit(),1093685071)==1 then
call IA1(GetTriggerUnit(),1093817653)
endif
call SetUnitAbilityLevel(GetTriggerUnit(),1093817653,GetUnitAbilityLevel(GetTriggerUnit(),1093685071))
endif
return false
endfunction
function WJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UQ2))
call TriggerAddAction(t,function I43)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function I73))
set t=null
endfunction
function I83 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer S5I=GetHandleId(P7I)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local texttag tt=CreateTextTag()
local integer ROI
local integer i=1
local unit u
local player p2
if SUI==1 then
set ROI=200
elseif SUI==2 then
set ROI=275
else
set ROI=350
endif
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetTextTagText(tt,"+"+I2S(ROI),0.025)
call SetTextTagPosUnit(tt,K1[GetPlayerId(p)],100)
call SetTextTagColor(tt,255,220,0,255)
call SetTextTagVelocity(tt,0,0.03)
call SetTextTagVisibility(tt,false)
if GetLocalPlayer()==p then
call SetTextTagVisibility(tt,true)
endif
call SetTextTagFadepoint(tt,2)
call SetTextTagLifespan(tt,3)
call SetTextTagPermanent(tt,false)
set EL0[GetPlayerId(p)]=EL0[GetPlayerId(p)]+ROI
set BII=BII+ROI
if SUI==1 then
set ROI=50
elseif SUI==2 then
set ROI=100
else
set ROI=150
endif
loop
exitwhen i>5
if TII(p)then
set p2=BO[i]
else
set p2=CO[i]
endif
if p2!=p then
set u=K1[GetPlayerId(p2)]
if QLI(u,P7I)<950 then
set tt=CreateTextTag()
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetTextTagText(tt,"+"+I2S(ROI),0.025)
call SetTextTagPosUnit(tt,u,100)
call SetTextTagColor(tt,255,220,0,255)
call SetTextTagVelocity(tt,0,0.03)
call SetTextTagVisibility(tt,false)
if GetLocalPlayer()==p2 then
call SetTextTagVisibility(tt,true)
endif
call SetTextTagFadepoint(tt,2)
call SetTextTagLifespan(tt,3)
call SetTextTagPermanent(tt,false)
set EL0[GetPlayerId(p2)]=EL0[GetPlayerId(p2)]+ROI
set BII=BII+ROI
endif
endif
set i=i+1
endloop
set P7I=null
set p=null
set tt=null
endfunction
function I93 takes nothing returns boolean
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and(LoadReal(LY,(GetHandleId(GetTriggerUnit())),(314)))>(TimerGetElapsed(M))then
call I83()
endif
return false
endfunction
function IA3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
call SetUnitX(I01,GetUnitX(P8I))
call SetUnitY(I01,GetUnitY(P8I))
if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEvalCount(t)>10 and GetUnitAbilityLevel(P8I,1110454348)==0)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call KillUnit(I01)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set I01=null
return false
endfunction
function IB3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(P8I),1697657174,GetUnitX(P8I),GetUnitY(P8I),0)
local string FX="war3mapImported\\TrackBuff.mdx"
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P8I))and P0I(GetLocalPlayer())==false then
set FX=""
endif
call IA1(I01,1093742901)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,GetSpellTargetUnit(),EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IA3))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(FX,P8I,"overhead")))
call SaveReal(LY,(GetHandleId(GetSpellTargetUnit())),(314),(((TimerGetElapsed(M))+30)*1.0))
call SavePlayerHandle(LY,(GetHandleId(GetSpellTargetUnit())),(54),(GetOwningPlayer(GetTriggerUnit())))
call SaveInteger(LY,(GetHandleId(GetSpellTargetUnit())),(5),(GetUnitAbilityLevel(GetTriggerUnit(),1093681716)))
set t=null
set P8I=null
set P7I=null
set I01=null
endfunction
function IC3 takes nothing returns boolean
if GetSpellAbilityId()==1093681716 then
call IB3()
endif
return false
endfunction
function WT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IC3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function I93))
set t=null
endfunction
function Jinada_Swap takes nothing returns nothing
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093749300,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093749299,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093749301,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(XM),1093749077,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093749300,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093749299,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093749301,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(YM),1093749077,false)
endfunction
function ID3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P8I,1093749079)
call UnitRemoveAbility(P8I,1110459201)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P8I=null
return false
endfunction
function IE3 takes unit P7I,unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,3,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function ID3))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(P8I,1093749079)
call UnitMakeAbilityPermanent(P8I,true,1093749079)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093749079,false)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodKnight.mdl",P8I,"chest"))
set t=null
endfunction
function IF3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and(GetEventDamage()>40 or IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==true or GetUnitTypeId(P8I)==1970107511 or GetUnitTypeId(P8I)==1700946284)and(LoadBoolean(LY,(GetHandleId(P7I)),(183)))==true then
call IE3(P7I,P8I)
call SaveBoolean(LY,(GetHandleId(P7I)),(183),(false))
call SaveReal(LY,(GetHandleId(P7I)),(184),(((TimerGetElapsed(M)))*1.0))
call UnitRemoveAbility(P7I,1093749075)
call UnitRemoveAbility(P7I,1093749300)
call UnitRemoveAbility(P7I,1093749299)
call UnitRemoveAbility(P7I,1093749301)
call UnitRemoveAbility(P7I,1093749077)
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
function IG3 takes nothing returns boolean
local trigger t
local integer S5I
local unit P8I
local unit P7I
local integer SUI
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(183),(false))
call SaveReal(LY,(GetHandleId(GetTriggerUnit())),(184),(((TimerGetElapsed(M)))*1.0))
call UnitRemoveAbility(GetTriggerUnit(),1093749075)
call UnitRemoveAbility(GetTriggerUnit(),1093749300)
call UnitRemoveAbility(GetTriggerUnit(),1093749299)
call UnitRemoveAbility(GetTriggerUnit(),1093749301)
call UnitRemoveAbility(GetTriggerUnit(),1093749077)
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
elseif GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(182)))then
if IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
set t=CreateTrigger()
set S5I=GetHandleId(t)
set P8I=GetTriggerUnit()
set P7I=GetAttacker()
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function IF3))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveTriggerHandle(LY,(S5I),(35),(GetTriggeringTrigger()))
set SUI=GetUnitAbilityLevel(GetAttacker(),1093749073)
if SUI==0 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749301)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==1 then
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749301)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==2 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749301)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==3 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==4 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749301)
endif
set P8I=null
set P7I=null
set t=null
endif
endif
return false
endfunction
function IH3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real QZI=(TimerGetElapsed(M))
local integer SUI=GetUnitAbilityLevel(SFI,1093749073)
local real PD2=(LoadReal(LY,(GetHandleId(SFI)),(184)))
local boolean IZ3=(LoadBoolean(LY,(GetHandleId(SFI)),(183)))
if QZI-PD2>14-SUI*2 and IZ3==false and GetUnitTypeId(SFI)==1315007329 and IC1(SFI)==false then
call SaveBoolean(LY,(GetHandleId(SFI)),(183),(true))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IG3))
call SaveUnitHandle(LY,(S5I),(182),(SFI))
call IA1(SFI,1093749075)
if GetUnitAbilityLevel(SFI,1110455864)==0 then
if SUI==1 then
call IA1(SFI,1093749300)
elseif SUI==2 then
call IA1(SFI,1093749299)
elseif SUI==3 then
call IA1(SFI,1093749301)
elseif SUI==4 then
call IA1(SFI,1093749077)
endif
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093749300,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093749299,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093749301,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093749077,false)
elseif IZ3==false and GetUnitAbilityLevel(SFI,1110455864)==0 then
call UnitRemoveAbility(SFI,1093749075)
call UnitRemoveAbility(SFI,1093749300)
call UnitRemoveAbility(SFI,1093749299)
call UnitRemoveAbility(SFI,1093749301)
call UnitRemoveAbility(SFI,1093749077)
endif
set t=null
set SFI=null
return false
endfunction
function IV3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function IH3))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(181),(0))
set SFI=null
set t=null
endfunction
function IW3 takes nothing returns boolean
if GetLearnedSkill()==1093749073 and GetUnitAbilityLevel(GetTriggerUnit(),1093749073)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call IV3()
endif
return false
endfunction
function WR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function IW3))
set t=null
endfunction
function IX3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093678913)
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if((LoadInteger(LY,(GetHandleId((P7I))),((2487))))==1)==false then
call SCI(P7I,2487,0.5)
if IsUnitType(P8I,UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(P8I,GetOwningPlayer(P7I))then
call P6I(P7I,P8I,2,30*SUI)
call UYI(I2S(R2I(30*SUI)),1,P7I,0.027,216,0,0,216)
endif
endif
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
function IY3 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2,false)
call TriggerAddCondition(t,Condition(function IX3))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P8I=null
set P7I=null
set t=null
endfunction
function IJ3 takes nothing returns boolean
local integer SUI
local unit SFI
if GetTriggerEventId()==EVENT_UNIT_SPELL_CAST or GetTriggerEventId()==EVENT_UNIT_DEATH then
set SFI=(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))
set SUI=GetUnitAbilityLevel(SFI,1093749073)
if(LoadBoolean(LY,(GetHandleId(SFI)),(183)))then
set SUI=GetUnitAbilityLevel(SFI,1093749073)
if SUI==0 then
call UnitRemoveAbility(SFI,1093749300)
call UnitRemoveAbility(SFI,1093749299)
call UnitRemoveAbility(SFI,1093749301)
call UnitRemoveAbility(SFI,1093749077)
elseif SUI==1 then
call UnitRemoveAbility(SFI,1093749299)
call UnitRemoveAbility(SFI,1093749301)
call UnitRemoveAbility(SFI,1093749077)
elseif SUI==2 then
call UnitRemoveAbility(SFI,1093749300)
call UnitRemoveAbility(SFI,1093749301)
call UnitRemoveAbility(SFI,1093749077)
elseif SUI==3 then
call UnitRemoveAbility(SFI,1093749300)
call UnitRemoveAbility(SFI,1093749299)
call UnitRemoveAbility(SFI,1093749077)
elseif SUI==4 then
call UnitRemoveAbility(SFI,1093749300)
call UnitRemoveAbility(SFI,1093749299)
call UnitRemoveAbility(SFI,1093749301)
endif
else
call UnitRemoveAbility(SFI,1093749300)
call UnitRemoveAbility(SFI,1093749299)
call UnitRemoveAbility(SFI,1093749301)
call UnitRemoveAbility(SFI,1093749077)
endif
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))then
if((LoadInteger(LY,(GetHandleId((GetAttacker()))),((2488))))==1)==false then
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
call IY3()
endif
if(LoadBoolean(LY,(GetHandleId(GetAttacker())),(183)))then
set SUI=GetUnitAbilityLevel(GetAttacker(),1093749073)
if SUI==0 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749301)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==1 then
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749301)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==2 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749301)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==3 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749077)
elseif SUI==4 then
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749301)
endif
else
call UnitRemoveAbility(GetAttacker(),1093749300)
call UnitRemoveAbility(GetAttacker(),1093749299)
call UnitRemoveAbility(GetAttacker(),1093749301)
call UnitRemoveAbility(GetAttacker(),1093749077)
endif
endif
else
set SFI=(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))
if(LoadBoolean(LY,(GetHandleId(SFI)),(183)))==false then
call UnitRemoveAbility(SFI,1093749300)
call UnitRemoveAbility(SFI,1093749299)
call UnitRemoveAbility(SFI,1093749301)
call UnitRemoveAbility(SFI,1093749077)
endif
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function IK3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093678913)
call SCI(P7I,2488,1.25-0.25*SUI-0.01)
call TriggerRegisterTimerEvent(t,15+5*SUI,false)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_CAST)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function IJ3))
call SaveUnitHandle(LY,(S5I),(14),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call IA1(P7I,1093749300)
call IA1(P7I,1093749299)
call IA1(P7I,1093749301)
call IA1(P7I,1093749077)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093749300,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093749299,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093749301,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093749077,false)
set t=null
set P8I=null
set P7I=null
endfunction
function IL3 takes nothing returns boolean
if GetSpellAbilityId()==1093678913 then
call IK3()
endif
return false
endfunction
function WQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function IL3))
set t=null
endfunction
function IM3 takes unit P7I,unit WNO,unit IN3,integer SUI,boolean IS3 returns real
local unit I01
local real IT3=QLI(WNO,IN3)
if IS3==false then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(WNO),GetUnitY(WNO),0)
call IA1(I01,1093677108)
call SetUnitAbilityLevel(I01,1093677108,SUI)
call IssueTargetOrder(I01,"thunderbolt",IN3)
set I01=null
endif
return IT3/1000
endfunction
function IR3 takes nothing returns boolean
if IsUnitInGroup(GetFilterUnit(),B1I)==false then
if GetUnitAbilityLevel(GetFilterUnit(),1110454348)>0 then
return true
endif
endif
return false
endfunction
function IP3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit WNO=(LoadUnitHandle(LY,(S5I),(17)))
local unit IN3
local real M5I
local group PR2=(LoadGroupHandle(LY,(S5I),(22)))
local group g
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set g=NTI()
set B1I=PR2
call GroupEnumUnitsInRange(g,GetUnitX(WNO),GetUnitY(WNO),900,Condition(function IR3))
set IN3=GroupPickRandomUnit(g)
call NSI(g)
if IN3!=null then
set M5I=IM3(P7I,WNO,IN3,SUI,false)
call GroupAddUnit(PR2,IN3)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(17),(IN3))
call SaveGroupHandle(LY,(S5I),(22),(PR2))
call TriggerRegisterTimerEvent(t,M5I,false)
call TriggerAddCondition(t,Condition(function IP3))
else
call NSI(PR2)
endif
set t=null
set P7I=null
set WNO=null
set IN3=null
set g=null
set PR2=null
return false
endfunction
function IQ3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit IU3=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093677108)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real M5I=IM3(SFI,SFI,IU3,SUI,true)
local group g=NTI()
call GroupAddUnit(g,IU3)
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call SaveUnitHandle(LY,(S5I),(17),(IU3))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveGroupHandle(LY,(S5I),(22),(g))
call TriggerRegisterTimerEvent(t,M5I,false)
call TriggerAddCondition(t,Condition(function IP3))
set SFI=null
set IU3=null
set t=null
endfunction
function O03 takes nothing returns boolean
if GetUnitAbilityLevel(GetTriggerUnit(),1093678162)==0 and GetSpellAbilityId()==1093677108 and NNI(GetSpellTargetUnit())==false then
call IQ3()
endif
return false
endfunction
function WP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function O03))
set t=null
endfunction
constant function Warpath_AbilityCode takes nothing returns integer
return 1093682774
endfunction
constant function Warpath_EffectCode takes nothing returns integer
return 1093682502
endfunction
constant function Warpath_SprayCode takes nothing returns integer
return 1093683024
endfunction
constant function Warpath_GooCode takes nothing returns integer
return 1093682775
endfunction
function OI3 takes nothing returns boolean
return GetSpellAbilityId()==(1093683024)or GetSpellAbilityId()==(1093682775)
endfunction
function O13 takes integer SUI,integer a returns integer
if a==0 then
return 1
else
if SUI==1 then
return a+1
elseif SUI==2 then
return a+6
elseif SUI==3 then
return a+12
endif
endif
return 1
endfunction
function OO3 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1697656920
endfunction
function O23 takes nothing returns nothing
call RemoveUnit(GetEnumUnit())
endfunction
function O33 takes player p returns nothing
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,p,Condition(function OO3))
call ForGroup(g,function O23)
call NSI(g)
set g=null
endfunction
function O43 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local unit SFI=(LoadUnitHandle(LY,(GetHandleId(t)),(14)))
local integer S5I=GetHandleId(SFI)
local integer SUI=GetUnitAbilityLevel(SFI,(1093682774))
local integer O53=(LoadInteger(LY,(S5I),(315)))-1
local integer O63=QBI(O53,0,4+SUI)
local unit I01=(LoadUnitHandle(LY,(S5I),(316)))
local integer O73
if SUI==1 then
set O73=O63*20
elseif SUI==2 then
set O73=O63*25
elseif SUI==3 then
set O73=O63*30
endif
if O53==0 then
set O73=0
endif
call G21(SFI,O73)
if GetUnitTypeId(I01)==1697656920 then
call SetUnitAbilityLevel(I01,(1093682502),O13(SUI,O63))
call SaveInteger(LY,(S5I),(315),(O53))
else
call O33((LoadPlayerHandle(LY,(GetHandleId(t)),(54))))
endif
call FlushChildHashtable(LY,(GetHandleId(t)))
call S0I(t)
set t=null
set SFI=null
set I01=null
return false
endfunction
function O83 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer S5I=GetHandleId(SFI)
local unit I01=(LoadUnitHandle(LY,(S5I),(316)))
local integer SUI=GetUnitAbilityLevel(SFI,(1093682774))
local integer O53=(LoadInteger(LY,(S5I),(315)))+1
local integer O63=QBI(O53,0,4+SUI)
local integer O93=O13(SUI,O63)
local trigger t=CreateTrigger()
local integer O73
if SUI==1 then
set O73=O63*20
elseif SUI==2 then
set O73=O63*25
elseif SUI==3 then
set O73=O63*30
endif
call G21(SFI,O73)
call SetUnitAbilityLevel(I01,(1093682502),O93)
call SaveInteger(LY,(S5I),(315),(O53))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(SFI))
call SavePlayerHandle(LY,(GetHandleId(t)),(54),(GetOwningPlayer(SFI)))
call TriggerRegisterTimerEvent(t,14,false)
call TriggerAddCondition(t,Condition(function O43))
set t=null
endfunction
function OA3 takes nothing returns boolean
return GetLearnedSkill()==(1093682774)and GetUnitAbilityLevel(GetTriggerUnit(),(1093682774))==1 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function OB3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,(1093682774))
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656920,0,0,0)
local trigger t=CreateTrigger()
call IA1(I01,(1093682502))
call SaveUnitHandle(LY,(GetHandleId(SFI)),(316),(I01))
call SetUnitInvulnerable(I01,true)
call IA1(I01,1097625443)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OI3))
call TriggerAddAction(t,function O83)
endfunction
function WU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function OA3))
call TriggerAddAction(t,function OB3)
call Q1I((1093682502))
endfunction
function OC3 takes nothing returns boolean
return GetSpellAbilityId()==1093683024
endfunction
function OD3 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitAbilityLevel(GetFilterUnit(),1093678162)!=1
endfunction
function OE3 takes nothing returns nothing
local integer OF3=GetHandleId(GetEnumUnit())
local integer OG3=(LoadInteger(LY,(BOI),(OF3)))
local integer SUI=GetUnitAbilityLevel(XO,1093683024)
local real PAI=QCI(JO+OG3*(28+2*SUI),400)
call UnitDamageTarget(XO,GetEnumUnit(),PAI,false,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
call SaveInteger(LY,(BOI),(OF3),(OG3+1))
endfunction
function OH3 takes nothing returns nothing
local integer OF3=GetHandleId(GetEnumUnit())
local integer OG3=(LoadInteger(LY,(BOI),(OF3)))
call SaveInteger(LY,(BOI),(OF3),(OG3-1))
endfunction
function OZ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit PKI=(LoadUnitHandle(LY,(S5I),(221)))
local group Z51=(LoadGroupHandle(LY,(S5I),(317)))
set BOI=GetHandleId(PKI)
call ForGroup(Z51,function OH3)
call NSI(Z51)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function OV3 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local group Z51=NTI()
local trigger t=CreateTrigger()
if IsUnitType(PKI,UNIT_TYPE_HERO)==false then
set PKI=K1[GetPlayerId(GetOwningPlayer(PKI))]
endif
call GroupEnumUnitsInRange(Z51,GetUnitX(PKI),GetUnitY(PKI),650,Condition(function OD3))
set XO=CreateUnit(GetOwningPlayer(PKI),1697656901,GetUnitX(PKI),GetUnitY(PKI),0)
set JO=GetUnitAbilityLevel(PKI,1093683024)*20
set BOI=GetHandleId(PKI)
call ForGroup(Z51,function OE3)
call SaveUnitHandle(LY,(GetHandleId(t)),(221),(PKI))
call SaveGroupHandle(LY,(GetHandleId(t)),(317),(Z51))
call TriggerRegisterTimerEvent(t,14,false)
call TriggerAddCondition(t,Condition(function OZ3))
set t=null
endfunction
function X11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OC3))
call TriggerAddAction(t,function OV3)
endfunction
function OW3 takes nothing returns boolean
return GetSpellAbilityId()==1093682775 and NNI(GetSpellTargetUnit())==false
endfunction
function Trig_Goo_Func001Func001001002 takes nothing returns boolean
return(GetUnitTypeId(GetFilterUnit())==1697657413)
endfunction
function OX3 takes nothing returns nothing
call KillUnit(GetEnumUnit())
endfunction
function OY3 takes nothing returns boolean
return(GetUnitTypeId(GetFilterUnit())==1697657413)
endfunction
function OJ3 takes nothing returns boolean
if(not(GetUnitUserData(GetEnumUnit())==4))then
return false
endif
return true
endfunction
function OK3 takes nothing returns nothing
local location BFO=GetUnitLoc(GetTriggerUnit())
call SetUnitPositionLoc(GetEnumUnit(),BFO)
if(OJ3())then
call IssueTargetOrder(GetEnumUnit(),"acidbomb",GetSpellTargetUnit())
else
call IncUnitAbilityLevel(GetEnumUnit(),1093682778)
call IssueTargetOrder(GetEnumUnit(),"acidbomb",GetSpellTargetUnit())
call SetUnitUserData(GetEnumUnit(),(GetUnitUserData(GetEnumUnit())+1))
endif
call RemoveLocation(BFO)
endfunction
function OL3 takes nothing returns nothing
local location BFO=GetUnitLoc(GetTriggerUnit())
local location OM3=GetUnitLoc(GetSpellTargetUnit())
local group ON3=NTI()
if(UnitHasBuffBJ(GetSpellTargetUnit(),1110454869)==true)then
call GroupEnumUnitsOfPlayer(ON3,GetOwningPlayer(GetSpellTargetUnit()),Condition(function OY3))
call ForGroupBJ(ON3,function OK3)
else
call GroupEnumUnitsOfPlayer(ON3,GetOwningPlayer(GetSpellTargetUnit()),Condition(function OY3))
call ForGroupBJ(ON3,function OX3)
call DisableTrigger(GH)
call CreateNUnitsAtLocFacingLocBJ(1,1697657413,GetOwningPlayer(GetSpellTargetUnit()),BFO,OM3)
call EnableTrigger(GH)
call UnitAddAbility(bj_lastCreatedUnit,1093682778)
call SetUnitAbilityLevelSwapped(1093682778,bj_lastCreatedUnit,((GetUnitAbilityLevelSwapped(1093682775,GetTriggerUnit())*4)-3))
call IssueTargetOrder(bj_lastCreatedUnit,"acidbomb",GetSpellTargetUnit())
call SetUnitUserData(bj_lastCreatedUnit,1)
endif
call NSI(ON3)
call RemoveLocation(BFO)
call RemoveLocation(OM3)
endfunction
function X01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function OW3))
call TriggerAddAction(t,function OL3)
endfunction
function OS3 takes nothing returns boolean
return GetLearnedSkill()==1093684531 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function OT3 takes nothing returns boolean
if(IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==true)then
return false
endif
return true
endfunction
function OR3 takes unit SFI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
call IA1(I01,1093683024)
call SetUnitAbilityLevel(I01,1093683024,GetUnitAbilityLevel(SFI,1093683024))
call IssueImmediateOrder(I01,"fanofknives")
set I01=null
endfunction
function OP3 takes unit SFI,real PAI returns nothing
local integer S5I=GetHandleId(SFI)
local real E01=(LoadReal(LY,(S5I),(278)))
if E01+PAI>250 then
call SaveReal(LY,(S5I),(278),((0)*1.0))
call OR3(SFI)
else
call SaveReal(LY,(S5I),(278),((E01+PAI)*1.0))
endif
endfunction
function OQ3 takes nothing returns nothing
local unit OU3=GetTriggerUnit()
local unit Z4O=GetEventDamageSource()
local real A03=UDI(Z4O,OU3)
local real AI3=GetUnitFacing(OU3)
local real A13
local real PAI=GetEventDamage()
local real AO3
local real RM2
if(PAI>5)and GetUnitState(OU3,UNIT_STATE_LIFE)>1 and GetUnitAbilityLevel(OU3,1112433775)==0 then
if((AI3-A03)<(-180.00))then
set A13=(AI3-A03+360)
else
if((AI3-A03)>180.00)then
set A13=(AI3-A03-360)
else
set A13=(AI3-A03)
endif
endif
set RM2=RAbsBJ(A13)
if RM2<=70 then
set AO3=(GetUnitAbilityLevel(OU3,1093684531)*0.08+0.08)*PAI
call OP3(OU3,PAI-AO3)
call SetUnitState(OU3,UNIT_STATE_LIFE,GetUnitState(OU3,UNIT_STATE_LIFE)+AO3)
elseif RM2<=110 then
set AO3=(GetUnitAbilityLevel(OU3,1093684531)*0.04+0.04)*PAI
call SetUnitState(OU3,UNIT_STATE_LIFE,GetUnitState(OU3,UNIT_STATE_LIFE)+AO3)
endif
endif
set OU3=null
set Z4O=null
endfunction
function A23 takes nothing returns nothing
local trigger t
if GetUnitAbilityLevel(GetTriggerUnit(),1093684531)==1 then
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function OT3))
call TriggerAddAction(t,function OQ3)
endif
endfunction
function XI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function OS3))
call TriggerAddAction(t,function A23)
endfunction
function A33 takes nothing returns boolean
return GetUnitAbilityLevel(GetTriggerUnit(),1093677142)>0 and GetUnitAbilityLevel(GetAttacker(),1093678162)!=1 and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==false and GetUnitTypeId(GetAttacker())!=1848657461
endfunction
function A43 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetAttacker()
local integer SUI=GetUnitAbilityLevel(P7I,1093677142)
local integer A53=GetHeroStr(P7I,true)
local real PAI=(14+2*SUI)+(0.18+0.08*SUI)*A53
call P6I(P7I,P8I,2,PAI)
set P7I=null
set P8I=null
endfunction
function X21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function A33))
call TriggerAddAction(t,function A43)
endfunction
function A63 takes nothing returns nothing
call P6I(B2I,GetEnumUnit(),1,B3I)
endfunction
function A73 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093816142)
local real A83
local group g=NTI()
set B3I=100+SUI*75
set B2I=P7I
set GK=P7I
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),190+25,Condition(function CE1))
call ForGroup(g,function A63)
set A83=B3I
if GetUnitState(P7I,UNIT_STATE_LIFE)<=A83*0.75 then
set A83=GetUnitState(P7I,UNIT_STATE_LIFE)/0.75-10
endif
call P6I(P7I,P7I,1,A83)
call DestroyEffect(AddSpecialEffect("war3mapImported\\DoubleEdgeTarget.mdx",GetUnitX(P8I),GetUnitY(P8I)))
set P7I=null
set P8I=null
endfunction
function A93 takes nothing returns boolean
if GetSpellAbilityId()==1093816142 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call A73()
else
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\DoubleEdgeCaster.mdx",GetTriggerUnit(),"hand, right"))
endif
endif
return false
endfunction
function XO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function A93))
set t=null
endfunction
function AA3 takes nothing returns nothing
local integer AB3
if RKI(GetEnumUnit())==false and((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((4332))))==1)==false then
call SCI(GetEnumUnit(),4332,3.75)
set AB3=B6I
call P6I(B5I,GetEnumUnit(),1,(AB3)*GetHeroStr(B4I,true))
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093816139,false)
call IA1(GetEnumUnit(),1093816139)
call AX1(GetEnumUnit(),1093816139,1,1.5,1110460230)
endif
endfunction
function AC3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local group g
if GetTriggerEvalCount(t)>=R2I(20*3.75)or GetTriggerEventId()==EVENT_WIDGET_DEATH then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitPathing(P7I,true)
call UnitRemoveAbility(P7I,1093816116)
call UnitRemoveAbility(P7I,1110460226)
else
set g=NTI()
set GK=P7I
set B4I=I01
set B5I=P7I
set B6I=SUI
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),105+25,Condition(function CA1))
call ForGroup(g,function AA3)
call NSI(g)
endif
set t=null
set P7I=null
set g=null
return false
endfunction
function AD3 takes nothing returns nothing
local unit P7I=GetEnumUnit()
local integer SUI=GetUnitAbilityLevel(B4I,1093816118)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitPathing(P7I,false)
call IA1(P7I,1093816116)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function AC3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(B4I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\SandBreathDamageSmall.mdx",P7I,"foot, left")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\SandBreathDamageSmall.mdx",P7I,"foot, right")))
set P7I=null
set t=null
endfunction
function AE3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local group g=NTI()
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set B4I=P7I
set GK=P7I
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function CN1))
call ForGroup(g,function AD3)
call NSI(g)
set t=null
set P7I=null
set g=null
return false
endfunction
function AF3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local sound PGI=CreateSound("abilities\\Spells\\Other\\Stampede\\StampedeCaster1.wav",false,false,false,10,10,"DefaultEAXON")
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call StartSound(PGI)
call KillSoundWhenDone(PGI)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function AE3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set PGI=null
endfunction
function AG3 takes nothing returns boolean
if GetSpellAbilityId()==1093816118 then
call AF3()
endif
return false
endfunction
function X31 takes nothing returns nothing
local trigger t=CreateTrigger()
call Q1I(1093816116)
call Q1I(1093687350)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AG3))
call CreateSound("abilities\\Spells\\Other\\Stampede\\StampedeCaster1.wav",false,false,false,10,10,"DefaultEAXON")
set t=null
endfunction
function AH3 takes nothing returns boolean
return GetSpellAbilityId()==1093684310 or GetSpellAbilityId()==1093815619
endfunction
function AZ3 takes nothing returns boolean
if(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false)then
if(IsUnitAliveBJ(GetFilterUnit()))then
if RYI(GetFilterUnit())==false then
if(GetUnitTypeId(GetFilterUnit())!=1852010352)then
if(GetUnitAbilityLevel(GetFilterUnit(),1097167976)==1)then
if((GetUnitAbilityLevel(GetFilterUnit(),1093684047)==1)or(GetUnitAbilityLevel(GetFilterUnit(),1093684049)==1)or(GetUnitAbilityLevel(GetFilterUnit(),1093684050)==1)or(GetUnitAbilityLevel(GetFilterUnit(),1093684048)==1))then
return true
endif
endif
endif
endif
endif
endif
return false
endfunction
function AV3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit AW3=(LoadUnitHandle(LY,(S5I),(2)))
local unit u=(LoadUnitHandle(LY,(S5I),(26)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local boolean AX3=(LoadBoolean(LY,(S5I),(95)))
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if E31(GetSpellAbilityId())and GetSpellTargetUnit()==u then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set AW3=null
set u=null
endif
return false
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
if(LoadBoolean(LY,(GetHandleId(u)),(80)))==false and GetUnitAbilityLevel(u,1093678162)==0 then
call SCI(u,4409,1)
if AX3 then
call SetUnitPosition(u,GetUnitX(AW3),GetUnitY(AW3))
else
call SetUnitPosition(u,x,y)
endif
endif
if(LoadBoolean(LY,(GetHandleId(u)),(80)))==true then
call PZI(GetOwningPlayer(AW3),GetObjectName(1848652598))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set AW3=null
set u=null
return false
endfunction
function AY3 takes unit u,unit AJ3,integer AK3,real x,real y,boolean AX3 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if IsUnitOwnedByPlayer(u,GetOwningPlayer(AJ3))and AX3==false then
call TriggerRegisterTimerEvent(t,0.1,false)
else
call TriggerRegisterTimerEvent(t,7-AK3,false)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
endif
call TriggerAddCondition(t,Condition(function AV3))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\Test_of_Faith_FX.mdx",u,"overhead")))
call SaveUnitHandle(LY,(S5I),(26),(u))
call SaveUnitHandle(LY,(S5I),(2),(AJ3))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveBoolean(LY,(S5I),(95),(AX3))
set t=null
endfunction
function AL3 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local unit AW3=GetTriggerUnit()
local location BFO=GetUnitLoc(AW3)
local unit I01
local integer AK3=GetUnitAbilityLevel(AW3,1093684310)
local real DH1
local group Z51
local unit GB2
local location AM3
local effect fx
if(TII(GetOwningPlayer(AW3)))then
set AM3=GetRectCenter(O4)
else
set AM3=GetRectCenter(S3)
endif
if P8I==AW3 then
set Z51=NTI()
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(AW3),Condition(function AZ3))
loop
exitwhen CountUnitsInGroup(Z51)==0
set GB2=GroupPickRandomUnit(Z51)
call GroupRemoveUnit(Z51,GB2)
call AY3(GB2,AW3,AK3,GetLocationX(AM3),GetLocationY(AM3),true)
endloop
call NSI(Z51)
elseif(IsUnitAlly(P8I,GetOwningPlayer(AW3))==false)then
if NNI(GetSpellTargetUnit())==false then
set DH1=GetRandomInt(50*AK3,100*AK3)
call UYI(I2S(R2I(DH1)),1,P8I,0.023,255,255,0,216)
call UnitDamageTargetBJ(AW3,P8I,DH1,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC)
set fx=AddSpecialEffectTargetUnitBJ("chest",P8I,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl")
call DestroyEffect(fx)
endif
else
if(IsUnitType(P8I,UNIT_TYPE_HERO)==true)then
if((LoadBoolean(LY,(GetHandleId(GetOwningPlayer(P8I))),(139)))==false)then
call AY3(P8I,AW3,AK3,GetLocationX(AM3),GetLocationY(AM3),false)
endif
elseif(IsUnitOwnedByPlayer(P8I,GetOwningPlayer(AW3))==true)then
call SetUnitPositionLoc(P8I,AM3)
endif
endif
call RemoveLocation(BFO)
call RemoveLocation(AM3)
endfunction
function AN3 takes nothing returns boolean
if GetLearnedSkill()==1093684310 and IsUnitIllusion(GetTriggerUnit())==false then
call IA1(GetTriggerUnit(),1093815619)
call SetUnitAbilityLevel(GetTriggerUnit(),1093815619,GetUnitAbilityLevel(GetTriggerUnit(),1093684310))
endif
return false
endfunction
function X71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AH3))
call TriggerAddAction(t,function AL3)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function AN3))
endfunction
function AS3 takes nothing returns boolean
if(not(GetSpellAbilityId()==1093678649))then
return false
endif
return true
endfunction
function AT3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit AW3=(LoadUnitHandle(LY,(S5I),(2)))
local integer AR3=(LoadInteger(LY,(S5I),(157)))
local group Z51=NTI()
local unit GB2
call GroupEnumUnitsOfPlayer(Z51,GetOwningPlayer(AW3),Condition(function AZ3))
loop
exitwhen(CountUnitsInGroup(Z51)<=AR3)
set GB2=GroupPickRandomUnit(Z51)
call GroupRemoveUnit(Z51,GB2)
call KillUnit(GB2)
endloop
call NSI(Z51)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set AW3=null
set t=null
set Z51=null
set GB2=null
return false
endfunction
function AP3 takes nothing returns nothing
local unit AQ3=GetSpellTargetUnit()
local unit AW3=GetTriggerUnit()
local integer AK3=GetUnitAbilityLevel(AW3,1093678649)
local integer AR3=1
local integer playerid=GetPlayerId(GetOwningPlayer(AW3))
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call QSI(AQ3)
if(AK3==1)then
set AR3=1
call IA1(AQ3,1093684047)
endif
if(AK3==2)then
set AR3=2
call IA1(AQ3,1093684049)
endif
if(AK3==3)then
set AR3=3
call IA1(AQ3,1093684050)
endif
if(AK3==4)then
set AR3=4
call IA1(AQ3,1093684048)
endif
call IA1(AQ3,1097167976)
call IA1(AQ3,1093743175)
call SaveUnitHandle(LY,(S5I),(2),(AW3))
call SaveInteger(LY,(S5I),(157),(AR3))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function AT3))
set t=null
set AQ3=null
set AW3=null
endfunction
function AU3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01
local real x
local real y
local integer SUI=GetUnitAbilityLevel(P7I,1093810260)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093818702)
endif
if IsUnitEnemy(P8I,GetOwningPlayer(P7I))then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093678649)
call SetUnitAbilityLevel(I01,1093678649,SUI)
call IssueTargetOrder(I01,"charm",P8I)
else
if TII(GetOwningPlayer(P7I))then
set x=GetRectCenterX(O4)
set y=GetRectCenterY(O4)
else
set x=GetRectCenterX(S3)
set y=GetRectCenterY(S3)
endif
if(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(P8I))),(139)))==false then
call AY3(P8I,P7I,SUI,x,y,false)
endif
endif
set P7I=null
set P8I=null
set I01=null
endfunction
function B03 takes nothing returns boolean
if(GetSpellAbilityId()==1093810260 or GetSpellAbilityId()==1093818702)and NNI(GetSpellTargetUnit())==false then
call AU3()
endif
return false
endfunction
function BI3 takes nothing returns boolean
if GetSpellAbilityId()==1093810260 then
if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true then
if IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetSpellTargetUnit())then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848658745))
endif
endif
endif
return false
endfunction
function X61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function AS3))
call TriggerAddAction(t,function AP3)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function BI3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function B03))
set t=null
endfunction
function B13 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real BO3
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamage()>10 then
set BO3=GetEventDamage()*(0.1+0.04*SUI)
call DisableTrigger(t)
call P6I(GetEventDamageSource(),GetTriggerUnit(),3,BO3)
call EnableTrigger(t)
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
return false
endfunction
function B23 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093684045)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl",P7I,"chest"))
call SaveInteger(LY,(S5I),(5),(SUI))
call TriggerRegisterTimerEvent(t,4+SUI,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function B13))
set t=null
set P8I=null
set P7I=null
endfunction
function B33 takes nothing returns boolean
if GetSpellAbilityId()==1093684045 then
call B23()
endif
return false
endfunction
function X41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function B33))
set t=null
endfunction
function B43 takes nothing returns boolean
return GetSpellAbilityId()==1093684308 or GetSpellAbilityId()==1093747539
endfunction
function B53 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction
function B63 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local integer AK3=GetUnitAbilityLevel(PKI,1093684308)
local group Z51=NTI()
local unit GB2
if AK3==0 then
set AK3=GetUnitAbilityLevel(PKI,1093747539)
endif
call GroupEnumUnitsInRect(Z51,bj_mapInitialPlayableArea,Condition(function B53))
loop
set GB2=FirstOfGroup(Z51)
exitwhen GB2==null
if(IsUnitAlly(GB2,GetOwningPlayer(PKI))==true)then
call SetWidgetLife(GB2,(GetUnitStateSwap(UNIT_STATE_LIFE,GB2)+100+(100*AK3)))
call DestroyEffect(AddSpecialEffectTargetUnitBJ("chest",GB2,"Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl"))
endif
call GroupRemoveUnit(Z51,GB2)
endloop
call NSI(Z51)
set Z51=NTI()
set bj_groupEnumOwningPlayer=GetOwningPlayer(PKI)
call GroupEnumUnitsInRect(Z51,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
loop
set GB2=FirstOfGroup(Z51)
exitwhen GB2==null
if(IsUnitType(GB2,UNIT_TYPE_HERO)==false and GetUnitTypeId(GB2)!=1848651843)then
call SetUnitLifePercentBJ(GB2,100)
call DestroyEffect(AddSpecialEffectTargetUnitBJ("chest",GB2,"Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl"))
endif
call GroupRemoveUnit(Z51,GB2)
endloop
call NSI(Z51)
endfunction
function X51 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function B43))
call TriggerAddAction(t,function B63)
endfunction
function B73 takes nothing returns nothing
if RYI(GetEnumUnit())==false then
call P6I(B8I,GetEnumUnit(),1,B7I)
endif
endfunction
function B83 takes unit P7I,real x,real y returns nothing
local real x1
local real y1
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(P7I,1093687862)
local real PAI=40+40*SUI
set GK=P7I
set B8I=P7I
set B7I=PAI
call GroupEnumUnitsInRange(g,x,y,600,Condition(function CA1))
call ForGroup(g,function B73)
call NSI(g)
set x1=x
set y1=y
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x1,y1))
set x1=x+200
set y1=y+200
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x1,y1))
set x1=x+200
set y1=y-200
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x1,y1))
set x1=x-200
set y1=y+200
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x1,y1))
set x1=x-200
set y1=y-200
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",x1,y1))
call I41(GetOwningPlayer(P7I),10,x,y,600)
set g=null
endfunction
function B93 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local real IV1=PTI(QXI+30*Cos(RM2))
local real IW1=PUI(QYI+30*Sin(RM2))
local real BA3
local real BB3
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
call SaveReal(LY,(S5I),(189),((IV1)*1.0))
call SaveReal(LY,(S5I),(190),((IW1)*1.0))
if UTI(QJI,QKI,IV1,IW1)<=35 then
call KillUnit(IG1)
set SFI=(LoadUnitHandle(LY,(S5I),(14)))
call B83(SFI,IV1,IW1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
set IG1=null
return false
endfunction
function BC3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local real QXI=PTI(GetUnitX(SFI))
local real QYI=PUI(GetUnitY(SFI))
local location AM3=GetSpellTargetLoc()
local real QJI=PTI(GetLocationX(AM3))
local real QKI=PUI(GetLocationY(AM3))
local real RM2=Atan2(QKI-QYI,QJI-QXI)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(SFI),1747989337,QXI,QYI,RM2*bj_RADTODEG)
call RemoveLocation(AM3)
call SetUnitFacing(IG1,RM2*bj_RADTODEG)
call SetUnitPathing(IG1,false)
call IA1(IG1,1097625443)
call ShowUnit(IG1,false)
call UnitRemoveAbility(IG1,1097625443)
call ShowUnit(IG1,true)
call SaveReal(LY,(S5I),(191),((QXI)*1.0))
call SaveReal(LY,(S5I),(192),((QYI)*1.0))
call SaveReal(LY,(S5I),(189),((QXI)*1.0))
call SaveReal(LY,(S5I),(190),((QYI)*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call TriggerRegisterTimerEvent(t,0.025,true)
call TriggerAddCondition(t,Condition(function B93))
set SFI=null
set AM3=null
set t=null
set IG1=null
endfunction
function BD3 takes nothing returns boolean
if GetSpellAbilityId()==1093687862 then
call BC3()
endif
return false
endfunction
function TE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function BD3))
set t=null
endfunction
function BE3 takes real s,real d1,real d2,real d3 returns boolean
return s<=d1 and s<=d2 and s<=d3
endfunction
function BF3 takes unit u,real x,real y,real d returns real
local real x2=GetUnitX(u)
local real y2=GetUnitY(u)
local real BG3=QNI(x-d,y,x2,y2)
local real BH3=QNI(x+d,y,x2,y2)
local real BZ3=QNI(x,y+d,x2,y2)
local real BV3=QNI(x,y-d,x2,y2)
if BE3(BG3,BH3,BV3,BZ3)then
return 180.0
elseif BE3(BH3,BG3,BV3,BZ3)then
return 0.0
elseif BE3(BV3,BH3,BG3,BZ3)then
return 270.0
endif
return 90.0
endfunction
function BW3 takes real s,real d1,real d2,real d3,real d4,real d5,real d6,real d7 returns boolean
return s<=d1 and s<=d2 and s<=d3 and s<=d4 and s<=d5 and s<=d6 and s<=d7
endfunction
function BX3 takes unit u,integer S5I returns unit
local real x1=GetUnitX(u)
local real y1=GetUnitY(u)
local unit BY3=(LoadUnitHandle(LY,(S5I),(1100+1)))
local unit BJ3=(LoadUnitHandle(LY,(S5I),(1100+2)))
local unit BK3=(LoadUnitHandle(LY,(S5I),(1100+3)))
local unit BL3=(LoadUnitHandle(LY,(S5I),(1100+4)))
local unit BM3=(LoadUnitHandle(LY,(S5I),(1100+5)))
local unit BN3=(LoadUnitHandle(LY,(S5I),(1100+6)))
local unit BS3=(LoadUnitHandle(LY,(S5I),(1100+7)))
local unit BT3=(LoadUnitHandle(LY,(S5I),(1100+8)))
local real d1=QNI(x1,y1,GetUnitX(BY3),GetUnitY(BY3))
local real d2=QNI(x1,y1,GetUnitX(BJ3),GetUnitY(BJ3))
local real d3=QNI(x1,y1,GetUnitX(BK3),GetUnitY(BK3))
local real d4=QNI(x1,y1,GetUnitX(BL3),GetUnitY(BL3))
local real d5=QNI(x1,y1,GetUnitX(BM3),GetUnitY(BM3))
local real d6=QNI(x1,y1,GetUnitX(BN3),GetUnitY(BN3))
local real d7=QNI(x1,y1,GetUnitX(BS3),GetUnitY(BS3))
local real d8=QNI(x1,y1,GetUnitX(BT3),GetUnitY(BT3))
if BW3(d1,d2,d3,d4,d5,d6,d7,d8)then
return BY3
elseif BW3(d2,d1,d3,d4,d5,d6,d7,d8)then
return BJ3
elseif BW3(d3,d2,d1,d4,d5,d6,d7,d8)then
return BK3
elseif BW3(d4,d2,d3,d1,d5,d6,d7,d8)then
return BL3
elseif BW3(d5,d2,d3,d4,d1,d6,d7,d8)then
return BM3
elseif BW3(d6,d2,d3,d4,d5,d1,d7,d8)then
return BN3
elseif BW3(d7,d2,d3,d4,d5,d6,d1,d8)then
return BS3
elseif BW3(d8,d2,d3,d4,d5,d6,d7,d1)then
return BT3
endif
return null
endfunction
function BR3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local real RS2=12
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer BP3=40+40*SUI
if GetTriggerEvalCount(t)>21 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SaveInteger(LY,(GetHandleId((P8I))),((4260)),(2))
call P6I(P7I,P8I,1,I2R(BP3))
call SetUnitState(P8I,UNIT_STATE_MANA,QDI(GetUnitState(P8I,UNIT_STATE_MANA)-BP3,0))
call UPI(GetUnitX(P8I),GetUnitY(P8I),100)
else
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",x,y))
call UPI(x,y,150)
if((LoadInteger(LY,(GetHandleId((P8I))),((4261))))==1)==false then
call SetUnitPosition(P8I,x+RS2*Cos(RM2*bj_DEGTORAD),y+RS2*Sin(RM2*bj_DEGTORAD))
endif
endif
set t=null
set P8I=null
return false
endfunction
function BQ3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetEnumUnit()
local real x=AK
local real y=BK
local real d=CK
local real RM2=BF3(P8I,x,y,d)
local real BU3=200
local real C03=d-QNI(GetUnitX(P8I),GetUnitY(P8I),x,y)+BU3/2
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",P8I,"chest"))
call SaveInteger(LY,(GetHandleId((P8I))),((4260)),(1))
if C03>0 then
call SetUnitX(P8I,GetUnitX(P8I)+C03*Cos(RM2*bj_DEGTORAD))
call SetUnitY(P8I,GetUnitY(P8I)+C03*Sin(RM2*bj_DEGTORAD))
endif
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveInteger(LY,(S5I),(5),(UJ))
call SaveUnitHandle(LY,(S5I),(2),(GK))
call TriggerRegisterTimerEvent(t,0.04,true)
call TriggerAddCondition(t,Condition(function BR3))
set t=null
set P8I=null
endfunction
function CI3 takes unit u,integer S5I returns boolean
local unit C13=BX3(u,S5I)
local boolean FB1=true
if IC1(C13)or(LoadInteger(LY,(GetHandleId(C13)),(156)))==1 then
set FB1=false
endif
call SaveInteger(LY,(GetHandleId(C13)),(156),(1))
call SetUnitVertexColor(C13,25,25,25,175)
set C13=null
return FB1
endfunction
function CO3 takes nothing returns nothing
if GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)>0 and IsUnitInGroup(GetEnumUnit(),XK)==false and((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((4260))))==1)==false and CI3(GetEnumUnit(),B9I)then
call SaveInteger(LY,(GetHandleId((GetEnumUnit()))),((4260)),(1))
call GroupAddUnit(YK,GetEnumUnit())
endif
endfunction
function C23 takes trigger t,unit SFI,real x,real y,real d,integer SUI returns nothing
local integer S5I=GetHandleId(t)
local real BU3=200
local rect r1=Rect(x-d,y-d,x+d,y+d)
local rect r2=Rect(x-d-BU3,y-d-BU3,x+d+BU3,y+d+BU3)
local group g1=NTI()
local group g2=NTI()
local group g3=NTI()
set GK=SFI
call GroupEnumUnitsInRect(g1,r1,Condition(function CE1))
call GroupEnumUnitsInRect(g2,r2,Condition(function CE1))
set XK=g1
set YK=g3
set AK=x
set BK=y
set CK=d
set B9I=S5I
call ForGroup(g2,function CO3)
set UJ=SUI
call ForGroup(g3,function BQ3)
call NSI(g1)
call NSI(g2)
call NSI(g3)
call RemoveRect(r1)
call RemoveRect(r2)
set g1=null
set g2=null
set g3=null
set r1=null
set r2=null
endfunction
function C33 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local boolean C43=(LoadBoolean(LY,(S5I),(155)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if C43 then
call I41(p,.2,x,y,500)
endif
set t=null
set p=null
return false
endfunction
function C53 takes unit C63 returns nothing
local real x=GetUnitX(C63)
local real y=GetUnitY(C63)
local player p=GetOwningPlayer(C63)
local unit I01=CreateUnit(p,1966092375,x,y,0)
call KillUnit(I01)
set p=null
set I01=null
endfunction
function C73 takes integer S5I,real x,real y,boolean C43,player p returns nothing
local unit BY3=(LoadUnitHandle(LY,(S5I),(1100+1)))
local unit BJ3=(LoadUnitHandle(LY,(S5I),(1100+2)))
local unit BK3=(LoadUnitHandle(LY,(S5I),(1100+3)))
local unit BL3=(LoadUnitHandle(LY,(S5I),(1100+4)))
local unit BM3=(LoadUnitHandle(LY,(S5I),(1100+5)))
local unit BN3=(LoadUnitHandle(LY,(S5I),(1100+6)))
local unit BS3=(LoadUnitHandle(LY,(S5I),(1100+7)))
local unit BT3=(LoadUnitHandle(LY,(S5I),(1100+8)))
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.1,false)
call TriggerAddCondition(t,Condition(function C33))
call SaveReal(LY,(GetHandleId(t)),(6),((x)*1.0))
call SaveReal(LY,(GetHandleId(t)),(7),((y)*1.0))
call SavePlayerHandle(LY,(GetHandleId(t)),(54),(p))
call SaveBoolean(LY,(GetHandleId(t)),(155),(C43))
set BAI=true
call C53(BY3)
call RemoveUnit(BY3)
call C53(BJ3)
call RemoveUnit(BJ3)
call C53(BK3)
call RemoveUnit(BK3)
call C53(BL3)
call RemoveUnit(BL3)
call C53(BM3)
call RemoveUnit(BM3)
call C53(BN3)
call RemoveUnit(BN3)
call C53(BS3)
call RemoveUnit(BS3)
call C53(BT3)
call RemoveUnit(BT3)
set BY3=null
set BJ3=null
set BK3=null
set BL3=null
set BM3=null
set BN3=null
set BS3=null
set BT3=null
endfunction
function PowerCog_DeathBurn takes nothing returns nothing
local integer BP3=(40+40*BCI)/2
call P6I(BBI,GetEnumUnit(),1,I2R(BP3))
call SetUnitState(GetEnumUnit(),UNIT_STATE_MANA,QDI(GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)-BP3,0))
endfunction
function C83 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit C63=(LoadUnitHandle(LY,(S5I),(19)))
local group g
if BAI==false then
set g=NTI()
set GK=C63
set BBI=C63
call GroupEnumUnitsInRange(g,GetUnitX(C63),GetUnitY(C63),175+25,Condition(function CE1))
call NSI(g)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set g=null
set C63=null
return false
endfunction
function C93 takes unit C63,integer S5I,integer MLI,player p returns nothing
local trigger t=CreateTrigger()
local integer KAO=GetHandleId(t)
call TriggerRegisterDeathEvent(t,C63)
call SaveUnitHandle(LY,(KAO),(19),(C63))
call TriggerAddCondition(t,Condition(function C83))
if IsUnitVisible(C63,p)then
call SaveBoolean(LY,(S5I),(155),(true))
endif
call SaveUnitHandle(LY,(S5I),(1100+MLI),(C63))
endfunction
function CA3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real DC1=(LoadReal(LY,(S5I),(57)))
local integer NPI=GetTriggerEvalCount(t)
if NPI>R2I(DC1*100)then
call C73(S5I,(LoadReal(LY,(S5I),(6))),(LoadReal(LY,(S5I),(7))),(LoadBoolean(LY,(S5I),(155))),(LoadPlayerHandle(LY,(S5I),(154))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call C23(t,(LoadUnitHandle(LY,(S5I),(14))),(LoadReal(LY,(S5I),(6))),(LoadReal(LY,(S5I),(7))),(LoadReal(LY,(S5I),(138))),(LoadInteger(LY,(S5I),(5))))
endif
set t=null
return false
endfunction
function CB3 takes nothing returns nothing
call SetUnitX(GetEnumUnit(),GetUnitX(GK))
call SetUnitY(GetEnumUnit(),GetUnitY(GK))
endfunction
function CC3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=GetUnitAbilityLevel(SFI,1093687861)
local integer ID=1966092371
local real x1=GetUnitX(SFI)
local real y1=GetUnitY(SFI)
local real x2
local real y2
local real d=125
local unit C63
local real DC1=4+SUI
local real BufferDuration=5
local group g
local rect CD3
local player VE2
local integer HP=2
if SUI==4 then
set HP=3
endif
set BCI=SUI
set BAI=false
if TII(GetOwningPlayer(SFI))then
set VE2=CO[0]
else
set VE2=BO[0]
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveBoolean(LY,(S5I),(155),(false))
set x2=x1+d
set y2=y1
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,1,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
set x2=x1+d
set y2=y1+d
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,2,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
set x2=x1
set y2=y1+d
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,3,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
set x2=x1-d
set y2=y1+d
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,4,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
set x2=x1-d
set y2=y1
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,5,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
set x2=x1-d
set y2=y1-d
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,6,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
set x2=x1
set y2=y1-d
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,7,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
set x2=x1+d
set y2=y1-d
set C63=CreateUnit(GetOwningPlayer(SFI),ID,x2,y2,0)
call SetUnitPosition(C63,x2,y2)
call C93(C63,S5I,8,VE2)
call SetUnitState(C63,UNIT_STATE_LIFE,HP)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerAddCondition(t,Condition(function CA3))
call SaveReal(LY,(S5I),(57),((DC1)*1.0))
call SaveReal(LY,(S5I),(6),((x1)*1.0))
call SaveReal(LY,(S5I),(7),((y1)*1.0))
call SaveReal(LY,(S5I),(138),((d)*1.0))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(5),(SUI))
call SavePlayerHandle(LY,(S5I),(154),(VE2))
set d=d+110
set g=NTI()
set CD3=Rect(x1-d,y1-d,x1+d,y1+d)
set GK=SFI
call GroupEnumUnitsInRect(g,CD3,Condition(function DO1))
call ForGroup(g,function CB3)
call NSI(g)
set t=null
set g=null
set SFI=null
set C63=null
set CD3=null
set VE2=null
return false
endfunction
function CE3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,0.1,false)
call TriggerAddCondition(t,Condition(function CC3))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
set t=null
set SFI=null
endfunction
function CF3 takes nothing returns boolean
if GetSpellAbilityId()==1093687861 then
call CE3()
endif
return false
endfunction
function TD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CF3))
set t=null
set BAI=false
endfunction
function CG3 takes unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093687864)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093747542)
endif
call IA1(I01,1093687865)
call SetUnitAbilityLevel(I01,1093687865,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
set I01=null
endfunction
function CH3 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XK)==false then
call GroupAddUnit(XK,GetEnumUnit())
call CG3(GK,GetEnumUnit())
endif
endfunction
function CZ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer CV3=(LoadInteger(LY,(S5I),(18)))
local integer NPI=GetTriggerEvalCount(t)
local unit CW3
local group CX3=(LoadGroupHandle(LY,(S5I),(16)))
local group g
local real CY3=200
if P8I==null then
set CW3=(LoadUnitHandle(LY,(S5I),(700+CV3+1-NPI)))
call RemoveUnit(CW3)
else
set CW3=(LoadUnitHandle(LY,(S5I),(700+NPI)))
call SetUnitX(SFI,GetUnitX(CW3))
call SetUnitY(SFI,GetUnitY(CW3))
call RemoveUnit(CW3)
if NPI==CV3 then
set CY3=225
endif
set g=NTI()
set GK=SFI
set XK=CX3
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),CY3,Condition(function CD1))
call ForGroup(g,function CH3)
call NSI(g)
endif
if NPI==(CV3)then
if P8I!=null then
call PauseUnit(P8I,false)
endif
call UPI(GetUnitX(SFI),GetUnitY(SFI),100)
call NSI(CX3)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
set P8I=null
set CW3=null
set CX3=null
set g=null
return false
endfunction
function CJ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local integer MKO=(LoadInteger(LY,(S5I),(12)))
local integer NPI=GetTriggerEvalCount(t)
local real x=GetUnitX(SFI)+NPI*50*Cos(RM2*bj_DEGTORAD)
local real y=GetUnitY(SFI)+NPI*50*Sin(RM2*bj_DEGTORAD)
local boolean CK3=(LoadBoolean(LY,(S5I),(15)))
local unit CL3
local trigger CM3=(LoadTriggerHandle(LY,(S5I),(11)))
local integer CN3=GetHandleId(CM3)
local group g=NTI()
local unit P8I=null
local integer ID=1966092374
local real CY3=125
if NPI==1 then
set CY3=100
endif
set GK=SFI
call GroupEnumUnitsInRange(g,x,y,CY3,Condition(function C21))
call GroupRemoveUnit(g,SFI)
set P8I=GroupPickRandomUnit(g)
call NSI(g)
if P8I!=null or NPI==MKO or NPI==(MKO-1)or NPI==(MKO-2)then
set ID=1966092373
endif
set CL3=CreateUnit(GetOwningPlayer(SFI),ID,x,y,RM2)
call SaveUnitHandle(LY,(CN3),(700+NPI),(CL3))
if P8I!=null then
if(IsUnitAlly(P8I,GetOwningPlayer(SFI))==true and CK3==false)or((LoadInteger(LY,(GetHandleId((P8I))),((4259))))==1)==true then
set P8I=null
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if P8I!=null and IsUnitAlly(P8I,GetOwningPlayer(SFI))==false then
call PauseUnit(P8I,true)
endif
call TriggerRegisterTimerEvent(CM3,0.5/MKO,true)
call TriggerAddCondition(CM3,Condition(function CZ3))
call SaveInteger(LY,(CN3),(18),(NPI))
call SaveUnitHandle(LY,(CN3),(17),(P8I))
call SaveUnitHandle(LY,(CN3),(14),(SFI))
call SaveGroupHandle(LY,(CN3),(16),(NTI()))
elseif NPI>MKO then
set P8I=null
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call TriggerRegisterTimerEvent(CM3,0.5/MKO,true)
call TriggerAddCondition(CM3,Condition(function CZ3))
call SaveInteger(LY,(CN3),(18),(NPI))
call SaveUnitHandle(LY,(CN3),(17),(P8I))
call SaveUnitHandle(LY,(CN3),(14),(SFI))
call SaveGroupHandle(LY,(CN3),(16),(NTI()))
endif
set t=null
set SFI=null
set CL3=null
set CM3=null
set g=null
set P8I=null
return false
endfunction
function CS3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real RM2=UEI(GetUnitX(SFI),GetUnitY(SFI),GetLocationX(l),GetLocationY(l))
local integer SUI=GetUnitAbilityLevel(SFI,1093687864)
local integer CT3
local integer MKO
local boolean CK3=true
local trigger CR3=CreateTrigger()
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093747542)
set CK3=true
endif
set CT3=1500+500*SUI
set MKO=CT3/50
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveInteger(LY,(S5I),(12),(MKO))
call SaveTriggerHandle(LY,(S5I),(11),(CR3))
call SaveBoolean(LY,(S5I),(15),(CK3))
call TriggerRegisterTimerEvent(t,0.5/MKO,true)
call TriggerAddCondition(t,Condition(function CJ3))
call RemoveLocation(l)
set t=null
set SFI=null
set l=null
endfunction
function CP3 takes nothing returns boolean
if GetSpellAbilityId()==1093687864 or GetSpellAbilityId()==1093747542 then
call CS3()
endif
return false
endfunction
function TF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function CP3))
set t=null
endfunction
function CQ3 takes unit P7I returns nothing
local group g=NTI()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit P8I
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
local integer SUI=GetUnitAbilityLevel(P7I,1093687860)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,300,Condition(function CF1))
set P8I=GroupPickRandomUnit(g)
call NSI(g)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",P7I,"origin"))
if P8I!=null then
call IA1(I01,1093687863)
call SetUnitAbilityLevel(I01,1093687863,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
endif
set g=null
set P8I=null
set I01=null
endfunction
function CU3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=GetTriggerEvalCount(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if NPI>15 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call CQ3(SFI)
endif
set t=null
set SFI=null
return false
endfunction
function D03 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,.7,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function CU3))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerEvaluate(t)
set t=null
set SFI=null
endfunction
function DI3 takes nothing returns boolean
if GetSpellAbilityId()==1093687860 then
call D03()
endif
return false
endfunction
function TC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DI3))
set t=null
endfunction
function D13 takes nothing returns nothing
call P6I(BDI,GetEnumUnit(),1,BEI)
endfunction
function DO3 takes unit P7I,real x,real y,integer SUI returns nothing
local group g=NTI()
if SUI==1 then
set BEI=105
elseif SUI==2 then
set BEI=170
elseif SUI==3 then
set BEI=250
elseif SUI==4 then
set BEI=310
endif
set BDI=P7I
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,300+25,Condition(function CA1))
call ForGroup(g,function D13)
call NSI(g)
set g=null
endfunction
function D23 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(GK),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
if GetUnitAbilityLevel(GK,1093677906)>0 then
call IA1(I01,1093742676)
else
call IA1(I01,1093817142)
endif
call IssueTargetOrder(I01,"slow",GetEnumUnit())
set I01=null
endfunction
function D33 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer D43=ModuloInteger(GetTriggerEvalCount(t),4)+1
local real a
local real d
local real x
local real y
local group g=NTI()
set GK=SFI
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),860,Condition(function CA1))
call ForGroup(g,function D23)
call NSI(g)
if D43==1 then
set a=GetRandomReal(0,90)
elseif D43==2 then
set a=GetRandomReal(90,180)
elseif D43==3 then
set a=GetRandomReal(180,270)
else
set a=GetRandomReal(270,360)
endif
set d=GetRandomReal(140,860)
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and(GetSpellAbilityId()==1093677906 or GetSpellAbilityId()==1093681494)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call StopSound(DC,false,true)
else
set x=GetUnitX(SFI)+d*Cos(a*bj_DEGTORAD)
set y=GetUnitY(SFI)+d*Sin(a*bj_DEGTORAD)
call DestroyEffect(AddSpecialEffect("effects\\SnowyBlizzardTarget.mdx",x,y))
call DO3(SFI,x,y,SUI)
endif
set t=null
set SFI=null
return false
endfunction
function D53 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI
call IO1(DC,GetUnitX(SFI),GetUnitY(SFI))
if GetSpellAbilityId()==1093677906 then
set SUI=GetUnitAbilityLevel(SFI,1093677906)
else
set SUI=GetUnitAbilityLevel(SFI,1093681494)+1
endif
call TriggerRegisterTimerEvent(t,0.10,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function D33))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(5),(SUI))
set t=null
set SFI=null
endfunction
function D63 takes nothing returns boolean
if GetSpellAbilityId()==1093677906 or GetSpellAbilityId()==1093681494 then
call D53()
endif
return false
endfunction
function XB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function D63))
call Q1I(1093677912)
set t=null
endfunction
function D73 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697657656,x,y,0)
local integer SUI=GetUnitAbilityLevel(P7I,1093748025)
call IA1(I01,1093677380)
call SetUnitAbilityLevel(I01,1093677380,SUI)
call IssueTargetOrder(I01,"frostnova",I01)
call RemoveLocation(l)
call IA1(I01,1097625443)
call UnitApplyTimedLife(I01,1112820806,2)
set P7I=null
set I01=null
set l=null
endfunction
function D83 takes nothing returns boolean
if GetSpellAbilityId()==1093748025 then
call D73()
endif
return false
endfunction
function X91 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function D83))
set t=null
endfunction
function D93 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1095262562)
if IC1(P7I)==false then
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+(0.5+0.5*SUI)*0.25)
endif
set P7I=null
set t=null
return false
endfunction
function DA3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function D93))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function DB3 takes nothing returns boolean
if GetLearnedSkill()==1095262562 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1095262562)==1 then
call DA3()
endif
return false
endfunction
function X81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function DB3))
set t=null
endfunction
function DC3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=GetUnitAbilityLevel(P7I,1093678147)
local integer NPI=GetTriggerEvalCount(t)
if(IsUnitType(P8I,UNIT_TYPE_HERO)==true and NPI>2+SUI)or NPI>20 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call P6I(P7I,P8I,1,50)
endif
set t=null
return false
endfunction
function DD3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function DC3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set P7I=null
set P8I=null
set t=null
endfunction
function DE3 takes nothing returns boolean
if GetSpellAbilityId()==1093678147 then
call DD3()
endif
return false
endfunction
function XA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DE3))
set t=null
endfunction
function DF3 takes nothing returns boolean
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
function DG3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitAnimationByIndex(P7I,7)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function DF3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function DH3 takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())==1311788336 then
call DG3()
endif
return false
endfunction
function PF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function DH3))
set t=null
endfunction
function DZ3 takes nothing returns nothing
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\ChimaeraLightningMissile\\ChimaeraLightningMissile.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
call P6I(BFI,GetEnumUnit(),1,BGI)
endfunction
function DV3 takes nothing returns boolean
local trigger t2=GetTriggeringTrigger()
local integer KAO=GetHandleId(t2)
local trigger t1=(LoadTriggerHandle(LY,(KAO),(9)))
local integer DW3=GetHandleId(t1)
local unit DX3=(LoadUnitHandle(LY,(KAO),(8)))
local group g
local integer SUI=(LoadInteger(LY,(KAO),(5)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call ShowUnit(DX3,false)
call KillUnit(DX3)
call FlushChildHashtable(LY,(DW3))
call S0I(t1)
call FlushChildHashtable(LY,(KAO))
call S0I(t2)
elseif IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(DX3))==true and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetTriggerUnit(),1093678162)==0 then
set g=NTI()
set GK=DX3
set BFI=DX3
set BGI=100+40*SUI
call GroupEnumUnitsInRange(g,GetUnitX(DX3),GetUnitY(DX3),285,Condition(function CA1))
call ForGroup(g,function DZ3)
call NSI(g)
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetUnitX(DX3),GetUnitY(DX3)))
call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetUnitX(DX3),GetUnitY(DX3)))
call ShowUnit(DX3,false)
call KillUnit(DX3)
call FlushChildHashtable(LY,(DW3))
call S0I(t1)
call FlushChildHashtable(LY,(KAO))
call S0I(t2)
endif
set t1=null
set t2=null
set DX3=null
set g=null
return false
endfunction
function DY3 takes nothing returns boolean
local trigger t1=GetTriggeringTrigger()
local integer DW3=GetHandleId(t1)
local trigger t2
local integer KAO
local unit DX3
local integer SUI
local real x=(LoadReal(LY,(DW3),(6)))
local real y=(LoadReal(LY,(DW3),(7)))
local real NB2
local integer NPI=GetTriggerEvalCount(t1)
if NPI==1 then
call DestroyEffect((LoadEffectHandle(LY,(DW3),(3))))
elseif NPI==2 then
call DestroyEffect((LoadEffectHandle(LY,(DW3),(4))))
set t2=CreateTrigger()
set KAO=GetHandleId(t2)
set SUI=(LoadInteger(LY,(DW3),(5)))
set NB2=(LoadReal(LY,(DW3),(1)))
set DX3=CreateUnit(GetOwningPlayer((LoadUnitHandle(LY,(DW3),(2)))),1747990342,x,y,NB2)
call SetUnitVertexColor(DX3,255,255,255,100)
call UnitApplyTimedLife(DX3,1112820806,12)
call SaveUnitHandle(LY,(DW3),(8),(DX3))
call SaveUnitHandle(LY,(KAO),(8),(DX3))
call SaveTriggerHandle(LY,(KAO),(9),(t1))
call SaveInteger(LY,(KAO),(5),(SUI))
call TriggerRegisterUnitInRange(t2,DX3,235,Condition(function ULI))
call TriggerRegisterUnitEvent(t2,DX3,EVENT_UNIT_DEATH)
call TriggerAddCondition(t2,Condition(function DV3))
call DestroyEffect(AddSpecialEffectTarget("effects\\ManaFlareBoltImpact_NoSound.mdx",DX3,"origin"))
elseif NPI>2 then
set DX3=(LoadUnitHandle(LY,(DW3),(8)))
call DestroyEffect(AddSpecialEffectTarget("effects\\ManaFlareBoltImpact_NoSound.mdx",DX3,"origin"))
endif
set t1=null
set DX3=null
return false
endfunction
function DJ3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t1=CreateTrigger()
local integer DW3=GetHandleId(t1)
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
call TriggerRegisterTimerEvent(t1,0.5,true)
call TriggerAddCondition(t1,Condition(function DY3))
call SaveReal(LY,(DW3),(6),((x)*1.0))
call SaveReal(LY,(DW3),(7),((y)*1.0))
call SaveInteger(LY,(DW3),(5),(GetUnitAbilityLevel(P7I,1093743696)))
call SaveUnitHandle(LY,(DW3),(2),(P7I))
call SaveReal(LY,(DW3),(1),((GetUnitFacing(P7I))*1.0))
call SaveEffectHandle(LY,(DW3),(3),(AddSpecialEffect("Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl",x,y)))
call SaveEffectHandle(LY,(DW3),(4),(AddSpecialEffect("effects\\Static_Remnant_FX.mdx",x,y)))
set P7I=null
set t1=null
endfunction
function DK3 takes nothing returns boolean
if GetSpellAbilityId()==1093743696 then
call DJ3()
endif
return false
endfunction
function SE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DK3))
set t=null
endfunction
function DL3 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(BHI),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call IA1(I01,1093686069)
call IssueTargetOrder(I01,"slow",GetEnumUnit())
call P6I(BHI,GetEnumUnit(),1,BZI)
set I01=null
endfunction
function DM3 takes unit P7I,unit P8I returns nothing
local integer S5I=GetHandleId(P7I)
local group g=NTI()
call DestroyEffect((LoadEffectHandle(LY,(S5I),(200))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(201))))
call SaveInteger(LY,(GetHandleId((P7I))),((4264)),(2))
set GK=P7I
set BHI=P7I
set BZI=GetUnitAbilityLevel(P7I,1093685591)*20+10
call GroupEnumUnitsInRange(g,GetUnitX(P8I),GetUnitY(P8I),300,Condition(function CA1))
call ForGroup(g,function DL3)
call NSI(g)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl",GetUnitX(P8I),GetUnitY(P8I)))
set g=null
endfunction
function DN3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local trigger DS3=(LoadTriggerHandle(LY,(S5I),(202)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I and((LoadInteger(LY,(GetHandleId((P7I))),((4264))))==1)==true then
call DisableTrigger(t)
call DM3(P7I,P8I)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call FlushChildHashtable(LY,(GetHandleId(DS3)))
call S0I(DS3)
endif
else
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
set P7I=null
set DS3=null
return false
endfunction
function DT3 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function DN3))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveTriggerHandle(LY,(S5I),(202),(GetTriggeringTrigger()))
set t=null
set P8I=null
set P7I=null
endfunction
function DR3 takes nothing returns boolean
if GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false then
call DT3()
endif
return false
endfunction
function DP3 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P7I=GetTriggerUnit()
local integer S5I=GetHandleId(P7I)
local string fx=""
if IsUnitAlly(P7I,GetLocalPlayer())or P0I(GetLocalPlayer())then
set fx="Abilities\\Weapons\\FarseerMissile\\FarseerMissile.mdl"
endif
call SaveEffectHandle(LY,(S5I),(200),(AddSpecialEffectTarget(fx,P7I,"right hand")))
call SaveEffectHandle(LY,(S5I),(201),(AddSpecialEffectTarget(fx,P7I,"left hand")))
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function DR3))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
set t=null
endfunction
function DQ3 takes nothing returns boolean
if(GetSpellAbilityId()==1093743695 or GetSpellAbilityId()==1093743696 or GetSpellAbilityId()==1093743698)and((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4264))))==1)==false then
call SaveInteger(LY,(GetHandleId((GetTriggerUnit()))),((4264)),(1))
call DP3()
endif
return false
endfunction
function DU3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function DQ3))
set P7I=null
set t=null
endfunction
function E03 takes nothing returns boolean
if GetLearnedSkill()==1093685591 and GetUnitAbilityLevel(GetTriggerUnit(),1093685591)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call DU3()
endif
return false
endfunction
function SG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function E03))
set t=null
endfunction
function EI3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real x=GetUnitX(P8I)-5*Cos(RM2)
local real y=GetUnitY(P8I)-5*Sin(RM2)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real x0=(LoadReal(LY,(S5I),(6)))
local real y0=(LoadReal(LY,(S5I),(7)))
if((x0-x)*(x0-x))+((y0-y)*(y0-y))<100 then
set x=x0
set y=y0
endif
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
if GetTriggerEvalCount(t)==(10+10*SUI)or GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function E13 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01=CreateUnit(GetOwningPlayer(P7I),1966092376,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
local integer SUI=GetUnitAbilityLevel(P7I,1093743698)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function EI3))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(13),((Atan2(GetUnitY(P8I)-GetUnitY(P7I),GetUnitX(P8I)-GetUnitX(P7I)))*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call IA1(I01,1093743697)
call SetUnitAbilityLevel(I01,1093743697,SUI)
call IssueTargetOrder(I01,"magicleash",P8I)
call UnitApplyTimedLife(I01,1112820806,0.5+0.5*SUI)
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),GetUnitFacing(P7I))
call IA1(I01,1093743699)
call IssueTargetOrder(I01,"slow",P7I)
set P7I=null
set P8I=null
set I01=null
set t=null
endfunction
function EO3 takes nothing returns boolean
if GetSpellAbilityId()==1093743698 and GetUnitTypeId(GetSpellTargetUnit())!=1848651852 and NNI(GetSpellTargetUnit())==false then
call E13()
endif
return false
endfunction
function SF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EO3))
set t=null
endfunction
function E23 takes nothing returns nothing
if(LoadBoolean(LY,(BVI),(GetHandleId(GetEnumUnit()))))==false then
call SaveBoolean(LY,(BVI),(GetHandleId(GetEnumUnit())),(true))
call P6I(BXI,GetEnumUnit(),1,BYI*(BWI*4+4)/100)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetEnumUnit(),"origin"))
endif
endfunction
function E33 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit E43=(LoadUnitHandle(LY,(S5I),(195)))
local integer BQO=(LoadInteger(LY,(S5I),(194)))
local real QJI=(LoadReal(LY,(S5I),(6)))
local real QKI=(LoadReal(LY,(S5I),(7)))
local real IO3=GetUnitX(P7I)
local real I23=GetUnitY(P7I)
local real RM2=Atan2(QKI-I23,QJI-IO3)
local real IV1=IO3+(25+25*SUI)*Cos(RM2)
local real IW1=I23+(25+25*SUI)*Sin(RM2)
local lightning UZI=(LoadLightningHandle(LY,(S5I),(196)))
local real lx=(LoadReal(LY,(S5I),(197)))
local real ly=(LoadReal(LY,(S5I),(198)))
local real KWO=GetUnitState(P7I,UNIT_STATE_MANA)
local real E53=(25+25*SUI)*(12+0.007*GetUnitState(P7I,UNIT_STATE_MAX_MANA))/100
local group g=NTI()
local real E63=(LoadReal(LY,(S5I),(199)))
set E63=E63+25+25*SUI
call SaveReal(LY,(S5I),(199),((E63)*1.0))
if GetTriggerEvalCount(t)>25 then
set lx=lx+(25+25*SUI)*Cos(RM2)
set ly=ly+(25+25*SUI)*Sin(RM2)
call SaveReal(LY,(S5I),(197),((lx)*1.0))
call SaveReal(LY,(S5I),(198),((ly)*1.0))
endif
call SetUnitState(P7I,UNIT_STATE_MANA,RMaxBJ(KWO-E53,0))
call MoveLightning(UZI,true,lx,ly,IV1,IW1)
call SetUnitX(P7I,IV1)
call SetUnitY(P7I,IW1)
call SetUnitPosition(I01,IV1,IW1)
call SetUnitPosition(E43,IV1,IW1)
set GK=P7I
set BXI=P7I
set BVI=S5I
set BWI=SUI
set BYI=E63
call GroupEnumUnitsInRange(g,IV1,IW1,75+75*SUI,Condition(function CA1))
call ForGroup(g,function E23)
call NSI(g)
set BQO=BQO-1
call SaveInteger(LY,(S5I),(194),(BQO))
call SetUnitVertexColor(P7I,255,255,255,0)
if BQO==0 or GetUnitState(P7I,UNIT_STATE_MANA)<1 then
call DestroyLightning(UZI)
call UPI(IV1,IW1,75)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call RemoveUnit(I01)
call RemoveUnit(E43)
call SetUnitVertexColor(P7I,255,255,255,255)
call SetUnitPathing(P7I,true)
call SetUnitInvulnerable(P7I,false)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call UPI(IV1,IW1,75)
endif
set t=null
set I01=null
set P7I=null
set UZI=null
set g=null
set E43=null
return false
endfunction
function E73 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local unit I01
local unit E43
local location l
local real x
local real y
local trigger t
local integer S5I
local lightning UZI
local integer SUI=GetUnitAbilityLevel(P7I,1093743695)
local real KWO=GetUnitState(P7I,UNIT_STATE_MANA)
local real E53=15+0.07*GetUnitState(P7I,UNIT_STATE_MAX_MANA)
call SetUnitState(P7I,UNIT_STATE_MANA,RMaxBJ(KWO-E53,0))
if GetUnitState(P7I,UNIT_STATE_MANA)>10 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
set I01=CreateUnit(GetOwningPlayer(P7I),1865429296,QXI,QYI,0)
set E43=CreateUnit(GetOwningPlayer(P7I),1211119431,QXI,QYI,0)
set UZI=AddLightning("FORK",true,QXI,QYI,QXI,QYI)
if GetSpellTargetUnit()==null then
set l=GetSpellTargetLoc()
set x=GetLocationX(l)
set y=GetLocationY(l)
call RemoveLocation(l)
else
set x=GetUnitX(GetSpellTargetUnit())
set y=GetUnitY(GetSpellTargetUnit())
endif
call SetUnitVertexColor(P7I,255,255,255,0)
call SetUnitVertexColor(E43,255,255,255,0)
call SetUnitPathing(P7I,false)
call SetUnitPathing(I01,false)
call SetUnitInvulnerable(P7I,true)
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(195),(E43))
call SaveLightningHandle(LY,(S5I),(196),(UZI))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(197),((QXI)*1.0))
call SaveReal(LY,(S5I),(198),((QYI)*1.0))
call SaveReal(LY,(S5I),(199),((0)*1.0))
call SaveInteger(LY,(S5I),(194),(QAI(R2I(SquareRoot((x-QXI)*(x-QXI)+(y-QYI)*(y-QYI))/(25+25*SUI)),1)))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\Lightning_Ball_Tail_FX.mdx",E43,"origin")))
call TriggerRegisterTimerEvent(t,0.04,true)
call TriggerAddCondition(t,Condition(function E33))
call ShowUnit(P7I,false)
call ShowUnit(P7I,true)
call SelectUnitAddForPlayer(P7I,GetOwningPlayer(P7I))
endif
set P7I=null
set I01=null
set E43=null
set l=null
set t=null
set UZI=null
endfunction
function E83 takes nothing returns boolean
if GetSpellAbilityId()==1093743695 then
call E73()
endif
return false
endfunction
function E93 takes nothing returns boolean
if GetSpellAbilityId()==1093743695 then
if GetUnitState(GetTriggerUnit(),UNIT_STATE_MANA)<(15+0.07*GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_MANA))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848657720))
endif
endif
return false
endfunction
function SH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function E83))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function E93))
set t=null
endfunction
function EA3 takes unit P7I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093812553)
if GetUnitTypeId(P7I)==1215063922 then
call SetUnitAbilityLevel(P7I,1093681490,SUI)
else
call SetUnitAbilityLevel(P7I,1093681490,SUI+4)
endif
endfunction
function EB3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093812553)
if SUI==1 then
call IA1(P7I,1093681490)
endif
call EA3(P7I)
set P7I=null
endfunction
function EC3 takes nothing returns boolean
if GetLearnedSkill()==1093812553 and IsUnitIllusion(GetTriggerUnit())==false then
call EB3()
endif
return false
endfunction
function ED3 takes nothing returns nothing
local unit u=GetTriggerUnit()
if GetUnitTypeId(u)==1211117639 or GetUnitTypeId(u)==1211117638 or GetUnitTypeId(u)==1211117637 then
call SetUnitAnimation(u,"stand")
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdl",u,"head"))
elseif GetUnitTypeId(u)==1215063922 then
call SetUnitAnimation(u,"stand defend")
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdl",u,"origin"))
endif
set u=null
endfunction
function EE3 takes nothing returns boolean
if GetSpellAbilityId()==1093681490 then
call ED3()
endif
return false
endfunction
function N71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EE3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function EC3))
call Q1I(1093681490)
set t=null
endfunction
constant function DragonsBlood_RawCode takes nothing returns integer
return 1093681996
endfunction
constant function DragonsBlood_ArmorCode takes nothing returns integer
return 1378889782
endfunction
function EF3 takes nothing returns boolean
return GetLearnedSkill()==(1093681996)and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function EG3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
call SetPlayerTechResearched(GetOwningPlayer(SFI),(1378889782),GetPlayerTechCount(GetOwningPlayer(SFI),(1378889782),true)+1)
endfunction
function N61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function EF3))
call TriggerAddAction(t,function EG3)
endfunction
function EH3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real GW1=(LoadReal(LY,(GetHandleId(P8I)),(805)))
local real AB3=0.75
local real PAI=20
if IsUnitType(P8I,UNIT_TYPE_HERO)==false then
set AB3=1
endif
if GetUnitState(P8I,UNIT_STATE_LIFE)<=PAI*AB3 then
set PAI=GetUnitState(P8I,UNIT_STATE_LIFE)/AB3-2
endif
call P6I(P7I,P8I,1,PAI)
if(TimerGetElapsed(M))>=GW1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function EZ3 takes unit P7I,unit P8I returns nothing
local trigger t
local integer S5I
local real GW1=(LoadReal(LY,(GetHandleId(P8I)),(805)))
if GW1>(TimerGetElapsed(M))then
call SaveReal(LY,(GetHandleId(P8I)),(805),(((TimerGetElapsed(M))+5)*1.0))
else
call SaveReal(LY,(GetHandleId(P8I)),(805),(((TimerGetElapsed(M))+5)*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function EH3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
set t=null
endfunction
function EV3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call DisableTrigger(t)
call EZ3(P7I,P8I)
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
function EW3 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function EV3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P8I=null
set P7I=null
endfunction
function EX3 takes nothing returns boolean
if GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false and GetUnitAbilityLevel(GetAttacker(),1093685044)>0 then
call EW3()
endif
return false
endfunction
function EY3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function EX3))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
set P7I=null
set t=null
endfunction
function EJ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call EA3(P7I)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
set t=null
set P7I=null
return false
endfunction
function EK3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call EA3(P7I)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
set t=null
set P7I=null
return false
endfunction
function VT1 takes nothing returns nothing
if GetUnitAbilityLevel(GK,1093681490)>0 then
call EA3(GK)
endif
endfunction
function EL3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function EJ3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function EK3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set P7I=null
set t=null
endfunction
function EM3 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093677895 then
call EL3()
endif
else
if GetLearnedSkill()==1093677895 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093677895)==1 then
call EY3()
endif
endif
return false
endfunction
function N81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function EM3))
set t=null
endfunction
function EN3 takes nothing returns boolean
if((GetSpellAbilityId()==1093686091))then
return true
endif
if((GetSpellAbilityId()==1093682252))then
return true
endif
if((GetSpellAbilityId()==1093682248))then
return true
endif
if((GetSpellAbilityId()==1093750594))then
return true
endif
return false
endfunction
function ES3 takes nothing returns boolean
if(not(GetUnitAbilityLevelSwapped(1093682250,GetSpellAbilityUnit())>0))then
return false
endif
if(not EN3())then
return false
endif
return true
endfunction
function ET3 takes nothing returns nothing
local location ON3=GetUnitLoc(GetTriggerUnit())
call CreateNUnitsAtLoc(1,1697656901,GetOwningPlayer(GetTriggerUnit()),ON3,bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093682249)
call SetUnitAbilityLevelSwapped(1093682249,bj_lastCreatedUnit,GetUnitAbilityLevelSwapped(1093682250,GetSpellAbilityUnit()))
call IssueImmediateOrder(bj_lastCreatedUnit,"stomp")
call RemoveLocation(ON3)
endfunction
function XE1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ES3))
call TriggerAddAction(t,function ET3)
endfunction
function ER3 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(GetEnumUnit()),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call IA1(I01,1093686090)
call SetUnitAbilityLevel(I01,1093686090,UJ)
call IssueTargetOrder(I01,"thunderbolt",GetEnumUnit())
call P6I(GetTriggerUnit(),GetEnumUnit(),1,AK)
set I01=null
endfunction
function EP3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local location l=GetSpellTargetLoc()
local integer i=1
local real QXI=GetUnitX(SFI)
local real QYI=GetUnitY(SFI)
local real QJI
local real QKI
local real x
local real y
local real a
local group g=NTI()
local group g2=NTI()
if P8I==null then
set QJI=GetLocationX(l)
set QKI=GetLocationY(l)
else
set QJI=GetUnitX(P8I)
set QKI=GetUnitY(P8I)
endif
set a=bj_DEGTORAD*UEI(QXI,QYI,QJI,QKI)
call RemoveLocation(l)
loop
exitwhen i>24
set x=PTI(QXI+i*60*Cos(a))
set y=PUI(QYI+i*60*Sin(a))
call GroupEnumUnitsInRange(g2,x,y,250,Condition(function C51))
call GroupAddGroup(g2,g)
call GroupClear(g2)
call OA1(CreateDestructable(1110454320,x,y,GetRandomReal(0,360),0.5,GetRandomInt(0,2)),8)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Volcano\\VolcanoDeath.mdl",x,y))
set i=i+1
endloop
set UJ=GetUnitAbilityLevel(SFI,1093686091)
set AK=UJ*50+75
call ForGroup(g,function ER3)
call NSI(g)
call NSI(g2)
set SFI=null
set l=null
endfunction
function EQ3 takes nothing returns boolean
if GetSpellAbilityId()==1093686091 then
call EP3()
endif
return false
endfunction
function XD1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function EQ3))
call Q1I(1093686090)
set t=null
endfunction
function EU3 takes nothing returns boolean
if(not(UnitHasBuffBJ(GetAttacker(),1114795873)==true))then
return false
endif
return true
endfunction
function F03 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
if GetEventDamageSource()==P7I then
call UnitRemoveAbility(P7I,1114795873)
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
function FI3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=GetTriggerUnit()
local unit P7I=GetAttacker()
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerAddCondition(t,Condition(function F03))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function XG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function EU3))
call TriggerAddAction(t,function FI3)
endfunction
function F13 takes nothing returns boolean
if(GetItemTypeId(GetManipulatedItem())==1227894859)then
if(GetUnitTypeId(GetTriggerUnit())==1333027688)then
return true
endif
endif
return false
endfunction
function FO3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
call IA1(I01,1095332466)
call IssueImmediateOrder(I01,"roar")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
set I01=null
return false
endfunction
function F23 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call UnitRemoveAbility(SFI,1110454608)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function FO3))
set t=null
set SFI=null
endfunction
function XF1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call TriggerAddCondition(t,Condition(function F13))
call TriggerAddAction(t,function F23)
endfunction
function F33 takes nothing returns nothing
local real x=GetUnitX(GetEnumUnit())
local real y=GetUnitY(GetEnumUnit())
local integer id=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
call SetUnitX(BJI[id],x)
call SetUnitY(BJI[id],y)
call IssueImmediateOrder(BJI[id],"fanofknives")
call P6I(GetTriggerUnit(),GetEnumUnit(),1,BLI)
endfunction
function F43 takes nothing returns nothing
local real x=GetUnitX(GetEnumUnit())
local real y=GetUnitY(GetEnumUnit())
local integer id=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetEnumUnit())==true then
call SetUnitX(BJI[id],x)
call SetUnitY(BJI[id],y)
call IssueImmediateOrder(BJI[id],"fanofknives")
endif
endfunction
function F53 takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==true and IC1(GetFilterUnit())==false
endfunction
function F63 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g=NTI()
local integer id=GetPlayerId(GetOwningPlayer(P7I))
local integer SUI=GetUnitAbilityLevel(P7I,1093682248)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1865429082,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitApplyTimedLife(I01,1112820806,0.5)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093750594)
endif
if SUI==1 then
set BLI=160
elseif SUI==2 then
set BLI=210
elseif SUI==2 then
set BLI=270
endif
set BJI[id]=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
set BKI[id]=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call SetUnitScale(BJI[id],0.25,0.25,0.25)
call IA1(BJI[id],1093682253)
call IA1(BKI[id],1093748784)
call SetUnitAbilityLevel(BJI[id],1093682253,SUI)
call SetUnitAbilityLevel(BKI[id],1093748784,SUI)
call GroupEnumUnitsInRange(g,x,y,575+25,Condition(function F53))
call ForGroup(g,function F33)
if GetUnitAbilityLevel(P7I,1093750594)>0 then
call ForGroup(g,function F43)
endif
call NSI(g)
set P7I=null
set g=null
endfunction
function F73 takes nothing returns boolean
if GetSpellAbilityId()==1093682248 or GetSpellAbilityId()==1093750594 then
call F63()
endif
return false
endfunction
function XC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function F73))
set t=null
call Q1I(1093682253)
endfunction
constant function Untouchable_RawCode takes nothing returns integer
return 1093682263
endfunction
constant function Untouchable_EffectCode takes nothing returns integer
return 1093681712
endfunction
function F83 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
return GetUnitAbilityLevel(GetSpellTargetUnit(),(1093682263))>0
else
return GetUnitAbilityLevel(GetTriggerUnit(),(1093682263))>0
endif
endfunction
function F93 takes nothing returns nothing
local unit P7I
local unit P8I
local unit I01
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
set P7I=GetSpellTargetUnit()
set P8I=GetTriggerUnit()
else
set P7I=GetTriggerUnit()
set P8I=GetAttacker()
endif
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,(1093681712))
call SetUnitAbilityLevel(I01,(1093681712),GetUnitAbilityLevel(P7I,(1093682263)))
call IssueTargetOrder(I01,"acidbomb",P8I)
endfunction
function XW1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function F83))
call TriggerAddAction(t,function F93)
endfunction
function FA3 takes nothing returns boolean
return(IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)!=GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_LIFE)
endfunction
function FB3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer QX2=(LoadInteger(LY,(S5I),(28)))
local group g
local unit WH1
if QX2>10 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveInteger(LY,(S5I),(28),(QX2+1))
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),300,Condition(function FA3))
set WH1=GroupPickRandomUnit(g)
call NSI(g)
call SetUnitState(WH1,UNIT_STATE_LIFE,GetUnitState(WH1,UNIT_STATE_LIFE)+10)
endif
set t=null
set P7I=null
set g=null
set WH1=null
return false
endfunction
function FC3 takes nothing returns boolean
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
function FD3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer i=1
local trigger t
local integer S5I
loop
exitwhen i>(1+2*GetUnitAbilityLevel(P7I,1093677378))
set t=CreateTrigger()
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call SaveInteger(LY,(GetHandleId(t)),(28),(0))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function FB3))
set i=i+1
endloop
if GetUnitTypeId(P7I)==1160786520 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function FC3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
endif
set t=null
set P7I=null
endfunction
function FE3 takes nothing returns boolean
if GetSpellAbilityId()==1093677378 then
call FD3()
endif
return false
endfunction
function XZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FE3))
set t=null
endfunction
function FF3 takes real x1,real y1,real x2,real y2 returns real
return SquareRoot(((x1-x2)*(x1-x2))+((y1-y2)*(y1-y2)))
endfunction
function FG3 takes unit u returns integer
local integer SUI=GetUnitAbilityLevel(u,1093682265)
if SUI>0 then
return SUI
endif
set SUI=GetUnitAbilityLevel(u,1093752642)
return SUI
endfunction
function FH3 takes nothing returns boolean
local real d
local real IT3
if GetUnitAbilityLevel(GetTriggerUnit(),1110455125)>0 and FG3(GetEventDamageSource())>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
call UnitRemoveAbility(GetTriggerUnit(),1110455125)
set IT3=RMinBJ(FF3(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitX(GetEventDamageSource()),GetUnitY(GetEventDamageSource())),2500)
set d=(0.10+0.05*I2R(FG3(GetEventDamageSource())))*IT3
call UYI("+"+I2S(R2I(d)),1,GetTriggerUnit(),0.023,3,216,216,216)
call DisableTrigger(GetTriggeringTrigger())
call P6I(GetEventDamageSource(),GetTriggerUnit(),3,d)
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function FZ3 takes nothing returns nothing
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
call TriggerAddCondition(t,Condition(function FH3))
endif
set t=null
set P8I=null
set P7I=null
endfunction
function FV3 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if FG3(GetAttacker())>0 and(LoadBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))then
call FZ3()
endif
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if(GetIssuedOrderId()==OrderId("poisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(true))
elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(false))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()==1093682265 or GetSpellAbilityId()==1093752642)then
call FZ3()
endif
return false
endfunction
function FW3 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function FV3))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function FX3 takes nothing returns boolean
if(GetLearnedSkill()==1093682265 or GetLearnedSkill()==1093752642)and IsUnitIllusion(GetTriggerUnit())==false and FG3(GetTriggerUnit())==1 then
call FW3()
endif
return false
endfunction
function XV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function FX3))
set t=null
endfunction
function FY3 takes unit u returns boolean
return IsUnitType(u,UNIT_TYPE_HERO)==false and IsUnitType(u,UNIT_TYPE_ANCIENT)==false and GetUnitTypeId(u)!=1848652101 and GetUnitTypeId(u)!=1848652089
endfunction
function FJ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call UnitRemoveAbility(P8I,1114860655)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P8I=null
return false
endfunction
function FK3 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function FJ3))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SetUnitOwner(P8I,GetOwningPlayer(P7I),true)
call UnitApplyTimedLife(P8I,1112820806,80)
call IA1(P8I,1097167976)
call IA1(P8I,1093743175)
call QSI(P8I)
set P8I=null
set P7I=null
endfunction
function FL3 takes nothing returns boolean
if GetSpellAbilityId()==1093682264 and FY3(GetSpellTargetUnit())then
call FK3()
endif
return false
endfunction
function XH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FL3))
set t=null
endfunction
function FM3 takes nothing returns nothing
local real PAI=GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*BNI
call P6I(BMI,GetEnumUnit(),7,PAI)
endfunction
function FN3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local group g
if GetTriggerEvalCount(t)>11 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
set BMI=P7I
set BNI=(2.25+0.75*GetUnitAbilityLevel(P7I,1093681713))/100
call GroupEnumUnitsInRange(g,x,y,625,Condition(function CA1))
call ForGroup(g,function FM3)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function FS3 takes real x,real y returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function FN3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set t=null
set P7I=null
endfunction
function FT3 takes nothing returns boolean
if(not(GetSpellAbilityId()==1093681713))then
return false
endif
return true
endfunction
function FR3 takes nothing returns nothing
local location ON3=GetUnitLoc(GetTriggerUnit())
local location FP3=GetSpellTargetLoc()
call FS3(GetLocationX(FP3),GetLocationY(FP3))
call CreateNUnitsAtLocFacingLocBJ(1,1697656901,GetOwningPlayer(GetTriggerUnit()),FP3,FP3)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitApplyTimedLifeBJ(11.00,1112820806,bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093681714)
call SetUnitAbilityLevelSwapped(1093681714,bj_lastCreatedUnit,GetUnitAbilityLevelSwapped(1093681713,GetTriggerUnit()))
call IssuePointOrderLoc(bj_lastCreatedUnit,"deathanddecay",FP3)
call RemoveLocation(ON3)
call RemoveLocation(FP3)
endfunction
function XJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function FT3))
call TriggerAddAction(t,function FR3)
endfunction
function FQ3 takes unit P7I,unit P8I,integer SUI returns nothing
local real PAI
local real FU3
if SUI==1 then
set PAI=25
set FU3=0.25
elseif SUI==2 then
set PAI=40
set FU3=0.5
elseif SUI==3 then
set PAI=55
set FU3=0.75
else
set PAI=70
set FU3=1
endif
call DD1(P8I,P8I,FU3)
call P6I(P7I,P8I,1,PAI)
endfunction
function G03 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
call FQ3(P7I,P8I,SUI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function GI3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(P7I,1093683511)
call FQ3(P7I,P8I,SUI)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call TriggerRegisterTimerEvent(t,2,false)
call TriggerAddCondition(t,Condition(function G03))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call TriggerRegisterTimerEvent(t,4,false)
call TriggerAddCondition(t,Condition(function G03))
set t=null
set P7I=null
set P8I=null
endfunction
function G13 takes nothing returns boolean
if GetSpellAbilityId()==1093683511 and NNI(GetSpellTargetUnit())==false then
call GI3()
endif
return false
endfunction
function XY1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function G13))
endfunction
function DemonicConversion_Delayed takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
call IA1(I01,1093744474)
call SetUnitAbilityLevel(I01,1093744474,SUI)
call IssueImmediateOrder(I01,"slimemonster")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set I01=null
return false
endfunction
function GO3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local integer SUI=GetUnitAbilityLevel(P7I,1093744688)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call SetUnitState(P8I,UNIT_STATE_LIFE,1)
call P6I(P7I,P8I,2,20)
call P6I(P7I,P8I,1,20)
call P6I(P7I,P8I,3,20)
call IA1(I01,1093744474)
call SetUnitAbilityLevel(I01,1093744474,SUI)
call IssueImmediateOrder(I01,"lavamonster")
set P7I=null
set P8I=null
set I01=null
endfunction
function G23 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer G33=GetUnitLevel(P8I)
if GetOwningPlayer(P8I)!=BO[0]and GetOwningPlayer(P8I)!=CO[0]and G33>4 then
call PJI(SFI)
call PZI(GetOwningPlayer(SFI),GetObjectName(1848656728))
endif
set SFI=null
set P8I=null
endfunction
function G43 takes nothing returns boolean
if GetSpellAbilityId()==1093744688 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
call GO3()
else
call G23()
endif
endif
return false
endfunction
function DemonicConversion_Recolor takes nothing returns boolean
local integer id=GetUnitTypeId(GetTriggerUnit())
if id==1752654196 or id==1752658994 or id==1752658995 or id==1747988534 then
call SetUnitVertexColor(GetSummonedUnit(),0,0,50,255)
endif
return false
endfunction
function XK1 takes nothing returns nothing
local trigger t=CreateTrigger()
local region S5O=CreateRegion()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function G43))
set t=null
endfunction
function G53 takes real x returns real
local real PRI=GetRectMinX(bj_mapInitialPlayableArea)+150
if(x<PRI)then
return PRI
endif
set PRI=GetRectMaxX(bj_mapInitialPlayableArea)-150
if(x>PRI)then
return PRI
endif
return x
endfunction
function G63 takes real y returns real
local real PRI=GetRectMinY(bj_mapInitialPlayableArea)+150
if(y<PRI)then
return PRI
endif
set PRI=GetRectMaxY(bj_mapInitialPlayableArea)-150
if(y>PRI)then
return PRI
endif
return y
endfunction
function G73 takes unit u returns boolean
local integer id=GetUnitTypeId(u)
return id==1852862003 or id==1852862006 or id==1848652080 or id==1848657754 or id==1852862001 or id==1852862004 or id==1848652081 or id==1848657968 or id==1852862002 or id==1852862005 or id==1848652082 or id==1848657969
endfunction
function G83 takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or G73(GetFilterUnit())or CI1(GetFilterUnit())or GetUnitTypeId(GetFilterUnit())==1848651861 or GetUnitTypeId(GetFilterUnit())==1848651865 or GetUnitTypeId(GetFilterUnit())==1848651866 or GetUnitTypeId(GetFilterUnit())==1848658773 or GetUnitTypeId(GetFilterUnit())==1848658774 or GetUnitTypeId(GetFilterUnit())==1848658775 or POI(GetUnitTypeId(GetFilterUnit())))and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer((LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(318)))))==true
endfunction
function G93 takes nothing returns nothing
local location GA3=GetUnitLoc(GetEnumUnit())
local location GB3=GetUnitLoc((LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(318))))
local location GC3=M7I(GB3,DistanceBetweenPoints(GB3,GA3)-2,AngleBetweenPoints(GB3,GA3))
call SetUnitFacing(GetEnumUnit(),AngleBetweenPoints(GB3,GA3))
call SetUnitPositionLoc(GetEnumUnit(),GC3)
call RemoveLocation(GA3)
call RemoveLocation(GB3)
call RemoveLocation(GC3)
if BSI>0 then
call P6I(BTI,GetEnumUnit(),8,GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*(0.0225+0.0075*BSI))
endif
endfunction
function GD3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local group Z51
local integer S5I=GetHandleId(t)
local unit GE3=(LoadUnitHandle(LY,(S5I),(318)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01
local real x
local real y
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and(GetSpellAbilityId()==1093747288 or GetSpellAbilityId()==1093817432)then
call KillUnit(GE3)
set I01=(LoadUnitHandle(LY,(S5I),(19)))
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(250))),1112820806,1)
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(251))),1112820806,1)
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(252))),1112820806,1)
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(253))),1112820806,1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(I01)
elseif GetTriggerEvalCount(t)>90 then
set I01=(LoadUnitHandle(LY,(S5I),(19)))
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(250))),1112820806,1)
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(251))),1112820806,1)
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(252))),1112820806,1)
call UnitApplyTimedLife((LoadUnitHandle(LY,(S5I),(253))),1112820806,1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call KillUnit(GE3)
call KillUnit(I01)
call PJI((LoadUnitHandle(LY,(S5I),(2))))
else
set BSI=0
if GetTriggerEvalCount(t)==20 or GetTriggerEvalCount(t)==40 or GetTriggerEvalCount(t)==60 or GetTriggerEvalCount(t)==80 then
if GetUnitAbilityLevel(P7I,1093817432)>0 then
set BTI=P7I
set BSI=GetUnitAbilityLevel(P7I,1093681713)
endif
endif
set x=GetUnitX(GE3)
set y=GetUnitY(GE3)
set Z51=NTI()
call GroupEnumUnitsInRange(Z51,x,y,425,Condition(function G83))
call ForGroup(Z51,function G93)
call NSI(Z51)
endif
set I01=null
set GE3=null
set t=null
return false
endfunction
function GF3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
local unit GE3=CreateUnit(GetOwningPlayer(P7I),1966092340,x,y,0)
local integer SUI=GetUnitAbilityLevel(P7I,1093747288)
call RemoveLocation(l)
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093817432)
endif
call SetUnitAbilityLevel(GE3,1093681968,SUI)
if TOI(GetOwningPlayer(P7I))then
call IA1(I01,1093687348)
else
call IA1(I01,1093687347)
endif
call IssuePointOrder(I01,"cloudoffog",x,y)
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(250),(CreateUnit(GetOwningPlayer(P7I),1747990098,x,y,0)))
call SaveUnitHandle(LY,(S5I),(251),(CreateUnit(GetOwningPlayer(P7I),1747990098,x,y,0)))
call SaveUnitHandle(LY,(S5I),(252),(CreateUnit(GetOwningPlayer(P7I),1747990098,x,y,0)))
call SaveUnitHandle(LY,(S5I),(253),(CreateUnit(GetOwningPlayer(P7I),1747990098,x,y,0)))
call SaveUnitHandle(LY,(S5I),(318),(GE3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_ENDCAST)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function GD3))
set P7I=null
set GE3=null
set t=null
set l=null
endfunction
function GG3 takes nothing returns boolean
if GetSpellAbilityId()==1093747288 or GetSpellAbilityId()==1093817432 then
call GF3()
endif
return false
endfunction
function GH3 takes nothing returns boolean
local location l
local real x
local real y
if GetSpellAbilityId()==1093747288 or GetSpellAbilityId()==1093817432 then
set l=GetSpellTargetLoc()
set x=GetLocationX(l)
set y=GetLocationY(l)
call RemoveLocation(l)
set l=null
if(x!=G53(x)and y!=G63(y))or RectContainsCoords(U9,x,y)or RectContainsCoords(IA,x,y)or RectContainsCoords(OA,x,y)or RectContainsCoords(BA,x,y)or RectContainsCoords(CA,x,y)or RectContainsCoords(DA,x,y)then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),"Cannot cast Blackhole here")
endif
endif
return false
endfunction
function XX1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GG3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function GH3))
call Q1I(1093681968)
endfunction
function GZ3 takes nothing returns nothing
call P6I(GetTriggerUnit(),GetEnumUnit(),1,AK)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\StaffOfPurification\\PurificationTarget.mdx",GetEnumUnit(),"chest"))
endfunction
function GV3 takes nothing returns nothing
local group g=NTI()
local unit SFI=GetTriggerUnit()
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local integer SUI=GetUnitAbilityLevel(SFI,1093686083)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,x,y,0)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\StaffOfPurification\\PurificationCaster.mdx",x,y))
call IA1(I01,1093686084)
call SetUnitAbilityLevel(I01,1093686084,SUI)
call IssuePointOrder(I01,"silence",x,y)
set AK=SUI*70
call GroupEnumUnitsInRange(g,x,y,425,Condition(function C61))
call ForGroup(g,function GZ3)
call NSI(g)
set I01=null
set g=null
set SFI=null
endfunction
function GW3 takes nothing returns boolean
if GetSpellAbilityId()==1093686083 then
call GV3()
endif
return false
endfunction
function SK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GW3))
set t=null
endfunction
function GX3 takes unit P7I,unit P8I,integer SUI,integer KBO returns nothing
local unit I01
if KBO==1 then
call DD1(P7I,P8I,0.75+0.75*SUI)
call P6I(P7I,P8I,1,SUI*50+50)
else
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093686087)
call SetUnitAbilityLevel(I01,1093686087,SUI)
call IssueTargetOrder(I01,"thunderbolt",P8I)
call P6I(P7I,P8I,1,SUI*50+50+100)
endif
set I01=null
endfunction
function GY3 takes unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093686086)
call IssueTargetOrder(I01,"thunderbolt",P8I)
set I01=null
endfunction
function GJ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer KBO=(LoadInteger(LY,(S5I),(152)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local lightning UZI=(LoadLightningHandle(LY,(S5I),(196)))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyLightning(UZI)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call MoveLightning(UZI,false,GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))
if QNI(GetUnitX(P7I),GetUnitY(P7I),GetUnitX(P8I),GetUnitY(P8I))>600 then
call DestroyLightning(UZI)
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call GX3(P7I,P8I,SUI,KBO)
endif
endif
set t=null
set P7I=null
set P8I=null
set UZI=null
return false
endfunction
function GK3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local lightning UZI=AddLightning("HWPB",false,GetUnitX(C0I),GetUnitY(C0I),GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()))
call SetLightningColor(UZI,0,.7,1,1)
call SaveLightningHandle(LY,(S5I),(196),(UZI))
call SaveUnitHandle(LY,(S5I),(2),(C0I))
call SaveInteger(LY,(S5I),(30),(NKI(GetEnumUnit())))
call SaveInteger(LY,(S5I),(5),(BRI))
call SaveInteger(LY,(S5I),(152),(BPI))
call TriggerRegisterTimerEvent(t,0.03,true)
call TriggerRegisterUnitEvent(t,GetEnumUnit(),EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,C0I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function GJ3))
call P6I(GetTriggerUnit(),GetEnumUnit(),1,BQI)
call GY3(GetTriggerUnit(),GetEnumUnit())
set t=null
set UZI=null
endfunction
function GL3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656917,x,y,0)
local group g=NTI()
local integer SUI=GetUnitAbilityLevel(SFI,1093686072)
local real DC1=6
local integer KBO=1
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093751120)
set DC1=8
set KBO=2
endif
call RemoveLocation(l)
call SetUnitAnimation(I01,"channel")
call OR1(I01,DC1)
set C0I=I01
set BUI=DC1
set BQI=SUI*50+50
set BRI=SUI
set BPI=KBO
set GK=SFI
call GroupEnumUnitsInRange(g,x,y,400,Condition(function CC1))
call ForGroup(g,function GK3)
call NSI(g)
set g=null
set I01=null
set SFI=null
set l=null
endfunction
function GM3 takes nothing returns boolean
if GetSpellAbilityId()==1093686072 or GetSpellAbilityId()==1093751120 then
call GL3()
endif
return false
endfunction
function SM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function GM3))
set t=null
endfunction
function GN3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI
local integer QX2
local integer MKO
if(GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER and GetIssuedOrderId()!=String2OrderIdBJ("phaseshift"))or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER or GetTriggerEventId()==EVENT_UNIT_DEATH then
call SetUnitInvulnerable(SFI,false)
call UnitRemoveAbility(SFI,1093678162)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set SUI=(LoadInteger(LY,(S5I),(5)))
set QX2=(LoadInteger(LY,(S5I),(28)))+1
call SaveInteger(LY,(S5I),(28),(QX2))
set MKO=3*SUI
if SUI==4 then
set MKO=MKO+1
endif
if QX2>MKO or QNI(GetUnitX(SFI),GetUnitY(SFI),(LoadReal(LY,(S5I),(6))),(LoadReal(LY,(S5I),(7))))>125 then
call SetUnitInvulnerable(SFI,false)
call UnitRemoveAbility(SFI,1093678162)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
endif
set t=null
set SFI=null
return false
endfunction
function GS3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetUnitInvulnerable(SFI,true)
call IA1(SFI,1093678162)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(SFI,1093686082)))
call SaveInteger(LY,(S5I),(28),(0))
call SaveReal(LY,(S5I),(6),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(SFI))*1.0))
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_ORDER)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function GN3))
call SCI(SFI,4266,5.9)
set t=null
set SFI=null
endfunction
function GT3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
call IssueImmediateOrder(SFI,"phaseshiftoff")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function GR3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function GT3))
set t=null
set SFI=null
endfunction
function GP3 takes nothing returns boolean
if GetIssuedOrderId()==String2OrderIdBJ("phaseshift")and IsUnitIllusion(GetTriggerUnit())==false and((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4266))))==1)==false then
call GS3()
elseif GetIssuedOrderId()==String2OrderIdBJ("phaseshifton")then
call GR3()
endif
return false
endfunction
function SL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call USI(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function GP3))
set t=null
endfunction
function GQ3 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XK)==false then
call GroupAddUnit(XK,GetEnumUnit())
call P6I(GK,GetEnumUnit(),1,AK)
endif
endfunction
function GU3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local group H03
local real x
local real y
if GetTriggerEventId()==EVENT_UNIT_DEATH then
set GK=CreateUnit(GetOwningPlayer(I01),1747990095,GetUnitX((LoadUnitHandle(LY,(S5I),(14)))),GetUnitY((LoadUnitHandle(LY,(S5I),(14)))),0)
call SetUnitScale(GK,2.5,2.5,2.5)
call KillUnit(GK)
call SetUnitPosition((LoadUnitHandle(LY,(S5I),(14))),GetUnitX(I01),GetUnitY(I01))
call ShowUnit((LoadUnitHandle(LY,(S5I),(14))),false)
call ShowUnit((LoadUnitHandle(LY,(S5I),(14))),true)
call SelectUnitAddForPlayer((LoadUnitHandle(LY,(S5I),(14))),GetOwningPlayer((LoadUnitHandle(LY,(S5I),(14)))))
set CII[GetPlayerId(GetOwningPlayer(I01))]=null
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)>120 then
set CII[GetPlayerId(GetOwningPlayer(I01))]=null
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitScale(I01,2.5,2.5,2.5)
call KillUnit(I01)
else
set x=GetUnitX(I01)
set y=GetUnitY(I01)
set H03=NTI()
set XK=g
set GK=I01
set AK=SUI*70
call GroupEnumUnitsInRange(H03,x,y,225+25,Condition(function CH1))
call ForGroup(H03,function GQ3)
call NSI(H03)
call SetUnitX(I01,PTI(x+15*Cos(RM2*bj_DEGTORAD)))
call SetUnitY(I01,PUI(y+15*Sin(RM2*bj_DEGTORAD)))
endif
set t=null
set g=null
set H03=null
set I01=null
return false
endfunction
function HI3 takes nothing returns nothing
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
local integer SUI=GetUnitAbilityLevel(SFI,1093686073)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1747990095,x1,y1,RM2)
call IO1(NC,x1,y1)
call IA1(GetTriggerUnit(),1093686081)
set CII[GetPlayerId(GetOwningPlayer(SFI))]=I01
call SetUnitScale(I01,3.5,3.5,3.5)
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0.025,true)
call TriggerRegisterUnitEvent(t,I01,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function GU3))
call RemoveLocation(l)
set t=null
set I01=null
set g=null
set SFI=null
set l=null
endfunction
function H13 takes nothing returns nothing
local integer i=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
if CII[i]==null then
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652599))
else
call SetUnitScale(CII[i],2.5,2.5,2.5)
call KillUnit(CII[i])
endif
endfunction
function HO3 takes nothing returns boolean
if GetSpellAbilityId()==1093686073 then
call HI3()
endif
if GetSpellAbilityId()==1093686081 then
call H13()
endif
return false
endfunction
function IllusoryOrb_Learn takes nothing returns boolean
if GetLearnedSkill()==1093686073 and GetUnitAbilityLevel(GetTriggerUnit(),1093686073)==1 and IsUnitIllusion(GetTriggerUnit())==false then
call IA1(GetTriggerUnit(),1093686081)
endif
return false
endfunction
function SJ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HO3))
set t=null
endfunction
function H23 takes nothing returns boolean
return GetSpellAbilityId()==1093808453
endfunction
function H33 takes nothing returns nothing
call SetUnitX(GetEnumUnit(),C1I)
call SetUnitY(GetEnumUnit(),COI)
endfunction
function H43 takes nothing returns nothing
local destructable array dx
local integer TGI
local integer THI
local fogmodifier H53
local unit I01=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local location AM3
local real x
local real y
local group g=NTI()
if P8I==null then
set AM3=GetSpellTargetLoc()
else
set AM3=GetUnitLoc(P8I)
endif
set x=GetLocationX(AM3)
set y=GetLocationY(AM3)
set C1I=x
set COI=y
if IsUnitAlly(I01,GetOwningPlayer(P8I))==true or NNI(GetSpellTargetUnit())==false then
set GK=I01
call GroupEnumUnitsInRange(g,x,y,150,Condition(function CA1))
call O71(CreateFogModifierRadiusLocBJ(true,GetOwningPlayer(I01),FOG_OF_WAR_VISIBLE,AM3,1000.00),2.25+0.75*GetUnitAbilityLevel(I01,1093808453))
set TGI=1
set THI=8
loop
exitwhen TGI>THI
call OA1(CreateDestructableLoc(1110454325,M7I(AM3,150.00,(I2R(TGI)*45.00)),GetRandomReal(0,360),1,0),2.25+0.75*GetUnitAbilityLevel(I01,1093808453))
set TGI=TGI+1
endloop
endif
call RemoveLocation(AM3)
call ForGroup(g,function H33)
call NSI(g)
set H53=null
set I01=null
set P8I=null
set AM3=null
set g=null
endfunction
function H63 takes nothing returns nothing
if GetSpellAbilityId()==1093808453 and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
endfunction
function XL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function H23))
call TriggerAddAction(t,function H43)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddAction(t,function H63)
endfunction
constant function Teleportation_AbilityCode takes nothing returns integer
return 1093677391
endfunction
function H73 takes nothing returns boolean
return GetSpellAbilityId()==(1093677391)
endfunction
function H83 takes nothing returns nothing
local location BFO=GetSpellTargetLoc()
local real x=GetLocationX(BFO)
local real y=GetLocationY(BFO)
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(GetTriggerUnit()))then
call PingMinimapEx(x,y,3,255,255,255,false)
endif
call DestroyEffect(AddSpecialEffect("war3mapImported\\FurionTeleportTarget.mdx",x,y))
call DestroyEffect(AddSpecialEffect("war3mapImported\\FurionTeleportTarget.mdx",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
call RemoveLocation(BFO)
endfunction
function XM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
call TriggerAddCondition(t,Condition(function H73))
call TriggerAddAction(t,function H83)
endfunction
function H93 takes unit P7I,real x,real y returns nothing
local unit HA3=CreateUnit(GetOwningPlayer(P7I),1701212014,x,y,0)
call UnitApplyTimedLife(HA3,1111844462,60)
call SetUnitVertexColor(HA3,175,255,175,175)
call SetUnitFlyHeight(HA3,0,0)
set HA3=null
endfunction
function HB3 takes nothing returns nothing
if(RJI(GetEnumDestructable())or GetDestructableTypeId(GetEnumDestructable())==1110454325)and C2I<=C3I and GetDestructableLife(GetEnumDestructable())>0 then
set C2I=C2I+1
call H93(GetTriggerUnit(),GetDestructableX(GetEnumDestructable()),GetDestructableY(GetEnumDestructable()))
call KillDestructable(GetEnumDestructable())
endif
endfunction
function HC3 takes nothing returns nothing
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1095067246)
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real d=75+75*SUI+50
local rect r=Rect(x-d,y-d,x+d,y+d)
set C2I=0
set C3I=SUI
call EnumDestructablesInRect(r,Condition(function N1I),function HB3)
call RemoveRect(r)
call RemoveLocation(l)
set l=null
set r=null
endfunction
function ForceOfNature_Main takes nothing returns boolean
if GetSpellAbilityId()==1095067246 then
call HC3()
endif
return false
endfunction
function XN1 takes nothing returns nothing
endfunction
function HD3 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local real d=QNI(GetUnitX(P8I),GetUnitY(P8I),C6I,C7I)
if d<C5I and IsUnitVisible(P8I,GetOwningPlayer(C8I))==true then
set C4I=GetEnumUnit()
set C5I=d
endif
set P8I=null
endfunction
function HE3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093752632)
local integer OO1=1093678936
local group g
local unit I01
if SUI==0 then
set SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093752633)
set OO1=1093681484
endif
if P8I==null then
set C4I=null
set C8I=P7I
set C5I=999999
set C6I=GetSpellTargetX()
set C7I=GetSpellTargetY()
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function CA1))
call ForGroup(g,function HD3)
call NSI(g)
set P8I=C4I
set g=null
endif
if P8I!=null then
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call IA1(I01,OO1)
call SetUnitAbilityLevel(I01,OO1,SUI)
call IssueTargetOrder(I01,"chainlightning",P8I)
set I01=null
endif
set P7I=null
set P8I=null
endfunction
function HF3 takes nothing returns boolean
if GetSpellAbilityId()==1093752632 or GetSpellAbilityId()==1093752633 then
call HE3()
endif
return false
endfunction
function XS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HF3))
set t=null
endfunction
function HG3 takes unit P7I,unit P8I returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
local integer SUI=GetUnitAbilityLevel(P7I,1093685586)
local real AB3
local real HH3=0.35
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093747251)
set HH3=0.65
endif
call IA1(I01,1093685589)
call SetUnitAbilityLevel(I01,1093685589,SUI)
call IssueTargetOrder(I01,"slow",P8I)
if SUI==1 then
set AB3=0.35
elseif SUI==2 then
set AB3=0.35
else
set AB3=0.35
endif
call P6I(P7I,P7I,1,GetUnitState(P7I,UNIT_STATE_LIFE)*AB3)
call P6I(P7I,P8I,1,GetUnitState(P8I,UNIT_STATE_LIFE)*HH3)
call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",P7I,"chest"))
call DestroyEffect(AddSpecialEffectTarget("effects\\LifeBreak.mdx",P8I,"chest"))
set P7I=null
set P8I=null
set I01=null
endfunction
function HZ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real x
local real y
local real QXI=GetUnitX(P7I)
local real QYI=GetUnitY(P7I)
local real QJI=GetUnitX(P8I)
local real QKI=GetUnitY(P8I)
local real RM2=Atan2(QKI-QYI,QJI-QXI)
if GetUnitTypeId(P7I)==1160786520 then
call SetUnitAnimationByIndex(P7I,1)
else
call SetUnitAnimationByIndex(P7I,17)
endif
if GetTriggerEventId()==EVENT_WIDGET_DEATH or QNI(II3,I13,QJI,QKI)>1400 or BG1(P7I)then
call SetUnitPathing(P7I,true)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call UnitRemoveAbility(P7I,1093686100)
call SetUnitTimeScale(P7I,1.0)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif QNI(QXI,QYI,QJI,QKI)<125 then
call SetUnitPathing(P7I,true)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call UnitRemoveAbility(P7I,1093686100)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitTimeScale(P7I,1.0)
if P8I!=null and IC1(P8I)==false then
call IssueTargetOrder(P7I,"attack",P8I)
call HG3(P7I,P8I)
endif
else
call SetUnitPathing(P7I,false)
set II3=QJI
set I13=QKI
call SaveReal(LY,(S5I),(23),((II3)*1.0))
call SaveReal(LY,(S5I),(24),((I13)*1.0))
set x=QXI+15*Cos(RM2)
set y=QYI+15*Sin(RM2)
call SetUnitPosition(P7I,x,y)
call SetUnitFacing(P7I,RM2*bj_RADTODEG)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function HV3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.015,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function HZ3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(23),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P8I))*1.0))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("war3mapImported\\LifeBreakCharge.mdx",P7I,"hand right alternate")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("war3mapImported\\LifeBreakCharge.mdx",P7I,"hand left alternate")))
call SetUnitPathing(P7I,false)
call IA1(P7I,1093686100)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093686100,false)
call SetUnitAnimationByIndex(P7I,17)
call SetUnitTimeScale(P7I,3.0)
set P7I=null
set P8I=null
set t=null
endfunction
function HW3 takes nothing returns boolean
if(GetSpellAbilityId()==1093685586 or GetSpellAbilityId()==1093747251)and NNI(GetSpellTargetUnit())==false then
call HV3()
endif
return false
endfunction
function SO1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HW3))
set t=null
call Q1I(1093685589)
endfunction
function HX3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer HY3=SHI(P8I)
local real QZI=GetUnitState(P8I,UNIT_STATE_LIFE)
local real R2O=GetUnitState(P8I,UNIT_STATE_MAX_LIFE)
local real HJ3
if QZI/R2O>0.4 then
set HJ3=I2R(SUI)/4*0.2*HY3+10
else
set HJ3=0.2*SUI*HY3+10
endif
set HJ3=HJ3/8.0
if GetTriggerEvalCount(t)>16*8.0 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(31))))
call UnitRemoveAbility(P8I,1093685583)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitState(P8I,UNIT_STATE_LIFE,QZI+HJ3)
endif
set P8I=null
set t=null
return false
endfunction
function HK3 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093685584)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1/8.0,true)
call TriggerAddCondition(t,Condition(function HX3))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(31),(AddSpecialEffectTarget("InnerVitality.mdx",P8I,"chest")))
call IA1(P8I,1093685583)
call SetUnitAbilityLevel(P8I,1093685583,SUI)
set P8I=null
set P7I=null
set t=null
endfunction
function HL3 takes nothing returns boolean
if GetSpellAbilityId()==1093685584 then
call HK3()
endif
return false
endfunction
function S01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function HL3))
endfunction
function HM3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer KAO
local integer HN3
local integer HS3
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
if GetTriggerEvalCount(t)>8 or IC1(P8I)then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(31))))
call FlushChildHashtable(LY,(S5I))
set KAO=GetHandleId(P7I)
set HN3=6000+GetHandleId(P8I)
set HS3=(LoadInteger(LY,(KAO),(HN3)))
set HS3=HS3-1
if HS3==0 then
call SaveInteger(LY,(KAO),(HN3),(0))
else
call SaveInteger(LY,(KAO),(HN3),(HS3))
endif
call NXI(PCI)
call S0I(t)
else
call P6I(P7I,P8I,1,5*GetUnitAbilityLevel(P7I,1093685582))
endif
set t=null
set P8I=null
set P7I=null
return false
endfunction
function HT3 takes unit P7I,unit P8I returns nothing
local integer S5I=GetHandleId(P7I)
local integer KAO
local trigger t
local integer HR3=(LoadInteger(LY,(S5I),(6000+GetHandleId(P8I))))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function HM3))
set KAO=GetHandleId(t)
call SaveUnitHandle(LY,(KAO),(2),(P7I))
call SaveInteger(LY,(KAO),(30),(NKI(P8I)))
call SaveInteger(LY,(S5I),(6000+GetHandleId(P8I)),(HR3+1))
call SaveEffectHandle(LY,(KAO),(31),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl",P8I,"chest")))
set t=null
endfunction
function HP3 takes nothing returns boolean
local real d
if GetUnitAbilityLevel(GetTriggerUnit(),1110456369)>0 and GetUnitAbilityLevel(GetEventDamageSource(),1093685582)>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
call SetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE,QDI(GetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE)-15,1))
call UnitRemoveAbility(GetTriggerUnit(),1110456369)
call HT3(GetEventDamageSource(),GetTriggerUnit())
call DisableTrigger(GetTriggeringTrigger())
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
endif
return false
endfunction
function HQ3 takes nothing returns nothing
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
call TriggerAddCondition(t,Condition(function HP3))
endif
set t=null
set P8I=null
set P7I=null
endfunction
function HU3 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
if GetUnitAbilityLevel(GetAttacker(),1093685582)>0 and(LoadBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(14)))then
call HQ3()
endif
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if(GetIssuedOrderId()==OrderId("poisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(true))
elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
call SaveBoolean(LY,(GetHandleId(GetTriggeringTrigger())),(263),(false))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093685582 then
call HQ3()
endif
return false
endfunction
function Z03 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function HU3))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
set t=null
endfunction
function ZI3 takes nothing returns boolean
if GetLearnedSkill()==1093685582 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093685582)==1 then
call Z03()
endif
return false
endfunction
function SI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function ZI3))
set t=null
endfunction
function Z13 takes unit SFI,integer ZO3 returns nothing
local integer i=0
loop
exitwhen i>24
if i!=ZO3/4 and GetUnitAbilityLevel(SFI,C9I[i])>0 then
call UnitRemoveAbility(SFI,C9I[i])
endif
set i=i+1
endloop
if GetUnitAbilityLevel(SFI,C9I[ZO3/4])==0 then
call IA1(SFI,C9I[ZO3/4])
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),C9I[ZO3/4],false)
endif
endfunction
function Z23 takes nothing returns boolean
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real Z33=GetUnitState(SFI,UNIT_STATE_LIFE)
local real MaxHealth=GetUnitState(SFI,UNIT_STATE_MAX_LIFE)
local integer Z43
local integer Z53
local integer SUI=GetUnitAbilityLevel(SFI,1093685585)
local boolean Z63=(LoadBoolean(LY,(S5I),(319)))
if IsUnitType(SFI,UNIT_TYPE_HERO)==true and SUI>0 then
set Z43=R2I(100*GetUnitState(SFI,UNIT_STATE_LIFE)/GetUnitState(SFI,UNIT_STATE_MAX_LIFE))
set Z53=QAI(Q9I(R2I(100-Z43)/7,14),1)
if IC1(SFI)==false then
if(GetUnitAbilityLevel(SFI,1112433775)>0)then
set Z53=0
endif
call G81(SFI,(12+SUI*2)*Z53)
call Z13(SFI,(3+SUI)*Z53)
if Z43<40 then
if Z63==false then
call SaveBoolean(LY,(S5I),(319),(true))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\TrollBerserk\\HeadhunterWEAPONSLeft.mdl",SFI,"left weapon")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("effects\\HeadhunterWEAPONSRight_NoSound.mdx",SFI,"right weapon")))
endif
else
if Z63==true then
call SaveBoolean(LY,(S5I),(319),(false))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
endif
endif
endif
endif
set SFI=null
return false
endfunction
function Z73 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function Z23))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(GetTriggerUnit()))
call SaveBoolean(LY,(GetHandleId(t)),(319),(false))
set t=null
endfunction
function Z83 takes nothing returns boolean
if GetLearnedSkill()==1093685585 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093685585)==1 then
call Z73()
endif
return false
endfunction
function S11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function Z83))
set C9I[1]=1093816397
set C9I[2]=1093816398
set C9I[3]=1093816399
set C9I[4]=1093816400
set C9I[5]=1093816401
set C9I[6]=1093816394
set C9I[7]=1093816402
set C9I[8]=1093816393
set C9I[9]=1093816396
set C9I[10]=1093816404
set C9I[11]=1093816625
set C9I[12]=1093816405
set C9I[13]=1093816392
set C9I[14]=1093816406
set C9I[15]=1093816407
set C9I[16]=1093816408
set C9I[17]=1093816409
set C9I[18]=1093816410
set C9I[19]=1093816624
set C9I[20]=1093816395
set C9I[21]=1093816403
set C9I[22]=1093817409
set C9I[23]=1093817410
set C9I[24]=1093817411
set t=null
endfunction
function Z93 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real a=(LoadReal(LY,(S5I),(137)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer id=GetPlayerId(GetOwningPlayer(P7I))
local integer NPI=GetTriggerEvalCount(t)
local real IV1=x+150*NPI*Cos(a)
local real IW1=y+150*NPI*Sin(a)
local integer ZA3=6
if GetUnitAbilityLevel(P7I,1093685045)==0 then
set ZA3=11
endif
call IssuePointOrder(CAI[id],"flamestrike",IV1,IW1)
if NPI==(ZA3)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitAnimation(P7I,"stand")
endif
set t=null
set P7I=null
return false
endfunction
function ZB3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
local real a=Atan2(y-GetUnitY(P7I),x-GetUnitX(P7I))
local integer SUI=GetUnitAbilityLevel(P7I,1093685045)
local integer ZC3=1093685061
if SUI==0 then
set SUI=GetUnitAbilityLevel(P7I,1093747249)
set ZC3=1093747250
endif
call RemoveLocation(l)
call SetUnitAnimation(P7I,"spell")
set CAI[GetPlayerId(GetOwningPlayer(P7I))]=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call IA1(CAI[GetPlayerId(GetOwningPlayer(P7I))],ZC3)
call SetUnitAbilityLevel(CAI[GetPlayerId(GetOwningPlayer(P7I))],ZC3,SUI)
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(6),((GetUnitX(P7I))*1.0))
call SaveReal(LY,(S5I),(7),((GetUnitY(P7I))*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
if ZC3==1093685061 then
call TriggerRegisterTimerEvent(t,0.1,true)
else
call TriggerRegisterTimerEvent(t,0.05,true)
endif
call TriggerAddCondition(t,Condition(function Z93))
set t=null
set P7I=null
set l=null
endfunction
function ZD3 takes nothing returns boolean
if GetSpellAbilityId()==1093685045 or GetSpellAbilityId()==1093747249 then
call ZB3()
endif
return false
endfunction
function WS1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ZD3))
call Q1I(1093685061)
set t=null
endfunction
function ZE3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEvalCount(t)>10 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call UnitRemoveAbility(P8I,1093748533)
call UnitRemoveAbility(P8I,1093748531)
call UnitRemoveAbility(P8I,1093748534)
call UnitRemoveAbility(P8I,1093748532)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call P6I(P7I,P8I,1,(SUI*4+8)/2)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function ZF3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=CCI
local unit P7I=CBI
local unit P8I=GetEnumUnit()
if SUI==1 then
call IA1(P8I,1093748533)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093748533,false)
elseif SUI==2 then
call IA1(P8I,1093748531)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093748531,false)
elseif SUI==3 then
call IA1(P8I,1093748534)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093748534,false)
elseif SUI==4 then
call IA1(P8I,1093748532)
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),1093748532,false)
endif
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl",P8I,"chest")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(5),(SUI))
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function ZE3))
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",GetUnitX(P8I),GetUnitY(P8I)))
set t=null
set P7I=null
set P8I=null
endfunction
function ZG3 takes unit P7I,unit P8I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093817935)
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local group g=NTI()
local group g2=NTI()
set CCI=SUI
set CBI=P7I
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,300+25,Condition(function CZ1))
call GroupEnumUnitsInRange(g2,x,y,300+25,Condition(function C41))
call GroupAddGroup(g2,g)
call ForGroup(g,function ZF3)
call NSI(g)
call NSI(g2)
set t=null
set g=null
set g2=null
endfunction
function ZH3 takes nothing returns boolean
if GetUnitAbilityLevel(GetTriggerUnit(),1110460248)>0 and GetUnitAbilityLevel(GetEventDamageSource(),1093817677)>0 and(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
call UnitRemoveAbility(GetTriggerUnit(),1110460248)
call FlushChildHashtable(LY,(GetHandleId(GetTriggeringTrigger())))
call S0I(GetTriggeringTrigger())
call ZG3(GetEventDamageSource(),GetTriggerUnit())
endif
return false
endfunction
function ZZ3 takes nothing returns nothing
local trigger t=CreateTrigger()
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function ZH3))
set t=null
set P8I=null
set P7I=null
endfunction
function ZV3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call IssueImmediateOrder(P7I,"unpoisonarrows")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function ZW3 takes nothing returns boolean
local unit P7I=GetTriggerUnit()
local trigger t
if GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
if GetIssuedOrderId()==OrderId("poisonarrows")then
set t=CreateTrigger()
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(P7I))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function ZV3))
endif
elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093817677 then
call ZZ3()
endif
return false
endfunction
function ZX3 takes nothing returns nothing
local trigger t
if GetUnitAbilityLevel(GetTriggerUnit(),1093817935)==1 then
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function ZW3))
set t=null
endif
if GetUnitAbilityLevel(GetTriggerUnit(),1093817677)==0 then
call IA1(GetTriggerUnit(),1093817677)
endif
call SetUnitAbilityLevel(GetTriggerUnit(),1093817677,GetUnitAbilityLevel(GetTriggerUnit(),1093817935))
endfunction
function ZY3 takes nothing returns boolean
if GetLearnedSkill()==1093817935 and IsUnitIllusion(GetTriggerUnit())==false then
call ZX3()
endif
return false
endfunction
function WM1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function ZY3))
set t=null
endfunction
function ZJ3 takes nothing returns nothing
local unit P7I=CEI
local unit P8I=GetEnumUnit()
local unit ZK3
if IsUnitInGroup(P8I,CDI)==false then
call GroupAddUnit(CDI,P8I)
call DD1(P7I,P8I,CFI)
call P6I(P7I,P8I,1,50)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl",GetUnitX(P8I),GetUnitY(P8I)))
endif
endfunction
function ZL3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x0=(LoadReal(LY,(S5I),(6)))
local real y0=(LoadReal(LY,(S5I),(7)))
local real a=(LoadReal(LY,(S5I),(137)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=GetTriggerEvalCount(t)
local real x
local real y
local group g
local integer i
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
local integer SUI=GetUnitAbilityLevel(P7I,1093685046)
set i=0
loop
exitwhen i>10
set x=x0+100*i*Cos(a*bj_DEGTORAD)
set y=y0+100*i*Sin(a*bj_DEGTORAD)
if ModuloInteger(NPI,10)==0 then
endif
set GK=P7I
set CEI=P7I
set CDI=PR2
set CFI=(0.6+0.4*SUI)-(NPI*0.05)
set CGI=SUI
set g=NTI()
call GroupEnumUnitsInRange(g,x,y,150+25,Condition(function CA1))
call ForGroup(g,function ZJ3)
call NSI(g)
set i=i+1
endloop
if NPI==20*(0.6+0.4*SUI)then
call NSI(PR2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set g=null
set PR2=null
return false
endfunction
function ZM3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x0=(LoadReal(LY,(S5I),(6)))
local real y0=(LoadReal(LY,(S5I),(7)))
local real a=(LoadReal(LY,(S5I),(137)))
local integer NPI=GetTriggerEvalCount(t)
local real x=x0+100*NPI*Cos(a*bj_DEGTORAD)
local real y=y0+100*NPI*Sin(a*bj_DEGTORAD)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=GetUnitAbilityLevel(P7I,1093685046)
local ubersplat AR1
local integer i
if NPI<10 then
call SaveEffectHandle(LY,(S5I),(609+NPI),(AddSpecialEffect("effects\\IcePath.mdx",x,y)))
set AR1=CreateUbersplat(x,y,"IPTH",255,255,255,255,false,false)
call SetUbersplatRenderAlways(AR1,true)
call SaveUbersplatHandle(LY,(S5I),(760+NPI),(AR1))
endif
if NPI==10 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function ZL3))
call SaveReal(LY,(S5I),(6),((x0)*1.0))
call SaveReal(LY,(S5I),(7),((y0)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call TriggerEvaluate(t)
elseif NPI>=(0.4+0.6+0.4*SUI)/.05 then
set i=0
loop
exitwhen i==10
call DestroyEffect((LoadEffectHandle(LY,(S5I),(609+i))))
call DestroyUbersplat((LoadUbersplatHandle(LY,(S5I),(760+i))))
set i=i+1
endloop
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function ZN3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local real a=UEI(x,y,GetSpellTargetX(),GetSpellTargetY())
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function ZM3))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(137),((a)*1.0))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerEvaluate(t)
set t=null
set P7I=null
endfunction
function ZS3 takes nothing returns boolean
if GetSpellAbilityId()==1093685046 then
call ZN3()
endif
return false
endfunction
function WN1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function ZS3))
set t=null
endfunction
function ZT3 takes real x1,real y1,real x2,real y2,real x3,real y3,real x,real y returns boolean
local real ZR3=(y-y1)*(x2-x1)-(x-x1)*(y2-y1)
local real ZP3=(y-y3)*(x1-x3)-(x-x3)*(y1-y3)
local real ZQ3=(y-y2)*(x3-x2)-(x-x2)*(y3-y2)
return(ZR3*ZP3>0)and(ZQ3*ZP3>0)
endfunction
function ZU3 takes nothing returns boolean
local real V03=AK
local real VI3=BK
local real V13=CK
local real VO3=DK
local real V23=EK
local real V33=FK
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and ZT3(V03,VI3,V13,VO3,V23,V33,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
endfunction
function V43 takes real V53,real V63,real V73 returns nothing
local real V83=600
local real V93=200
local real VA3=250
local real VB3=Asin((VA3-V93)/V83)
local real x=V93/Sin(VB3)
local real y=(V83+VA3+x)*Tan(VB3)
local real V03=V63+x*Cos((V53-180)*bj_DEGTORAD)
local real VI3=V73+x*Sin((V53-180)*bj_DEGTORAD)
local real V13=(V63+(V83+VA3)*Cos(V53*bj_DEGTORAD))+y*Cos((V53-90)*bj_DEGTORAD)
local real VO3=(V73+(V83+VA3)*Sin(V53*bj_DEGTORAD))+y*Sin((V53-90)*bj_DEGTORAD)
local real V23=(V63+(V83+VA3)*Cos(V53*bj_DEGTORAD))+y*Cos((V53+90)*bj_DEGTORAD)
local real V33=(V73+(V83+VA3)*Sin(V53*bj_DEGTORAD))+y*Sin((V53+90)*bj_DEGTORAD)
set AK=V03
set BK=VI3
set CK=V13
set DK=VO3
set EK=V23
set FK=V33
endfunction
function VC3 takes nothing returns nothing
local unit I01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),1697656901,GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
call IA1(I01,1093818949)
call SetUnitAbilityLevel(I01,1093818949,GetUnitAbilityLevel(GetTriggerUnit(),1093685047))
call IssueTargetOrder(I01,"slow",GetEnumUnit())
set I01=null
endfunction
function VD3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local unit I01
if GetTriggerEvalCount(t)>1 then
call SetUnitAnimation(SFI,"stand")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitAnimation(SFI,"spell")
set I01=CreateUnit(p,1697656901,x,y,0)
call IA1(I01,1093685059)
call SetUnitAbilityLevel(I01,1093685059,SUI)
call IssuePointOrder(I01,"breathoffrost",QJI,QKI)
endif
set t=null
set p=null
set SFI=null
set I01=null
return false
endfunction
function VE3 takes unit u,player p,integer SUI,location l,real x,real y returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SavePlayerHandle(LY,(S5I),(54),(p))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(47),((GetLocationX(l))*1.0))
call SaveReal(LY,(S5I),(48),((GetLocationY(l))*1.0))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveUnitHandle(LY,(S5I),(14),(u))
call TriggerRegisterTimerEvent(t,0.3,true)
call TriggerAddCondition(t,Condition(function VD3))
set t=null
endfunction
function VF3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093685047)
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local location l
local unit I01
local group g=NTI()
if GetSpellTargetUnit()==null then
set l=GetSpellTargetLoc()
else
set l=GetUnitLoc(GetSpellTargetUnit())
endif
call V43(bj_RADTODEG*Atan2(GetLocationY(l)-y,GetLocationX(l)-x),x,y)
call GroupEnumUnitsInRange(g,x,y,2000,Condition(function ZU3))
call ForGroup(g,function VC3)
call NSI(g)
set I01=CreateUnit(GetOwningPlayer(SFI),1697656901,x,y,0)
call IA1(I01,1093685058)
call SetUnitAbilityLevel(I01,1093685058,SUI)
call IssuePointOrder(I01,"breathoffire",GetLocationX(l),GetLocationY(l))
call VE3(SFI,GetOwningPlayer(SFI),SUI,l,x+50*Cos(Atan2(GetLocationY(l)-y,GetLocationX(l)-x)),y+50*Sin(Atan2(GetLocationY(l)-y,GetLocationX(l)-x)))
call RemoveLocation(l)
set SFI=null
set l=null
set g=null
endfunction
function VG3 takes nothing returns boolean
if GetSpellAbilityId()==1093685047 then
call VF3()
endif
return false
endfunction
function WL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VG3))
call Q1I(1093685058)
call Q1I(1093685059)
call Q1I(1093818949)
set t=null
endfunction
function VH3 takes unit SFI,unit P8I returns nothing
local real a=GetRandomReal(0,360)
local real x=GetUnitX(P8I)+50*Cos(a*bj_DEGTORAD)
local real y=GetUnitY(P8I)+50*Sin(a*bj_DEGTORAD)
local real VZ3=GetRandomReal(200,225)
if((LoadInteger(LY,(GetHandleId((SFI))),((4256))))==1)==false then
call SetUnitPosition(SFI,x,y)
else
call SetUnitX(SFI,x)
call SetUnitY(SFI,y)
endif
call SetUnitFacing(SFI,bj_RADTODEG*Atan2(GetUnitY(P8I)-GetUnitY(SFI),GetUnitX(P8I)-GetUnitX(SFI)))
call SetUnitAnimation(SFI,"Attack")
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl",SFI,"chest"))
if T2I(GetOwningPlayer(P8I))==false and IsUnitType(P8I,UNIT_TYPE_ANCIENT)==false then
set VZ3=99999
endif
call P6I(SFI,P8I,2,VZ3)
if((LoadInteger(LY,(GetHandleId((SFI))),((4256))))==1)==false then
call IssueTargetOrder(SFI,"attack",P8I)
endif
endfunction
function VV3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call VH3(SFI,P8I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
set P8I=null
return false
endfunction
function VW3 takes unit SFI returns nothing
local group g=NTI()
set GK=SFI
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),450,Condition(function D71))
set GK=GroupPickRandomUnit(g)
if GK!=null then
call VH3(SFI,GK)
endif
call NSI(g)
set g=null
endfunction
function VX3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local integer VY3=(LoadInteger(LY,(S5I),(216)))
local integer VJ3=(LoadInteger(LY,(S5I),(325)))
local integer QX2=(LoadInteger(LY,(S5I),(28)))
local unit VK3
if QX2>VY3 then
call KillUnit(I01)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093678407,true)
call SetUnitPathing(SFI,true)
call SetUnitInvulnerable(SFI,false)
call SaveInteger(LY,(GetHandleId((SFI))),((4253)),(2))
call SetUnitVertexColor(SFI,255,255,255,255)
else
call SaveInteger(LY,(S5I),(28),(QX2+1))
call VW3(SFI)
if GK==null then
call KillUnit(I01)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093678407,true)
call SetUnitPathing(SFI,true)
call SetUnitInvulnerable(SFI,false)
call SaveInteger(LY,(GetHandleId((SFI))),((4253)),(2))
call SetUnitVertexColor(SFI,255,255,255,255)
endif
endif
set t=null
set SFI=null
set VK3=null
set I01=null
return false
endfunction
function VL3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093684529)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer VJ3=GetUnitAbilityLevel(SFI,1093678407)
local player p=GetOwningPlayer(SFI)
local integer VY3=3
local unit I01=CreateUnit(GetOwningPlayer(SFI),1865429060,GetUnitX(SFI),GetUnitY(SFI),0)
if SUI==0 then
set SUI=GetUnitAbilityLevel(SFI,1093747032)
if SUI==1 then
set VY3=6
elseif SUI==2 then
set VY3=9
elseif SUI==3 then
set VY3=12
endif
elseif SUI==2 then
set VY3=6
elseif SUI==3 then
set VY3=9
endif
call SetPlayerAbilityAvailable(p,1093678407,false)
call SetUnitVertexColor(SFI,255,255,255,125)
call SetUnitPathing(SFI,false)
call SetUnitInvulnerable(SFI,true)
call SaveInteger(LY,(GetHandleId((SFI))),((4253)),(1))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function VV3))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(216),(VY3))
call SaveInteger(LY,(S5I),(325),(VJ3))
call SaveInteger(LY,(S5I),(28),(2))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile_mini.mdl",SFI,"weapon")))
call TriggerRegisterTimerEvent(t,0.4,true)
call TriggerAddCondition(t,Condition(function VX3))
set SFI=null
set P8I=null
set t=null
set p=null
endfunction
function VM3 takes nothing returns boolean
if GetSpellAbilityId()==1093684529 or GetSpellAbilityId()==1093747032 then
call VL3()
endif
return false
endfunction
function VN3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call SetUnitAnimationByIndex(P7I,4)
set t=null
set P7I=null
return false
endfunction
function VS3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function VN3))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
endfunction
function VT3 takes nothing returns boolean
if GetSpellAbilityId()==1093684529 or GetSpellAbilityId()==1093747032 then
call VS3()
endif
return false
endfunction
function XR1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VM3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function VT3))
set t=null
endfunction
function VR3 takes nothing returns nothing
call P6I(CHI,GetEnumUnit(),1,(60.0+20.0*CZI)*0.25)
endfunction
function VP3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=GetTriggerEvalCount(t)
local group g
if NPI==20 or GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set GK=P7I
set CHI=P7I
set CZI=GetUnitAbilityLevel(P7I,1093678407)
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),275,Condition(function CA1))
call ForGroup(g,function VR3)
call NSI(g)
set g=null
endif
set t=null
set P7I=null
return false
endfunction
function VQ3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerRegisterUnitEvent(t,GetTriggerUnit(),EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function VP3))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call TriggerEvaluate(t)
call SCI(GetTriggerUnit(),4252,5)
endfunction
function VU3 takes nothing returns boolean
if GetSpellAbilityId()==1093678407 then
call VQ3()
endif
return false
endfunction
function XP1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function VU3))
set t=null
endfunction
function W03 takes nothing returns boolean
return GetUnitTypeId(GetSummonedUnit())==1865429059 or GetUnitTypeId(GetSummonedUnit())==1865429319 or GetUnitTypeId(GetSummonedUnit())==1865429320 or GetUnitTypeId(GetSummonedUnit())==1865429321
endfunction
function WI3 takes nothing returns nothing
call SetUnitAbilityLevelSwapped(1093678392,GetSummonedUnit(),GetUnitAbilityLevelSwapped(1093678135,GetSummoningUnit()))
endfunction
function XT1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function W03))
call TriggerAddAction(t,function WI3)
endfunction
function W13 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x1
local real y1
local real x2
local real y2
if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetEventDamage()>2 and T2I(GetOwningPlayer(GetEventDamageSource())))then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_DAMAGED and GetTriggerEventId()!=EVENT_UNIT_DEATH then
set x1=GetUnitX(P7I)
set y1=GetUnitY(P7I)
set x2=GetUnitX(P8I)
set y2=GetUnitY(P8I)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl",x1,y1))
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",x2,y2))
call SCI(P8I,4410,1)
call SetUnitPosition(P8I,GetUnitX(P7I),GetUnitY(P7I))
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
function WO3 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local real d=QNI(GetUnitX(P8I),GetUnitY(P8I),CXI,CYI)
if d<CWI then
set CVI=GetEnumUnit()
set CWI=d
endif
set P8I=null
endfunction
function W23 takes nothing returns nothing
local unit P8I=GetSpellTargetUnit()
local unit P7I=GetTriggerUnit()
local trigger t
local integer S5I
local real DC1
local group g
if P8I==null then
set CVI=null
set CWI=999999
set CXI=GetSpellTargetX()
set CYI=GetSpellTargetY()
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function CU1))
call GroupRemoveUnit(g,P7I)
call ForGroup(g,function WO3)
call NSI(g)
set P8I=CVI
set g=null
endif
if GetSpellAbilityId()==1093742677 then
set DC1=5
elseif GetSpellAbilityId()==1093742937 then
set DC1=4
elseif GetSpellAbilityId()==1093742938 then
set DC1=3
elseif GetSpellAbilityId()==1093750321 then
set DC1=3
endif
if P8I!=null then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,DC1,false)
call TriggerAddCondition(t,Condition(function W13))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",P7I,"origin")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",P8I,"origin")))
endif
set P8I=null
set P7I=null
set t=null
endfunction
function W33 takes nothing returns boolean
if GetSpellAbilityId()==1093742677 or GetSpellAbilityId()==1093742937 or GetSpellAbilityId()==1093742938 then
call W23()
endif
return false
endfunction
function W43 takes nothing returns boolean
if GetSpellAbilityId()==1093742677 or GetSpellAbilityId()==1093742937 or GetSpellAbilityId()==1093742938 then
if GetSpellTargetUnit()!=null and(LoadBoolean(LY,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848652600))
endif
endif
return false
endfunction
function YI1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function W33))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function W43))
set t=null
endfunction
function W53 takes integer SUI returns integer
if SUI==1 then
return 1093742682
elseif SUI==2 then
return 1093742897
elseif SUI==3 then
return 1093742681
elseif SUI==4 then
return 1093742896
endif
return 0
endfunction
function W63 takes integer SUI returns integer
if SUI==1 then
return 1110456653
elseif SUI==2 then
return 1110456654
elseif SUI==3 then
return 1110456655
elseif SUI==4 then
return 1110456652
endif
return 0
endfunction
function W73 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local real d=SquareRoot((II3-x)*(II3-x)+(I13-y)*(I13-y))
local real W83=(0.00050)*d*GetUnitState(P8I,UNIT_STATE_MAX_MANA)
local integer KO2=GetTriggerEvalCount(t)
local unit I01
if RKI(P8I)==true then
set W83=0
endif
if d>300 then
set W83=0
endif
if W83>1 and ModuloInteger(GetTriggerEvalCount(t),3)==0 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\WingedSerpentMissile\\WingedSerpentMissile.mdl",P8I,"chest"))
endif
if W83>0 then
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)-W83)
endif
call SaveReal(LY,(S5I),(23),((x)*1.0))
call SaveReal(LY,(S5I),(24),((y)*1.0))
if GetTriggerEventId()==EVENT_UNIT_DEATH or KO2==(SUI+4)*10 then
call UnitRemoveAbility(P8I,W53(SUI))
call UnitRemoveAbility(P8I,W63(SUI))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetUnitState(P8I,UNIT_STATE_MANA)<1 then
call DD1((LoadUnitHandle(LY,(S5I),(2))),P8I,1+0.5*SUI)
set I01=null
call UnitRemoveAbility(P8I,W53(SUI))
call UnitRemoveAbility(P8I,W63(SUI))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P8I=null
return false
endfunction
function W93 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(P7I,1093742680)
call IA1(P8I,W53(SUI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(5),(SUI))
call SaveReal(LY,(S5I),(23),((GetUnitX(P8I))*1.0))
call SaveReal(LY,(S5I),(24),((GetUnitY(P8I))*1.0))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\BasicWaterFlash.mdx",P8I,"chest")))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function W73))
set P7I=null
set P8I=null
set t=null
endfunction
function WA3 takes nothing returns boolean
if GetSpellAbilityId()==1093742680 and NNI(GetSpellTargetUnit())==false then
call W93()
endif
return false
endfunction
function XQ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function WA3))
set t=null
endfunction
function WB3 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),XK)==false then
call GroupAddUnit(XK,GetEnumUnit())
call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+AK)
endif
endfunction
function WC3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local group H03
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer NPI=GetTriggerEvalCount(t)
local real DX1=1050*0.1
if NPI>19 then
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set x=x+NPI*DX1*Cos(RM2*bj_DEGTORAD)
set y=y+NPI*DX1*Sin(RM2*bj_DEGTORAD)
set H03=NTI()
set XK=g
set GK=P7I
set AK=(50*SUI)*0.75
call GroupEnumUnitsInRange(H03,x,y,350+25,Condition(function CT1))
call ForGroup(H03,function WB3)
call NSI(H03)
endif
set t=null
set g=null
set H03=null
return false
endfunction
function WD3 takes unit P7I,real x0,real y0,real x1,real y1,integer T82 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g=NTI()
local real RM2=UEI(x0,y0,x1,y1)
call SaveInteger(LY,(S5I),(5),(T82))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveReal(LY,(S5I),(6),((x0)*1.0))
call SaveReal(LY,(S5I),(7),((y0)*1.0))
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function WC3))
set t=null
set g=null
endfunction
function WE3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit WF3=(LoadUnitHandle(LY,(S5I),(19)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local integer T82=(LoadInteger(LY,(S5I),(34)))
local real WG3=GetUnitX(WF3)-50*Cos(RM2)
local real WH3=GetUnitY(WF3)-50*Sin(RM2)
local unit I01=CreateUnit(GetOwningPlayer(WF3),1697656901,WG3,WH3,0)
local real x=GetUnitX(I01)+50*Cos(RM2)
local real y=GetUnitY(I01)+50*Sin(RM2)
local real x2=x+(300+50*T82)*Cos(RM2)
local real y2=y+(300+50*T82)*Sin(RM2)
local unit P7I=K1[GetPlayerId(GetOwningPlayer(I01))]
call IA1(I01,1093679159)
call SetUnitAbilityLevel(I01,1093679159,T82)
call IssuePointOrder(I01,"breathoffire",x,y)
call KillUnit(WF3)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if P7I!=null and PLI()and ES1(P7I,FR0[JF0])!=null then
call WD3(P7I,WG3,WH3,x,y,T82)
endif
set I01=null
set t=null
return false
endfunction
function WZ3 takes unit WF3,integer T82,real RM2 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function WE3))
call SaveUnitHandle(LY,(S5I),(19),(WF3))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveInteger(LY,(S5I),(34),(T82))
set t=null
endfunction
function WV3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local integer T82=NPI-1
local real RM2=(LoadReal(LY,(S5I),(13)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer WW3=2+SUI*2
local boolean WX3=(LoadBoolean(LY,(S5I),(240)))
local unit ZK3
if GetTriggerEventId()!=EVENT_UNIT_SPELL_ENDCAST then
call SaveInteger(LY,(S5I),(34),(NPI+1))
endif
call SetUnitScale(I01,I2R(100+20*T82)/100,I2R(100+20*T82)/100,I2R(100+20*T82)/100)
if(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and WX3==false)or(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and GetSpellAbilityId()==1093743153)or T82==WW3 then
if WX3 then
set ZK3=(LoadUnitHandle(LY,(S5I),(239)))
call ShowUnit(ZK3,false)
call UnitApplyTimedLife(ZK3,1112820806,1)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if(LoadInteger(LY,(GetHandleId(SFI)),(704)))==0 or(LoadInteger(LY,(GetHandleId(SFI)),(704)))==1093679157 then
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093679157,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093743153,false)
call UnitRemoveAbility(SFI,1093743153)
call WZ3(I01,T82,RM2)
endif
set I01=CreateUnit(GetOwningPlayer(I01),1747990093,GetUnitX(I01)+150*(T82)*Cos(RM2),GetUnitY(I01)+150*(T82)*Sin(RM2),0)
call UnitApplyTimedLife(I01,1112820806,7)
set t=null
set I01=null
set SFI=null
set ZK3=null
return false
endfunction
function WY3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
call IssueImmediateOrder(SFI,"stop")
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function WJ3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real RM2=Atan2(GetLocationY(l)-GetUnitY(SFI),GetLocationX(l)-GetUnitX(SFI))
local real x
local real y
local unit I01
local unit ZK3
local boolean WX3=false
if GetLocationY(l)==GetUnitY(SFI)and GetLocationX(l)==GetUnitX(SFI)then
set RM2=GetUnitFacing(SFI)*bj_DEGTORAD
endif
set x=GetUnitX(SFI)+150*Cos(RM2)
set y=GetUnitY(SFI)+150*Sin(RM2)
set I01=CreateUnit(GetOwningPlayer(SFI),1966092362,x,y,RM2*bj_RADTODEG)
call RemoveLocation(l)
if GetUnitTypeId(SFI)==1211119192 or GetUnitTypeId(SFI)==1211119193 or GetUnitTypeId(SFI)==1211119191 then
set WX3=true
endif
call SaveBoolean(LY,(S5I),(240),(WX3))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveInteger(LY,(S5I),(34),(1))
call SaveInteger(LY,(S5I),(5),(GetUnitAbilityLevel(SFI,1093679157)))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function WV3))
if WX3 then
set ZK3=CreateUnit(GetOwningPlayer(SFI),1747990106,GetUnitX(SFI),GetUnitY(SFI),RM2*bj_RADTODEG)
call SetUnitX(ZK3,GetUnitX(SFI))
call SetUnitY(ZK3,GetUnitY(SFI))
call SetUnitAnimation(ZK3,"spell")
call QueueUnitAnimation(ZK3,"spell")
call QueueUnitAnimation(ZK3,"spell")
call SetUnitVertexColor(ZK3,255,255,255,75)
call SaveUnitHandle(LY,(S5I),(239),(ZK3))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function WY3))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093679157,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093743153,true)
call AH1(SFI,1093743153,1,6)
set t=null
set SFI=null
set I01=null
set ZK3=null
set l=null
endfunction
function WK3 takes nothing returns boolean
if GetSpellAbilityId()==1093679157 then
call WJ3()
endif
return false
endfunction
function Y01 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function WK3))
set t=null
endfunction
function WL3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer DC1=(LoadInteger(LY,(S5I),(188)))
local integer NPI=GetTriggerEvalCount(t)
if NPI==DC1 or GetUnitTypeId(P7I)==1214409837 then
if(LoadReal(LY,(GetHandleId(P7I)),(241)))<=(TimerGetElapsed(M))or GetUnitTypeId(P7I)==1214409837 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093742932,true)
else
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
return false
endfunction
function WM3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093742932)
local integer DC1=40
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093742932,false)
call SaveReal(LY,(GetHandleId(P7I)),(241),(((TimerGetElapsed(M))+DC1)*1.0))
call SaveInteger(LY,(S5I),(188),(DC1))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function WL3))
set t=null
set P7I=null
endfunction
function Ignis_Main takes nothing returns boolean
if GetSpellAbilityId()==1093742932 and GetUnitTypeId(GetTriggerUnit())==1214409837 then
call WM3()
endif
return false
endfunction
function YO1 takes nothing returns nothing
endfunction
function WN3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real OA2=(LoadReal(LY,(S5I),(242)))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)+OA2)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl",P8I,"origin"))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set P8I=null
set t=null
return false
endfunction
function WS3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveReal(LY,(S5I),(242),((75*GetUnitAbilityLevel(SFI,1093742898))*1.0))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function WN3))
set t=null
set SFI=null
set P8I=null
endfunction
function WT3 takes nothing returns boolean
if GetSpellAbilityId()==1093742898 then
call WS3()
endif
return false
endfunction
function XU1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function WT3))
set t=null
endfunction
function WR3 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local real x=GetUnitX(P8I)
local real y=GetUnitY(P8I)
local real a=Atan2(y-CLI,x-CKI)
set x=PTI(x+25*Cos(a))
set y=PUI(y+25*Sin(a))
call UPI(x,y,150)
call SetUnitX(P8I,x)
call SetUnitY(P8I,y)
set P8I=null
endfunction
function WP3 takes nothing returns nothing
local unit P8I=GetEnumUnit()
local unit I01=CreateUnit(JK,1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call IA1(I01,1093742679)
call SetUnitAbilityLevel(I01,1093742679,CJI)
call IssueTargetOrder(I01,"drunkenhaze",P8I)
set P8I=null
set I01=null
endfunction
function WQ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local integer AF1=(LoadInteger(LY,(S5I),(59)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
local integer NPI=GetTriggerEvalCount(t)
set CKI=QXI
set CLI=QYI
call ForGroup(g,function WR3)
if NPI==16 then
if AF1==1093742936 then
set CJI=1
elseif AF1==1093742934 then
set CJI=2
else
set CJI=3
endif
set JK=p
call ForGroup(g,function WP3)
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set p=null
set g=null
return false
endfunction
function WU3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local real QXI=(LoadReal(LY,(S5I),(189)))
local real QYI=(LoadReal(LY,(S5I),(190)))
local integer AF1=(LoadInteger(LY,(S5I),(59)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
call S0I(t)
call FlushChildHashtable(LY,(S5I))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.025,true)
call TriggerAddCondition(t,Condition(function WQ3))
call SavePlayerHandle(LY,(S5I),(54),(p))
call SaveReal(LY,(S5I),(189),((QXI)*1.0))
call SaveReal(LY,(S5I),(190),((QYI)*1.0))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveInteger(LY,(S5I),(59),(AF1))
set t=null
set p=null
set g=null
return false
endfunction
function X03 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group g=NTI()
local unit P7I=GetTriggerUnit()
local location l=GetSpellTargetLoc()
local real x=GetLocationX(l)
local real y=GetLocationY(l)
call KillUnit(CreateUnit(GetOwningPlayer(P7I),1747990096,x,y,0))
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,700,Condition(function CE1))
call TriggerRegisterTimerEvent(t,0.4,false)
call TriggerAddCondition(t,Condition(function WU3))
call SavePlayerHandle(LY,(S5I),(54),(GetOwningPlayer(GetTriggerUnit())))
call SaveReal(LY,(S5I),(189),((x)*1.0))
call SaveReal(LY,(S5I),(190),((y)*1.0))
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveInteger(LY,(S5I),(59),(GetSpellAbilityId()))
set t=null
set g=null
set P7I=null
endfunction
function XI3 takes nothing returns boolean
if GetSpellAbilityId()==1093742936 or GetSpellAbilityId()==1093742934 or GetSpellAbilityId()==1093742935 then
call X03()
endif
return false
endfunction
function Y11 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XI3))
set t=null
endfunction
function X13 takes nothing returns boolean
local integer S5I=GetHandleId(GetTriggeringTrigger())
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit XO3=(LoadUnitHandle(LY,(S5I),(305)))
if P7I==null or IC1(P7I)or PLI()==false or ES1(P7I,FR0[JF0])==null then
call ShowUnit(XO3,false)
else
call ShowUnit(XO3,true)
call SetUnitX(XO3,GetUnitX(P7I))
call SetUnitY(XO3,GetUnitY(P7I))
endif
if GetOwningPlayer(XO3)!=GetOwningPlayer(P7I)then
call SetUnitOwner(XO3,GetOwningPlayer(P7I),true)
endif
return false
endfunction
function X23 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093818450)
local trigger t
local integer S5I
call UnitRemoveAbility(P7I,1110458689)
call UnitRemoveAbility(P7I,1093742932)
if GetUnitAbilityLevel(P7I,1093815117)==0 then
call IA1(P7I,1093815117)
endif
if SUI==1 then
call UnitAddAbility(P7I,1093818420)
call UnitRemoveAbility(P7I,1093818420)
elseif SUI==2 then
call SetUnitAbilityLevel(P7I,1093815117,SUI)
call UnitAddAbility(P7I,1093818419)
call UnitRemoveAbility(P7I,1093818419)
call UnitRemoveAbility(P7I,1093742936)
call UnitRemoveAbility(P7I,1093742677)
call IA1(P7I,1093742934)
call IA1(P7I,1093742937)
elseif SUI==3 then
call SetUnitAbilityLevel(P7I,1093815117,SUI)
call UnitAddAbility(P7I,1093818421)
call UnitRemoveAbility(P7I,1093818421)
call UnitRemoveAbility(P7I,1093742936)
call UnitRemoveAbility(P7I,1093742677)
call UnitRemoveAbility(P7I,1093742934)
call UnitRemoveAbility(P7I,1093742937)
call IA1(P7I,1093742935)
call IA1(P7I,1093742938)
endif
if SUI>0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function X13))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
call SaveUnitHandle(LY,(S5I),(305),(CreateUnit(GetOwningPlayer(GetTriggerUnit()),1865429313,GetUnitX(P7I),GetUnitY(P7I),0)))
set t=null
endif
set P7I=null
endfunction
function X33 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(P7I,1093818449)
local trigger t
local integer S5I
if SUI==1 then
call IA1(P7I,1093742932)
elseif SUI==2 then
call SetUnitAbilityLevel(P7I,1093742932,SUI)
elseif SUI==3 then
call SetUnitAbilityLevel(P7I,1093742932,SUI)
endif
set P7I=null
endfunction
function X43 takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
if GetLearnedSkill()==1093818450 and IsUnitIllusion(GetTriggerUnit())==false then
call X23()
endif
if GetLearnedSkill()==1093818449 and IsUnitIllusion(GetTriggerUnit())==false then
call X33()
endif
else
if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM and GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and F01(GetManipulatedItem())==JF0 then
call X23()
endif
endif
return false
endfunction
function Y21 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call UMI(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call TriggerAddCondition(t,Condition(function X43))
set t=null
endfunction
function X53 takes unit SFI,integer SUI returns integer
local integer X63
local integer X73
if SUI==1 then
set X73=1110458929
set X63=1093744730
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458928
set X63=1093744970
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458713
set X63=1093744970
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
return 1093744729
elseif SUI==2 then
set X73=1110458936
set X63=1093744968
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458935
set X63=1093744967
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458930
set X63=1093744967
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
return 1093744969
elseif SUI==3 then
set X73=1110458931
set X63=1093744965
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458937
set X63=1093744964
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458934
set X63=1093744964
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
return 1093744971
elseif SUI==4 then
set X73=1110458933
set X63=1093744950
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458932
set X63=1093744949
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
set X73=1110458945
set X63=1093744949
if GetUnitAbilityLevel(SFI,X73)>0 then
call UnitRemoveAbility(SFI,X73)
return X63
endif
return 1093744972
endif
return 0
endfunction
function X83 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,1093744728)
local integer X93=X53(SFI,SUI)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
call IA1(I01,X93)
call IssueTargetOrder(I01,"bloodlust",SFI)
set SFI=null
set I01=null
endfunction
function XA3 takes nothing returns boolean
if GetSpellAbilityId()==1093677382 or GetSpellAbilityId()==1093677623 or GetSpellAbilityId()==1093677392 or GetSpellAbilityId()==1093679450 then
call X83()
endif
return false
endfunction
function XB3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XA3))
set t=null
set SFI=null
endfunction
function XC3 takes nothing returns boolean
if GetLearnedSkill()==1093744728 and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),1093744728)==1 then
call XB3()
endif
return false
endfunction
function TK1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function XC3))
set t=null
endfunction
function XD3 takes nothing returns nothing
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093679450)
local real PAI
if SUI==1 then
set PAI=450
elseif SUI==2 then
set PAI=675
elseif SUI==3 then
set PAI=950
endif
call P6I(GetTriggerUnit(),GetSpellTargetUnit(),7,PAI)
endfunction
function XE3 takes nothing returns boolean
if(GetSpellAbilityId()==1093679450)and NNI(GetSpellTargetUnit())==false then
call XD3()
endif
return false
endfunction
function XF3 takes nothing returns boolean
if(GetSpellAbilityId()==1093677392)and RKI(GetSpellTargetUnit())then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659026))
endif
return false
endfunction
function TL1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function XF3))
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XE3))
set t=null
endfunction
function XG3 takes nothing returns boolean
if GetLearnedSkill()==1093678129 then
if GetUnitAbilityLevel(GetTriggerUnit(),1093678129)==4 then
call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),1382378855,6)
else
call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),1382378855,GetUnitAbilityLevel(GetTriggerUnit(),1093678129))
endif
elseif GetLearnedSkill()==1093678642 then
call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),1378889801,1)
endif
return false
endfunction
function Y41 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function XG3))
set t=null
endfunction
function XH3 takes nothing returns boolean
if(GetUnitTypeId((GetFilterUnit()))==1966092345)or(RKI(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GK))and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))then
if(LoadInteger(LY,(CMI),(GetHandleId(GetFilterUnit()))))<UJ then
return true
endif
endif
return false
endfunction
function XZ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer XV3=(LoadInteger(LY,(S5I),(217)))
local integer VY3=(LoadInteger(LY,(S5I),(216)))
local integer XW3=(LoadInteger(LY,(S5I),(218)))
local group g=NTI()
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local unit P8I
local real r1=GetRandomInt(200,350)
local real r2=GetRandomInt(200,350)
if GetRandomInt(1,2)==1 then
set r1=-1*r1
set r2=-1*r2
endif
set GK=SFI
set UJ=XW3
set CMI=GetHandleId(t)
call GroupEnumUnitsInRange(g,x,y,700,Condition(function XH3))
set P8I=GroupPickRandomUnit(g)
call NSI(g)
if IC1(SFI)==false and P8I!=null and(GetUnitTypeId((P8I))==1966092345)==false then
call SaveInteger(LY,(CMI),(GetHandleId(P8I)),((LoadInteger(LY,(CMI),(GetHandleId(P8I))))+1))
call U5I("effects\\Eclipse.mdx",P8I,"origin",3)
call P6I(SFI,P8I,1,XV3*75)
elseif IC1(SFI)==false then
set x=x+GetRandomInt(-350,350)
set y=y+GetRandomInt(-350,350)
call U7I("effects\\Eclipse.mdx",x,y,1.5)
endif
if(GetTriggerEvalCount(t)+1)==VY3 or IC1(SFI)==true then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
set g=null
set P8I=null
return false
endfunction
function XX3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer VY3
local integer XV3=GetUnitAbilityLevel(SFI,1093678130)
local integer XW3
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
if XV3==0 and GetUnitTypeId(SFI)!=1160785973 then
set XV3=4
endif
call IA1(I01,1093751862)
if GetSpellAbilityId()==1093678388 then
set VY3=2+3*GetUnitAbilityLevel(SFI,1093678388)
set XW3=4
else
set VY3=2+4*GetUnitAbilityLevel(SFI,1093677141)
set XW3=60
endif
call SaveInteger(LY,(S5I),(217),(XV3))
call SaveInteger(LY,(S5I),(216),(VY3))
call SaveInteger(LY,(S5I),(218),(XW3))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0.6,true)
call TriggerAddCondition(t,Condition(function XZ3))
call TriggerEvaluate(t)
call IssueImmediateOrderById(I01,852621)
set t=null
set SFI=null
set I01=null
endfunction
function XY3 takes nothing returns boolean
if GetSpellAbilityId()==1093678388 or GetSpellAbilityId()==1093677141 then
call XX3()
endif
return false
endfunction
function Y31 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XY3))
set t=null
endfunction
function XJ3 takes nothing returns nothing
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl",GetEnumUnit(),"origin"))
endfunction
function XK3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call P6I(SFI,P8I,1,0.75*GetUnitAbilityLevel(SFI,1093684054)*75)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
set P8I=null
return false
endfunction
function XL3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local group g
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if IC1(P8I)then
set g=NTI()
set GK=SFI
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),175+25,Condition(function C81))
set P8I=GroupPickRandomUnit(g)
call NSI(g)
set g=null
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl",P8I,"origin"))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call TriggerRegisterTimerEvent(t,0.5,false)
call TriggerAddCondition(t,Condition(function XK3))
set t=null
set SFI=null
set P8I=null
return false
endfunction
function XM3 takes nothing returns nothing
call P6I(CSI,GetEnumUnit(),1,CNI)
endfunction
function XN3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local group g=(LoadGroupHandle(LY,(S5I),(22)))
set CNI=GetUnitAbilityLevel(SFI,1093684054)*75
set CSI=SFI
call ForGroup(g,function XM3)
call NSI(g)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
set g=null
return false
endfunction
function XS3 takes nothing returns nothing
local real QWI=QLI(GetTriggerUnit(),GetEnumUnit())
if QWI>650 then
else
call GroupAddUnit(XK,GetEnumUnit())
endif
endfunction
function XT3 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local group g=NTI()
local unit P8I
set GK=SFI
set CSI=SFI
set XK=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),900,Condition(function C81))
call ForGroup(g,function XS3)
call NSI(g)
set g=XK
call ForGroup(g,function XJ3)
call SaveGroupHandle(LY,(S5I),(22),(g))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TriggerRegisterTimerEvent(t,0.5,false)
call TriggerAddCondition(t,Condition(function XN3))
set CSI=SFI
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),175+25,Condition(function C81))
set P8I=GroupPickRandomUnit(g)
call NSI(g)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Starfall\\StarfallCaster.mdl",SFI,"origin")))
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function XL3))
set t=null
set g=null
set SFI=null
set P8I=null
endfunction
function XR3 takes nothing returns boolean
if GetSpellAbilityId()==1093684054 then
call XT3()
endif
return false
endfunction
function NH1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XR3))
set t=null
endfunction
constant function MoonlightShadow_RawCode takes nothing returns integer
return 1093684053
endfunction
constant function MoonlightShadow_InvisibilityAbility takes nothing returns integer
return 1093684052
endfunction
function XP3 takes nothing returns boolean
return GetSpellAbilityId()==(1093684053)
endfunction
function XQ3 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction
function XU3 takes nothing returns nothing
call IA1(GetEnumUnit(),(1093684052))
call SetUnitAbilityLevel(GetEnumUnit(),(1093684052),YO)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl",GetEnumUnit(),"chest"))
endfunction
function Y03 takes nothing returns nothing
call UnitRemoveAbility(GetEnumUnit(),(1093684052))
endfunction
function YI3 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local group Z51=(LoadGroupHandle(LY,(S5I),(220)))
call ForGroup(Z51,function Y03)
call NSI(Z51)
call UBI(t)
endfunction
function Y13 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local group Z51=NTI()
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
local integer SUI=GetUnitAbilityLevel(SFI,(1093684053))
local real DC1=15
set YO=SUI
call GroupEnumUnitsInRange(Z51,0,0,9999,Condition(function XQ3))
call ForGroup(Z51,function XU3)
call SaveGroupHandle(LY,(S5I),(220),(Z51))
call TimerStart(t,DC1,false,function YI3)
endfunction
function NG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XP3))
call TriggerAddAction(t,function Y13)
endfunction
constant function Leap_RawCode takes nothing returns integer
return 1093684302
endfunction
constant function Leap_BonusCode takes nothing returns integer
return 1093684303
endfunction
function YO3 takes nothing returns boolean
return GetSpellAbilityId()==(1093684302)
endfunction
function Y23 takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(XO))
endfunction
function Y33 takes nothing returns nothing
local unit SFI=GetEnumUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697657170,0,0,0)
call IA1(I01,(1093684303))
call SetUnitAbilityLevel(I01,(1093684303),GetUnitAbilityLevel(XO,(1093684302)))
call UnitApplyTimedLife(I01,1112820806,10)
endfunction
function Y43 takes unit SFI returns nothing
local group Z51=NTI()
set XO=SFI
call GroupEnumUnitsInRange(Z51,GetUnitX(SFI),GetUnitY(SFI),800,Condition(function Y23))
call ForGroup(Z51,function Y33)
call NSI(Z51)
endfunction
function Y53 takes unit SFI returns nothing
local integer S5I=GetHandleId(SFI)
local string Y63=(LoadStr(LY,(S5I),(206)))
local string Y73=OrderId2String((LoadInteger(LY,(S5I),(211))))
local real QJI
local real QKI
local unit P8I
local trigger t=(LoadTriggerHandle(LY,(S5I),(204)))
local boolean Y83=not(LoadBoolean(LY,(S5I),(207)))
local boolean Y93=(LoadBoolean(LY,(S5I),(208)))
call DisableTrigger(t)
call IssueImmediateOrder(SFI,"stop")
if Y63=="Target"and(Y83 or Y93)then
set P8I=(LoadUnitHandle(LY,(S5I),(215)))
call IssueTargetOrder(SFI,Y73,P8I)
elseif Y63=="Point"and(Y83 or Y93)then
set QJI=(LoadReal(LY,(S5I),(209)))
set QKI=(LoadReal(LY,(S5I),(210)))
call IssuePointOrder(SFI,Y73,QJI,QKI)
elseif(Y83 or Y93)then
call IssueImmediateOrder(SFI,"OrderString")
endif
call SaveBoolean(LY,(S5I),(208),(false))
call EnableTrigger(t)
endfunction
function YA3 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real YB3=(LoadReal(LY,(S5I),(212)))
local real YC3=(LoadReal(LY,(S5I),(213)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real IV1=GetUnitX(SFI)+40*Cos(RM2*bj_DEGTORAD)
local real IW1=GetUnitY(SFI)+40*Sin(RM2*bj_DEGTORAD)
local real YD3=200
local real YE3=(1-YB3/YC3)*YD3*2
if YE3>YD3 then
set YE3=YD3*2-YE3
endif
call SetUnitFlyHeight(SFI,QDI(YE3,0),0)
call SetUnitX(SFI,PTI(IV1))
call SetUnitY(SFI,PUI(IW1))
call SetUnitFacing(SFI,RM2)
call SaveReal(LY,(S5I),(212),((YB3-40)*1.0))
if YE3<1 and YB3-YC3!=0 then
call SaveBoolean(LY,(GetHandleId(SFI)),(214),(false))
call SetUnitFacing(SFI,RM2)
call SetUnitAnimation(SFI,"stand")
call SetUnitPathing(SFI,true)
call Y53(SFI)
call PauseTimer(t)
call FlushChildHashtable(LY,(S5I))
call DestroyTimer(t)
endif
endfunction
function YF3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer SUI=GetUnitAbilityLevel(SFI,(1093684302))
local real QWI=500+100*SUI
local real RM2=GetUnitFacing(SFI)
local real QXI=GetUnitX(SFI)
local real QYI=GetUnitY(SFI)
local real QJI=PTI(QXI+QWI*Cos(RM2*bj_DEGTORAD))
local real QKI=PUI(QYI+QWI*Sin(RM2*bj_DEGTORAD))
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
local trigger YG3=(LoadTriggerHandle(LY,(GetHandleId(SFI)),(204)))
set QWI=SquareRoot((QXI-QJI)*(QXI-QJI)+(QYI-QKI)*(QYI-QKI))
call Y43(SFI)
if QWI>100 then
call IA1(SFI,1097691750)
call UnitRemoveAbility(SFI,1097691750)
call SetUnitPathing(SFI,false)
call SetUnitAnimationByIndex(SFI,6)
call DisableTrigger(YG3)
call IssueImmediateOrder(SFI,"stop")
call EnableTrigger(YG3)
call SaveReal(LY,(S5I),(212),((QWI)*1.0))
call SaveReal(LY,(S5I),(213),((QWI)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call TimerStart(t,0.025,true,function YA3)
call SaveBoolean(LY,(GetHandleId(SFI)),(214),(true))
call SaveBoolean(LY,(GetHandleId(SFI)),(208),(false))
endif
endfunction
function YH3 takes nothing returns boolean
return OrderId2String(GetIssuedOrderId())!="windwalk"
endfunction
function YZ3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer S5I=GetHandleId(SFI)
local boolean YV3=(LoadBoolean(LY,(S5I),(214)))
call SaveInteger(LY,(S5I),(211),(GetIssuedOrderId()))
call SaveBoolean(LY,(S5I),(207),(false))
if GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER then
if YV3 or UCI(GetUnitX(SFI),GetUnitY(SFI),GetOrderPointX(),GetOrderPointY())>800 then
call SaveStr(LY,(S5I),(206),("Point"))
call SaveReal(LY,(S5I),(209),((GetOrderPointX())*1.0))
call SaveReal(LY,(S5I),(210),((GetOrderPointY())*1.0))
else
call SaveBoolean(LY,(S5I),(207),(true))
endif
else
call SaveStr(LY,(S5I),(206),("Instant"))
endif
if YV3 then
call SaveBoolean(LY,(S5I),(208),(true))
endif
endfunction
function YW3 takes nothing returns nothing
local unit SFI=(LoadUnitHandle(LY,(GetHandleId(GetExpiredTimer())),(14)))
local integer S5I=GetHandleId(SFI)
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local string Y63=(LoadStr(LY,(S5I),(206)))
if Y63=="Point"and UCI(GetUnitX(SFI),GetUnitY(SFI),(LoadReal(LY,(S5I),(209))),(LoadReal(LY,(S5I),(210))))<100 then
call SaveBoolean(LY,(S5I),(207),(true))
endif
endfunction
function YX3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local timer t2
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_ORDER)
call TriggerAddAction(t,function YZ3)
call TriggerAddCondition(t,Condition(function YH3))
call SaveTriggerHandle(LY,(GetHandleId(SFI)),(204),(t))
set t2=CreateTimer()
call SaveUnitHandle(LY,(GetHandleId(t2)),(14),(SFI))
call TimerStart(t2,0.3,true,function YW3)
call SaveTimerHandle(LY,(GetHandleId(SFI)),(205),(t2))
endfunction
function YY3 takes nothing returns nothing
if GetUnitAbilityLevel(GetTriggerUnit(),(1093684302))==1 then
call YX3()
endif
endfunction
function NV1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YO3))
call TriggerAddAction(t,function YF3)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddAction(t,function YY3)
endfunction
constant function ElunesArrow_RawCode takes nothing returns integer
return 1093684280
endfunction
constant function ElunesArrow_ArrowUnit takes nothing returns integer
return 1747988533
endfunction
constant function ElunesArrow_StunCode takes nothing returns integer
return 1093684279
endfunction
function YJ3 takes nothing returns boolean
return GetSpellAbilityId()==(1093684280)
endfunction
function YK3 takes nothing returns boolean
return GetUnitAbilityLevel(GetFilterUnit(),1093751362)==0 and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(XO))and GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false
endfunction
function YL3 takes real BA3,real BB3,real QXI,real QYI returns integer
local real QWI=SquareRoot((QXI-BA3)*(QXI-BA3)+(QYI-BB3)*(QYI-BB3))
return Q9I(R2I(QWI/150),11)
endfunction
function YM3 takes nothing returns nothing
local timer t=GetExpiredTimer()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit IG1=(LoadUnitHandle(LY,(S5I),(45)))
local real QJI=(LoadReal(LY,(S5I),(47)))
local real QKI=(LoadReal(LY,(S5I),(48)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local real QXI=GetUnitX(IG1)
local real QYI=GetUnitY(IG1)
local real IV1=PTI(GetUnitX(IG1)+30*Cos(RM2))
local real IW1=PUI(GetUnitY(IG1)+30*Sin(RM2))
local boolexpr QL1=Condition(function YK3)
local group Z51=NTI()
local unit I01
local unit P8I
local real BA3
local real BB3
call SetUnitX(IG1,IV1)
call SetUnitY(IG1,IW1)
set XO=SFI
call GroupEnumUnitsInRange(Z51,IV1,IW1,140,QL1)
set P8I=FirstOfGroup(Z51)
call NSI(Z51)
if P8I!=null then
if IsUnitType(P8I,UNIT_TYPE_HERO)==true then
set CTI[GetPlayerId(GetOwningPlayer(SFI))]=CTI[GetPlayerId(GetOwningPlayer(SFI))]+1
call FL1("AA_Hits"+I2S(GetPlayerId(GetOwningPlayer(SFI))),CTI[GetPlayerId(GetOwningPlayer(SFI))])
endif
set BA3=(LoadReal(LY,(S5I),(191)))
set BB3=(LoadReal(LY,(S5I),(192)))
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,QXI,QYI,0)
call IA1(I01,(1093684279))
call SetUnitAbilityLevel(I01,(1093684279),YL3(BA3,BB3,QXI,QYI))
if IssueTargetOrder(I01,"thunderbolt",P8I)then
endif
call UnitDamageTarget(SFI,P8I,90*GetUnitAbilityLevel(SFI,(1093684280))-40+(YL3(BA3,BB3,QXI,QYI)-1)*14,true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call KillUnit(IG1)
call UBI(t)
elseif(IV1-QJI)*(IV1-QJI)+(IW1-QKI)*(IW1-QKI)<1600 then
call KillUnit(IG1)
call UBI(t)
endif
endfunction
function YN3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local real QXI=PTI(GetUnitX(SFI))
local real QYI=PUI(GetUnitY(SFI))
local location AM3=GetSpellTargetLoc()
local real QJI=GetLocationX(AM3)
local real QKI=GetLocationY(AM3)
local real RM2=Atan2(QKI-QYI,QJI-QXI)
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
local unit IG1=CreateUnit(GetOwningPlayer(SFI),(1747988533),QXI,QYI,RM2*bj_RADTODEG)
set CRI[GetPlayerId(GetOwningPlayer(SFI))]=CRI[GetPlayerId(GetOwningPlayer(SFI))]+1
call FL1("AA_Total"+I2S(GetPlayerId(GetOwningPlayer(SFI))),CRI[GetPlayerId(GetOwningPlayer(SFI))])
call RemoveLocation(AM3)
call SetUnitFacing(IG1,RM2*bj_RADTODEG)
call SetUnitPathing(IG1,false)
set QJI=PTI(QXI+3000*Cos(RM2))
set QKI=PUI(QYI+3000*Sin(RM2))
call SaveReal(LY,(S5I),(191),((QXI)*1.0))
call SaveReal(LY,(S5I),(192),((QYI)*1.0))
call SaveReal(LY,(S5I),(47),((QJI)*1.0))
call SaveReal(LY,(S5I),(48),((QKI)*1.0))
call SaveReal(LY,(S5I),(13),((RM2)*1.0))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(45),(IG1))
call TimerStart(t,0.035,true,function YM3)
endfunction
function YS3 takes nothing returns boolean
local integer YT3=CTI[GetPlayerId(GetTriggerPlayer())]
local integer QHI=CRI[GetPlayerId(GetTriggerPlayer())]
if GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])==1311781206 and QHI>0 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848657741)+" "+R2S(I2R(YT3)/I2R(QHI)*100)+"% ("+I2S(YT3)+"/"+I2S(QHI)+")")
endif
return false
endfunction
function NZ1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YJ3))
call TriggerAddAction(t,function YN3)
call Q1I((1093684279))
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
call TriggerAddCondition(t,Condition(function YS3))
set t=null
endfunction
function YR3 takes nothing returns boolean
return GetSpellAbilityId()==1093682766
endfunction
function YP3 takes nothing returns boolean
local unit YQ3=GetFilterUnit()
if IsUnitInGroup(YQ3,B2)then
return false
endif
if IsUnitEnemy(YQ3,GetOwningPlayer(XO))and GetUnitAbilityLevel(YQ3,1093678162)!=1 and GetUnitState(YQ3,UNIT_STATE_LIFE)>0 and IsUnitType(YQ3,UNIT_TYPE_STRUCTURE)==false then
return true
endif
return false
endfunction
function YU3 takes nothing returns nothing
call UnitDamageTarget(XO,GetEnumUnit(),JO,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
endfunction
function J03 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit PKI=(LoadUnitHandle(LY,(S5I),(221)))
local real RM2=(LoadReal(LY,(S5I),(13)))
local integer BQO=(LoadInteger(LY,(S5I),(194)))
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local real IO3=GetUnitX(PKI)
local real I23=GetUnitY(PKI)
local real II3=(LoadReal(LY,(S5I),(23)))
local real I13=(LoadReal(LY,(S5I),(24)))
local real IV1=II3+1000*0.05*Cos(RM2)
local real IW1=I13+1000*0.05*Sin(RM2)
local group Z51
local unit ZK3=(LoadUnitHandle(LY,(S5I),(239)))
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1093683011 or GetSpellAbilityId()==0 then
call RemoveUnit(ZK3)
call SetUnitVertexColor(PKI,255,255,255,255)
call SaveBoolean(LY,(GetHandleId(PKI)),(225),(false))
call SetUnitInvulnerable(PKI,false)
call SetUnitPathing(PKI,true)
call NSI(JAO)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
return false
endif
set Z51=NTI()
call SaveReal(LY,(S5I),(23),((IV1)*1.0))
call SaveReal(LY,(S5I),(24),((IW1)*1.0))
set XO=PKI
set JO=GetUnitAbilityLevel(PKI,1093682766)*75+25
set B2=JAO
call GroupEnumUnitsInRange(Z51,IO3,I23,200+25,Condition(function YP3))
call ForGroup(Z51,function YU3)
call GroupAddGroup(Z51,JAO)
call NSI(Z51)
set BQO=BQO-1
call SaveInteger(LY,(S5I),(194),(BQO))
call SetUnitX(PKI,PTI(IV1))
call SetUnitY(PKI,PUI(IW1))
call SetUnitX(ZK3,GetUnitX(PKI))
call SetUnitY(ZK3,GetUnitY(PKI))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",IO3,I23))
if BQO==0 then
call RemoveUnit(ZK3)
call SetUnitVertexColor(PKI,255,255,255,255)
call SaveBoolean(LY,(GetHandleId(PKI)),(225),(false))
call SetUnitInvulnerable(PKI,false)
call SetUnitPathing(PKI,true)
call NSI(JAO)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set PKI=null
set JAO=null
set Z51=null
set t=null
return false
endfunction
function JI3 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local real QXI=GetUnitX(PKI)
local real QYI=GetUnitY(PKI)
local location AM3=GetSpellTargetLoc()
local real QJI=GetLocationX(AM3)
local real QKI=GetLocationY(AM3)
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local group JAO=NTI()
local integer pid=GetPlayerId(GetOwningPlayer(PKI))
local unit ZK3=CreateUnit(GetOwningPlayer(PKI),1697656901,QXI,QYI,0)
call RemoveLocation(AM3)
if GetSpellTargetUnit()!=null then
set QJI=GetUnitX(GetSpellTargetUnit())
set QKI=GetUnitY(GetSpellTargetUnit())
endif
call SetUnitVertexColor(PKI,255,255,255,0)
call SaveBoolean(LY,(GetHandleId(PKI)),(225),(true))
call SetUnitInvulnerable(PKI,true)
call SetUnitPathing(PKI,false)
call SaveUnitHandle(LY,(S5I),(221),(PKI))
call SaveReal(LY,(S5I),(23),((QXI)*1.0))
call SaveReal(LY,(S5I),(24),((QYI)*1.0))
call SaveGroupHandle(LY,(S5I),(133),(JAO))
call SaveReal(LY,(S5I),(13),((Atan2(QKI-QYI,QJI-QXI))*1.0))
call SaveInteger(LY,(S5I),(194),(QAI(R2I(SquareRoot((QJI-QXI)*(QJI-QXI)+(QKI-QYI)*(QKI-QYI))/50),1)))
call SaveUnitHandle(LY,(S5I),(239),(ZK3))
call TriggerRegisterTimerEvent(t,0.04,true)
call TriggerRegisterUnitEvent(t,PKI,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function J03))
call ShowUnit(PKI,false)
call ShowUnit(PKI,true)
call SelectUnitAddForPlayer(PKI,GetOwningPlayer(PKI))
set t=null
endfunction
function Y61 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function YR3))
call TriggerAddAction(t,function JI3)
endfunction
constant function ReplicateAbilityId takes nothing returns integer
return 1093683000
endfunction
constant function ReplicateMorphAbilityId takes nothing returns integer
return 1093683011
endfunction
constant function ReplicateMorphBuffId takes nothing returns integer
return 1110455088
endfunction
function J13 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))-1
local texttag tt
call SaveInteger(LY,(S5I),(34),(NPI))
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set tt=CreateTextTag()
call SetTextTagText(tt,I2S(NPI),0.03)
call SetTextTagPosUnit(tt,P7I,0)
call SetTextTagColorBJ(tt,0,29,255,15)
call SetTextTagVelocity(tt,0,0.035)
call SetTextTagFadepoint(tt,3)
call SetTextTagLifespan(tt,0.9)
call SetTextTagPermanent(tt,false)
call SetTextTagVisibility(tt,false)
if GetOwningPlayer(P7I)==GetLocalPlayer()then
call SetTextTagVisibility(tt,true)
endif
set tt=CreateTextTag()
call SetTextTagText(tt,I2S(NPI),0.03)
call SetTextTagPosUnit(tt,P8I,0)
call SetTextTagColorBJ(tt,0,29,255,15)
call SetTextTagVelocity(tt,0,0.035)
call SetTextTagFadepoint(tt,3)
call SetTextTagLifespan(tt,0.9)
call SetTextTagPermanent(tt,false)
call SetTextTagVisibility(tt,false)
if GetOwningPlayer(P7I)==GetLocalPlayer()then
call SetTextTagVisibility(tt,true)
endif
endif
set t=null
set tt=null
set P7I=null
set P8I=null
return false
endfunction
function JO3 takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local unit SFI=(LoadUnitHandle(LY,(GetHandleId(t)),(14)))
local unit J23=(LoadUnitHandle(LY,(GetHandleId(SFI)),(229)))
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",GetUnitX(J23),GetUnitY(J23)))
call RemoveUnit(J23)
call UnitRemoveAbility(SFI,(1093683011))
if(LoadInteger(LY,(GetHandleId(SFI)),(704)))==0 or(LoadInteger(LY,(GetHandleId(SFI)),(704)))==(1093683000)then
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),(1093683000),true)
endif
call FlushChildHashtable(LY,(GetHandleId(t)))
call S0I((t))
set SFI=null
set J23=null
endfunction
function J33 takes nothing returns boolean
if GetSpellAbilityId()==(1093683011)then
return true
endif
return false
endfunction
function J43 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local integer S5I=GetHandleId(SFI)
local unit J23=(LoadUnitHandle(LY,(S5I),(229)))
local real x=GetUnitX(J23)
local real y=GetUnitY(J23)
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",GetUnitX(SFI),GetUnitY(SFI)))
call KillUnit(J23)
call SetUnitX(SFI,x)
call SetUnitY(SFI,y)
call PanCameraToTimedForPlayer(GetOwningPlayer(SFI),x,y,0)
call IssueImmediateOrder(SFI,"stop")
set SFI=null
set J23=null
endfunction
function J53 takes nothing returns boolean
return GetUnitAbilityLevel(GetSummonedUnit(),(1110455088))>0 and GetUnitState(GetSummonedUnit(),UNIT_STATE_LIFE)>0
endfunction
function J63 takes nothing returns nothing
local unit SFI=GetSummoningUnit()
local integer S5I=GetHandleId(SFI)
local unit P8I=(LoadUnitHandle(LY,(S5I),(228)))
local unit J23=GetSummonedUnit()
local trigger t
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),(1093683000),false)
call IA1(SFI,(1093683011))
call SetUnitColor(J23,GetPlayerColor(GetOwningPlayer(P8I)))
call SaveUnitHandle(LY,(S5I),(229),(J23))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,J23,EVENT_UNIT_DEATH)
call TriggerAddAction(t,function JO3)
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(SFI))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,J23,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J13))
call SaveUnitHandle(LY,(GetHandleId(t)),(2),(SFI))
call SaveUnitHandle(LY,(GetHandleId(t)),(17),(J23))
call SaveInteger(LY,(GetHandleId(t)),(34),(GetUnitAbilityLevel(SFI,(1093683000))*15+15-1))
set SFI=null
set P8I=null
set J23=null
set t=null
endfunction
function J73 takes nothing returns boolean
return GetSpellAbilityId()==(1093683000)
endfunction
function J83 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
call SaveUnitHandle(LY,(GetHandleId(SFI)),(228),(P8I))
set SFI=null
set P8I=null
endfunction
function J93 takes nothing returns boolean
if GetSpellAbilityId()==(1093683000)then
if GetOwningPlayer(GetSpellTargetUnit())==GetOwningPlayer(GetTriggerUnit())then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659014))
endif
endif
return false
endfunction
function Y91 takes nothing returns nothing
local trigger t
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function J73))
call TriggerAddAction(t,function J83)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function J53))
call TriggerAddAction(t,function J63)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function J33))
call TriggerAddAction(t,function J43)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function J93))
set t=null
endfunction
function JA3 takes unit SFI,integer JB3,real JC3 returns nothing
local integer JD3=GetHeroAgi(SFI,false)
local integer JE3=GetHeroStr(SFI,false)
local real KWO=GetUnitState(SFI,UNIT_STATE_MANA)
if JB3==0 then
if KWO>=JC3 and JD3>2 and IC1(SFI)==false then
call SetUnitState(SFI,UNIT_STATE_MANA,KWO-JC3)
call SetHeroAgi(SFI,JD3-2,true)
call SetHeroStr(SFI,JE3+2,true)
endif
elseif JB3==1 then
if KWO>=JC3 and JE3>2 and IC1(SFI)==false then
call SetUnitState(SFI,UNIT_STATE_MANA,KWO-JC3)
call SetHeroAgi(SFI,JD3+2,true)
call SetHeroStr(SFI,JE3-2,true)
endif
endif
endfunction
function JF3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=GetUnitAbilityLevel(SFI,1093684056)
call JA3(SFI,1,30.0/SUI)
set t=null
set SFI=null
return false
endfunction
function JG3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer SUI=GetUnitAbilityLevel(SFI,1093684056)
call JA3(SFI,0,30.0/SUI)
set t=null
set SFI=null
return false
endfunction
function JH3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=GetTriggerUnit()
local trigger JZ3=(LoadTriggerHandle(LY,(S5I),(226)))
local integer SUI=GetUnitAbilityLevel(SFI,1093684056)
local integer L=(LoadInteger(LY,(S5I),(227)))
local real JV3=1.0/SUI
if SUI==4 then
set JV3=0.2
endif
if GetIssuedOrderId()==852549 then
if JZ3!=null then
call FlushChildHashtable(LY,(GetHandleId(JZ3)))
call S0I(JZ3)
endif
set JZ3=CreateTrigger()
call TriggerRegisterTimerEvent(JZ3,JV3,true)
call TriggerAddCondition(JZ3,Condition(function JF3))
call SaveUnitHandle(LY,(GetHandleId(JZ3)),(14),(SFI))
call SaveTriggerHandle(LY,(S5I),(226),(JZ3))
call SaveInteger(LY,(S5I),(227),(GetIssuedOrderId()))
call UnitAddAbility(SFI,1093808716)
call UnitRemoveAbility(SFI,1093808724)
elseif GetIssuedOrderId()==852546 then
if JZ3!=null then
call FlushChildHashtable(LY,(GetHandleId(JZ3)))
call S0I(JZ3)
endif
set JZ3=CreateTrigger()
call TriggerRegisterTimerEvent(JZ3,JV3,true)
call TriggerAddCondition(JZ3,Condition(function JG3))
call SaveUnitHandle(LY,(GetHandleId(JZ3)),(14),(SFI))
call SaveTriggerHandle(LY,(S5I),(226),(JZ3))
call SaveInteger(LY,(S5I),(227),(GetIssuedOrderId()))
call UnitAddAbility(SFI,1093808724)
call UnitRemoveAbility(SFI,1093808716)
elseif GetIssuedOrderId()==852550 then
if JZ3!=null then
call FlushChildHashtable(LY,(GetHandleId(JZ3)))
call S0I(JZ3)
endif
call SaveTriggerHandle(LY,(S5I),(226),(null))
call SaveInteger(LY,(S5I),(227),(GetIssuedOrderId()))
call UnitRemoveAbility(SFI,1093808716)
call UnitRemoveAbility(SFI,1093808724)
elseif GetIssuedOrderId()==852547 then
if JZ3!=null then
call FlushChildHashtable(LY,(GetHandleId(JZ3)))
call S0I(JZ3)
endif
call SaveTriggerHandle(LY,(S5I),(226),(null))
call SaveInteger(LY,(S5I),(227),(GetIssuedOrderId()))
call UnitRemoveAbility(SFI,1093808716)
call UnitRemoveAbility(SFI,1093808724)
elseif GetIssuedOrderId()==852548 and L!=852546 and L!=852546 then
call JA3(SFI,1,30*JV3)
elseif GetIssuedOrderId()==852545 and L!=852546 and L!=852546 then
call JA3(SFI,0,30*JV3)
endif
set t=null
set SFI=null
set JZ3=null
return false
endfunction
function JW3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t
local integer S5I
local integer SUI=GetUnitAbilityLevel(GetTriggerUnit(),1093684056)
if SUI==1 then
call SetHeroAgi(SFI,GetHeroAgi(SFI,false)+3,true)
call SetHeroStr(SFI,GetHeroStr(SFI,false)+3,true)
else
call SetHeroAgi(SFI,GetHeroAgi(SFI,false)+1,true)
call SetHeroStr(SFI,GetHeroStr(SFI,false)+1,true)
endif
if SUI==1 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call IA1(SFI,1093684055)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function JH3))
call SaveTriggerHandle(LY,(S5I),(226),(null))
else
call SetUnitAbilityLevel(SFI,1093684055,SUI)
endif
set t=null
endfunction
function JX3 takes nothing returns boolean
if GetLearnedSkill()==1093684056 and IsUnitIllusion(GetTriggerUnit())==false then
call JW3()
endif
return false
endfunction
function Y71 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function JX3))
set t=null
endfunction
function JY3 takes nothing returns nothing
local unit PKI=(LoadUnitHandle(LY,(GetHandleId(GetTriggeringTrigger())),(326)))
local real r
local real g
local real b
local integer JJ3
local integer JK3
local real JL3
local real JM3
if GetUnitTypeId(PKI)!=1328558160 then
call DisableTrigger(GetTriggeringTrigger())
elseif IC1(PKI)==false and(LoadBoolean(LY,(GetHandleId(PKI)),(225)))==false then
set JJ3=GetHeroAgi(PKI,true)
set JK3=GetHeroStr(PKI,true)
set JL3=RMaxBJ(75+2*(JJ3-JK3),35)
set r=JL3
set g=JL3
set b=JL3
call SetUnitVertexColorBJ(PKI,r,g,b,GetRandomReal(0.00,10.00))
endif
endfunction
function JN3 takes nothing returns boolean
return GetUnitTypeId(GetTriggerUnit())==1328558160 and IsUnitIllusion(GetTriggerUnit())==false
endfunction
function JS3 takes nothing returns nothing
local trigger t
if((LoadBoolean(LY,(GetHandleId(GetTriggerUnit())),(327)))==false)then
set t=CreateTrigger()
call SaveUnitHandle(LY,(GetHandleId(t)),(326),(GetTriggerUnit()))
call SaveTriggerHandle(LY,(GetHandleId(GetTriggerUnit())),(328),(t))
call TriggerAddAction(t,function JY3)
call TriggerRegisterTimerEvent(t,1.0,true)
call SaveBoolean(LY,(GetHandleId(GetTriggerUnit())),(327),(true))
call UnitAddItem(GetTriggerUnit(),CreateItem(1227894853,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())))
endif
endfunction
function Y51 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterEnterRectSimple(t,bj_mapInitialPlayableArea)
call TriggerAddCondition(t,Condition(function JN3))
call TriggerAddAction(t,function JS3)
endfunction
function JT3 takes nothing returns boolean
return GetSpellAbilityId()==1093682998 and GetUnitTypeId(GetSpellTargetUnit())!=1848651852 and NNI(GetSpellTargetUnit())==false
endfunction
function JR3 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local integer SUI=GetUnitAbilityLevel(PKI,1093682998)
local unit I01
local location JP3
local real RM2
local integer JJ3=GetHeroAgi(PKI,true)
local integer JK3=GetHeroStr(PKI,true)
local real JL3=I2R(JJ3)/I2R(JK3)
local real JM3=I2R(JK3)/I2R(JJ3)
local real JQ3
local real JU3
local real K03
local real IT3
local real KI3
local real K13
local integer i1
local integer i2
local integer i3
local string s1
local string s2
local string s3
local real KO3=0.25+SUI
if JL3<0.5 then
set JQ3=0.25
set JU3=20*SUI
elseif JL3>1.5 then
set JQ3=0.5*SUI
set JU3=20*SUI
else
set JQ3=0.25+(JL3-0.5)*(0.5*SUI-0.25)
set JU3=20*SUI
endif
if JM3<0.5 then
set K03=0.25
set IT3=100
elseif JM3>1.5 then
set K03=KO3
set IT3=300
else
set IT3=100+(JM3-0.5)*200
set K03=0.25+(JM3-0.5)*(KO3-0.25)
endif
set KI3=JU3+JQ3*JJ3
set K13=K03
set i1=R2I(K13)
set i2=R2I(10*K13-i1*10)
set i3=R2I(100*K13-i2*10-i1*100)
set s1=I2S(i1)
set s2=I2S(i2)
set s3=I2S(i3)
set RM2=Atan2(GetUnitY(P8I)-GetUnitY(PKI),GetUnitX(P8I)-GetUnitX(PKI))
set JP3=Location(GetUnitX(P8I)+IT3*Cos(RM2),GetUnitY(P8I)+IT3*Sin(RM2))
call SetUnitPositionLoc(P8I,JP3)
call UPI(GetLocationX(JP3),GetLocationY(JP3),200)
call RemoveLocation(JP3)
call UYI("|c001ce6b9+"+I2S(R2I(KI3))+"|r |c00ff0303+"+s1+"."+s2+s3+"|r",1,P8I,0.023,255,255,255,216)
call P6I(PKI,P8I,1,KI3)
call DD1(PKI,P8I,K13)
set PKI=null
set P8I=null
set I01=null
set JP3=null
endfunction
function Y81 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function JT3))
call TriggerAddAction(t,function JR3)
call Q1I(1093687350)
endfunction
function K23 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),D0I)==false then
call GroupAddUnit(DII,GetEnumUnit())
call UnitRemoveAbility(GetEnumUnit(),1110454858)
call UnitRemoveAbility(GetEnumUnit(),1112896368)
call UnitRemoveAbility(GetEnumUnit(),1114993524)
endif
endfunction
function K33 takes nothing returns nothing
call UnitRemoveAbility(GetEnumUnit(),1110454858)
call UnitRemoveAbility(GetEnumUnit(),1112896368)
call UnitRemoveAbility(GetEnumUnit(),1114993524)
endfunction
function K43 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),CUI)==false then
call GroupAddUnit(CUI,GetEnumUnit())
call SetUnitOwner(CQI,GetOwningPlayer(GetEnumUnit()),false)
call IssueTargetOrder(CQI,"sleep",GetEnumUnit())
endif
endfunction
function K53 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local group g
local group PR2=(LoadGroupHandle(LY,(S5I),(187)))
if GetTriggerEvalCount(t)==10 then
call IA1(P7I,1093809221)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093678933,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809221,true)
endif
if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(t)>140 or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()==1093809221)then
if(LoadInteger(LY,(GetHandleId(P7I)),(704)))==0 or(LoadInteger(LY,(GetHandleId(P7I)),(704)))==1093678933 then
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093678933,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809221,false)
call ForGroup(PR2,function K33)
call NSI(PR2)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set g=NTI()
set GK=P7I
set CPI=P7I
set CQI=I01
set CUI=PR2
call GroupEnumUnitsInRange(g,x,y,1250+25,Condition(function C31))
call ForGroup(g,function K43)
set D0I=g
set DII=NTI()
call ForGroup(PR2,function K23)
call GroupRemoveGroup(DII,PR2)
call NSI(g)
call NSI(DII)
endif
set t=null
set g=null
set P7I=null
set PR2=null
set I01=null
return false
endfunction
function K63 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,x,y,0)
call UnitAddAbility(I01,1093678932)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function K53))
call SaveGroupHandle(LY,(S5I),(187),(NTI()))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("war3mapImported\\SongOfTheSiren_2.mdx",P7I,"origin")))
set t=null
set P7I=null
endfunction
function K73 takes nothing returns boolean
if GetSpellAbilityId()==1093678933 then
call K63()
endif
return false
endfunction
function YA1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function K73))
set t=null
endfunction
function K83 takes unit P7I,unit P8I returns nothing
local integer SUI=GetUnitAbilityLevel(P7I,1093815125)
local integer id=1093809204
call P6I(P7I,P8I,1,100+30*SUI)
if SUI==2 then
set id=1093809205
elseif SUI==3 then
set id=1093809206
elseif SUI==4 then
set id=1093809207
endif
if BJ1(P8I)==false then
call AH1(P8I,id,1,8)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(P8I),id,false)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\CrushingWave\\CrushingWaveDamage.mdl",P8I,"chest"))
set P7I=null
set P8I=null
endfunction
function K93 takes nothing returns nothing
if IsUnitInGroup(GetEnumUnit(),DOI)==false and RKI(GetEnumUnit())==false then
call GroupAddUnit(DOI,GetEnumUnit())
call K83(D1I,GetEnumUnit())
endif
endfunction
function KA3 takes nothing returns nothing
local unit P7I=GetEnumUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g=NTI()
call DestroyEffect(AddSpecialEffect("war3mapImported\\RipTide09.mdx",x,y))
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,320+25,Condition(function CA1))
call ForGroup(g,function K93)
call NSI(g)
set t=null
set g=null
endfunction
function KB3 takes nothing returns boolean
return IsUnitIllusion(GetFilterUnit())and IC1(GetFilterUnit())==false
endfunction
function KC3 takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
local group g=NTI()
local integer i=0
set DOI=NTI()
set D1I=P7I
call GroupEnumUnitsOfPlayer(g,GetOwningPlayer(P7I),Condition(function KB3))
call GroupAddUnit(g,P7I)
call ForGroup(g,function KA3)
call NSI(g)
call NSI(DOI)
set P7I=null
set g=null
endfunction
function KD3 takes nothing returns boolean
if GetSpellAbilityId()==1093815125 then
call KC3()
endif
return false
endfunction
function YB1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function KD3))
set t=null
endfunction
function KE3 takes unit P7I,unit P8I,integer SUI returns nothing
local unit I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitAddAbility(I01,1093681729)
call SetUnitAbilityLevel(I01,1093681729,SUI)
call IssueTargetOrder(I01,"ensnare",P8I)
set I01=null
endfunction
function KF3 takes nothing returns boolean
if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())==1212363833 and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
call KE3(GetFilterUnit(),D3I,GetUnitAbilityLevel(GetTriggerUnit(),1093809220))
endif
return false
endfunction
function KG3 takes nothing returns boolean
if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())==1212363833 and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
call SetUnitFacing(GetFilterUnit(),AK)
call SetUnitAnimation(GetFilterUnit(),"spell")
endif
return false
endfunction
function KH3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local group g=NTI()
set AK=UEI(GetUnitX(SFI),GetUnitY(SFI),GetUnitX(D3I),GetUnitY(D3I))
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),700,Condition(function KG3))
call NSI(g)
set SFI=null
set g=null
endfunction
function KZ3 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=D3I
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),700,Condition(function KF3))
call NSI(g)
set SFI=null
set g=null
endfunction
function KV3 takes nothing returns boolean
if GetSpellAbilityId()==1093809220 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
if NNI(GetSpellTargetUnit())==false then
set D2I=0
set D3I=GetSpellTargetUnit()
call KE3(GetTriggerUnit(),D3I,GetUnitAbilityLevel(GetTriggerUnit(),1093809220))
call KZ3()
endif
else
call KH3()
endif
endif
return false
endfunction
function YC1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call UMI(t,EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(t,Condition(function KV3))
set t=null
endfunction
function KW3 takes unit SWI returns integer
local real r=GetRandomReal(0,100)
local integer SUI=GetUnitAbilityLevel(SWI,1093679160)
local boolean CK3=ES1(SWI,FR0[JJ0])!=null
local integer KX3=0
local integer id=GetPlayerId(GetOwningPlayer(SWI))
set CK3=false
if SUI==1 then
set D8I[id]=D8I[id]+1
if CK3 then
if r<30 then
set D5I[id]=D5I[id]+1
set KX3=3
elseif r<60 then
set D4I[id]=D4I[id]+1
set KX3=2
endif
else
if r<40 then
set KX3=2
set D4I[id]=D4I[id]+1
endif
endif
elseif SUI==2 then
set D8I[id]=D8I[id]+1
if CK3 then
if r<17.5 then
set KX3=4
set D6I[id]=D6I[id]+1
elseif r<35 then
set KX3=3
set D5I[id]=D5I[id]+1
elseif r<70 then
set KX3=2
set D4I[id]=D4I[id]+1
endif
else
if r<20 then
set KX3=3
set D5I[id]=D5I[id]+1
elseif r<50 then
set KX3=2
set D4I[id]=D4I[id]+1
endif
endif
elseif SUI==3 then
set D8I[id]=D8I[id]+1
if CK3 then
if r<10 then
set KX3=5
set D7I[id]=D7I[id]+1
elseif r<20 then
set KX3=4
set D6I[id]=D6I[id]+1
elseif r<40 then
set KX3=3
set D5I[id]=D5I[id]+1
elseif r<80 then
set KX3=2
set D4I[id]=D4I[id]+1
endif
else
if r<12.5 then
set KX3=4
set D6I[id]=D6I[id]+1
elseif r<25 then
set KX3=3
set D5I[id]=D5I[id]+1
elseif r<60 then
set KX3=2
set D4I[id]=D4I[id]+1
endif
endif
endif
return KX3
endfunction
function KY3 takes nothing returns boolean
return(RKI(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GK))and IsUnitEnemy(GK,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or CI1(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),1110455114)==0 and GetFilterUnit()!=D9I
endfunction
function KJ3 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer KK3=(LoadInteger(LY,(S5I),(300)))
local integer SUI=(LoadInteger(LY,(S5I),(5)))
local integer KL3=(LoadInteger(LY,(S5I),(299)))
local unit I01
local group g=NTI()
set GK=P7I
set D9I=P8I
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1425,Condition(function KY3))
set P8I=GroupPickRandomUnit(g)
if P8I==null then
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),1425,Condition(function CF1))
set P8I=GroupPickRandomUnit(g)
endif
call NSI(g)
call SaveUnitHandle(LY,(S5I),(17),(P8I))
if GetTriggerEvalCount(t)>KK3 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
if KL3==1093815121 then
set KL3=1093815122
endif
call IA1(I01,KL3)
call SetUnitAbilityLevel(I01,KL3,SUI)
call IssueTargetOrder(I01,"acidbomb",P8I)
endif
set t=null
set P8I=null
set P7I=null
set I01=null
set g=null
return false
endfunction