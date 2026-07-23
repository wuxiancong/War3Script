function G62 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local string G72=(LoadStr(LY,(S5I),(146)))
set L2=p
if G52()then
set S0[GetPlayerId(p)]=true
if G72=="-random int"then
call RAI(p)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-100)
elseif G72=="-random str"then
call REI(p)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-100)
elseif G72=="-random agi"then
call RFI(p)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-100)
else
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-50)
call RGI(p)
endif
else
call DisplayTimedTextToPlayer(p,0,U2,10,GetObjectName(1848653625))
endif
set t=null
set p=null
return false
endfunction
function EK2 takes nothing returns nothing
local player T4I=GetTriggerPlayer()
local trigger t
set L2=T4I
if G52()and F3[GetPlayerId(T4I)]==false then
set F3[GetPlayerId(T4I)]=true
call TFI(T4I)
call DisplayTimedTextToPlayer(T4I,0,U2,10,GetObjectName(1848653633))
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function G62))
call SavePlayerHandle(LY,(GetHandleId(t)),(54),(T4I))
call SaveStr(LY,(GetHandleId(t)),(146),(StringCase(GetEventPlayerChatString(),false)))
endif
set t=null
endfunction
function G82 takes nothing returns boolean
local unit SFI=K1[GetPlayerId(GetTriggerPlayer())]
if O8I then
call PZI(GetTriggerPlayer(),GetObjectName(1848652592))
return false
endif
if A3==false then
if IAI==false and N2==false and QT0==false and BN==false and INI==false and IQI==false and B3==false and E2==false then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,"-repick "+GetObjectName(1848653122))
endif
return false
endif
if(D0[GetPlayerId(GetTriggerPlayer())]==true)then
return false
endif
if(K1[GetPlayerId(GetTriggerPlayer())]==null)then
return false
endif
if X0 or N2 or B3 then
return false
endif
if(H3==true)then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653104))
return false
endif
if(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)<T0)then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653113))
return false
endif
if GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)<350 and K0 or J2 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653141))
return false
endif
if GetUnitState(SFI,UNIT_STATE_MANA)!=GetUnitState(SFI,UNIT_STATE_MAX_MANA)or GetUnitState(SFI,UNIT_STATE_LIFE)!=GetUnitState(SFI,UNIT_STATE_MAX_LIFE)then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653130))
return false
endif
return true
endfunction
function G92 takes nothing returns nothing
if(IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true)then
if(GetUnitTypeId(GetEnumUnit())==1429221430)then
call ExecuteFunc("OOO")
elseif GetUnitTypeId(GetEnumUnit())==1429221432 or GetUnitTypeId(GetEnumUnit())==1160786229 then
set NK=GetEnumUnit()
call ExecuteFunc("AZO")
endif
call QRI(MCI(GetTriggerPlayer()),10.00,GetObjectName(1848653132)+" "+S8I(GetEnumUnit())+".")
endif
if(GetUnitTypeId(GetEnumUnit())==1848651828)then
call RemoveUnit(GetEnumUnit())
endif
if(GetUnitTypeId(GetEnumUnit())==1848652088)then
call RemoveUnit(GetEnumUnit())
endif
if(GetUnitTypeId(GetEnumUnit())==1848652099)then
call RemoveUnit(GetEnumUnit())
endif
if(GetUnitTypeId(GetEnumUnit())==1848652103)then
call RemoveUnit(GetEnumUnit())
endif
endfunction
function GA2 takes nothing returns nothing
local player T4I=GetTriggerPlayer()
local group Z51=NTI()
local integer RBI
local integer RCI
local location RDI
local unit RepickedUnit
local integer TJI
local integer TGI
local integer THI
local unit GB2
local location ZC1=GetRectCenter(N4)
local location ZD1=GetRectCenter(S4)
set bj_groupEnumOwningPlayer=T4I
call GroupEnumUnitsInRect(Z51,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
if(TII(T4I)==true)then
set RBI=DE0
set RCI=DF0
set RDI=GetRectCenter(F4)
else
set RBI=DG0
set RCI=DH0
set RDI=GetRectCenter(E4)
endif
if Y0 then
if(GetRandomInt(1,2)==1)then
set RBI=DE0
set RCI=DF0
else
set RBI=DG0
set RCI=DH0
endif
endif
if K0 or J2 then
set T0=100
endif
set GB2=(LoadUnitHandle(LY,(GetHandleId(GetTriggerPlayer())),(147)))
if GB2!=null and GetUnitTypeId(GB2)==1697656899 then
call RemoveUnit(GB2)
endif
call AdjustPlayerStateBJ(-1*T0,T4I,PLAYER_STATE_RESOURCE_GOLD)
set D0[GetPlayerId(T4I)]=true
call ForGroup(Z51,function G92)
if S0[GetPlayerId(T4I)]==true then
call TEI(GetUnitTypeId(K1[GetPlayerId(T4I)]))
endif
call Q5I(K1[GetPlayerId(T4I)])
set K1[GetPlayerId(GetTriggerPlayer())]=null
if K0 or J2 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,GetObjectName(1311782233))
if K0 then
set TGI=DE0
set THI=DH0
endif
if TII(T4I)then
if J2 then
set TGI=DE0
set THI=DF0
call CreateUnitAtLoc(T4I,1848651843,ZC1,bj_UNIT_FACING)
else
call CreateUnitAtLoc(T4I,1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(T4I,1848651843,ZD1,bj_UNIT_FACING)
endif
call PanCameraToTimedLocForPlayer(T4I,ZC1,0)
else
if J2 then
set TGI=DG0
set THI=DH0
call CreateUnitAtLoc(T4I,1848651843,ZD1,bj_UNIT_FACING)
else
call CreateUnitAtLoc(T4I,1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(T4I,1848651843,ZD1,bj_UNIT_FACING)
endif
call PanCameraToTimedLocForPlayer(T4I,ZD1,0)
endif
loop
exitwhen TGI>THI
if R[TGI]==false then
call SetPlayerTechMaxAllowed(T4I,DC0[TGI],1)
endif
set TGI=TGI+1
endloop
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
return
endif
loop
set TJI=GetRandomInt(RBI,RCI)
if(R[TJI]==false)then
set R[TJI]=true
set K1[GetPlayerId(T4I)]=CreateUnitAtLoc(T4I,DC0[TJI],RDI,bj_UNIT_FACING)
call TCI(DC0[TJI])
endif
exitwhen K1[GetPlayerId(GetTriggerPlayer())]!=null
endloop
call NSI(Z51)
call RemoveLocation(RDI)
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
endfunction
function EL2 takes nothing returns nothing
if G82()then
call GA2()
endif
endfunction
function EM2 takes nothing returns nothing
local player T4I=GetTriggerPlayer()
local string GD2="|c006699CC"
if INI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"League Mode"+"|r:      "+GetObjectName(1848653621))
endif
if IQI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Extended League"+"|r:      "+GetObjectName(1848653634))
call DisplayTimedTextToPlayer(T4I,0,U2,20,"                                 "+GetObjectName(1848653616))
endif
if X0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Death Match"+"|r:        "+GetObjectName(1848653402))
call DisplayTimedTextToPlayer(T4I,0,U2,20,"                              "+GetObjectName(1848653401)+" "+I2S(Q9I(DF0,DH0-DG0+1))+" "+GetObjectName(1848653635))
endif
if E2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Mirror Match"+"|r:       "+GetObjectName(1848653399))
endif
if K0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"All Pick"+"|r:                 "+GetObjectName(1848653398))
endif
if QT0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Random Draft"+"|r:                 "+GetObjectName(1848653618))
endif
if IAI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Single Draft"+"|r:                 "+GetObjectName(1848653639))
endif
if Y0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"All Random"+"|r:          "+GetObjectName(1848653617))
endif
if N2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Vote Random"+"|r:         "+GetObjectName(1848653620))
endif
if J0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Team Random"+"|r:     "+GetObjectName(1848653389))
endif
if B3 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Reverse"+"|r:                 "+GetObjectName(1848653619))
endif
if FO then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Shuffle Players"+"|r:     "+GetObjectName(1848653640))
endif
if H2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"All Agility"+"|r:             "+GetObjectName(1848653644))
endif
if V2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"All Strength"+"|r:         "+GetObjectName(1848653643))
endif
if Z2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"All Intelligence"+"|r:    "+GetObjectName(1848653642))
endif
if OOI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Range Only"+"|r:    "+GetObjectName(1848657716))
endif
if O1I then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Melee Only"+"|r:    "+GetObjectName(1848657717))
endif
if F2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Duplicate Mode"+"|r:   "+GetObjectName(1848653641))
endif
if L0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Item Drop"+"|r:             "+GetObjectName(1848653638))
endif
if P0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"No Powerups"+"|r:        "+GetObjectName(1848653645))
endif
if Q0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Super Creeps"+"|r:        "+GetObjectName(1848653646))
call DisplayTimedTextToPlayer(T4I,0,U2,20,"                             "+GetObjectName(1848653647))
endif
if R0 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Easy Mode"+"|r:           "+GetObjectName(1848653652))
endif
if Y2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Same Hero"+"|r:           "+GetObjectName(1848653653)+" "+(D80[GetPlayerId((WO))])+"|r"+" "+GetObjectName(1848653655))
endif
if O2I then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Only Mid"+"|r:           "+GetObjectName(1848653872))
endif
if O4I then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"No Bot"+"|r:           "+GetObjectName(1848653654))
endif
if O6I then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"No Mid"+"|r:           "+GetObjectName(1848653651))
endif
if O7I then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"No Top"+"|r:           "+GetObjectName(1848653650))
endif
if FL then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"No Swap"+"|r:           "+GetObjectName(1848653656))
endif
if FL then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"No Repick"+"|r:           "+GetObjectName(1848653649))
endif
if ZL then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Pool Mode"+"|r:           "+GetObjectName(1848653657))
endif
if O9I then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Observer Info"+"|r:           "+GetObjectName(1848653658))
endif
if OBI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Mini Hereos"+"|r:           "+GetObjectName(1848657219))
endif
if OCI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Fast Respawn"+"|r:           "+GetObjectName(1848656976))
endif
if CN then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Captains Mode"+"|r:           "+GetObjectName(1848657220))
endif
if HL then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Experimental Runes"+"|r:           "+GetObjectName(1848657718))
endif
if BN then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Captains Draft"+"|r:           "+GetObjectName(1848657734))
endif
if OFI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Capture Point"+"|r:           "+GetObjectName(1848658760))
endif
if ODI then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Capture Point"+"|r:           "+GetObjectName(1848658761))
endif
if J2 then
call DisplayTimedTextToPlayer(T4I,0,U2,20,GD2+"Normal Mode"+"|r:        "+GetObjectName(1848653648))
endif
endfunction
function GF2 takes nothing returns nothing
if GetUnitTypeId(GetEnumUnit())==1848651828 then
call RemoveUnit(GetEnumUnit())
endif
if GetUnitTypeId(GetEnumUnit())==1865429043 then
call RemoveUnit(GetEnumUnit())
endif
endfunction
function GG2 takes unit u1,unit u2 returns nothing
local player Me=GetOwningPlayer(u1)
local player GH2=GetOwningPlayer(u2)
local unit GZ2=CreateUnit(Me,1697657158,0,0,0)
local group g
local item X3O
local integer GV2
if S0[GetPlayerId(Me)]==true then
if GetPlayerState(Me,PLAYER_STATE_RESOURCE_GOLD)<100 then
return
endif
endif
if S0[GetPlayerId(GH2)]==true then
if GetPlayerState(GH2,PLAYER_STATE_RESOURCE_GOLD)<100 then
return
endif
endif
if S0[GetPlayerId(Me)]==true and D0[GetPlayerId(Me)]==false and RZ0[GetPlayerId(Me)]==0 then
set RZ0[GetPlayerId(Me)]=1
call SetPlayerState(Me,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(Me,PLAYER_STATE_RESOURCE_GOLD)-100)
endif
if S0[GetPlayerId(GH2)]==true and D0[GetPlayerId(GH2)]==false and RZ0[GetPlayerId(GH2)]==0 then
set RZ0[GetPlayerId(GH2)]=1
call SetPlayerState(GH2,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GH2,PLAYER_STATE_RESOURCE_GOLD)-100)
endif
set GV2=EL0[GetPlayerId(Me)]
set EL0[GetPlayerId(Me)]=EL0[GetPlayerId(GH2)]
set EL0[GetPlayerId(GH2)]=GV2
call DisableTrigger(LY0)
if GetUnitAbilityLevel(u1,1093677893)>0 then
set XM=u1
set YM=u2
call ExecuteFunc("GW2")
elseif GetUnitAbilityLevel(u2,1093677893)>0 then
set XM=u2
set YM=u1
call ExecuteFunc("GW2")
endif
if GetUnitAbilityLevel(u1,1093682009)>0 then
set XM=u1
set YM=u2
call ExecuteFunc("GX2")
elseif GetUnitAbilityLevel(u2,1093682009)>0 then
set XM=u2
set YM=u1
call ExecuteFunc("GX2")
endif
if GetUnitAbilityLevel(u1,1093743444)>0 then
set XM=u1
set YM=u2
call ExecuteFunc("GY2")
elseif GetUnitAbilityLevel(u2,1093743444)>0 then
set XM=u2
set YM=u1
call ExecuteFunc("GY2")
endif
call FlushChildHashtable(LY,(800+GetPlayerId(GetOwningPlayer(u1))))
call FlushChildHashtable(LY,(800+GetPlayerId(GetOwningPlayer(u2))))
set g=NTI()
set bj_groupEnumOwningPlayer=Me
call GroupEnumUnitsInRect(g,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
call ForGroup(g,function GF2)
call NSI(g)
set g=NTI()
set bj_groupEnumOwningPlayer=GH2
call GroupEnumUnitsInRect(g,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
call ForGroup(g,function GF2)
call NSI(g)
call SetUnitOwner(u2,Me,true)
call SetUnitOwner(u1,GH2,true)
set K1[GetPlayerId(Me)]=u2
set K1[GetPlayerId(GH2)]=u1
call SetPlayerName(Me,(D80[GetPlayerId((Me))])+" ("+S8I(K1[GetPlayerId(Me)])+")")
call SetPlayerName(GH2,(D80[GetPlayerId((GH2))])+" ("+S8I(K1[GetPlayerId(GH2)])+")")
call UnitAddItem(GZ2,UnitItemInSlot(u2,0))
call UnitAddItem(GZ2,UnitItemInSlot(u2,1))
call UnitAddItem(GZ2,UnitItemInSlot(u2,2))
call UnitAddItem(GZ2,UnitItemInSlot(u2,3))
call UnitAddItem(GZ2,UnitItemInSlot(u2,4))
call UnitAddItem(GZ2,UnitItemInSlot(u2,5))
set X3O=UnitItemInSlot(u1,0)
if X3O!=null then
call SetItemPlayer(X3O,Me,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u2,X3O)
endif
set X3O=UnitItemInSlot(u1,1)
if X3O!=null then
call SetItemPlayer(X3O,Me,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u2,X3O)
endif
set X3O=UnitItemInSlot(u1,2)
if X3O!=null then
call SetItemPlayer(X3O,Me,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u2,X3O)
endif
set X3O=UnitItemInSlot(u1,3)
if X3O!=null then
call SetItemPlayer(X3O,Me,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u2,X3O)
endif
set X3O=UnitItemInSlot(u1,4)
if X3O!=null then
call SetItemPlayer(X3O,Me,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u2,X3O)
endif
set X3O=UnitItemInSlot(u1,5)
if X3O!=null then
call SetItemPlayer(X3O,Me,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u2,X3O)
endif
set X3O=UnitItemInSlot(GZ2,0)
if X3O!=null then
call SetItemPlayer(X3O,GH2,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u1,X3O)
endif
set X3O=UnitItemInSlot(GZ2,1)
if X3O!=null then
call SetItemPlayer(X3O,GH2,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u1,X3O)
endif
set X3O=UnitItemInSlot(GZ2,2)
if X3O!=null then
call SetItemPlayer(X3O,GH2,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u1,X3O)
endif
set X3O=UnitItemInSlot(GZ2,3)
if X3O!=null then
call SetItemPlayer(X3O,GH2,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u1,X3O)
endif
set X3O=UnitItemInSlot(GZ2,4)
if X3O!=null then
call SetItemPlayer(X3O,GH2,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u1,X3O)
endif
set X3O=UnitItemInSlot(GZ2,5)
if X3O!=null then
call SetItemPlayer(X3O,GH2,false)
call SetItemUserData(X3O,1)
call UnitAddItem(u1,X3O)
endif
call RemoveUnit(GZ2)
call EnableTrigger(LY0)
if(IsUnitType(u1,UNIT_TYPE_MELEE_ATTACKER)==true or GetUnitTypeId(u1)==1211119187)and ES1(u1,FR0[HM0])!=null then
call UnitRemoveItem(u1,ES1(u1,FR0[HM0]))
elseif(IsUnitType(u1,UNIT_TYPE_RANGED_ATTACKER)==true or GetUnitTypeId(u1)==1211119187)and ES1(u1,FR0[HL0])!=null then
call UnitRemoveItem(u1,ES1(u1,FR0[HL0]))
endif
if(IsUnitType(u2,UNIT_TYPE_MELEE_ATTACKER)==true or GetUnitTypeId(u1)==1211119187)and ES1(u2,FR0[HM0])!=null then
call UnitRemoveItem(u1,ES1(u2,FR0[HM0]))
elseif(IsUnitType(u2,UNIT_TYPE_RANGED_ATTACKER)==true or GetUnitTypeId(u1)==1211119187)and ES1(u2,FR0[HL0])!=null then
call UnitRemoveItem(u1,ES1(u2,FR0[HL0]))
endif
if GetUnitTypeId(u1)==1211119187 and ES1(u1,FR0[HL0])!=null then
call UnitRemoveItem(u1,ES1(u1,FR0[HL0]))
elseif GetUnitTypeId(u1)==1211119187 and ES1(u1,FR0[HM0])!=null then
call UnitRemoveItem(u1,ES1(u1,FR0[HM0]))
endif
if GetUnitTypeId(u2)==1211119187 and ES1(u2,FR0[HL0])!=null then
call UnitRemoveItem(u2,ES1(u2,FR0[HL0]))
elseif GetUnitTypeId(u2)==1211119187 and ES1(u2,FR0[HM0])!=null then
call UnitRemoveItem(u2,ES1(u2,FR0[HM0]))
endif
if(IsUnitType(u1,UNIT_TYPE_MELEE_ATTACKER)==true)and ES1(u1,FR0[X40])!=null then
call UnitRemoveItem(u1,ES1(u1,FR0[X40]))
elseif(IsUnitType(u1,UNIT_TYPE_RANGED_ATTACKER)==true)and ES1(u1,FR0[HL0])!=null then
call UnitRemoveItem(u1,ES1(u1,FR0[HL0]))
endif
if(IsUnitType(u2,UNIT_TYPE_MELEE_ATTACKER)==true)and ES1(u2,FR0[X40])!=null then
call UnitRemoveItem(u1,ES1(u2,FR0[X40]))
elseif(IsUnitType(u2,UNIT_TYPE_RANGED_ATTACKER)==true)and ES1(u2,FR0[X30])!=null then
call UnitRemoveItem(u1,ES1(u2,FR0[X30]))
endif
call ClearSelectionForPlayer(Me)
call SelectUnitAddForPlayer(u2,Me)
call ClearSelectionForPlayer(GH2)
call SelectUnitAddForPlayer(u1,GH2)
call FlushChildHashtable(LY,(800+GetPlayerId(Me)))
call FlushChildHashtable(LY,(800+GetPlayerId(GH2)))
set GK=u1
call ExecuteFunc("QU1")
set GK=u2
call ExecuteFunc("QU1")
call FJ1(GetOwningPlayer(u1),"9",GetUnitTypeId(u1))
call FJ1(GetOwningPlayer(u2),"9",GetUnitTypeId(u2))
call FL1("SWAP_"+I2S(GetPlayerId(GetOwningPlayer(u1)))+"_"+I2S(GetPlayerId(GetOwningPlayer(u2))),GetUnitTypeId(u1))
call FL1("SWAP_"+I2S(GetPlayerId(GetOwningPlayer(u2)))+"_"+I2S(GetPlayerId(GetOwningPlayer(u1))),GetUnitTypeId(u2))
call GK1(Me)
call GK1(GH2)
set Me=null
set GH2=null
set g=null
set GZ2=null
set X3O=null
endfunction
function GJ2 takes unit u1,unit u2 returns boolean
return(LoadBoolean(LY,(800+GetPlayerId(GetOwningPlayer(u2))),(GetUnitTypeId(u1)+GetUnitTypeId(u2))))
endfunction
function SwapHero_Off takes nothing returns nothing
call FlushChildHashtable(LY,(800+GetPlayerId(GetTriggerPlayer())))
endfunction
function GK2 takes player p returns integer
local integer i=1
loop
exitwhen i>5
if BO[i]==p or CO[i]==p then
return i
endif
set i=i+1
endloop
return-1
endfunction
function GL2 takes unit u1,unit u2,boolean GM2 returns boolean
call SaveBoolean(LY,(800+GetPlayerId(GetOwningPlayer(u1))),(GetUnitTypeId(u1)+GetUnitTypeId(u2)),(true))
if GJ2(u1,u2)then
call GG2(u1,u2)
return true
else
call DisplayTimedTextToPlayer(GetOwningPlayer(u2),0,U2,30,"  ")
call DisplayTimedTextToPlayer(GetOwningPlayer(u2),0,U2,30,"                         "+C0[GetPlayerId(GetOwningPlayer(u1))]+GetUnitName(u1)+"|r |cff99ccff"+GetObjectName(1848653874)+" "+GetObjectName(1848653875)+"|r |c00ff0303-swap "+I2S(GK2(GetOwningPlayer(u1)))+"|r |cff99ccff"+GetObjectName(1848653873)+"|r")
call DisplayTimedTextToPlayer(GetOwningPlayer(u2),0,U2,30,"  ")
if GM2 then
call DisplayTimedTextToPlayer(GetOwningPlayer(u1),0,U2,30,"  ")
call DisplayTimedTextToPlayer(GetOwningPlayer(u1),0,U2,30,"|cff99ccff"+GetObjectName(1848653891)+" |r"+C0[GetPlayerId(GetOwningPlayer(u2))]+GetUnitName(u2)+"|r")
call DisplayTimedTextToPlayer(GetOwningPlayer(u1),0,U2,30,"  ")
endif
endif
return false
endfunction
function GN2 takes nothing returns nothing
local integer i=S2I(SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString())))
if GetEventPlayerChatString()=="-swapall"then
set i=1
set HK=K1[GetPlayerId(GetTriggerPlayer())]
loop
exitwhen i>5
if TII(GetTriggerPlayer())then
set JK=BO[i]
else
set JK=CO[i]
endif
set GK=K1[GetPlayerId(JK)]
if not(HK==null or GetOwningPlayer(HK)!=GetTriggerPlayer()or GK==null or GetOwningPlayer(GK)!=JK or JK==GetTriggerPlayer())then
if GL2(HK,GK,false)then
return
endif
endif
set i=i+1
endloop
return
elseif i<1 or i>5 then
call PZI(GetTriggerPlayer(),GetObjectName(1848652378))
return
endif
set HK=K1[GetPlayerId(GetTriggerPlayer())]
if TII(GetTriggerPlayer())then
set JK=BO[i]
else
set JK=CO[i]
endif
set GK=K1[GetPlayerId(JK)]
if HK==null or GetOwningPlayer(HK)!=GetTriggerPlayer()or GK==null or GetOwningPlayer(GK)!=JK or JK==GetTriggerPlayer()then
call PZI(GetTriggerPlayer(),GetObjectName(1848652378))
return
endif
call GL2(HK,GK,true)
endfunction
function GS2 takes nothing returns nothing
local integer i
local player p
local unit u
local string s
if GetLocalPlayer()==GetTriggerPlayer()then
call ClearTextMessages()
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,45,"|cff99ccff"+GetObjectName(1848653890)+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,45," ")
set i=1
loop
exitwhen i>5
set p=BO[i]
set u=K1[GetPlayerId(p)]
if IsPlayerAlly(GetTriggerPlayer(),p)and GetTriggerPlayer()!=p and u!=null and GetOwningPlayer(u)==p then
set s=" "
if GJ2(K1[GetPlayerId(GetTriggerPlayer())],u)then
set s=" |c00ff0303("+GetObjectName(1848653877)+")|r"
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,45,C0[GetPlayerId(p)]+I2S(i)+"|r"+" - "+"|cff99ccff"+GetUnitName(u)+"|r"+s)
endif
set p=CO[i]
set u=K1[GetPlayerId(p)]
if IsPlayerAlly(GetTriggerPlayer(),p)and GetTriggerPlayer()!=p and u!=null and GetOwningPlayer(u)==p then
set s=" "
if GJ2(K1[GetPlayerId(GetTriggerPlayer())],u)then
set s=" |c00ff0303("+GetObjectName(1848653877)+")|r"
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,45,C0[GetPlayerId(p)]+I2S(i)+"|r"+" - "+"|cff99ccff"+GetUnitName(u)+"|r"+s)
endif
set i=i+1
endloop
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,45," ")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,45,"|cff99ccff"+GetObjectName(1848653875)+"|r |c00ff0303-swap #|r |cff99ccff"+GetObjectName(1848653878)+" -swapcancel "+GetObjectName(1848653879)+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,45," ")
endfunction
function GT2 takes player MDI returns boolean
local integer TGI=1
local integer GR2=0
loop
exitwhen TGI>5
if TII(MDI)then
if K1[GetPlayerId(BO[TGI])]!=null and BO[TGI]!=MDI and GetHeroLevel(K1[GetPlayerId(BO[TGI])])==1 then
set GR2=GR2+1
endif
else
if K1[GetPlayerId(CO[TGI])]!=null and CO[TGI]!=MDI and GetHeroLevel(K1[GetPlayerId(CO[TGI])])==1 then
set GR2=GR2+1
endif
endif
set TGI=TGI+1
endloop
if GR2>0 then
return true
else
return false
endif
endfunction
function GP2 takes nothing returns boolean
if FL or GL==false then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,"-swaphero "+GetObjectName(1848653880))
return false
endif
if S0[GetPlayerId(GetTriggerPlayer())]==true then
if GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)<100 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1311788372))
return false
endif
endif
if GetUnitState(K1[GetPlayerId(GetTriggerPlayer())],UNIT_STATE_LIFE)<1 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653894))
return false
endif
if CL==true then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653895)+" -swaphero.")
return false
endif
if GT2(GetTriggerPlayer())==false then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653896))
return false
endif
return true
endfunction
function EN2 takes nothing returns nothing
if GP2()then
if GetEventPlayerChatString()=="-swap"or GetEventPlayerChatString()=="-swaphero"then
call GS2()
elseif GetEventPlayerChatString()=="-swapcancel"then
call FlushChildHashtable(LY,(800+GetPlayerId(GetTriggerPlayer())))
else
call GN2()
endif
endif
endfunction
function GQ2 takes nothing returns boolean
return GetSpellAbilityId()==1093682761
endfunction
function GU2 takes integer IB1,unit H02,unit HI2 returns nothing
local integer TGI=1
local integer THI=GetUnitAbilityLevel(H02,IB1)
loop
exitwhen TGI>THI
call SelectHeroSkill(HI2,IB1)
set TGI=TGI+1
endloop
endfunction
function H12 takes nothing returns nothing
local integer TGI
local integer THI
local unit HO2
local location BFO=GetUnitLoc(GetTriggerUnit())
set HO2=CreateUnitAtLoc(GetOwningPlayer(GetTriggerUnit()),GetUnitTypeId(GetTriggerUnit()),BFO,bj_UNIT_FACING)
call SetHeroXP(HO2,GetHeroXP(GetTriggerUnit()),false)
set TGI=1
set THI=GetUnitAbilityLevel(GetTriggerUnit(),1096904043)
loop
exitwhen TGI>THI
call SelectHeroSkill(bj_lastCreatedUnit,1096904043)
set TGI=TGI+1
endloop
set TGI=0
set THI=5
loop
exitwhen TGI>THI
call UnitAddItem(HO2,UnitItemInSlot(GetTriggerUnit(),TGI))
set TGI=TGI+1
endloop
if(GetUnitTypeId(GetTriggerUnit())==1164277353)then
call GU2(1093678156,GetTriggerUnit(),HO2)
call GU2(1093683252,GetTriggerUnit(),HO2)
call GU2(1095071337,GetTriggerUnit(),HO2)
call GU2(1093678929,GetTriggerUnit(),HO2)
endif
if(GetUnitTypeId(GetTriggerUnit())==1429221432)then
call GU2(1093677892,GetTriggerUnit(),HO2)
call GU2(1093677639,GetTriggerUnit(),HO2)
call GU2(1093677893,GetTriggerUnit(),HO2)
call GU2(1093679411,GetTriggerUnit(),HO2)
endif
if(GetUnitTypeId(GetTriggerUnit())==1429221431)then
call GU2(1093682745,GetTriggerUnit(),HO2)
call GU2(1093678681,GetTriggerUnit(),HO2)
call GU2(1093677381,GetTriggerUnit(),HO2)
call GU2(1093677624,GetTriggerUnit(),HO2)
endif
if(GetUnitTypeId(GetTriggerUnit())==1215063922)then
call GU2(1093677895,GetTriggerUnit(),HO2)
call GU2(1093677894,GetTriggerUnit(),HO2)
call GU2(1093685043,GetTriggerUnit(),HO2)
call GU2(1095068013,GetTriggerUnit(),HO2)
endif
if(GetUnitTypeId(GetTriggerUnit())==1164666213)then
call GU2(1093677877,GetTriggerUnit(),HO2)
call GU2(1093678679,GetTriggerUnit(),HO2)
call GU2(1093678678,GetTriggerUnit(),HO2)
call GU2(1093678680,GetTriggerUnit(),HO2)
endif
call Q5I(GetTriggerUnit())
call RemoveLocation(BFO)
set K1[GetPlayerId(GetOwningPlayer(HO2))]=HO2
endfunction
function H22 takes nothing returns boolean
local integer SZI=GetUnitTypeId(K1[GetPlayerId(GetTriggerPlayer())])
return(SZI==1429221432 or SZI==1429221431 or SZI==1215063922 or SZI==1164277353 or SZI==1164666213)and(RectContainsUnit(G5,K1[GetPlayerId(GetTriggerPlayer())])or RectContainsUnit(H5,K1[GetPlayerId(GetTriggerPlayer())]))
endfunction
function H32 takes nothing returns nothing
local unit SFI=K1[GetPlayerId(GetTriggerPlayer())]
call UnitAddAbility(SFI,1093682761)
call IssueImmediateOrder(SFI,"chemicalrage")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,120.00,"|c00ff0303"+GetObjectName(1848653897)+" "+S8I(GetEnumUnit())+". "+GetObjectName(1848653898)+"|r")
endfunction
function ES2 takes nothing returns nothing
if H22()then
call H32()
endif
endfunction
function H52 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer NPI=GetTriggerEvalCount(t)
local real x
local real y
if GetTriggerEventId()==EVENT_UNIT_DEATH or NPI>60 then
if((LoadInteger(LY,(GetHandleId((SFI))),((4259))))==1)==false then
if TII(GetOwningPlayer(SFI))then
set x=GetRectCenterX(O4)
set y=GetRectCenterY(O4)
else
set x=GetRectCenterX(S3)
set y=GetRectCenterY(S3)
endif
call SetUnitPosition(SFI,x,y)
call PauseUnit(SFI,false)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call PauseUnit(SFI,true)
endif
set t=null
set SFI=null
return false
endfunction
function H62 takes player p returns nothing
local unit SFI=K1[GetPlayerId(p)]
local trigger t
if IC1(SFI)==false then
set t=CreateTrigger()
call DisplayTimedTextToPlayer(p,0,U2,30.0,GetObjectName(1848653899))
call UnitRemoveBuffs(SFI,true,false)
call UnitRemoveAbility(SFI,1113815395)
call UnitRemoveAbility(SFI,1113815346)
call UnitRemoveAbility(SFI,1110454858)
call UnitRemoveAbility(SFI,1112896368)
call UnitRemoveAbility(SFI,1114993524)
call UnitRemoveAbility(SFI,1110454854)
call PauseUnit(SFI,true)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function H52))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(SFI))
endif
set p=null
set SFI=null
set t=null
endfunction
function H72 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call H62(p)
endif
set t=null
return false
endfunction
function ET2 takes nothing returns nothing
local player p=GetTriggerPlayer()
local unit SFI=K1[GetPlayerId(p)]
local trigger t
if IC1(SFI)==false then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,3.5,false)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function H72))
call SavePlayerHandle(LY,(GetHandleId(t)),(54),(p))
endif
set p=null
set SFI=null
set t=null
endfunction
function H82 takes player p returns string
local string s=K3[GetPlayerId(p)]
if K3[GetPlayerId(p)]!="Here"then
return" |c00ff0303("+GetObjectName(1848653881)+" at "+SubString(s,10,StringLength(s))+"|c00ff0303)|r"
endif
return" "
endfunction
function ER2 takes nothing returns nothing
local integer TGI=1
local integer THI=5
local integer MLI
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,20," ")
if(TOI(GetTriggerPlayer())==true)then
loop
exitwhen TGI>THI
set MLI=GetPlayerId(BO[TGI])
if(K1[MLI]!=null)then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,20,C0[MLI]+(D80[GetPlayerId((BO[TGI]))])+"|r "+GetObjectName(1848653901)+" "+GetUnitName(K1[MLI])+" ("+GetObjectName(1848653900)+" "+I2S(GetUnitLevel(K1[MLI]))+")"+H82(BO[TGI]))
endif
set TGI=TGI+1
endloop
else
loop
exitwhen TGI>THI
set MLI=GetPlayerId(CO[TGI])
if(K1[MLI]!=null)then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,20,C0[MLI]+(D80[GetPlayerId((CO[TGI]))])+"|r "+GetObjectName(1848653901)+" "+GetUnitName(K1[MLI])+" ("+GetObjectName(1848653900)+" "+I2S(GetUnitLevel(K1[MLI]))+")"+H82(CO[TGI]))
endif
set TGI=TGI+1
endloop
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,20," ")
endfunction
function HA2 takes unit u returns boolean
return GetUnitTypeId(u)==1311781199 or GetUnitTypeId(u)==1311781171 or GetUnitTypeId(u)==1311781172 or GetUnitTypeId(u)==1311781173
endfunction
function HB2 takes unit u returns unit
local integer S5I=GetHandleId(GetOwningPlayer(u))
return(LoadUnitHandle(LY,(S5I),(333)))
endfunction
function EP2 takes nothing returns nothing
local unit u
local integer i=0
if(K1[GetPlayerId(GetTriggerPlayer())]==null)then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848653889))
else
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetUnitName(K1[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName(1848653902)+" "+I2S(R2I(0.5+H51(K1[GetPlayerId(GetTriggerPlayer())]))))
if HA2(K1[GetPlayerId(GetTriggerPlayer())])then
set u=HB2(K1[GetPlayerId(GetTriggerPlayer())])
if u!=null then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetUnitName(u)+" "+GetObjectName(1848653902)+" "+I2S(R2I(0.5+GetUnitMoveSpeed(u))))
endif
endif
endif
endfunction
function EQ2 takes nothing returns nothing
local unit u
local integer i=0
if(K1[GetPlayerId(GetTriggerPlayer())]==null)then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848653889))
else
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetUnitName(K1[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName(1848653902)+" "+I2S(R2I(0.5+H51(K1[GetPlayerId(GetTriggerPlayer())]))))
if HA2(K1[GetPlayerId(GetTriggerPlayer())])then
set u=HB2(K1[GetPlayerId(GetTriggerPlayer())])
if u!=null then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetUnitName(u)+" "+GetObjectName(1848653902)+" "+I2S(R2I(0.5+GetUnitMoveSpeed(u))))
endif
endif
loop
exitwhen i>16
set u=K1[i]
if u!=null and u!=K1[GetPlayerId(GetTriggerPlayer())]and IsUnitAlly(u,GetTriggerPlayer())==true then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetUnitName(u)+" "+GetObjectName(1848653902)+" "+I2S(R2I(0.5+GetUnitMoveSpeed(u))))
endif
set i=i+1
endloop
endif
endfunction
function EU2 takes nothing returns nothing
call SaveBoolean(LY,(GetHandleId(GetTriggerPlayer())),(139),(true))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653906))
endfunction
function F02 takes nothing returns nothing
call SaveBoolean(LY,(GetHandleId(GetTriggerPlayer())),(139),(false))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653903))
endfunction
function FI2 takes nothing returns nothing
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,"   "+GetObjectName(1848653904)+" "+I2S(A[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName(1848653905)+" "+I2S(B[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName(1848653907)+" "+I2S(C[GetPlayerId(GetTriggerPlayer())]))
endfunction
function F12 takes nothing returns nothing
local integer x=GetPlayerId(GetTriggerPlayer())
if(GetEventPlayerChatString()=="-cson")then
set VM[x]=true
set RN0[x]=true
else
set VM[x]=false
set RN0[x]=false
endif
call UR1()
endfunction
function HG2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer i=(LoadInteger(LY,(S5I),(34)))
local real x
local real y
if RV0[i]==false then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif K1[i]!=null and IC1(K1[i])==false then
set x=GetUnitX(K1[i])
set y=GetUnitY(K1[i])
call PanCameraToTimedForPlayer(Player(i),x,y,0)
endif
set t=null
return false
endfunction
function FQ2 takes nothing returns nothing
local integer x=GetPlayerId(GetTriggerPlayer())
local trigger t
local integer S5I
local integer i
if RV0[x]==false and(GetEventPlayerChatString()=="-center"or GetEventPlayerChatString()=="-c")then
set RV0[x]=true
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerAddCondition(t,Condition(function HG2))
call SaveInteger(LY,(S5I),(34),(x))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848658519))
elseif GetEventPlayerChatString()=="-centeroff"or GetEventPlayerChatString()=="-co"then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848658520))
set RV0[x]=false
endif
endfunction
function G02 takes nothing returns nothing
set RW0[GetPlayerId(GetTriggerPlayer())]=false
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,5,GetObjectName(1848658522))
endfunction
function GI2 takes nothing returns nothing
set RW0[GetPlayerId(GetTriggerPlayer())]=true
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,5,GetObjectName(1848658736))
endfunction
function FU2 takes nothing returns nothing
local integer i=0
local integer id=GetPlayerId(GetTriggerPlayer())
local integer NPI=0
local integer HV2=0
local player p
if RY0==false or JL==false then
return
endif
if RK0+90<(TimerGetElapsed(M))then
loop
exitwhen i>15
set RJ0[i]=false
set i=i+1
endloop
endif
set RK0=(TimerGetElapsed(M))+90
set RJ0[id]=true
set i=0
loop
exitwhen i>15
if TII(GetTriggerPlayer())then
if TII(Player(i))and T3I(Player(i))then
set HV2=HV2+1
if RJ0[i]then
set NPI=NPI+1
endif
endif
else
if TOI(Player(i))and T3I(Player(i))then
set HV2=HV2+1
if RJ0[i]then
set NPI=NPI+1
endif
endif
endif
set i=i+1
endloop
if NPI*2>HV2 then
if TII(GetTriggerPlayer())then
set i=0
loop
exitwhen i>5
set p=BO[i]
if EF0[GetPlayerId(p)]==true and RX0[GetPlayerId(p)]==false then
call QRI(OO,10,GetObjectName(1848658756)+" "+(D80[GetPlayerId((p))]))
call BB1(p)
set RX0[GetPlayerId(p)]=true
endif
set i=i+1
endloop
else
set i=0
loop
exitwhen i>5
set p=CO[i]
if EF0[GetPlayerId(p)]==true and RX0[GetPlayerId(p)]==false then
call QRI(AO,10,GetObjectName(1848658756)+" "+(D80[GetPlayerId((p))]))
call BB1(p)
set RX0[GetPlayerId(p)]=true
endif
set i=i+1
endloop
endif
else
if TII(GetTriggerPlayer())then
call QRI(OO,10,GetObjectName(1848658754)+" "+I2S(NPI)+"/"+I2S(HV2)+" ("+(D80[GetPlayerId((GetTriggerPlayer()))])+")")
else
call QRI(AO,10,GetObjectName(1848658754)+" "+I2S(NPI)+"/"+I2S(HV2)+" ("+(D80[GetPlayerId((GetTriggerPlayer()))])+")")
endif
endif
endfunction
function HX2 takes nothing returns nothing
local integer i=1
local integer Q4I
local player p
loop
exitwhen i>5
set p=BO[i]
set Q4I=R2I(TimerGetRemaining(F0[GetPlayerId(p)]))
if Q4I>0 and RL0[GetPlayerId(p)]and WL==false and Q2==false then
call PlayerSetLeaderboard(p,RM0[GetPlayerId(p)])
call LeaderboardDisplay(RM0[GetPlayerId(p)],true)
call LeaderboardSetLabel(RM0[GetPlayerId(p)],"   "+GetObjectName(1848653910)+" "+I2S(Q4I)+" "+GetObjectName(1848654133))
else
call LeaderboardDisplay(RM0[GetPlayerId(p)],false)
endif
set p=CO[i]
set Q4I=R2I(TimerGetRemaining(F0[GetPlayerId(p)]))
if Q4I>0 and RL0[GetPlayerId(p)]and WL==false and Q2==false then
call PlayerSetLeaderboard(p,RM0[GetPlayerId(p)])
call LeaderboardDisplay(RM0[GetPlayerId(p)],true)
call LeaderboardSetLabel(RM0[GetPlayerId(p)],"   "+GetObjectName(1848653910)+" "+I2S(Q4I)+" "+GetObjectName(1848654133))
else
call LeaderboardDisplay(RM0[GetPlayerId(p)],false)
endif
set i=i+1
endloop
endfunction
function HY2 takes nothing returns nothing
local integer x=0
set x=x+1
set RM0[GetPlayerId(BO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(BO[x],RM0[GetPlayerId(BO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(BO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(BO[x])],GetObjectName(1848657204)+": ")
set RM0[GetPlayerId(CO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(CO[x],RM0[GetPlayerId(CO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(CO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(CO[x])],GetObjectName(1848657204)+": ")
set x=x+1
set RM0[GetPlayerId(BO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(BO[x],RM0[GetPlayerId(BO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(BO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(BO[x])],GetObjectName(1848657204)+": ")
set RM0[GetPlayerId(CO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(CO[x],RM0[GetPlayerId(CO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(CO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(CO[x])],GetObjectName(1848657204)+": ")
set x=x+1
set RM0[GetPlayerId(BO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(BO[x],RM0[GetPlayerId(BO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(BO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(BO[x])],GetObjectName(1848657204)+": ")
set RM0[GetPlayerId(CO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(CO[x],RM0[GetPlayerId(CO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(CO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(CO[x])],GetObjectName(1848657204)+": ")
set x=x+1
set RM0[GetPlayerId(BO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(BO[x],RM0[GetPlayerId(BO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(BO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(BO[x])],GetObjectName(1848657204)+": ")
set RM0[GetPlayerId(CO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(CO[x],RM0[GetPlayerId(CO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(CO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(CO[x])],GetObjectName(1848657204)+": ")
set x=x+1
set RM0[GetPlayerId(BO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(BO[x],RM0[GetPlayerId(BO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(BO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(BO[x])],GetObjectName(1848657204)+": ")
set RM0[GetPlayerId(CO[x])]=CreateLeaderboard()
call PlayerSetLeaderboard(CO[x],RM0[GetPlayerId(CO[x])])
call LeaderboardDisplay(RM0[GetPlayerId(CO[x])],false)
call LeaderboardSetLabel(RM0[GetPlayerId(CO[x])],GetObjectName(1848657204)+": ")
endfunction
function F62 takes nothing returns nothing
local integer x=GetPlayerId(GetTriggerPlayer())
if GetEventPlayerChatString()=="-don"or GetEventPlayerChatString()=="-deathon"then
set RL0[x]=true
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653911))
else
set RL0[x]=false
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653912))
endif
endfunction
function HJ2 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerAddAction(t,function HY2)
call TriggerRegisterTimerEvent(t,.5,false)
set t=CreateTrigger()
call TriggerAddAction(t,function HX2)
call TriggerRegisterTimerEvent(t,1,true)
endfunction
function F42 takes nothing returns nothing
if(GetEventPlayerChatString()=="-showdeny")then
set RN0[GetPlayerId(GetTriggerPlayer())]=true
else
set RN0[GetPlayerId(GetTriggerPlayer())]=false
endif
endfunction
function F52 takes nothing returns nothing
call PZI(GetTriggerPlayer(),GetObjectName(1848657991))
endfunction
function HM2 takes nothing returns nothing
local integer i=0
loop
exitwhen i>16
set RN0[i]=true
set VM[i]=true
set i=i+1
endloop
endfunction
function FO2 takes nothing returns nothing
call ForceRemovePlayer(P2,GetTriggerPlayer())
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653909))
endfunction
function F22 takes nothing returns nothing
call ForceAddPlayer(P2,GetTriggerPlayer())
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848653914))
endfunction
function HT2 takes nothing returns boolean
local integer x=GetRandomInt(1,4)
if x==1 then
set RT0=Z3
elseif x==2 then
set RT0=V3
elseif x==3 then
set RT0=KS
elseif x==4 then
set RT0=LS
endif
if RR0[GetPlayerId(GetLocalPlayer())]then
call EnableWeatherEffect(Z3,false)
call EnableWeatherEffect(V3,false)
call EnableWeatherEffect(KS,false)
call EnableWeatherEffect(LS,false)
call EnableWeatherEffect(RT0,true)
endif
return false
endfunction
function HR2 takes nothing returns nothing
local integer x=GetRandomInt(1,4)
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,300,true)
call TriggerAddCondition(t,Condition(function HT2))
set RR0[GetPlayerId(BO[1])]=false
set RR0[GetPlayerId(BO[2])]=false
set RR0[GetPlayerId(BO[3])]=false
set RR0[GetPlayerId(BO[4])]=false
set RR0[GetPlayerId(BO[5])]=false
set RR0[GetPlayerId(CO[1])]=false
set RR0[GetPlayerId(CO[2])]=false
set RR0[GetPlayerId(CO[3])]=false
set RR0[GetPlayerId(CO[4])]=false
set RR0[GetPlayerId(CO[5])]=false
if C2 then
set RR0[GetPlayerId(D60)]=false
set RR0[GetPlayerId(D70)]=false
endif
if x==1 then
set RT0=Z3
elseif x==2 then
set RT0=V3
elseif x==3 then
set RT0=KS
elseif x==4 then
set RT0=LS
endif
set t=null
endfunction
function F32 takes nothing returns nothing
local string DC2=StringCase(GetEventPlayerChatString(),false)
if RS0==true then
set RS0=false
call HR2()
endif
if DC2=="-weather snow"and GetLocalPlayer()==GetTriggerPlayer()then
set RR0[GetPlayerId(GetTriggerPlayer())]=false
call EnableWeatherEffect(Z3,true)
call EnableWeatherEffect(V3,false)
call EnableWeatherEffect(KS,false)
call EnableWeatherEffect(LS,false)
endif
if DC2=="-weather rain"and GetLocalPlayer()==GetTriggerPlayer()then
set RR0[GetPlayerId(GetTriggerPlayer())]=false
call EnableWeatherEffect(Z3,false)
call EnableWeatherEffect(V3,true)
call EnableWeatherEffect(KS,false)
call EnableWeatherEffect(LS,false)
endif
if DC2=="-weather moonlight"and GetLocalPlayer()==GetTriggerPlayer()then
set RR0[GetPlayerId(GetTriggerPlayer())]=false
call EnableWeatherEffect(Z3,false)
call EnableWeatherEffect(V3,false)
call EnableWeatherEffect(KS,true)
call EnableWeatherEffect(LS,false)
endif
if DC2=="-weather wind"and GetLocalPlayer()==GetTriggerPlayer()then
set RR0[GetPlayerId(GetTriggerPlayer())]=false
call EnableWeatherEffect(Z3,false)
call EnableWeatherEffect(V3,false)
call EnableWeatherEffect(KS,false)
call EnableWeatherEffect(LS,true)
endif
if DC2=="-weather off"and GetLocalPlayer()==GetTriggerPlayer()then
set RR0[GetPlayerId(GetTriggerPlayer())]=false
call EnableWeatherEffect(Z3,false)
call EnableWeatherEffect(V3,false)
call EnableWeatherEffect(KS,false)
call EnableWeatherEffect(LS,false)
endif
if DC2=="-weather random"then
set RR0[GetPlayerId(GetTriggerPlayer())]=true
if GetLocalPlayer()==GetTriggerPlayer()then
call EnableWeatherEffect(Z3,false)
call EnableWeatherEffect(V3,false)
call EnableWeatherEffect(KS,false)
call EnableWeatherEffect(LS,false)
call EnableWeatherEffect(RT0,true)
endif
endif
endfunction
function F72 takes nothing returns nothing
local integer a=S2I(SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString())))
local integer MLI=GetPlayerId(GetTriggerPlayer())
set FM[MLI]=FM[MLI]+1
if FM[MLI]>20 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848656977))
return
endif
if GetEventPlayerChatString()=="-rollon"or GetEventPlayerChatString()=="-rolloff"then
return
endif
if a==0 then
set a=100
endif
if a>0 and a<2001 then
call QQI(P2,5,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r "+GetObjectName(1848653129)+" "+I2S(GetRandomInt(1,a))+" "+GetObjectName(1848653133)+" "+I2S(a))
else
call PZI(GetTriggerPlayer(),GetObjectName(1848652377))
endif
endfunction
function FN2 takes nothing returns nothing
local integer a
if GetRandomInt(1,2)==1 then
set a=GetRandomInt(DG0,DH0)
else
set a=GetRandomInt(DE0,DF0)
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848657747)+" "+S9I(a))
endfunction
function FK2 takes nothing returns nothing
local integer a=S2I(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
if GetTriggerPlayer()!=BO[1]or a>2 or a<1 or CN==false or TimerGetElapsed(M)>14 or PV0==true then
return
endif
set PK0=a
set PL0=a
set PZ0=true
if a==1 then
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(BO[1])]+(D80[GetPlayerId((BO[1]))])+"|r "+GetObjectName(1848656979))
else
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(CO[1])]+(D80[GetPlayerId((CO[1]))])+"|r "+GetObjectName(1848656979))
endif
if PK0==1 then
set PM0=BO[1]
set PN0=CO[1]
else
set PM0=CO[1]
set PN0=BO[1]
endif
endfunction
function FZ2 takes nothing returns nothing
set GM[GetPlayerId(GetTriggerPlayer())]=false
endfunction
function FV2 takes nothing returns nothing
set GM[GetPlayerId(GetTriggerPlayer())]=true
endfunction
function F82 takes nothing returns nothing
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848654128))
set RP0[GetPlayerId(GetTriggerPlayer())]=true
if GetLocalPlayer()==GetTriggerPlayer()then
call SetPlayerName(BO[1],(D80[GetPlayerId((BO[1]))]))
call SetPlayerName(BO[2],(D80[GetPlayerId((BO[2]))]))
call SetPlayerName(BO[3],(D80[GetPlayerId((BO[3]))]))
call SetPlayerName(BO[4],(D80[GetPlayerId((BO[4]))]))
call SetPlayerName(BO[5],(D80[GetPlayerId((BO[5]))]))
call SetPlayerName(CO[1],(D80[GetPlayerId((CO[1]))]))
call SetPlayerName(CO[2],(D80[GetPlayerId((CO[2]))]))
call SetPlayerName(CO[3],(D80[GetPlayerId((CO[3]))]))
call SetPlayerName(CO[4],(D80[GetPlayerId((CO[4]))]))
call SetPlayerName(CO[5],(D80[GetPlayerId((CO[5]))]))
endif
endfunction
function F92 takes nothing returns nothing
local integer id=GetPlayerId(GetTriggerPlayer())
if HM[id]==true then
set HM[id]=false
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848653908))
else
set HM[id]=true
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848654129))
endif
endfunction
function FR2 takes nothing returns nothing
local integer id=GetPlayerId(GetTriggerPlayer())
set RQ0[id]=true
endfunction
function FH2 takes nothing returns nothing
endfunction
function FC2 takes nothing returns nothing
local integer i=1
local player p
local real Z12
loop
exitwhen i>5
set p=BO[i]
if T3I(p)then
set Z12=K[GetPlayerId(p)]/(TimerGetElapsed(M))*60
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653876)+" "+R2S(Z12))
endif
set p=CO[i]
if T3I(p)then
set Z12=K[GetPlayerId(p)]/(TimerGetElapsed(M))*60
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653876)+" "+R2S(Z12))
endif
set i=i+1
endloop
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00," ")
set p=null
endfunction
function FD2 takes nothing returns nothing
call A31(GetTriggerPlayer())
endfunction
function ZO2 takes nothing returns boolean
call S0I(GetTriggeringTrigger())
set RU0=true
return false
endfunction
function Z22 takes real d returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,d,false)
call TriggerAddCondition(t,Condition(function ZO2))
set t=null
endfunction
function Z32 takes player MDI returns nothing
local integer Z42
local player Z52
set Z42=0
loop
set Z52=Player(Z42)
if(PlayersAreCoAllied(MDI,Z52)and MDI!=Z52)then
call SetPlayerAlliance(MDI,Z52,ALLIANCE_SHARED_VISION,true)
call SetPlayerAlliance(MDI,Z52,ALLIANCE_SHARED_CONTROL,true)
call SetPlayerAlliance(Z52,MDI,ALLIANCE_SHARED_CONTROL,true)
endif
set Z42=Z42+1
exitwhen Z42==12
endloop
endfunction
function FB2 takes nothing returns nothing
local integer MLI=S2I(SubString(GetEventPlayerChatString(),9,StringLength(GetEventPlayerChatString())))
local integer i=1
local player p
local string GW1
if RU0 then
if(Z0<10)then
set GW1=I2S(H0)+":0"+I2S(Z0)
else
set GW1=I2S(H0)+":"+I2S(Z0)
endif
if MLI<1 or P00[MLI]==false then
loop
exitwhen i>5
set p=BO[i]
if T3I(p)and((TimerGetElapsed(M))-L[GetPlayerId(p)])>300.0 and P00[GetPlayerId(p)]==false then
set P00[GetPlayerId(p)]=true
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653127)+" "+R2S(((TimerGetElapsed(M))-L[GetPlayerId(p)])/60)+" "+GetObjectName(1311782214))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,GetObjectName(1848653135)+" |cff99ccff-kickafk "+I2S(GetPlayerId(p))+" |r "+GetObjectName(1848653136))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00," ")
endif
set p=CO[i]
if T3I(p)and((TimerGetElapsed(M))-L[GetPlayerId(p)])>300.0 and P00[GetPlayerId(p)]==false then
set P00[GetPlayerId(p)]=true
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653127)+" "+R2S(((TimerGetElapsed(M))-L[GetPlayerId(p)])/60)+" "+GetObjectName(1311782214))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,GetObjectName(1848653135)+" |cff99ccff-kickafk "+I2S(GetPlayerId(p))+" |r "+GetObjectName(1848653136))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00," ")
endif
set i=i+1
endloop
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00," ")
elseif T3I(Player(MLI))==true and IsPlayerAlly(GetTriggerPlayer(),Player(MLI))==true then
call DisplayTimedTextToPlayer(Player(MLI),0,U2,3600,"|c00ff0303"+GetObjectName(1848653125)+"|r")
call VY1(Player(MLI))
set K3[GetPlayerId(Player(MLI))]="|c00555555"+GW1+"|r"
call RemovePlayer(Player(MLI),PLAYER_GAME_RESULT_DEFEAT)
call Z32(Player(MLI))
if JL then
call B91(Player(MLI))
endif
set EF0[GetPlayerId(Player(MLI))]=true
call VX1(Player(MLI))
call QRI(P2,30.00,"|c00ff0303"+(D80[GetPlayerId((Player(MLI)))])+" "+GetObjectName(1848653125)+"|r")
endif
endif
endfunction
function FA2 takes nothing returns nothing
local integer i=1
local player p
local integer x=0
if RU0 then
loop
exitwhen i>5
set p=BO[i]
if T3I(p)and((TimerGetElapsed(M))-L[GetPlayerId(p)])/60>0.2 then
set x=x+1
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653124)+" "+R2S(((TimerGetElapsed(M))-L[GetPlayerId(p)])/60)+" "+GetObjectName(1311782214))
endif
set p=CO[i]
if T3I(p)and((TimerGetElapsed(M))-L[GetPlayerId(p)])/60>0.2 then
set x=x+1
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653124)+" "+R2S(((TimerGetElapsed(M))-L[GetPlayerId(p)])/60)+" "+GetObjectName(1311782214))
endif
set i=i+1
endloop
if x<1 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,GetObjectName(1311782225))
else
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00," ")
endif
endif
endfunction
function Z62 takes nothing returns boolean
local integer i=1
local player p
local real GW1=(TimerGetElapsed(M))
if RU0 then
loop
exitwhen i>5
set p=BO[i]
if T3I(p)and(GW1-L[GetPlayerId(p)])>300.0 and P00[GetPlayerId(p)]==false then
set P00[GetPlayerId(p)]=true
call QRI(OO,15,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653127)+" "+R2S((GW1-L[GetPlayerId(p)])/60)+" "+GetObjectName(1311782214))
call QRI(OO,15,GetObjectName(1848653135)+" |cff99ccff-kickafk "+I2S(GetPlayerId(p))+" |r "+GetObjectName(1848653136))
call QRI(OO,15," ")
endif
set p=CO[i]
if T3I(p)and(GW1-L[GetPlayerId(p)])>300.0 and P00[GetPlayerId(p)]==false then
set P00[GetPlayerId(p)]=true
call QRI(AO,15,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r"+" "+GetObjectName(1848653127)+" "+R2S((GW1-L[GetPlayerId(p)])/60)+" "+GetObjectName(1311782214))
call QRI(AO,15,GetObjectName(1848653135)+" |cff99ccff-kickafk "+I2S(GetPlayerId(p))+" |r "+GetObjectName(1848653136))
call QRI(AO,15," ")
endif
set i=i+1
endloop
endif
return false
endfunction
function Z72 takes nothing returns boolean
if GetOwningPlayer(GetTriggerUnit())!=BO[0]and GetOwningPlayer(GetTriggerUnit())!=CO[0]then
set K[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=K[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]+1
if GetIssuedOrderId()!=851983 then
set L[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=(TimerGetElapsed(M))
set P00[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=false
endif
if(GetIssuedOrderId()==851983 or GetIssuedOrderId()==851971)and GetOrderTargetItem()!=null then
if GetIssuedOrderId()==851983 or(GetIssuedOrderId()==851971 and(LoadBoolean(LY,(GetHandleId(GetItemPlayer(GetOrderTargetItem()))),(139)))==true)then
if GetItemPlayer(GetOrderTargetItem())!=GetOwningPlayer(GetTriggerUnit())and IsPointInRegion(QK,GetItemX(GetOrderTargetItem()),GetItemY(GetOrderTargetItem()))==true then
call DisableTrigger(GetTriggeringTrigger())
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848657719))
call EnableTrigger(GetTriggeringTrigger())
endif
endif
endif
endif
return false
endfunction
function Z92 takes nothing returns boolean
return RYI(GetFilterUnit())and GetOwningPlayer(GetFilterUnit())==GetTriggerPlayer()
endfunction
function Courier_Add takes nothing returns nothing
call UnitAddType(GetEnumUnit(),UNIT_TYPE_PEON)
endfunction
function Courier_Remove takes nothing returns nothing
call UnitRemoveType(GetEnumUnit(),UNIT_TYPE_PEON)
endfunction
function FE2 takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsInRange(g,0,0,12000,Condition(function Z92))
call NSI(g)
set g=null
endfunction
function ZB2 takes nothing returns nothing
local string DC2=StringCase(GetEventPlayerChatString(),false)
local boolean ZC2=DC2=="-mode1"
local boolean ZD2=DC2=="-mode2"
if ZC2==false and ZD2==false then
return
endif
if(TimerGetElapsed(M))>60 then
call PXI(GetTriggerPlayer(),GetObjectName(1848652376))
return
elseif(TimerGetElapsed(M))<15 then
call PXI(GetTriggerPlayer(),GetObjectName(1848652376))
return
endif
if ZC2 then
set UK=1
elseif ZD2 then
set UK=2
endif
call C82()
call QRI(P2,15,GetObjectName(1848653134)+" "+GetObjectName(1848653109))
call QRI(P2,15,GetObjectName(1848653138))
call S0I(GetTriggeringTrigger())
endfunction
function ZE2 takes nothing returns boolean
call ExecuteFunc("ZB2")
return false
endfunction
function AH_RegisterCommands takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,WO,"-",false)
call TriggerAddCondition(t,Condition(function ZE2))
call QRI(P2,30,"|cff99ccff"+GetObjectName(1848653139)+"|r")
call QRI(P2,30,GetObjectName(1848653140)+" "+GetObjectName(1848653128)+" "+GetObjectName(1848653142)+" ")
call QRI(P2,30," ")
call QRI(P2,30,"|cff99ccff-mode1|r "+GetObjectName(1848653143)+". ("+GetObjectName(1848653144)+")")
call QRI(P2,30,"|cff99ccff-mode2|r "+GetObjectName(1848653362))
endfunction
function AH_RegisterCommands_Delayed takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.5,false)
set t=null
endfunction
function FF2 takes nothing returns nothing
if(TimerGetElapsed(M))>60 then
call PXI(GetTriggerPlayer(),GetObjectName(1848652376))
return
elseif(TimerGetElapsed(M))<15 then
call PXI(GetTriggerPlayer(),GetObjectName(1848652376))
return
endif
if GetTriggerPlayer()!=WO then
call PXI(GetTriggerPlayer(),GetObjectName(1848652375))
return
endif
if IL==false then
set IL=true
set UK=2
call C82()
call QRI(P2,15,GetObjectName(1848653134)+" "+GetObjectName(1848653109))
call QRI(P2,15,GetObjectName(1848653138))
else
call PZI(GetTriggerPlayer(),GetObjectName(1848652374))
endif
endfunction
function FG2 takes nothing returns nothing
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656726)+" [|cffff0000E|r|cffff0000E|r|cffff0000E|r] - [|cffffcc00T|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656725)+" [|cffff0000E|r|cffff0000E|r|cff00ffffW|r] - [|cffffcc00D|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656724)+" [|cffff0000E|r|cffff0000E|r|cff0000ffQ|r] - [|cffffcc00F|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656694)+" [|cff0000ffQ|r|cff0000ffQ|r|cff0000ffQ|r] - [|cffffcc00Y|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656716)+" [|cff0000ffQ|r|cff0000ffQ|r|cff00ffffW|r] - [|cffffcc00V|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656718)+" [|cff0000ffQ|r|cff0000ffQ|r|cffff0000E|r] - [|cffffcc00G|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656723)+" [|cff00ffffW|r|cff00ffffW|r|cffff0000E|r] - [|cffffcc00Z|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656719)+" [|cff00ffffW|r|cff00ffffW|r|cff0000ffQ|r] - [|cffffcc00X|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656720)+" [|cff00ffffW|r|cff00ffffW|r|cff00ffffW|r] - [|cffffcc00C|r]")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656721)+" [|cff0000ffQ|r|cff00ffffW|r|cffff0000E|r] - [|cffffcc00B|r]")
endfunction
function ZF2 takes string s returns nothing
call StopMusic(true)
call PlayMusic(s)
endfunction
function FW2 takes nothing returns nothing
local string s=GetEventPlayerChatString()
local integer TJI=GetRandomInt(1,P10)
if GetLocalPlayer()==GetTriggerPlayer()then
if s=="-music off"then
call StopMusic(false)
elseif s=="-music random"then
call ZF2(PI0[TJI])
elseif s=="-music nightelf1"then
call ZF2(AD)
elseif s=="-music nightelf2"then
call ZF2(BD)
elseif s=="-music nightelf3"then
call ZF2(DD)
elseif s=="-music human1"then
call ZF2(KC)
elseif s=="-music human2"then
call ZF2(LC)
elseif s=="-music human3"then
call ZF2(MC)
elseif s=="-music orc1"then
call ZF2(FD)
elseif s=="-music orc2"then
call ZF2(GD)
elseif s=="-music orc3"then
call ZF2(HD)
elseif s=="-music undead1"then
call ZF2(BE)
elseif s=="-music undead2"then
call ZF2(CE)
elseif s=="-music undead3"then
call ZF2(DE)
elseif s=="-music other1"then
call ZF2(ZD)
elseif s=="-music other2"then
call ZF2(VD)
elseif s=="-music other3"then
call ZF2(WD)
elseif s=="-music other4"then
call ZF2(XD)
elseif s=="-music other5"then
call ZF2(YD)
elseif s=="-music other6"then
call ZF2(GF)
elseif s=="-music other7"then
call ZF2(HF)
elseif s=="-music other8"then
call ZF2(ZF)
elseif s=="-music other9"then
call ZF2(VF)
elseif s=="-music special"then
call ZF2(PO0)
else
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848656727)+" ")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,"off, random, nightelf1, nightelf2, nightelf3, human1, human2, human3, orc1, orc2, orc3, undead1, undead2, undead3, other1, other2, other3, other4, other5, other6, other7, other8, other9, special")
endif
endif
endfunction
function ZG2 takes nothing returns boolean
set P10=P10+1
set PI0[P10]=AD
set P10=P10+1
set PI0[P10]=BD
set P10=P10+1
set PI0[P10]=DD
set P10=P10+1
set PI0[P10]=KC
set P10=P10+1
set PI0[P10]=LC
set P10=P10+1
set PI0[P10]=MC
set P10=P10+1
set PI0[P10]=FD
set P10=P10+1
set PI0[P10]=GD
set P10=P10+1
set PI0[P10]=HD
set P10=P10+1
set PI0[P10]=BE
set P10=P10+1
set PI0[P10]=CE
set P10=P10+1
set PI0[P10]=DE
set P10=P10+1
set PI0[P10]=ZD
set P10=P10+1
set PI0[P10]=VD
set P10=P10+1
set PI0[P10]=WD
set P10=P10+1
set PI0[P10]=XD
set P10=P10+1
set PI0[P10]=YD
set P10=P10+1
set PI0[P10]=GF
set P10=P10+1
set PI0[P10]=HF
set P10=P10+1
set PI0[P10]=ZF
set P10=P10+1
set PI0[P10]=VF
set P10=P10+1
set PI0[P10]=PO0
return false
endfunction
function ZZ2 takes player p,integer r,integer g,integer b,integer a returns nothing
if GetLocalPlayer()==p then
call SetWaterBaseColor(r,g,b,a)
endif
endfunction
function ZV2 takes string s returns nothing
local string ZW2=""
local string ZX2=""
local string ZY2=""
local integer i=0
local integer EU1=StringLength(s)
local integer ZJ2=1
loop
exitwhen i>EU1
if SubString(s,i,i+1)==" "then
set ZJ2=ZJ2+1
else
if ZJ2==1 then
set ZW2=ZW2+SubString(s,i,i+1)
elseif ZJ2==2 then
set ZX2=ZX2+SubString(s,i,i+1)
else
set ZY2=ZY2+SubString(s,i,i+1)
endif
endif
set i=i+1
endloop
set P30=S2I(ZW2)
set P40=S2I(ZX2)
set P50=S2I(ZY2)
endfunction
function FY2 takes nothing returns nothing
local string ZK2=SubString(GetEventPlayerChatString(),7,StringLength(GetEventPlayerChatString()))
local player p=GetTriggerPlayer()
local integer r
local integer g
local integer b
set P20[GetPlayerId(p)]=true
if ZK2=="red"then
call ZZ2(p,255,0,0,255)
elseif ZK2=="blue"then
call ZZ2(p,0,0,255,255)
elseif ZK2=="green"then
call ZZ2(p,0,255,0,255)
elseif ZK2=="default"then
call ZZ2(p,0,0,255,255)
elseif ZK2=="random"then
set r=GetRandomInt(0,255)
set g=GetRandomInt(0,255)
set b=GetRandomInt(0,255)
call ZZ2(p,r,g,b,255)
call DisplayTimedTextToPlayer(p,0,0,5,GetObjectName(1848657988)+" r="+I2S(r)+" g="+I2S(g)+" b="+I2S(b))
else
call ZV2(ZK2)
set r=P30
set g=P40
set b=P50
if r==0 and g==0 and b==0 and ZK2!="0 0 0"then
return
endif
if r>=0 and r<=255 and g>=0 and g<=255 and b>=0 and b<=255 then
call ZZ2(p,r,g,b,255)
endif
endif
endfunction
function FL2 takes nothing returns nothing
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,15.00,"This command has been temporarily disabled")
endfunction
function FM2 takes nothing returns boolean
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,"Total Bonus XP/Gold: "+I2S(FA0[GetPlayerId(GetTriggerPlayer())])+"/"+I2S(FB0[GetPlayerId(GetTriggerPlayer())]))
return false
endfunction
function GO2 takes nothing returns boolean
if BII>0 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10.00,GetObjectName(1848659023)+": "+I2S(BII))
endif
return false
endfunction
function Quote_ReplaySound takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer x=(LoadInteger(LY,(S5I),(148)))
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
call PEI(p,P60[x])
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set p=null
return false
endfunction
function FJ2 takes nothing returns nothing
local string s=GetEventPlayerChatString()
local trigger t
local integer x=S2I(SubString(GetEventPlayerChatString(),7,StringLength(GetEventPlayerChatString())))
local integer i=1
if x<1 or x>P80 then
set x=GetRandomInt(1,P80)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848657205)+" "+I2S(x))
endif
if P90 then
loop
exitwhen i>P80
call AM1(P60[i])
set i=i+1
endloop
set P90=false
endif
if P70[x]==false then
endif
call PEI(GetTriggerPlayer(),P60[x])
endfunction
function ZN2 takes player p1 returns string
local string s=GetObjectName(1848657730)
set s=FS1(s,"$c1","|c00ff0303")
set s=FS1(s,"$p1",C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r")
return s
endfunction
function ZS2 takes nothing returns string
local string s=GetObjectName(1848657729)
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c2","|c00ff0303")
return s
endfunction
function ZT2 takes nothing returns nothing
local integer i=1
local unit SFI
if IL then
loop
exitwhen i>5
set SFI=K1[GetPlayerId(BO[i])]
if SFI!=null then
if UK==2 then
call FV1(SFI)
endif
call UnitSetUsesAltIcon(SFI,false)
endif
set SFI=K1[GetPlayerId(CO[i])]
if SFI!=null then
if UK==2 then
call FV1(SFI)
endif
call UnitSetUsesAltIcon(SFI,false)
endif
set i=i+1
endloop
set SFI=null
endif
endfunction
function ZR2 takes player p1,player p2 returns string
local string s=GetObjectName(1848657714)
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c2","|c00ff0303")
set s=FS1(s,"$c2","|c00ff0303")
set s=FS1(s,"$p1",C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r")
set s=FS1(s,"$p2",C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r")
return s
endfunction
function ZP2 takes string ZQ2,string ZU2 returns string
local string s=GetObjectName(1848657494)
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$c1","|c006699CC")
set s=FS1(s,"$p1",ZQ2)
set s=FS1(s,"$p2",ZU2)
return s
endfunction
function V02 takes player p2 returns string
local string s=GetObjectName(1848657491)
set s=FS1(s,"$p2",C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r")
set s=FS1(s,"$c1","|c006699CC")
return s
endfunction
function VI2 takes player p returns nothing
local integer TGI
local integer THI
if(TII(p)==true)then
set TGI=1
set THI=5
loop
exitwhen TGI>THI
if(BO[TGI]!=p)then
if(T3I(BO[TGI])==true)then
call SetPlayerAllianceStateBJ(p,BO[TGI],4)
endif
endif
set TGI=TGI+1
endloop
else
set TGI=1
set THI=5
loop
exitwhen TGI>THI
if(CO[TGI]!=p)then
if(T3I(CO[TGI])==true)then
call SetPlayerAllianceStateBJ(p,CO[TGI],4)
endif
endif
set TGI=TGI+1
endloop
endif
endfunction
function V12 takes nothing returns nothing
if GetOwningPlayer(GetEnumUnit())==KM then
call SetUnitOwner(GetEnumUnit(),SM,true)
elseif GetOwningPlayer(GetEnumUnit())==SM then
call SetUnitOwner(GetEnumUnit(),KM,true)
endif
endfunction
function VO2 takes unit u,player p returns nothing
local real x1
local real y1
local real x2
local real y2
local integer i
local item BA1
if TII(p)then
set x1=GetRectCenterX(S3)
set y1=GetRectCenterY(S3)
set x2=GetRectCenterX(O4)
set y2=GetRectCenterY(O4)
else
set x1=GetRectCenterX(O4)
set y1=GetRectCenterY(O4)
set x2=GetRectCenterX(S3)
set y2=GetRectCenterY(S3)
endif
call SetUnitX(u,x1)
call SetUnitY(u,y1)
if RYI(u)then
call IssueImmediateOrder(u,"creepanimatedead")
endif
if IsUnitType(u,UNIT_TYPE_HERO)==true then
call SaveBoolean(LY,(GetHandleId(u)),(140),(true))
call SaveInteger(LY,(GetHandleId((u))),((4259)),(2))
call UnitRemoveAbility(u,1093678162)
call SetUnitInvulnerable(u,false)
call PauseUnit(u,false)
set i=0
loop
exitwhen i>5
set BA1=UnitItemInSlot(u,i)
if GetUnitTypeId(u)!=1211117642 and BA1!=null and(GetItemPlayer(BA1)!=GetOwningPlayer(u)and EB1(BA1)!=W30 and EB1(BA1)!=W40)and GetItemTypeId(BA1)!=FR0[VL0]then
call UnitRemoveItem(u,BA1)
endif
set i=i+1
endloop
endif
call SetUnitX(u,x2)
call SetUnitY(u,y2)
call SetUnitColor(u,GetPlayerColor(p))
set BA1=null
endfunction
function V22 takes nothing returns boolean
if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or RYI(GetFilterUnit())then
call VO2(GetFilterUnit(),QM)
elseif GetUnitTypeId(GetFilterUnit())==1852010352 then
call IssueImmediateOrder(GetFilterUnit(),"creepanimatedead")
elseif GetUnitTypeId(GetFilterUnit())==1966092354 then
return true
endif
return false
endfunction
function V32 takes item i,player p returns nothing
local real x
local real y
if TII(p)then
set x=GetRectCenterX(O4)
set y=GetRectCenterY(O4)
else
set x=GetRectCenterX(S3)
set y=GetRectCenterY(S3)
endif
call SetItemPosition(i,x,y)
endfunction
function V42 takes nothing returns nothing
if GetItemPlayer(GetEnumItem())==QM then
call V32(GetEnumItem(),QM)
endif
endfunction
function V52 takes player p1,player p2 returns nothing
local group g1=NTI()
local group g2=NTI()
set QM=p1
call GroupEnumUnitsOfPlayer(g1,p1,Condition(function V22))
set QM=p2
call GroupEnumUnitsOfPlayer(g2,p2,Condition(function V22))
call ForGroup(g1,function V12)
call ForGroup(g2,function V12)
set QM=p1
call EnumItemsInRect(GetWorldBounds(),Condition(function ULI),function V42)
set QM=p2
call EnumItemsInRect(GetWorldBounds(),Condition(function ULI),function V42)
call NSI(g1)
call NSI(g2)
set g1=null
set g2=null
endfunction
function V62 takes player p1,player p2 returns nothing
local integer x
local integer y
local integer i
local integer i1
local integer i2
local real x1
local real y1
local real x2
local real y2
local player p
local string ZQ2=C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"
local string ZU2=C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"
local integer GV2
set GV2=EL0[GetPlayerId(p1)]
set EL0[GetPlayerId(p1)]=EL0[GetPlayerId(p2)]
set EL0[GetPlayerId(p2)]=GV2
if TII(p1)then
set x1=GetRectCenterX(S3)
set y1=GetRectCenterY(S3)
else
set x1=GetRectCenterX(O4)
set y1=GetRectCenterY(O4)
endif
if TII(p2)then
set x2=GetRectCenterX(S3)
set y2=GetRectCenterY(S3)
else
set x2=GetRectCenterX(O4)
set y2=GetRectCenterY(O4)
endif
set i=1
loop
exitwhen i>5
if BO[i]==p1 or CO[i]==p1 then
set i1=i
endif
if BO[i]==p2 or CO[i]==p2 then
set i2=i
endif
set i=i+1
endloop
if TII(p1)then
set CO[i2]=p1
set BO[i1]=p2
else
set BO[i2]=p1
set CO[i1]=p2
endif
call SetPlayerTeam(BO[0],0)
call SetPlayerTeam(BO[1],0)
call SetPlayerTeam(BO[2],0)
call SetPlayerTeam(BO[3],0)
call SetPlayerTeam(BO[4],0)
call SetPlayerTeam(BO[5],0)
call SetPlayerTeam(CO[0],1)
call SetPlayerTeam(CO[1],1)
call SetPlayerTeam(CO[2],1)
call SetPlayerTeam(CO[3],1)
call SetPlayerTeam(CO[4],1)
call SetPlayerTeam(CO[5],1)
call Z11()
set x=0
set y=0
loop
exitwhen x>5
loop
exitwhen y>5
call SetPlayerAllianceStateBJ(BO[x],BO[y],3)
call SetPlayerAllianceStateBJ(CO[x],CO[y],3)
call SetPlayerAllianceStateBJ(BO[x],CO[y],0)
call SetPlayerAllianceStateBJ(CO[x],BO[y],0)
set y=y+1
endloop
set y=0
set x=x+1
endloop
call ForceClear(OO)
call ForceClear(AO)
call ForceAddPlayer(OO,BO[0])
call ForceAddPlayer(OO,BO[1])
call ForceAddPlayer(OO,BO[2])
call ForceAddPlayer(OO,BO[3])
call ForceAddPlayer(OO,BO[4])
call ForceAddPlayer(OO,BO[5])
call ForceAddPlayer(AO,CO[0])
call ForceAddPlayer(AO,CO[1])
call ForceAddPlayer(AO,CO[2])
call ForceAddPlayer(AO,CO[3])
call ForceAddPlayer(AO,CO[4])
call ForceAddPlayer(AO,CO[5])
call ExecuteFunc("ZO1")
call V52(p1,p2)
set IN=true
call PanCameraToTimedForPlayer(p1,x1,y1,0)
call PanCameraToTimedForPlayer(p2,x2,y2,0)
call ZI1()
set JM=false
if UM!=null then
call TriggerEvaluate(UM)
endif
if GetPlayerSlotState(p2)==PLAYER_SLOT_STATE_EMPTY then
set D80[GetPlayerId(p2)]=GetPlayerName(p2)
endif
set i=1
loop
exitwhen i>5
set p=BO[i]
if T6I(p)then
call VI2(p)
endif
set p=CO[i]
if T6I(p)then
call VI2(p)
endif
set i=i+1
endloop
call ZT2()
call P7O()
call ClearTextMessages()
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20," ")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,ZP2(ZQ2,ZU2))
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20," ")
call GY1(p1)
call GY1(p2)
endfunction
function V72 takes nothing returns nothing
local integer i=1
local player p
set ON=0
set AN=0
loop
exitwhen i>5
set p=BO[i]
if T3I(p)then
set AN=AN+1
if TM[GetPlayerId(p)]==true then
set ON=ON+1
endif
endif
set p=CO[i]
if T3I(p)then
set AN=AN+1
if TM[GetPlayerId(p)]==true then
set ON=ON+1
endif
endif
set i=i+1
endloop
endfunction
function V82 takes nothing returns nothing
set JM=false
if UM!=null then
call TriggerEvaluate(UM)
endif
call ClearTextMessages()
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,ZN2(GetTriggerPlayer()))
endfunction
function V92 takes nothing returns nothing
local integer i=1
local player p
local integer VA2=0
local integer VB2=0
local integer VC2=0
if TM[GetPlayerId(GetTriggerPlayer())]==false then
set TM[GetPlayerId(GetTriggerPlayer())]=true
call V72()
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+"|r|c006699CC "+GetObjectName(1848657492)+"|r ("+I2S(ON)+"/"+I2S(AN)+")")
endif
loop
exitwhen i>5
set p=BO[i]
if T3I(p)and TM[GetPlayerId(p)]==false then
set VA2=VA2+1
set VC2=VC2+1
endif
if T3I(p)and TM[GetPlayerId(p)]==true then
set VB2=VB2+1
set VC2=VC2+1
endif
set p=CO[i]
if T3I(p)and TM[GetPlayerId(p)]==false then
set VA2=VA2+1
set VC2=VC2+1
endif
if T3I(p)and TM[GetPlayerId(p)]==true then
set VB2=VB2+1
set VC2=VC2+1
endif
set i=i+1
endloop
if VA2<2 and VB2>=R2I(VC2/2)then
if(VC2==2 and VB2>1)or VC2!=2 then
call V62(KM,SM)
endif
endif
endfunction
function VD2 takes nothing returns nothing
local integer i=1
local player p=GetTriggerPlayer()
local player VE2
local string s
local string s2
loop
exitwhen i>5
set s=""
set s2=""
if TII(p)then
set VE2=CO[i]
else
set VE2=BO[i]
endif
if GetPlayerSlotState(VE2)==PLAYER_SLOT_STATE_LEFT and GetPlayerController(VE2)==MAP_CONTROL_USER then
set s="|c00ff0303["+GetObjectName(1848657497)+"]|r"
endif
if K1[GetPlayerId(VE2)]!=null then
set s2=" ("+GetUnitName(K1[GetPlayerId(VE2)])+")"
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15,GetObjectName(1848653875)+"|c006699CC "+"-switch "+I2S(i)+"|r "+GetObjectName(1848657489)+" "+C0[GetPlayerId(VE2)]+(D80[GetPlayerId((VE2))])+s2+"|r "+s)
set i=i+1
endloop
endfunction
function VF2 takes nothing returns boolean
local integer i=0
if JM then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,"|c00ff0303"+GetObjectName(1848657493)+"|r")
endif
set RY0=true
set JM=false
set KM=null
set SM=null
loop
exitwhen i>16
set TM[i]=false
set i=i+1
endloop
call S0I(GetTriggeringTrigger())
set UM=null
return false
endfunction
function VG2 takes player p1,player p2 returns nothing
local trigger t=CreateTrigger()
local integer i=0
local string s
local string PUO
local string msg2
local string msg3
local player p
local string s2
set RY0=false
set JM=true
set KM=p1
set SM=p2
loop
exitwhen i>16
set TM[i]=false
set i=i+1
endloop
set TM[GetPlayerId(KM)]=true
call TriggerRegisterTimerEvent(t,60,false)
call TriggerAddCondition(t,Condition(function VF2))
set UM=t
set s=ZR2(p1,p2)
set s2=ZS2()
set i=1
loop
exitwhen i>5
set p=BO[i]
if p!=p1 then
call DisplayTimedTextToPlayer(p,0,0,20,s)
call DisplayTimedTextToPlayer(p,0,0,20,s2)
endif
set p=CO[i]
if p!=p1 then
call DisplayTimedTextToPlayer(p,0,0,20,s)
call DisplayTimedTextToPlayer(p,0,0,20,s2)
endif
set i=i+1
endloop
set s=V02(p2)
call DisplayTimedTextToPlayer(p1,0,0,20,s)
set t=null
endfunction
function FT2 takes nothing returns nothing
if JL==false then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848657752))
return
endif
if C2 and GetEventPlayerChatString()!="-ok"and GetEventPlayerChatString()!="-switch accept"and GetEventPlayerChatString()!="-no"then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848657712))
return
endif
if GetEventPlayerChatString()=="-switch accept"or GetEventPlayerChatString()=="-ok"then
if JM then
call V92()
endif
elseif GetEventPlayerChatString()=="-no"then
if JM then
call V82()
endif
elseif GetEventPlayerChatString()=="-switch"then
if JM==false then
call VD2()
endif
elseif JM==false then
set RM=S2I(SubString(GetEventPlayerChatString(),8,StringLength(GetEventPlayerChatString())))
if RM>0 and RM<6 then
if TII(GetTriggerPlayer())then
if RX0[GetPlayerId(CO[RM])]==false then
call VG2(GetTriggerPlayer(),CO[RM])
else
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848658009))
endif
else
if RX0[GetPlayerId(BO[RM])]==false then
call VG2(GetTriggerPlayer(),BO[RM])
else
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848658009))
endif
endif
endif
endif
endfunction
function Command_NoSwitch takes nothing returns nothing
if B0==false and JL and GetTriggerPlayer()==WO then
set JL=false
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,GetObjectName(1848657752))
endif
endfunction
function VH2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
set t=null
return false
endfunction
function G12 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=K1[GetPlayerId(GetTriggerPlayer())]
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Sleep\\SleepTarget.mdl",P7I,"overhead")))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerAddCondition(t,Condition(function VH2))
call SetUnitAnimation(P7I,"sleep")
set t=null
set P7I=null
endfunction
function G22 takes nothing returns nothing
call SetUnitAnimationByIndex(K1[GetPlayerId(GetTriggerPlayer())],23)
endfunction
function G32 takes nothing returns nothing
if K1[GetPlayerId(GetTriggerPlayer())]!=null then
set PA0[GetPlayerId(GetTriggerPlayer())]=1
call UnitRemoveAbility(K1[GetPlayerId(GetTriggerPlayer())],1093815114)
endif
endfunction
function FP2 takes nothing returns nothing
if PB0[GetPlayerId(GetTriggerPlayer())]==false then
set PB0[GetPlayerId(GetTriggerPlayer())]=true
if GetObjectName(1848657992)=="Language: English"then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"You have activated the -tips system.")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"Please remember that these are just introductory recommendations and are not the only way to play heroes.")
endif
if K1[GetPlayerId(GetTriggerPlayer())]!=null then
call GD1(GetTriggerPlayer(),GetUnitPointValue(K1[GetPlayerId(GetTriggerPlayer())]))
endif
endif
endfunction
function VV2 takes integer VW2,integer VX2 returns integer
if VX2==0 then
return VW2
elseif VX2==1 then
if VW2==1130656372 then
return 1130656372
endif
if VW2==1130656356 then
return 1231317865
endif
if VW2==1131833710 then
return 1232301687
endif
if VW2==1130852979 then
return 1232301687
endif
if VW2==1131181671 then
return 1232301687
endif
if VW2==1517709678 then
return 1231317865
endif
if VW2==1516399475 then
return 1231188849
endif
if VW2==1315205732 then
return 1231188849
endif
elseif VX2==2 then
if VW2==1130656372 then
return 1130656372
endif
if VW2==1130656356 then
return 1499622509
endif
if VW2==1131833710 then
return 1499624556
endif
if VW2==1130852979 then
return 1130852979
endif
if VW2==1131181671 then
return 1131181671
endif
if VW2==1517709678 then
return 1500673132
endif
if VW2==1516399475 then
return 1500999010
endif
if VW2==1315205732 then
return 1247966316
endif
elseif VX2==3 then
if VW2==1130656372 then
return 1130656372
endif
if VW2==1130656356 then
return 1499622509
endif
if VW2==1131833710 then
return 1499624556
endif
if VW2==1130852979 then
return 1500673132
endif
if VW2==1131181671 then
return 1131181671
endif
if VW2==1517709678 then
return 1500673132
endif
if VW2==1516399475 then
return 1499624556
endif
if VW2==1315205732 then
return 1247966316
endif
elseif VX2==4 then
if VW2==1130656372 then
return 1130656372
endif
if VW2==1130656356 then
return 1131570027
endif
if VW2==1131833710 then
return 1098279278
endif
if VW2==1130852979 then
return 1097298532
endif
if VW2==1131181671 then
return 1097627236
endif
if VW2==1517709678 then
return 1097298532
endif
if VW2==1516399475 then
return 1131570027
endif
if VW2==1315205732 then
return 1131833710
endif
elseif VX2==5 then
if VW2==1130656372 then
return 1130656372
endif
if VW2==1130656356 then
return 1365537394
endif
if VW2==1131833710 then
return 1365467760
endif
if VW2==1130852979 then
return 1365734004
endif
if VW2==1131181671 then
return 1365734003
endif
if VW2==1517709678 then
return 1365734004
endif
if VW2==1516399475 then
return 1365467760
endif
if VW2==1315205732 then
return 1366520944
endif
elseif VX2==6 then
if VW2==1130656372 then
return 1130656372
endif
if VW2==1130656356 then
return 1147302507
endif
if VW2==1131833710 then
return 1147630195
endif
if VW2==1130852979 then
return 1331982964
endif
if VW2==1131181671 then
return 1332114292
endif
if VW2==1517709678 then
return 1148347507
endif
if VW2==1516399475 then
return 1148416356
endif
if VW2==1315205732 then
return 1332964706
endif
elseif VX2==7 then
if VW2==1130656372 then
return 1130656372
endif
if VW2==1130656356 then
return 1197634155
endif
if VW2==1131833710 then
return 1198290531
endif
if VW2==1130852979 then
return 1197765236
endif
if VW2==1131181671 then
return 1197763442
endif
if VW2==1517709678 then
return 1198679155
endif
if VW2==1516399475 then
return 1198748004
endif
if VW2==1315205732 then
return 1197961843
endif
endif
return 0
endfunction
function VY2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real VJ2=(LoadReal(LY,(S5I),(149)))
local real VK2=(LoadReal(LY,(S5I),(150)))
local real VL2=(LoadReal(LY,(S5I),(151)))
local real VM2=128
local real x
local real y
local integer KBO=(LoadInteger(LY,(S5I),(152)))
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local integer VN2=(LoadInteger(LY,(S5I),(153)))
loop
exitwhen VJ2>VL2
loop
exitwhen VK2>8192
if GetLocalPlayer()==p then
set VN2=VN2+1
set x=VJ2
set y=VK2
call SetTerrainType(x,y,VV2(SL[VN2],KBO),QL[VN2],1,0)
set x=-VJ2
set y=VK2
call SetTerrainType(x,y,VV2(TL[VN2],KBO),UL[VN2],1,0)
set x=-VJ2
set y=-VK2
call SetTerrainType(x,y,VV2(RL[VN2],KBO),IM[VN2],1,0)
set x=VJ2
set y=-VK2
call SetTerrainType(x,y,VV2(PL[VN2],KBO),AM[VN2],1,0)
endif
set VK2=VK2+VM2
endloop
set VK2=0
set VJ2=VJ2+VM2
endloop
set VL2=VL2+256
call SaveReal(LY,(S5I),(149),((VJ2)*1.0))
call SaveReal(LY,(S5I),(150),((VK2)*1.0))
call SaveInteger(LY,(S5I),(153),(VN2))
call SaveReal(LY,(S5I),(151),((VL2)*1.0))
if VL2>8192 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
return false
endfunction
function VS2 takes nothing returns nothing
if GetTriggerPlayer()==GetLocalPlayer()and(GetDestructableTypeId(GetEnumDestructable())==1096053874 or GetDestructableTypeId(GetEnumDestructable())==1110454322)then
call SetDestructableAnimation(GetEnumDestructable(),"stand alternate")
endif
endfunction
function VT2 takes nothing returns nothing
if GetTriggerPlayer()==GetLocalPlayer()and(GetDestructableTypeId(GetEnumDestructable())==1096053874 or GetDestructableTypeId(GetEnumDestructable())==1110454322)then
call SetDestructableAnimation(GetEnumDestructable(),"stand")
endif
endfunction
function VR2 takes integer KBO returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if KBO==1 then
call EnumDestructablesInRectAll(GetWorldBounds(),function VS2)
else
call EnumDestructablesInRectAll(GetWorldBounds(),function VT2)
endif
set BM[GetPlayerId(GetTriggerPlayer())]=KBO
call TriggerRegisterTimerEvent(t,0.02,true)
call TriggerAddCondition(t,Condition(function VY2))
call SaveInteger(LY,(S5I),(152),(KBO))
call SaveReal(LY,(S5I),(149),((0)*1.0))
call SaveReal(LY,(S5I),(150),((0)*1.0))
call SaveReal(LY,(S5I),(151),((160)*1.0))
call SavePlayerHandle(LY,(S5I),(54),(GetTriggerPlayer()))
set t=null
endfunction
function Command_Terrain takes nothing returns nothing
if LL[GetPlayerId(GetTriggerPlayer())]==false then
set KL[GetPlayerId(GetTriggerPlayer())]=KL[GetPlayerId(GetTriggerPlayer())]+1
if KL[GetPlayerId(GetTriggerPlayer())]<9 then
if GetEventPlayerChatString()=="-terrain"or GetEventPlayerChatString()=="-terrain default"then
call VR2(0)
elseif GetEventPlayerChatString()=="-terrain snow"then
call VR2(1)
elseif GetEventPlayerChatString()=="-terrain city1"then
call VR2(2)
elseif GetEventPlayerChatString()=="-terrain city2"then
call VR2(3)
elseif GetEventPlayerChatString()=="-terrain jungle"then
call VR2(4)
elseif GetEventPlayerChatString()=="-terrain highlands"then
call VR2(5)
elseif GetEventPlayerChatString()=="-terrain reddungeon"then
call VR2(6)
elseif GetEventPlayerChatString()=="-terrain bluedungeon"then
call VR2(7)
endif
else
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName(1848657740))
endif
endif
endfunction
function VP2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real VJ2=(LoadReal(LY,(S5I),(149)))
local real VK2=(LoadReal(LY,(S5I),(150)))
local real VL2=(LoadReal(LY,(S5I),(151)))
local real VM2=128
local real x
local real y
loop
exitwhen VJ2>VL2
loop
exitwhen VK2>8192
set ML=ML+1
set x=VJ2
set y=VK2
if IsPointBlighted(x,y)==false then
set SL[ML]=GetTerrainType(x,y)
set QL[ML]=GetTerrainVariance(x,y)
endif
set x=-VJ2
set y=VK2
if IsPointBlighted(x,y)==false then
set TL[ML]=GetTerrainType(x,y)
set UL[ML]=GetTerrainVariance(x,y)
endif
set x=-VJ2
set y=-VK2
if IsPointBlighted(x,y)==false then
set RL[ML]=GetTerrainType(x,y)
set IM[ML]=GetTerrainVariance(x,y)
endif
set x=VJ2
set y=-VK2
if IsPointBlighted(x,y)==false then
set PL[ML]=GetTerrainType(x,y)
set AM[ML]=GetTerrainVariance(x,y)
endif
set VK2=VK2+VM2
endloop
set VK2=0
set VJ2=VJ2+VM2
endloop
set VL2=VL2+256
call SaveReal(LY,(S5I),(149),((VJ2)*1.0))
call SaveReal(LY,(S5I),(150),((VK2)*1.0))
call SaveReal(LY,(S5I),(151),((VL2)*1.0))
if VL2>8192 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
return false
endfunction
function VU2 takes nothing returns nothing
local trigger t
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,0.25,true)
call TriggerAddCondition(t,Condition(function IU2))
set OL=CreateTimer()
call TimerStart(OL,BL+1,false,null)
call RemoveUnitFromStock(II0,1747989059)
call AddUnitToStock(II0,1747989059,1,2)
call RemoveUnitFromStock(BL0,1747989059)
call AddUnitToStock(BL0,1747989059,1,2)
set t=null
endfunction
function W02 takes string G72 returns boolean
if G72=="-ma"or G72=="-ms"or G72=="-cs"or G72=="-cson"or G72=="-disablehelp"or G72=="-enablehelp"or G72=="-unstuck"or G72=="-recreate"then
return true
elseif G72=="-swaphero"or G72=="-showmsg"or G72=="-hidemsg"or G72=="-showdeny"or G72=="-hidedeny"or G72=="-weather rain"or G72=="-weather snow"or G72=="-weather moonlight"or G72=="-weather wind"or G72=="-weather random"or G72=="-weather off"or G72=="-denyinfo"or G72=="-di"or G72=="-deathon"or G72=="-don"or G72=="-deathoff"or G72=="-doff"or G72=="-roll"or G72=="-hideheronames"or G72=="-hhn"or G72=="-test"or G72=="-mute"or G72=="-wtf"or G72=="-fleshstr"or G72=="-fs"or G72=="-switchon"then
return true
endif
return false
endfunction
function WI2 takes nothing returns boolean
return not B0
endfunction
function W12 takes string WO2 returns nothing
if W2==""then
set W2="|c006699CC"+WO2+"|r"
else
set W2=W2+"/|c006699CC"+WO2+"|r"
endif
endfunction
function W22 takes string W32,integer W42,integer W52 returns string
return SubString(W32,0,W42)+SubString(W32,W52,StringLength(W32))
endfunction
function W62 takes string W32 returns string
local integer FQ1=StringLength(W32)
local string W72
local string A92=""
local integer i=0
loop
exitwhen(i==FQ1)
set W72=StringCase(SubString(W32,i,i+1),false)
if not(W72==StringCase(W72,true))then
set A92=A92+W72
endif
set i=i+1
endloop
return A92
endfunction
function W82 takes string W92,integer KBO returns nothing
local string DC2=W62(W92)
local string array WA2
local string array WB2
local string array GameModeString
local boolean array WC2
local integer WD2
local integer FQ1=StringLength(DC2)
local integer x=0
local integer y=0
local integer z=0
local boolean AP
local boolean AR
local boolean LM
local boolean MM
local boolean TR
local boolean DM
local boolean MR
local boolean SP
local boolean AA
local boolean AI
local boolean AS
local boolean ID
local boolean NP
local boolean SC
local boolean EM
local boolean DU
local boolean SH
local boolean VR
local boolean RV
local boolean RD
local boolean OM
local boolean NT
local boolean NB
local boolean NM
local boolean NS
local boolean SO
local boolean NR
local boolean XL
local boolean SD
local boolean PM
local boolean OI
local boolean MI
local boolean CM
local boolean FR
local boolean MO
local boolean RO
local boolean ER
local boolean CD
local boolean RS
local boolean CP
local boolean ZM
local boolean UB
local boolean TT
set WA2[1]="allpick"
set WB2[1]="ap"
set WA2[2]="allrandom"
set WB2[2]="ar"
set WA2[3]="leaguemode"
set WB2[3]="lm"
set WA2[4]="mirrormatch"
set WB2[4]="mm"
set WA2[5]="teamrandom"
set WB2[5]="tr"
set WA2[6]="deathmatch"
set WB2[6]="dm"
set WA2[7]="moderandom"
set WB2[7]="mr"
set WA2[8]="shuffleplayers"
set WB2[8]="sp"
set WA2[9]="allagility"
set WB2[9]="aa"
set WA2[10]="allintelligence"
set WB2[10]="ai"
set WA2[11]="allstrength"
set WB2[11]="as"
set WA2[12]="itemdrop"
set WB2[12]="id"
set WA2[13]="nopowerups"
set WB2[13]="np"
set WA2[14]="supercreeps"
set WB2[14]="sc"
set WA2[15]="easymode"
set WB2[15]="em"
set WA2[16]="duplicatemode"
set WB2[16]="du"
set WA2[17]="samehero"
set WB2[17]="sh"
set WA2[18]="voterandom"
set WB2[18]="vr"
set WA2[19]="reverse"
set WB2[19]="rv"
set WA2[20]="randomdraft"
set WB2[20]="rd"
set WA2[21]="onlymid"
set WB2[21]="om"
set WA2[22]="extendedleague"
set WB2[22]="xl"
set WA2[23]="nomid"
set WB2[23]="nm"
set WA2[24]="notop"
set WB2[24]="nt"
set WA2[25]="nobot"
set WB2[25]="nb"
set WA2[26]="noswap"
set WB2[26]="ns"
set WA2[27]="norepick"
set WB2[27]="nr"
set WA2[28]="captainsdraft"
set WB2[28]="cd"
set WA2[29]="singledraft"
set WB2[29]="sd"
set WA2[30]="poolingmode"
set WB2[30]="pm"
set WA2[31]="observerinfo"
set WB2[31]="oi"
set WA2[32]="miniheroes"
set WB2[32]="mi"
set WA2[33]="captainsmode"
set WB2[33]="cm"
set WA2[34]="fastrespawn"
set WB2[34]="fr"
set WA2[35]="meleeonly"
set WB2[35]="mo"
set WA2[36]="rangeonly"
set WB2[36]="ro"
set WA2[37]="experimentalrunes"
set WB2[37]="er"
set WA2[38]="randomside"
set WB2[38]="rs"
set WA2[39]="switchon"
set WB2[39]="so"
set WA2[40]="zoommode"
set WB2[40]="zm"
set WA2[41]="capturepoint"
set WB2[41]="cp"
set WA2[42]="unban"
set WB2[42]="ub"
set WA2[43]="tagteam"
set WB2[43]="tt"
set WD2=43
set x=-1
loop
exitwhen x==FQ1-1
set x=x+1
set y=x
loop
exitwhen y==FQ1
set y=y+1
set z=1
loop
exitwhen z>WD2
if WA2[z]==SubString(DC2,x,y)then
set WC2[z]=true
set z=WD2+1
set DC2=W22(DC2,x,y)
set x=-1
set FQ1=StringLength(DC2)
set y=FQ1
else
set z=z+1
endif
endloop
endloop
endloop
set x=-1
loop
exitwhen x==FQ1-1
set x=x+1
set y=x
loop
exitwhen y==FQ1
set y=y+1
set z=1
loop
exitwhen z>WD2
if WB2[z]==SubString(DC2,x,y)then
set WC2[z]=true
set z=WD2+1
set DC2=W22(DC2,x,y)
set x=-1
set FQ1=StringLength(DC2)
set y=FQ1
else
set z=z+1
endif
endloop
endloop
endloop
set AP=WC2[1]
set AR=WC2[2]
set LM=WC2[3]
set MM=WC2[4]
set TR=WC2[5]
set DM=WC2[6]
set MR=WC2[7]
set SP=WC2[8]
set AA=WC2[9]
set AI=WC2[10]
set AS=WC2[11]
set ID=WC2[12]
set NP=WC2[13]
set SC=WC2[14]
set EM=WC2[15]
set DU=WC2[16]
set SH=WC2[17]
set VR=WC2[18]
set RV=WC2[19]
set RD=WC2[20]
set OM=WC2[21]
set XL=WC2[22]
set NM=WC2[23]
set NT=WC2[24]
set NB=WC2[25]
set NS=WC2[26]
set NR=WC2[27]
set CD=WC2[28]
set SD=WC2[29]
set PM=WC2[30]
set OI=WC2[31]
set MI=WC2[32]
set CM=WC2[33]
set FR=WC2[34]
set MO=WC2[35]
set RO=WC2[36]
set ER=WC2[37]
set RS=WC2[38]
set SO=WC2[39]
set ZM=WC2[40]
set CP=WC2[41]
set UB=WC2[42]
set TT=WC2[43]
if DC2!=""or W02(W92)then
return
endif
if(AR and(CM or AP or TR or LM or MR or RV or RD or CD or SD or TT))or(AP and(TR or MR))or(TR and(LM or MR))or(LM and MR)or(MM and SH)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if(AA and(AI or AS or DM))or(AS and(AI or DM))or(AI and DM)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if(RO and(MO or DM))or(MO and DM)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if RV and(CM or AR or TR or MR or LM or DM or SH or TT)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if(DM and(CM or TR or LM or MR or SH or RV or RD or CD or SD or TT))or(MM and DM)or(SH and DM)then
call PZI(WO,GetObjectName(1848652372))
return
endif
if LM and(TT or CM or AP or RD or CD or AR or SD or MM or TR or DM or MR or AA or AI or AS or ID or NP or SC or EM or DU or SH or RV or OM or NB or NM or NT or XL or MO or RO)then
call PZI(WO,GetObjectName(1848652593))
return
endif
if XL and(TT or CM or AP or RD or CD or AR or SD or MM or TR or DM or MR or AA or AI or AS or ID or NP or SC or EM or DU or SH or RV or OM or NB or NM or NT or LM or RO or MO)then
call PZI(WO,GetObjectName(1848652594))
return
endif
if CM and(TT or SP or XL or AP or RD or CD or AR or SD or MM or TR or DM or MR or AA or AI or AS or ID or NP or SC or EM or DU or SH or RV or OM or NB or NM or NT or LM or MO or RO)then
call PZI(WO,GetObjectName(1848652594))
return
endif
if RD and(TT or CD or CM or AP or LM or AR or SD or MM or TR or DM or MR or AA or AI or AS or SH or RV or RO or MO)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if CD and(TT or RD or CM or AP or LM or AR or SD or MM or TR or DM or MR or AA or AI or AS or SH or RV or RO or MO)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if MR and(TT or CM or AP or LM or AR or SD or MM or TR or DM or AA or AI or AS or SH or RV or RO or MO)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if SD and(TT or CM or AP or LM or AR or RD or CD or MM or TR or DM or MR or AA or AI or AS or SH or RV or RO or MO)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if VR and(TT or CM or LM or RD or CD or SD or AR or MM or TR or DM or MR or AA or AI or AS or SH or RV or RO or MO)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if TT and(SO or VR or CM or LM or RD or CD or SD or AR or MM or TR or DM or MR or AA or AI or AS or SH or RV or RO or MO)then
call PZI(WO,GetObjectName(1848652373))
return
endif
if MM and T8I(OO)!=T8I(AO)then
call PZI(WO,GetObjectName(1848652596))
return
endif
if VR and T8I(OO)!=T8I(AO)then
call PZI(WO,GetObjectName(1848652596))
return
endif
if RV and T8I(OO)!=T8I(AO)then
call PZI(WO,GetObjectName(1848652596))
return
endif
if LM and not(T3I(BO[1])and T3I(BO[2])and T3I(BO[3])and T3I(BO[4])and T3I(BO[5])and T3I(CO[1])and T3I(CO[2])and T3I(CO[3])and T3I(CO[4])and T3I(CO[5]))then
endif
if XL and not(T3I(BO[1])and T3I(BO[2])and T3I(BO[3])and T3I(BO[4])and T3I(BO[5])and T3I(CO[1])and T3I(CO[2])and T3I(CO[3])and T3I(CO[4])and T3I(CO[5]))then
endif
if TT or ZM or CP or FR or CM or AP or AR or LM or MM or TR or DM or MR or SP or AA or AI or AS or ID or NP or SC or DU or EM or SH or VR or RV or RD or CD or OM or NB or NM or NT or NS or NR or XL or SD or PM or OI or MI or MO or RO or ER or RS or SO then
call DisableTrigger(PF0)
else
return
endif
if CM==false then
call P7O()
call UHO()
endif
if LM==false and XL==false then
call HJ2()
endif
set EL=W62(W92)
if PE0 then
call FL1("Mode"+EL,0)
else
call FL1("Mode"+EL,GetPlayerId(WO))
endif
set J2=false
if LM then
set D3=GetObjectName(1848658010)
elseif XL then
set D3=GetObjectName(1848658232)
elseif RD then
set D3=GetObjectName(1848658254)
elseif CD then
set D3=GetObjectName(1848658233)
elseif MM then
set D3=GetObjectName(1848658248)
elseif DM then
set D3=GetObjectName(1848658249)
elseif RV then
set D3=GetObjectName(1848658243)
elseif AP then
set D3=GetObjectName(1848658244)
elseif AR then
set D3=GetObjectName(1848658231)
elseif TR then
set D3=GetObjectName(1848658230)
elseif MR then
set D3=GetObjectName(1848658250)
elseif VR then
set D3=GetObjectName(1848658229)
elseif SD then
set D3=GetObjectName(1848658228)
elseif CM then
set D3=GetObjectName(1848658247)
elseif TT then
set D3=GetObjectName(1848659280)
endif
if CM then
call W12(GetObjectName(1848658251))
endif
if TT then
call W12(GetObjectName(1848659281))
endif
if LM then
call W12(GetObjectName(1848658227))
endif
if XL then
call W12(GetObjectName(1848658226))
endif
if RD then
call W12(GetObjectName(1848658246))
endif
if CD then
call W12(GetObjectName(1848658225))
endif
if DM then
call W12(GetObjectName(1848658241))
endif
if MM then
call W12(GetObjectName(1848658224))
endif
if AP then
call W12(GetObjectName(1848658252))
endif
if AR then
call W12(GetObjectName(1848658257))
endif
if VR then
call W12(GetObjectName(1848658253))
endif
if MR then
call W12(GetObjectName(1848658245))
endif
if TR then
call W12(GetObjectName(1848658242))
endif
if SP then
call W12(GetObjectName(1848658255))
endif
if AA then
call W12(GetObjectName(1848658261))
endif
if AS then
call W12(GetObjectName(1848658256))
endif
if AI then
call W12(GetObjectName(1848658259))
endif
if RO then
call W12(GetObjectName(1848658260))
endif
if MO then
call W12(GetObjectName(1848652594))
endif
if DU then
call W12(GetObjectName(1848658264))
endif
if ID then
call W12(GetObjectName(1848658266))
endif
if NP then
call W12(GetObjectName(1848658486))
endif
if SC then
call W12(GetObjectName(1848658487))
endif
if EM then
call W12(GetObjectName(1848658489))
endif
if SH then
call W12(GetObjectName(1848658497))
endif
if RV then
call W12(GetObjectName(1848658263))
endif
if OM then
call W12(GetObjectName(1848658262))
endif
if NM then
call W12(GetObjectName(1848658258))
endif
if NB then
call W12(GetObjectName(1848658498))
endif
if NT then
call W12(GetObjectName(1848658488))
endif
if NS then
call W12(GetObjectName(1848658499))
endif
if NR then
call W12(GetObjectName(1848658502))
endif
if SD then
call W12(GetObjectName(1848658480))
endif
if PM then
call W12(GetObjectName(1848658265))
endif
if OI then
call W12(GetObjectName(1848658485))
endif
if MI then
call W12(GetObjectName(1848658484))
endif
if FR then
call W12(GetObjectName(1848658500))
endif
if ER then
call W12(GetObjectName(1848658501))
endif
if RS then
call W12(GetObjectName(1848658481))
endif
if SO then
call W12(GetObjectName(1848658482))
endif
if ZM then
call W12(GetObjectName(1848658753))
endif
if CP then
call W12(GetObjectName(1848658755))
endif
if UB then
call W12(GetObjectName(1848658994))
endif
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
if KBO==1 then
call QRI(bj_FORCE_ALL_PLAYERS,20.00,C0[GetPlayerId(WO)]+(D80[GetPlayerId((WO))])+"|r"+" "+GetObjectName(1848653361)+" "+W2)
else
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848657998)+" "+W2)
endif
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848653363)+" -gameinfo.")
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
call PMI("WE2",SP)
call PMI("WF2",RS)
call PMI("WG2",UB)
call PMI("WH2",DM)
call PMI("WZ2",MM)
call PMI("WV2",SH)
call PMI("WW2",AA)
call PMI("WX2",AI)
call PMI("WY2",AS)
call PMI("WJ2",RO)
call PMI("WK2",MO)
call PMI("WL2",DU)
call PMI("WM2",AR)
call PMI("WN2",VR)
call PMI("WS2",AP)
call PMI("WT2",TR)
call PMI("WR2",RV)
call PMI("WP2",LM)
call PMI("WQ2",XL)
call PMI("WU2",CM)
call PMI("X02",RD)
call PMI("XI2",SD)
call PMI("X12",MR)
call PMI("XO2",ID)
call PMI("X22",NP)
call PMI("X32",SC)
call PMI("X42",EM)
call PMI("X52",OM)
call PMI("X62",NB)
call PMI("X72",NT)
call PMI("X82",NM)
call PMI("X92",SO)
call PMI("XA2",NS)
call PMI("XB2",NR)
call PMI("XC2",PM)
call PMI("XD2",OI)
call PMI("XE2",MI)
call PMI("XF2",FR)
call PMI("XG2",ER)
call PMI("XH2",CD)
call PMI("XZ2",ZM)
call PMI("XV2",CP)
call PMI("XW2",TT)
set AL=true
call BW1(0,0,false)
if CN==false and BN==false then
call VU2()
endif
call UR1()
if SO==false then
set RX0[0]=true
set RX0[1]=true
set RX0[2]=true
set RX0[3]=true
set RX0[4]=true
set RX0[5]=true
set RX0[6]=true
set RX0[7]=true
set RX0[8]=true
set RX0[9]=true
set RX0[10]=true
set RX0[11]=true
set RX0[12]=true
set RX0[13]=true
set RX0[14]=true
set RX0[15]=true
set RX0[16]=true
endif
endfunction
function XX2 takes nothing returns nothing
call W82(GetEventPlayerChatString(),1)
endfunction
function XY2 takes nothing returns boolean
if(MY)!=""and AL==false then
set PE0=true
call W82("-"+(MY),2)
else
call TriggerRegisterPlayerChatEvent(PF0,WO,"-",false)
endif
return false
endfunction
function WS2 takes nothing returns nothing
local location ZC1=GetRectCenter(N4)
local location ZD1=GetRectCenter(S4)
local integer x=1
set K0=true
set BL=150
loop
exitwhen x>5
if T3I(BO[x])then
call CreateUnitAtLoc(BO[x],1848651843,ZD1,bj_UNIT_FACING)
endif
if T3I(CO[x])then
call CreateUnitAtLoc(CO[x],1848651843,ZC1,bj_UNIT_FACING)
endif
set x=x+1
endloop
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set ZC1=null
set ZD1=null
endfunction
function XL2 takes nothing returns integer
if PJ0==BO[1]then
return 1
endif
return 2
endfunction
function XM2 takes string S,real XN2,real XS2,real XT2,real XR2,real XP2,boolean XQ2,integer r,integer g,integer b returns image
set MK=CreateImage(S,XN2,XS2,0,XT2-(XN2/2),XR2-(XS2/2),XP2,0,0,0,2)
call SetImageRenderAlways(MK,true)
call ShowImage(MK,XQ2)
call SetImageColor(MK,r,g,b,255)
return MK
endfunction
function XU2 takes image i returns nothing
call ShowImage(i,false)
call DestroyImage(i)
endfunction
function Y02 takes integer YI2 returns nothing
local real x=QV0+40
local real y=QW0-50
local integer Y12=255
local integer YO2=0
local integer Y22=0
local integer Y32=0
local integer Y42=0
local integer Y52=255
local integer r
local integer g
local integer b
if YI2==1 then
set r=Y12
set g=YO2
set b=Y22
set Q30=XM2("Fonts\\B.blp",90,90,x-40,y,0,true,r,g,b)
set Q40=XM2("Fonts\\A.blp",90,90,x,y,0,true,r,g,b)
set Q50=XM2("Fonts\\N.blp",90,90,x+50,y,0,true,r,g,b)
elseif YI2==2 then
set r=Y32
set g=Y42
set b=Y52
call XU2(Q30)
call XU2(Q40)
call XU2(Q50)
set Q30=XM2("Fonts\\P.blp",90,90,x-60,y,0,true,r,g,b)
set Q40=XM2("Fonts\\I.blp",90,90,x-20,y,0,true,r,g,b)
set Q50=XM2("Fonts\\C.blp",90,90,x,y,0,true,r,g,b)
set Q60=XM2("Fonts\\K.blp",90,90,x+45,y,0,true,r,g,b)
elseif YI2==3 then
set r=Y12
set g=YO2
set b=Y22
call XU2(Q30)
call XU2(Q40)
call XU2(Q50)
call XU2(Q60)
set Q30=XM2("Fonts\\B.blp",90,90,x-40,y,0,true,r,g,b)
set Q40=XM2("Fonts\\A.blp",90,90,x,y,0,true,r,g,b)
set Q50=XM2("Fonts\\N.blp",90,90,x+50,y,0,true,r,g,b)
elseif YI2==4 then
set r=Y32
set g=Y42
set b=Y52
call XU2(Q30)
call XU2(Q40)
call XU2(Q50)
set Q30=XM2("Fonts\\P.blp",90,90,x-60,y,0,true,r,g,b)
set Q40=XM2("Fonts\\I.blp",90,90,x-20,y,0,true,r,g,b)
set Q50=XM2("Fonts\\C.blp",90,90,x,y,0,true,r,g,b)
set Q60=XM2("Fonts\\K.blp",90,90,x+45,y,0,true,r,g,b)
elseif YI2==5 then
set r=Y12
set g=YO2
set b=Y22
call XU2(Q30)
call XU2(Q40)
call XU2(Q50)
call XU2(Q60)
set Q30=XM2("Fonts\\B.blp",90,90,x-40,y,0,true,r,g,b)
set Q40=XM2("Fonts\\A.blp",90,90,x,y,0,true,r,g,b)
set Q50=XM2("Fonts\\N.blp",90,90,x+50,y,0,true,r,g,b)
elseif YI2==6 then
set r=Y32
set g=Y42
set b=Y52
call XU2(Q30)
call XU2(Q40)
call XU2(Q50)
set Q30=XM2("Fonts\\P.blp",90,90,x-60,y,0,true,r,g,b)
set Q40=XM2("Fonts\\I.blp",90,90,x-20,y,0,true,r,g,b)
set Q50=XM2("Fonts\\C.blp",90,90,x,y,0,true,r,g,b)
set Q60=XM2("Fonts\\K.blp",90,90,x+45,y,0,true,r,g,b)
elseif YI2==7 then
call XU2(Q30)
call XU2(Q40)
call XU2(Q50)
call XU2(Q60)
endif
endfunction
function Y62 takes integer i,integer Y72 returns string
if i<0 then
set i=0
endif
if TimerGetElapsed(M)<15 then
return "|c00555555"+I2S(i)
endif
if PL0==3 then
return "|c00555555"+I2S(i)
endif
if PL0==1 and Y72!=XL2()then
return "|c00555555"+I2S(i)
elseif PL0==2 and Y72!=XL2()then
return "|c00555555"+I2S(i)
elseif i==0 then
return "|c00555555"+I2S(i)
elseif i<6 then
return "|c00ff0303"+I2S(i)
else
return I2S(i)
endif
endfunction
function Y82 takes nothing returns boolean
local multiboarditem N8I
local integer i
local integer QPO
local integer QQO
local integer DJ1=7
local integer Y92=0
set QPO=1
set QQO=Y92
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemWidth(N8I,0.5)
call MultiboardSetItemValue(N8I,C0[GetPlayerId(BO[1])]+(D80[GetPlayerId((BO[1]))])+"|r")
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=Y92
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657238))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set i=0
set QPO=QPO
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PR0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PR0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=1
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PR0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PR0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=2
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PR0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PR0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=3
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PR0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PR0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=4
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PR0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PR0[i]])
endif
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=Y92
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657240))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set i=0
set QPO=QPO
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if Q00[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[Q00[i]])
endif
call MultiboardReleaseItem(N8I)
set i=1
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if Q00[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[Q00[i]])
endif
call MultiboardReleaseItem(N8I)
set i=2
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if Q00[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[Q00[i]])
endif
call MultiboardReleaseItem(N8I)
set i=3
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if Q00[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[Q00[i]])
endif
call MultiboardReleaseItem(N8I)
set i=4
set QQO=Y92+i+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if Q00[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[Q00[i]])
endif
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=Y92
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657237))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QQO=Y92+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
if PJ0==BO[1]then
call MultiboardSetItemValue(N8I,Y62(PY0,1))
else
call MultiboardSetItemValue(N8I," ")
endif
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QPO=QPO+1
set QQO=Y92
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657236))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QQO=Y92+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Y62(PX0[1],1))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=Y92
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657241))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QQO=Y92+1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
if TimerGetElapsed(M)<15 then
call MultiboardSetItemValue(N8I,"|c00555555"+GetObjectName(1848657457))
elseif PL0==1 then
call MultiboardSetItemValue(N8I,GetObjectName(1848657460))
elseif PL0==2 then
call MultiboardSetItemValue(N8I,"|c00555555"+GetObjectName(1848657457))
else
call MultiboardSetItemValue(N8I,"|c00555555"+GetObjectName(1848657458))
endif
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QPO=1
set QQO=DJ1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemWidth(N8I,1.5)
call MultiboardSetItemValue(N8I,"   "+C0[GetPlayerId(CO[1])]+(D80[GetPlayerId((CO[1]))])+"|r")
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=DJ1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+" "+GetObjectName(1848657238))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set i=0
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PP0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PP0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=1
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PP0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PP0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=2
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PP0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PP0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=3
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PP0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PP0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=4
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if PP0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[PP0[i]])
endif
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=DJ1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+" "+GetObjectName(1848657240))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set i=0
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if QI0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[QI0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=1
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if QI0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[QI0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=2
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if QI0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[QI0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=3
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if QI0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[QI0[i]])
endif
call MultiboardReleaseItem(N8I)
set i=4
set QQO=DJ1+i+1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemWidth(N8I,0.015)
if QI0[i]>0 then
call MultiboardSetItemStyle(N8I,false,true)
call MultiboardSetItemIcon(N8I,DS0[QI0[i]])
endif
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=DJ1-2
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657237))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QQO=DJ1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
if PJ0==CO[1]then
call MultiboardSetItemValue(N8I,Y62(PY0,2))
else
call MultiboardSetItemValue(N8I," ")
endif
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QPO=QPO+1
set QQO=DJ1-2
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657236))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QQO=DJ1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,Y62(PX0[2],2))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QPO=QPO+2
set QQO=DJ1-2
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
call MultiboardSetItemValue(N8I,"|c006699CC"+GetObjectName(1848657241))
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
set QQO=DJ1-1
set N8I=MultiboardGetItem(Q20,QPO,QQO)
call MultiboardSetItemStyle(N8I,true,false)
if TimerGetElapsed(M)<15 then
call MultiboardSetItemValue(N8I,"|c00555555"+GetObjectName(1848657457))
elseif PL0==2 then
call MultiboardSetItemValue(N8I,GetObjectName(1848657460))
elseif PL0==1 then
call MultiboardSetItemValue(N8I,"|c00555555"+GetObjectName(1848657457))
else
call MultiboardSetItemValue(N8I,"|c00555555"+GetObjectName(1848657458))
endif
call MultiboardSetItemWidth(N8I,0.035)
call MultiboardReleaseItem(N8I)
return false
endfunction
function YA2 takes nothing returns nothing
local integer QUO=12
local integer U0O=14
local trigger t=CreateTrigger()
local integer i
local multiboarditem N8I
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function Y82))
set Q20=CreateMultiboard()
call MultiboardSetItemsWidth(Q20,0.015)
call MultiboardSetRowCount(Q20,QUO)
call MultiboardSetColumnCount(Q20,U0O)
call MultiboardSetTitleText(Q20,GetObjectName(1848658742))
call MultiboardSetItemsStyle(Q20,false,false)
call MultiboardMinimize(Q20,false)
call MultiboardDisplay(Q20,true)
set i=0
loop
exitwhen i>U0O
set N8I=MultiboardGetItem(Q20,0,i)
call MultiboardSetItemWidth(N8I,0.015)
call MultiboardReleaseItem(N8I)
set i=i+1
endloop
set t=null
set N8I=null
endfunction
function YB2 takes nothing returns boolean
local unit YC2=GetSoldUnit()
local player p=GetOwningPlayer(YC2)
local integer i
local real x
local real y
local real a
if GetUnitTypeId(YC2)==1747990094 and IsPlayerAlly(GetOwningPlayer(YC2),GetOwningPlayer(GetSellingUnit()))then
if K1[GetPlayerId(p)]!=null then
call PZI(p,GetObjectName(1848657459))
call KillUnit(YC2)
set YC2=null
set p=null
return false
endif
set x=GetUnitX(GetSellingUnit())
set y=GetUnitY(GetSellingUnit())
set i=RPI(GetUnitTypeId(GetSellingUnit()))
set a=GetUnitFacing(GetSellingUnit())
call RemoveUnit(GetSellingUnit())
call CreateUnit(p,i,x,y,a)
endif
if GetUnitTypeId(YC2)==1747990094 then
call KillUnit(YC2)
endif
if K1[GetPlayerId(BO[1])]!=null and K1[GetPlayerId(BO[2])]!=null and K1[GetPlayerId(BO[3])]!=null and K1[GetPlayerId(BO[4])]!=null and K1[GetPlayerId(BO[5])]!=null and K1[GetPlayerId(CO[1])]!=null and K1[GetPlayerId(CO[2])]!=null and K1[GetPlayerId(CO[3])]!=null and K1[GetPlayerId(CO[4])]!=null and K1[GetPlayerId(CO[5])]!=null then
call S0I(GetTriggeringTrigger())
endif
set YC2=null
set p=null
return false
endfunction
function YD2 takes nothing returns boolean
set PW0=true
call S0I(GetTriggeringTrigger())
call DestroyMultiboard(Q20)
call P7O()
call UHO()
call UR1()
return false
endfunction
function ModeCM_SpawnSound takes nothing returns boolean
call S0I(GetTriggeringTrigger())
call PlaySoundBJ(OE)
return false
endfunction
function YE2 takes nothing returns boolean
local trigger t=CreateTrigger()
local integer BY1
local integer BX1
local string GW1
local unit u
local real x
local real y
local integer i
local real d
local real YF2=GetRectCenterX(O4)
local real YG2=GetRectCenterY(O4)
local real YH2=GetRectCenterX(S3)
local real YZ2=GetRectCenterY(S3)
set PL0=3
set TP0=true
call S0I(GetTriggeringTrigger())
set i=0
loop
exitwhen i==5
set x=YF2-300+i*150
set y=YG2
set u=CreateUnit(BO[0],DT0[Q00[i]],x,y,270)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_SELL)
call PanCameraToTimedForPlayer(BO[i+1],YF2,YG2,0)
call CreateUnit(BO[i+1],1848651843,YF2,YG2,bj_UNIT_FACING)
call SetPlayerState(BO[i+1],PLAYER_STATE_RESOURCE_GOLD,PH0[GetPlayerId(BO[i+1])]-250)
set i=i+1
endloop
set i=0
loop
exitwhen i==5
set x=YH2-300+i*150
set y=YZ2
set u=CreateUnit(CO[0],DT0[QI0[i]],x,y,270)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_SELL)
call PanCameraToTimedForPlayer(CO[i+1],YH2,YZ2,0)
call CreateUnit(CO[i+1],1848651843,YH2,YZ2,bj_UNIT_FACING)
call SetPlayerState(CO[i+1],PLAYER_STATE_RESOURCE_GOLD,PH0[GetPlayerId(CO[i+1])]-250)
set i=i+1
endloop
call TriggerAddCondition(t,Condition(function YB2))
call SuspendTimeOfDay(false)
call EnableTrigger(EV0)
call EnableTrigger(DN)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,10,false)
call TriggerAddCondition(t,Condition(function YD2))
set BL=90
call VU2()
call TZI()
set t=null
set u=null
return false
endfunction
function YV2 takes integer YW2,integer i returns nothing
call TCI(DC0[i])
if YW2==1 then
set Q00[Q10]=i
set Q10=Q10+1
else
set QI0[QO0]=i
set QO0=QO0+1
endif
endfunction
function YX2 takes integer YW2 returns nothing
local integer i=TYI()
loop
if R[i]==false then
set R[i]=true
call YV2(YW2,i)
return
endif
endloop
endfunction
function YY2 takes integer YW2,integer i returns nothing
call FL1("Ban"+I2S(GetPlayerId(GetOwningPlayer(GetSoldUnit()))),DC0[i])
call TCI(DC0[i])
if YW2==1 then
set PR0[PQ0]=i
set PQ0=PQ0+1
else
set PP0[PU0]=i
set PU0=PU0+1
endif
endfunction
function YJ2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,false)
call TriggerAddCondition(t,Condition(function YE2))
call Y02(7)
call MultiboardSetTitleText(Q20,GetObjectName(1848658742))
call SetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD,0)
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YM2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YJ2))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YN2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call Y02(6)
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YM2))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
call MultiboardSetTitleText(Q20,GetObjectName(1848658742)+" - |c00ffffff"+GetObjectName(1848659289))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName(1848659290)+"|r")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YS2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YN2))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YT2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call Y02(5)
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YS2))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
call MultiboardSetTitleText(Q20,GetObjectName(1848658742)+" - |c00ffffff"+GetObjectName(1848659504))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName(1848659505)+"|r")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YR2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YT2))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YP2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YR2))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YQ2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YP2))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function YU2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call Y02(4)
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YQ2))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
call MultiboardSetTitleText(Q20,GetObjectName(1848658742)+" - |c00ffffff"+GetObjectName(1848659000))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName(1848658995)+"|r")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J02 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function YU2))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function JI2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J02))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J12 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function JI2))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function JO2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call Y02(3)
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J12))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
call MultiboardSetTitleText(Q20,GetObjectName(1848658742)+" - |c00ffffff"+GetObjectName(1848658999))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName(1848658996)+"|r")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J22 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function JO2))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J32 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J22))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J42 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>40 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YV2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YX2(YW2)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J32))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>40 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J52 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call Y02(2)
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J42))
set PY0=40
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
call MultiboardSetTitleText(Q20,GetObjectName(1848658742)+" - |c00ffffff"+GetObjectName(1848659001))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName(1848658997)+"|r")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J62 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J52))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J72 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PN0
local player YL2=PM0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J62))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J82 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer YW2=PL0
local player YK2=PM0
local player YL2=PN0
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(t)>30 and PX0[YW2]==0)then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
call YY2(YW2,GetUnitPointValue(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
else
call YY2((YW2),-1)
endif
call S0I(t)
set t=CreateTrigger()
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J72))
set PY0=30
set PJ0=YL2
set PL0=XL2()
call SetPlayerState(YL2,PLAYER_STATE_RESOURCE_GOLD,250)
call SetPlayerState(YK2,PLAYER_STATE_RESOURCE_GOLD,0)
call PEI(YL2,"Sound\\Interface\\Rescue.wav")
else
if GetTriggerEvalCount(t)>30 then
if PX0[YW2]>0 then
set PX0[YW2]=PX0[YW2]-1
endif
else
set PY0=PY0-1
endif
endif
set t=null
set YL2=null
return false
endfunction
function J92 takes nothing returns boolean
local trigger t=CreateTrigger()
set PV0=true
call S0I(GetTriggeringTrigger())
if PZ0==false then
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(PM0)]+(D80[GetPlayerId((PM0))])+"|r "+GetObjectName(1848657217))
endif
set PJ0=PM0
set PY0=30
call SetPlayerState(PM0,PLAYER_STATE_RESOURCE_GOLD,250)
call PEI(PM0,"Sound\\Interface\\Rescue.wav")
call Y02(1)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName(1848658998)+"|r")
call MultiboardSetTitleText(Q20,GetObjectName(1848658742)+" - |c00ffffff"+GetObjectName(1848659009))
call UMI(t,EVENT_PLAYER_UNIT_SELL)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function J82))
set t=null
return false
endfunction
function WU2 takes nothing returns nothing
local trigger t
local location ZC1=GetRectCenter(N4)
local location ZD1=GetRectCenter(S4)
local integer x=1
local player p
loop
exitwhen x>5
if T3I(BO[x])then
call CreateUnitAtLoc(BO[x],1848651843,ZD1,bj_UNIT_FACING)
endif
if T3I(CO[x])then
call CreateUnitAtLoc(CO[x],1848651843,ZC1,bj_UNIT_FACING)
endif
set x=x+1
endloop
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set CN=true
set A3=false
set O3=false
set TP0=false
set RU0=false
call SuspendTimeOfDay(true)
call DisableTrigger(EV0)
call DisableTrigger(DN)
if O5I==false then
call OZ2()
endif
set PH0[GetPlayerId(BO[1])]=GetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(BO[2])]=GetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(BO[3])]=GetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(BO[4])]=GetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(BO[5])]=GetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(CO[1])]=GetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(CO[2])]=GetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(CO[3])]=GetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(CO[4])]=GetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD)
set PH0[GetPlayerId(CO[5])]=GetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD)
call SetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD,0)
set PK0=GetRandomInt(1,2)
set PZ0=false
set PL0=PK0
if PK0==1 then
set PM0=BO[1]
set PN0=CO[1]
else
set PM0=CO[1]
set PN0=BO[1]
endif
set PS0=1
set PT0=2
set PX0[1]=110
set PX0[2]=110
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,15-TimerGetElapsed(M),false)
call TriggerAddCondition(t,Condition(function J92))
call YA2()
call QRI(bj_FORCE_ALL_PLAYERS,4.00,GetObjectName(1848657235))
call QRI(bj_FORCE_ALL_PLAYERS,4.00,GetObjectName(1848657234))
set t=null
set ZC1=null
set ZD1=null
set p=null
endfunction
function JA2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
set EN=true
call S0I(t)
call DestroyFogModifier(CreateFogModifierRadius(BO[0],FOG_OF_WAR_MASKED,QQ0,QU0,700,false,false))
call DestroyFogModifier(CreateFogModifierRadius(CO[0],FOG_OF_WAR_MASKED,QQ0,QU0,700,false,false))
set t=null
return false
endfunction
function JB2 takes nothing returns nothing
local integer i=0
loop
exitwhen i>UO0
call RemoveUnit(U10[i])
set i=i+1
endloop
endfunction
function JC2 takes real x,real y returns nothing
set U10[UO0]=CreateUnit(Player(0),1747990089,x,y,0)
set UO0=UO0+1
endfunction
function JD2 takes string S,real XN2,real XS2,real XT2,real XR2,real XP2,boolean XQ2 returns nothing
set MK=CreateImage(S,XN2,XS2,0,XT2-(XN2/2),XR2-(XS2/2),XP2,0,0,0,2)
call SetImageRenderAlways(MK,true)
call ShowImage(MK,XQ2)
endfunction
function JE2 takes integer JF2,integer r,integer g,integer b,integer a,real x,real y,integer S5I returns nothing
if StringLength(I2S(JF2))>1 then
call JD2("Fonts\\"+SubString(I2S(JF2),0,1)+".blp",90,90,x-20,y,0,true)
call SetImageColor(MK,r,g,b,a)
call SaveImageHandle(LY,(S5I),(158),(MK))
call JD2("Fonts\\"+SubString(I2S(JF2),1,2)+".blp",90,90,x+20,y,0,true)
call SetImageColor(MK,r,g,b,a)
call SaveImageHandle(LY,(S5I),(159),(MK))
else
call JD2("Fonts\\0.blp",90,90,x-20,y,0,true)
call SetImageColor(MK,r,g,b,a)
call SaveImageHandle(LY,(S5I),(158),(MK))
call JD2("Fonts\\"+SubString(I2S(JF2),0,1)+".blp",90,90,x+20,y,0,true)
call SetImageColor(MK,r,g,b,a)
call SaveImageHandle(LY,(S5I),(159),(MK))
endif
endfunction
function JG2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer DC1=(LoadInteger(LY,(S5I),(57)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer NPI=GetTriggerEvalCount(t)
local integer JH2=DC1-NPI
local image JZ2=(LoadImageHandle(LY,(S5I),(158)))
local image JV2=(LoadImageHandle(LY,(S5I),(159)))
local integer r
local integer g
local integer b
local integer a
if NPI>0 then
call ShowImage(JZ2,false)
call DestroyImage(JZ2)
call ShowImage(JV2,false)
call DestroyImage(JV2)
endif
if NPI==DC1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if JH2<6 then
set r=255
set g=0
set b=0
elseif GetLocalPlayer()==QM0 or GetLocalPlayer()==QN0 then
set r=D90[GetPlayerId(GetLocalPlayer())]
set g=DA0[GetPlayerId(GetLocalPlayer())]
set b=DB0[GetPlayerId(GetLocalPlayer())]
else
set r=255
set g=255
set b=255
endif
if IsPlayerAlly(QM0,GetLocalPlayer())then
set a=255
else
set a=125
endif
call JE2(JH2,r,g,b,a,x,y,S5I)
endif
set t=null
set JZ2=null
set JV2=null
return false
endfunction
function JW2 takes integer DC1,real x,real y returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function JG2))
call SaveInteger(LY,(S5I),(57),(DC1))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call TriggerEvaluate(t)
set t=null
endfunction
function JX2 takes integer a,real x,real y,integer S5I returns nothing
call JD2("Fonts\\Y.blp",90,90,x-150,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(158),(MK))
call JD2("Fonts\\O.blp",90,90,x-110,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(159),(MK))
call JD2("Fonts\\U.blp",90,90,x-70,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(160),(MK))
call JD2("Fonts\\R.blp",90,90,x-30,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(161),(MK))
call JD2("Fonts\\T.blp",90,90,x+30,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(162),(MK))
call JD2("Fonts\\U.blp",90,90,x+70,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(163),(MK))
call JD2("Fonts\\R.blp",90,90,x+110,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(164),(MK))
call JD2("Fonts\\N.blp",90,90,x+150,y,0,true)
call SetImageColor(MK,255,0,0,a)
call SaveImageHandle(LY,(S5I),(165),(MK))
endfunction
function JY2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local real x
local real y
local integer NPI=GetTriggerEvalCount(t)
local image JZ2=(LoadImageHandle(LY,(S5I),(158)))
local image JV2=(LoadImageHandle(LY,(S5I),(159)))
local image JJ2=(LoadImageHandle(LY,(S5I),(160)))
local image JK2=(LoadImageHandle(LY,(S5I),(161)))
local image JL2=(LoadImageHandle(LY,(S5I),(162)))
local image JM2=(LoadImageHandle(LY,(S5I),(163)))
local image JN2=(LoadImageHandle(LY,(S5I),(164)))
local image JS2=(LoadImageHandle(LY,(S5I),(165)))
local integer r
local integer g
local integer b
local integer a
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
if TII(p)then
set x=QQ0
set y=QU0+250
else
set x=U00
set y=UI0+250
endif
if NPI>0 then
call ShowImage(JZ2,false)
call DestroyImage(JZ2)
call ShowImage(JV2,false)
call DestroyImage(JV2)
call ShowImage(JJ2,false)
call DestroyImage(JJ2)
call ShowImage(JK2,false)
call DestroyImage(JK2)
call ShowImage(JL2,false)
call DestroyImage(JL2)
call ShowImage(JM2,false)
call DestroyImage(JM2)
call ShowImage(JN2,false)
call DestroyImage(JN2)
call ShowImage(JS2,false)
call DestroyImage(JS2)
endif
if NPI==20 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if GetLocalPlayer()==QM0 or GetLocalPlayer()==QN0 then
set a=255
else
set a=0
endif
call JX2(a,x,y,S5I)
endif
set t=null
set JZ2=null
set JV2=null
set JJ2=null
set JK2=null
set JL2=null
set JM2=null
set JN2=null
set JS2=null
set p=null
return false
endfunction
function JT2 takes player p returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function JY2))
call SavePlayerHandle(LY,(S5I),(54),(p))
call TriggerEvaluate(t)
set t=null
endfunction
function JR2 takes player p,integer MLI,boolean randomed returns nothing
local integer i=T0I(p)
local real d
if T3I(p)==false then
return
endif
if TII(p)then
call SetUnitPosition(QA0[MLI],QB0[i],QC0[i])
set d=QDI(SMI(QA0[MLI])-0.3,0.5)
call SetUnitScale(QA0[MLI],d,d,d)
call SetUnitFacing(QA0[MLI],270)
call UnitRemoveAbility(QA0[MLI],1097690998)
else
call SetUnitPosition(QA0[MLI],QD0[i],QE0[i])
set d=QDI(SMI(QA0[MLI])-0.3,0.5)
call SetUnitScale(QA0[MLI],d,d,d)
call SetUnitFacing(QA0[MLI],90)
call UnitRemoveAbility(QA0[MLI],1097690998)
endif
call SetUnitColor(QA0[MLI],GetPlayerColor(p))
call PauseUnit(QA0[MLI],true)
call SetUnitOwner(QA0[MLI],p,true)
set QP0[GetPlayerId(p)]=true
set Q90[MLI]=true
if TII(p)then
set K1[GetPlayerId(p)]=CreateUnit(p,DC0[Q80[MLI]],GetRectCenterX(O4),GetRectCenterY(O4),0)
else
set K1[GetPlayerId(p)]=CreateUnit(p,DC0[Q80[MLI]],GetRectCenterX(S3),GetRectCenterY(S3),0)
endif
endfunction
function JP2 takes nothing returns integer
local integer i=1
loop
exitwhen i>24
if Q90[i]==false then
return i
endif
set i=i+1
endloop
return 0
endfunction
function JQ2 takes player p returns nothing
local integer i=1
local boolean JU2=TII(p)
loop
exitwhen i==24
if GetOwningPlayer(QA0[i])==BO[0]or GetOwningPlayer(QA0[i])==CO[0]then
if JU2 then
call SetUnitOwner(QA0[i],BO[0],false)
else
call SetUnitOwner(QA0[i],CO[0],false)
endif
endif
set i=i+1
endloop
endfunction
function K02 takes player p,unit u returns nothing
local integer a=80
if GetLocalPlayer()==p then
set a=255
endif
call SetUnitVertexColor(u,255,255,255,a)
endfunction
function KI2 takes player p1,player p2 returns nothing
local unit I01
local real x
local real y
call JT2(p1)
call PEI(p1,"Sound\\Interface\\Rescue.wav")
if TII(p1)then
if GetLocalPlayer()==p1 then
call PingMinimapEx(QV0,QW0,5,255,255,255,false)
endif
set I01=CreateUnit(p1,1848652353,QV0-250,QW0,0)
call UnitApplyTimedLife(I01,1112820806,20)
call UnitAddAbility(I01,1097625443)
set U30[GetPlayerId(p1)]=I01
call K02(p1,I01)
if GetLocalPlayer()==p1 then
call ClearTextMessages()
endif
call DisplayTimedTextToPlayer(p1,0,0,10," ")
call DisplayTimedTextToPlayer(p1,0,0,10," ")
call DisplayTimedTextToPlayer(p1,0,0,20,GetObjectName(1848653368))
call DisplayTimedTextToPlayer(p1,0,0,10," ")
else
call JT2(p1)
if GetLocalPlayer()==p1 then
call PingMinimapEx(QX0,QY0,5,255,255,255,false)
endif
set I01=CreateUnit(p1,1848652353,QV0-250,QW0,0)
call SetUnitVertexColor(I01,255,255,255,175)
call UnitApplyTimedLife(I01,1112820806,20)
call UnitAddAbility(I01,1097625443)
set U40[GetPlayerId(p1)]=I01
call K02(p1,I01)
if GetLocalPlayer()==p1 then
call ClearTextMessages()
endif
call DisplayTimedTextToPlayer(p1,0,0,10," ")
call DisplayTimedTextToPlayer(p1,0,0,10," ")
call DisplayTimedTextToPlayer(p1,0,0,20,GetObjectName(1848653368))
call DisplayTimedTextToPlayer(p1,0,0,10," ")
endif
if p2!=null then
call JT2(p2)
call PEI(p2,"Sound\\Interface\\Rescue.wav")
if TII(p2)then
if GetLocalPlayer()==p2 then
call PingMinimapEx(QV0,QW0,5,255,255,255,false)
endif
set I01=CreateUnit(p2,1848652353,QV0+250,QW0,0)
call UnitApplyTimedLife(I01,1112820806,20)
call UnitAddAbility(I01,1097625443)
set U30[GetPlayerId(p2)]=I01
call K02(p2,I01)
if GetLocalPlayer()==p2 then
call ClearTextMessages()
endif
call DisplayTimedTextToPlayer(p2,0,0,10," ")
call DisplayTimedTextToPlayer(p2,0,0,10," ")
call DisplayTimedTextToPlayer(p2,0,0,20,GetObjectName(1848653368))
call DisplayTimedTextToPlayer(p2,0,0,10," ")
else
if GetLocalPlayer()==p2 then
call PingMinimapEx(QX0,QY0,5,255,255,255,false)
endif
set I01=CreateUnit(p2,1848652353,QV0+250,QW0,0)
call UnitApplyTimedLife(I01,1112820806,20)
call UnitAddAbility(I01,1097625443)
set U40[GetPlayerId(p2)]=I01
call K02(p2,I01)
if GetLocalPlayer()==p2 then
call ClearTextMessages()
endif
call DisplayTimedTextToPlayer(p2,0,0,10," ")
call DisplayTimedTextToPlayer(p2,0,0,10," ")
call DisplayTimedTextToPlayer(p2,0,0,20,GetObjectName(1848653368))
call DisplayTimedTextToPlayer(p2,0,0,10," ")
endif
endif
set I01=null
endfunction
function K12 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer KO2=(LoadInteger(LY,(S5I),(25)))
local player K22=QM0
local player K32=QN0
local integer i
set QM0=null
set QN0=null
if KO2==0 then
if QS0==1 then
set QM0=BO[1]
else
set QM0=CO[1]
endif
call JQ2(QM0)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QM0)]+(D80[GetPlayerId((QM0))])+"|r"+" "+GetObjectName(1848653364))
call KI2(QM0,QN0)
call JW2(20,QQ0,QU0)
elseif KO2==1 then
if QS0==1 then
if U50==false then
set QM0=CO[1]
set QN0=CO[2]
else
set QM0=CO[1]
set QN0=CO[1]
endif
else
if U50==false then
set QM0=BO[1]
set QN0=BO[2]
else
set QM0=BO[1]
set QN0=BO[1]
endif
endif
if QP0[GetPlayerId(K22)]==false then
call JR2(K22,JP2(),true)
endif
call JQ2(QM0)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QM0)]+(D80[GetPlayerId((QM0))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QN0)]+(D80[GetPlayerId((QN0))])+"|r"+" "+GetObjectName(1848653364))
call KI2(QM0,QN0)
call JW2(20,QQ0,QU0)
elseif KO2==2 then
if QS0==1 then
if U50==false then
set QM0=BO[2]
set QN0=BO[3]
else
set QM0=BO[1]
set QN0=BO[1]
endif
else
if U50==false then
set QM0=CO[2]
set QN0=CO[3]
else
set QM0=CO[1]
set QN0=CO[1]
endif
endif
if QP0[GetPlayerId(K22)]==false then
call JR2(K22,JP2(),true)
endif
if QP0[GetPlayerId(K32)]==false then
call JR2(K32,JP2(),true)
endif
call JQ2(QM0)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QM0)]+(D80[GetPlayerId((QM0))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QN0)]+(D80[GetPlayerId((QN0))])+"|r"+" "+GetObjectName(1848653364))
call KI2(QM0,QN0)
call JW2(20,QQ0,QU0)
elseif KO2==3 then
if QS0==1 then
if U50==false then
set QM0=CO[3]
set QN0=CO[4]
else
set QM0=CO[1]
set QN0=CO[1]
endif
else
if U50==false then
set QM0=BO[3]
set QN0=BO[4]
else
set QM0=BO[1]
set QN0=BO[1]
endif
endif
if QP0[GetPlayerId(K22)]==false then
call JR2(K22,JP2(),true)
endif
if QP0[GetPlayerId(K32)]==false then
call JR2(K32,JP2(),true)
endif
call JQ2(QM0)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QM0)]+(D80[GetPlayerId((QM0))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QN0)]+(D80[GetPlayerId((QN0))])+"|r"+" "+GetObjectName(1848653364))
call KI2(QM0,QN0)
call JW2(20,QQ0,QU0)
elseif KO2==4 then
if QS0==1 then
if U50==false then
set QM0=BO[4]
set QN0=BO[5]
else
set QM0=BO[1]
set QN0=BO[1]
endif
else
if U50==false then
set QM0=CO[4]
set QN0=CO[5]
else
set QM0=CO[1]
set QN0=CO[1]
endif
endif
if QP0[GetPlayerId(K22)]==false then
call JR2(K22,JP2(),true)
endif
if QP0[GetPlayerId(K32)]==false then
call JR2(K32,JP2(),true)
endif
call JQ2(QM0)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QM0)]+(D80[GetPlayerId((QM0))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QN0)]+(D80[GetPlayerId((QN0))])+"|r"+" "+GetObjectName(1848653364))
call KI2(QM0,QN0)
call JW2(20,QQ0,QU0)
elseif KO2==5 then
if QS0==1 then
if U50==false then
set QM0=CO[5]
else
set QM0=CO[1]
endif
else
if U50==false then
set QM0=BO[5]
else
set QN0=BO[1]
endif
endif
if QP0[GetPlayerId(K22)]==false then
call JR2(K22,JP2(),true)
endif
if QP0[GetPlayerId(K32)]==false then
call JR2(K32,JP2(),true)
endif
call JQ2(QM0)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(QM0)]+(D80[GetPlayerId((QM0))])+"|r"+" "+GetObjectName(1848653364))
call KI2(QM0,QN0)
call JW2(20,QQ0,QU0)
elseif KO2==6 then
if QP0[GetPlayerId(K22)]==false then
call JR2(K22,JP2(),true)
endif
call SuspendTimeOfDay(false)
endif
if KO2==7 then
set QR0=true
endif
if KO2==8 then
call JB2()
set i=1
loop
exitwhen i>24
call RemoveUnit(QA0[i])
set i=i+1
endloop
call QM1()
call Z22(60)
call UnitApplyTimedLife(Q70[1],1112820806,2)
call UnitApplyTimedLife(Q70[2],1112820806,2)
call UnitApplyTimedLife(Q70[3],1112820806,2)
call UnitApplyTimedLife(Q70[4],1112820806,2)
call UnitApplyTimedLife(Q70[5],1112820806,2)
call UnitApplyTimedLife(Q70[6],1112820806,2)
call UnitApplyTimedLife(Q70[7],1112820806,2)
call UnitApplyTimedLife(Q70[8],1112820806,2)
call UnitApplyTimedLife(Q70[9],1112820806,2)
call UnitApplyTimedLife(Q70[10],1112820806,2)
call UnitApplyTimedLife(Q70[11],1112820806,2)
call UnitApplyTimedLife(Q70[12],1112820806,2)
call S0I(U20)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,7,false)
call TriggerAddCondition(t,Condition(function JA2))
else
call SaveInteger(LY,(S5I),(25),(KO2+1))
endif
set t=null
set K22=null
set K32=null
return false
endfunction
function K42 takes unit SFI returns integer
local integer i=1
loop
exitwhen i>24
if QA0[i]==SFI then
return i
endif
set i=i+1
endloop
return 0
endfunction
function K52 takes nothing returns boolean
local unit YC2=GetSoldUnit()
local player p=GetOwningPlayer(YC2)
call KillUnit(YC2)
if QP0[GetPlayerId(p)]==true then
call PZI(p,GetObjectName(1848656951))
set YC2=null
set p=null
return false
endif
if p!=QM0 and p!=QN0 then
call PZI(p,GetObjectName(1848656722))
set YC2=null
set p=null
return false
endif
if GetUnitTypeId(YC2)==1747990094 then
call JR2(p,K42(GetSellingUnit()),false)
call KillUnit(U30[GetPlayerId(p)])
call KillUnit(U40[GetPlayerId(p)])
endif
set YC2=null
set p=null
return false
endfunction
function ModeRD_Selected takes nothing returns boolean
local unit K62=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local player p=GetOwningPlayer(K62)
if GetSpellAbilityId()==1093687874 and K42(P8I)!=0 then
if(p==QM0 or p==QN0)and QP0[GetPlayerId(p)]==false and Q90[K42(P8I)]==false then
call JR2(p,K42(P8I),false)
call RemoveUnit(K62)
endif
endif
set P8I=null
set p=null
return false
endfunction
function K72 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I
local integer i=1
call S0I(t)
call SuspendTimeOfDay(true)
set QS0=GetRandomInt(1,2)
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
if QS0==1 then
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848653131)+" "+C0[GetPlayerId(BO[0])]+GetObjectName(1848653365)+"|r"+" "+GetObjectName(1848653366))
else
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848653131)+" "+C0[GetPlayerId(CO[0])]+GetObjectName(1848653379)+"|r"+" "+GetObjectName(1848653366))
endif
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,20,true)
call TriggerAddCondition(t,Condition(function K12))
call SaveInteger(LY,(S5I),(25),(0))
call TriggerEvaluate(t)
set t=null
return false
endfunction
function ModeRD_SetCap takes nothing returns boolean
if U50==false then
set U50=true
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848657732))
endif
return false
endfunction
function X02 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=1
local real x
local real y
local real a
local integer r
local integer TJI
local boolean K82=false
local boolean K92=false
local boolean KA2=false
local boolean KB2=false
local boolean KC2=false
local boolean KD2=false
local boolean KE2=false
local boolean KF2=false
local boolean KG2=false
local boolean array KH2
local player p
local real DJ1
local boolean KZ2=false
local real z
set RU0=false
set U20=CreateTrigger()
call TriggerAddCondition(U20,Condition(function K52))
call PEI(GetLocalPlayer(),"Sound\\Interface\\Rescue.wav")
set p=BO[1]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[2]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[3]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[4]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[5]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[1]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[2]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[3]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[4]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[5]
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
call TriggerRegisterTimerEvent(t,15-TimerGetElapsed(M),false)
call TriggerAddCondition(t,Condition(function K72))
set QT0=true
set BL=180
set A3=false
set O3=false
call UnitAddAbility(EI0,1097295983)
call UnitAddAbility(E10,1097295983)
call UnitAddAbility(EO0,1097295983)
call UnitAddAbility(E20,1097295983)
call UnitAddAbility(E70,1097295983)
call UnitAddAbility(E80,1097295983)
call UnitAddAbility(E90,1097295983)
call UnitAddAbility(EA0,1097295983)
call UnitAddAbility(E30,1097295983)
call UnitAddAbility(E40,1097295983)
call UnitAddAbility(E50,1097295983)
call UnitAddAbility(E60,1097295983)
call ShowUnit(EI0,false)
call ShowUnit(E10,false)
call ShowUnit(EO0,false)
call ShowUnit(E20,false)
call ShowUnit(E70,false)
call ShowUnit(E80,false)
call ShowUnit(E90,false)
call ShowUnit(EA0,false)
call ShowUnit(E30,false)
call ShowUnit(E40,false)
call ShowUnit(E50,false)
call ShowUnit(E60,false)
set i=1
loop
exitwhen i>24
set TJI=RHI(true,true)
if K82 then
set K82=false
set TJI=91
elseif K92 then
set K92=false
set TJI=51
elseif KA2 then
set KA2=false
set TJI=99
elseif KB2 then
set KB2=false
if GetRandomInt(1,2)==1 then
set TJI=104
else
set TJI=65
endif
elseif KC2 then
set KC2=false
set TJI=109
elseif KD2 then
set KD2=false
set TJI=15
elseif KE2 then
set KE2=false
set TJI=110
elseif KF2 then
set KF2=false
elseif KG2 then
set KG2=false
endif
if KH2[TJI]==false and((TJI)!=23)then
set KH2[TJI]=true
set Q80[i]=TJI
set i=i+1
endif
endloop
set Q70[1]=CreateUnit(BO[0],1848656963,QV0,QW0,0)
set Q70[2]=CreateUnit(BO[1],1848656963,QV0,QW0,0)
set Q70[3]=CreateUnit(BO[2],1848656963,QV0,QW0,0)
set Q70[4]=CreateUnit(BO[3],1848656963,QV0,QW0,0)
set Q70[5]=CreateUnit(BO[4],1848656963,QV0,QW0,0)
set Q70[6]=CreateUnit(BO[5],1848656963,QV0,QW0,0)
set Q70[7]=CreateUnit(CO[0],1848656963,QX0,QY0,0)
set Q70[8]=CreateUnit(CO[1],1848656963,QX0,QY0,0)
set Q70[9]=CreateUnit(CO[2],1848656963,QX0,QY0,0)
set Q70[10]=CreateUnit(CO[3],1848656963,QX0,QY0,0)
set Q70[11]=CreateUnit(CO[4],1848656963,QX0,QY0,0)
set Q70[12]=CreateUnit(CO[5],1848656963,QX0,QY0,0)
call PanCameraToTimedForPlayer(BO[1],QV0,QW0,0)
call PanCameraToTimedForPlayer(BO[2],QV0,QW0,0)
call PanCameraToTimedForPlayer(BO[3],QV0,QW0,0)
call PanCameraToTimedForPlayer(BO[4],QV0,QW0,0)
call PanCameraToTimedForPlayer(BO[5],QV0,QW0,0)
call PanCameraToTimedForPlayer(CO[1],QV0,QW0,0)
call PanCameraToTimedForPlayer(CO[2],QV0,QW0,0)
call PanCameraToTimedForPlayer(CO[3],QV0,QW0,0)
call PanCameraToTimedForPlayer(CO[4],QV0,QW0,0)
call PanCameraToTimedForPlayer(CO[5],QV0,QW0,0)
set QQ0=QV0
set QU0=QW0
set U00=QX0
set UI0=QY0
set QB0[1]=QV0+QK0*(-2)
set QC0[1]=QW0+QL0
set QB0[2]=QV0+QK0*(-1)
set QC0[2]=QW0+QL0
set QB0[3]=QV0+QK0*(0)
set QC0[3]=QW0+QL0
set QB0[4]=QV0+QK0*(1)
set QC0[4]=QW0+QL0
set QB0[5]=QV0+QK0*(2)
set QC0[5]=QW0+QL0
set QD0[1]=QV0+QK0*(-2)
set QE0[1]=QW0-QL0
set QD0[2]=QV0+QK0*(-1)
set QE0[2]=QW0-QL0
set QD0[3]=QV0+QK0*(0)
set QE0[3]=QW0-QL0
set QD0[4]=QV0+QK0*(1)
set QE0[4]=QW0-QL0
set QD0[5]=QV0+QK0*(2)
set QE0[5]=QW0-QL0
set QF0[1]=QX0+QK0*(-2)
set QG0[1]=QY0+QL0
set QF0[2]=QX0+QK0*(-1)
set QG0[2]=QY0+QL0
set QF0[3]=QX0+QK0*(0)
set QG0[3]=QY0+QL0
set QF0[4]=QX0+QK0*(1)
set QG0[4]=QY0+QL0
set QF0[5]=QX0+QK0*(2)
set QG0[5]=QY0+QL0
set QH0[1]=QX0+QK0*(-2)
set QZ0[1]=QY0-QL0
set QH0[2]=QX0+QK0*(-1)
set QZ0[2]=QY0-QL0
set QH0[3]=QX0+QK0*(0)
set QZ0[3]=QY0-QL0
set QH0[4]=QX0+QK0*(1)
set QZ0[4]=QY0-QL0
set QH0[5]=QX0+QK0*(2)
set QZ0[5]=QY0-QL0
set DJ1=QJ0
set i=1
loop
exitwhen i>24
if KZ2==false then
set KZ2=true
else
set KZ2=false
endif
set a=i/I2R(24)*360.0
set x=QV0+DJ1*Cos(a*bj_DEGTORAD)
set y=QW0+DJ1*Sin(a*bj_DEGTORAD)
set QA0[i]=CreateUnit(BO[0],DT0[Q80[i]],x,y,UEI(x,y,QV0,QW0))
call JC2(x,y)
if KZ2 then
call SetUnitColor(QA0[i],GetPlayerColor(CO[5]))
else
call SetUnitColor(QA0[i],GetPlayerColor(CO[4]))
endif
call TriggerRegisterUnitEvent(U20,QA0[i],EVENT_UNIT_SELL)
set i=i+1
endloop
call TZI()
set t=null
set p=null
endfunction
function KV2 takes nothing returns boolean
local unit YC2=GetSoldUnit()
local player p=GetOwningPlayer(YC2)
local integer i
local real x
local real y
local real a
if GetUnitTypeId(YC2)==1747990094 and IsPlayerAlly(GetOwningPlayer(YC2),GetOwningPlayer(GetSellingUnit()))then
if K1[GetPlayerId(p)]!=null then
call PZI(p,GetObjectName(1848657459))
call KillUnit(YC2)
set YC2=null
set p=null
return false
endif
set x=GetUnitX(GetSellingUnit())
set y=GetUnitY(GetSellingUnit())
set i=RPI(GetUnitTypeId(GetSellingUnit()))
set a=GetUnitFacing(GetSellingUnit())
call RemoveUnit(GetSellingUnit())
call CreateUnit(p,i,x,y,a)
endif
if GetUnitTypeId(YC2)==1747990094 then
call KillUnit(YC2)
endif
if K1[GetPlayerId(BO[1])]!=null and K1[GetPlayerId(BO[2])]!=null and K1[GetPlayerId(BO[3])]!=null and K1[GetPlayerId(BO[4])]!=null and K1[GetPlayerId(BO[5])]!=null and K1[GetPlayerId(CO[1])]!=null and K1[GetPlayerId(CO[2])]!=null and K1[GetPlayerId(CO[3])]!=null and K1[GetPlayerId(CO[4])]!=null and K1[GetPlayerId(CO[5])]!=null then
call S0I(GetTriggeringTrigger())
endif
set YC2=null
set p=null
return false
endfunction
function KW2 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer BY1
local integer BX1
local string GW1
local unit u
local real x
local real y
local integer i
local real d
local real YF2=GetRectCenterX(O4)+125
local real YG2=GetRectCenterY(O4)+75
local real YH2=GetRectCenterX(S3)+100
local real YZ2=GetRectCenterY(S3)
set TP0=true
set i=1
loop
exitwhen i>5
set x=YF2-290+(i-1)*100
set y=YG2
call CreateUnit(BO[i+1],1848651843,YF2,YG2,bj_UNIT_FACING)
set u=CreateUnit(BO[0],DT0[UH0[i+2]],x,y,270)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_SELL)
call PanCameraToTimedForPlayer(BO[i],YF2,YG2,0)
set i=i+1
endloop
set i=1
loop
exitwhen i>5
set x=YH2-290+(i-1)*100
set y=YZ2
call CreateUnit(CO[i+1],1848651843,YH2,YZ2,bj_UNIT_FACING)
set u=CreateUnit(CO[0],DT0[UZ0[i+2]],x,y,270)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_SELL)
call PanCameraToTimedForPlayer(CO[i],YH2,YZ2,0)
set i=i+1
endloop
call TriggerAddCondition(t,Condition(function KV2))
call SuspendTimeOfDay(false)
call EnableTrigger(EV0)
call EnableTrigger(DN)
set BL=90
call VU2()
set t=null
set u=null
endfunction
function KX2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
set EN=true
call S0I(t)
call DestroyFogModifier(CreateFogModifierRadius(BO[0],FOG_OF_WAR_MASKED,PC0,PD0,700,false,false))
call DestroyFogModifier(CreateFogModifierRadius(CO[0],FOG_OF_WAR_MASKED,PC0,PD0,700,false,false))
set t=null
return false
endfunction
function KY2 takes string S,real XN2,real XS2,real XT2,real XR2,real XP2,boolean XQ2 returns nothing
set MK=CreateImage(S,XN2,XS2,0,XT2-(XN2/2),XR2-(XS2/2),XP2,0,0,0,2)
call SetImageRenderAlways(MK,true)
call ShowImage(MK,XQ2)
endfunction
function KJ2 takes string KK2,integer r,integer g,integer b,integer a,real x,real y returns image
call KY2("Fonts\\"+KK2+".blp",60,60,x-20,y,0,true)
call SetImageColor(MK,r,g,b,a)
return MK
endfunction
function KL2 takes boolean KM2,boolean KN2 returns nothing
local integer KS2
local integer KT2
local integer KR2
local integer KP2
local integer KQ2
local integer KU2
local integer L02
local integer LI2
local integer c1
local integer c2
local integer a=0
set KS2=UE0[1]
set KT2=KS2/60
set KR2=(KS2-KT2*60)/10
set KP2=KS2-KT2*60-KR2*10
set KQ2=UE0[2]
set KU2=KQ2/60
set L02=(KQ2-KU2*60)/10
set LI2=KQ2-KU2*60-L02*10
if KM2==false then
call ShowImage(UN0,false)
call DestroyImage(UN0)
call ShowImage(US0,false)
call DestroyImage(US0)
call ShowImage(UT0,false)
call DestroyImage(UT0)
call ShowImage(UR0,false)
call DestroyImage(UR0)
call ShowImage(UP0,false)
call DestroyImage(UP0)
call ShowImage(UQ0,false)
call DestroyImage(UQ0)
call ShowImage(UU0,false)
call DestroyImage(UU0)
call ShowImage(I0I,false)
call DestroyImage(I0I)
call ShowImage(III,false)
call DestroyImage(III)
call ShowImage(I1I,false)
call DestroyImage(I1I)
call ShowImage(IOI,false)
call DestroyImage(IOI)
call ShowImage(I2I,false)
call DestroyImage(I2I)
call ShowImage(I3I,false)
call DestroyImage(I3I)
call ShowImage(I4I,false)
call DestroyImage(I4I)
call ShowImage(I5I,false)
call DestroyImage(I5I)
call ShowImage(I6I,false)
call DestroyImage(I6I)
endif
if KN2==false then
set c1=255
set c2=255
if UD0==1 then
if IsPlayerAlly(BO[1],GetLocalPlayer())then
set a=255
set c1=0
endif
else
if IsPlayerAlly(CO[1],GetLocalPlayer())then
set a=255
set c2=0
endif
endif
set UN0=KJ2(I2S(KT2),255,c1,c1,255,PC0-40,PD0+300)
set US0=KJ2("58",255,c1,c1,255,PC0-0,PD0+300)
set UT0=KJ2(I2S(KR2),255,c1,c1,255,PC0+20,PD0+300)
set UR0=KJ2(I2S(KP2),255,c1,c1,255,PC0+60,PD0+300)
set UP0=KJ2(I2S(KU2),255,c2,c2,255,PC0-40,PD0-300)
set UQ0=KJ2("58",255,c2,c2,255,PC0-0,PD0-300)
set UU0=KJ2(I2S(L02),255,c2,c2,255,PC0+20,PD0-300)
set I0I=KJ2(I2S(LI2),255,c2,c2,255,PC0+60,PD0-300)
if UF0==1 or UF0==2 or UF0==3 or UF0==4 then
set III=KJ2("Y",255,0,0,a,PC0-130,PD0)
set I1I=KJ2("O",255,0,0,a,PC0-90,PD0)
set IOI=KJ2("U",255,0,0,a,PC0-50,PD0)
set I2I=KJ2("R",255,0,0,a,PC0-10,PD0)
set I3I=KJ2("B",255,0,0,a,PC0+70,PD0)
set I4I=KJ2("A",255,0,0,a,PC0+110,PD0)
set I5I=KJ2("N",255,0,0,a,PC0+150,PD0)
set I6I=KJ2("K",255,0,0,0,PC0+170,PD0)
else
set III=KJ2("Y",255,0,0,a,PC0-150,PD0)
set I1I=KJ2("O",255,0,0,a,PC0-110,PD0)
set IOI=KJ2("U",255,0,0,a,PC0-70,PD0)
set I2I=KJ2("R",255,0,0,a,PC0-30,PD0)
set I3I=KJ2("P",255,0,0,a,PC0+50,PD0)
set I4I=KJ2("I",255,0,0,a,PC0+90,PD0)
set I5I=KJ2("C",255,0,0,a,PC0+130,PD0)
set I6I=KJ2("K",255,0,0,a,PC0+170,PD0)
endif
endif
endfunction
function L12 takes nothing returns nothing
local integer i=0
loop
exitwhen i>UA0
call RemoveUnit(UB0[i])
set i=i+1
endloop
endfunction
function LO2 takes real x,real y returns nothing
set UB0[UA0]=CreateUnit(Player(0),1747990089,x,y,0)
set UA0=UA0+1
endfunction
function L22 takes integer L32,boolean L42 returns nothing
local player p
local real d
set UG0[L32]=true
set UL0[UD0]=UL0[UD0]-1
if UD0==1 then
set p=BO[1]
set UV0=UV0+1
set UH0[UV0]=U70[L32]
if UV0<3 then
call UnitAddAbility(U90[L32],1097167980)
call UnitAddAbility(U90[L32],1097625443)
endif
call SetUnitPosition(U90[L32],UX0[UV0],UY0[UV0])
set d=RMaxBJ(SMI(U90[L32])-0.3,0.5)
call LO2(UX0[UV0],UY0[UV0])
call SetUnitScale(U90[L32],d,d,d)
call SetUnitFacing(U90[L32],270)
if L42==false then
if UF0==1 or UF0==2 or UF0==3 or UF0==4 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657973)+" "+GetUnitName(U90[L32]))
call FL1("Ban"+I2S(GetPlayerId(p)),DC0[U70[L32]])
else
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657974)+" "+GetUnitName(U90[L32]))
call FL1("Pick"+I2S(GetPlayerId(p)),DC0[U70[L32]])
endif
else
if UF0==1 or UF0==2 or UF0==3 or UF0==4 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657975)+" "+GetUnitName(U90[L32]))
call FL1("Ban"+I2S(GetPlayerId(p)),DC0[U70[L32]])
else
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657976)+" "+GetUnitName(U90[L32]))
call FL1("Pick"+I2S(GetPlayerId(p)),DC0[U70[L32]])
endif
endif
else
set p=CO[1]
set UW0=UW0+1
set UZ0[UW0]=U70[L32]
if UW0<3 then
call UnitAddAbility(U90[L32],1097167980)
call UnitAddAbility(U90[L32],1097625443)
endif
call SetUnitPosition(U90[L32],UJ0[UW0],UK0[UW0])
set d=RMaxBJ(SMI(U90[L32])-0.3,0.5)
call LO2(UJ0[UW0],UK0[UW0])
call SetUnitScale(U90[L32],d,d,d)
call SetUnitFacing(U90[L32],90)
if L42==false then
if UF0==1 or UF0==2 or UF0==3 or UF0==4 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657973)+" "+GetUnitName(U90[L32]))
call FL1("Ban"+I2S(GetPlayerId(p)),DC0[U70[L32]])
else
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657974)+" "+GetUnitName(U90[L32]))
call FL1("Pick"+I2S(GetPlayerId(p)),DC0[U70[L32]])
endif
else
if UF0==1 or UF0==2 or UF0==3 or UF0==4 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657975)+" "+GetUnitName(U90[L32]))
call FL1("Ban"+I2S(GetPlayerId(p)),DC0[U70[L32]])
else
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,C0[GetPlayerId(p)]+(D80[GetPlayerId((p))])+"|r "+GetObjectName(1848657976)+" "+GetUnitName(U90[L32]))
call FL1("Pick"+I2S(GetPlayerId(p)),DC0[U70[L32]])
endif
endif
endif
call PauseUnit(U90[L32],true)
call SetUnitOwner(U90[L32],p,true)
endfunction
function L52 takes unit SFI returns integer
local integer i=1
loop
exitwhen i>28
if U90[i]==SFI then
return i
endif
set i=i+1
endloop
return 0
endfunction
function L62 takes nothing returns nothing
local integer i
loop
set i=GetRandomInt(1,28)
exitwhen UG0[i]==false
endloop
call L22(i,true)
endfunction
function L72 takes nothing returns boolean
local unit YC2=GetSoldUnit()
local player p=GetOwningPlayer(YC2)
local integer id=GetPlayerId(p)
local player L82
if UD0==1 then
set L82=BO[1]
else
set L82=CO[1]
endif
call KillUnit(YC2)
if UM0 or UL0[UD0]<1 or p!=L82 then
call PZI(p,GetObjectName(1848656722))
elseif GetUnitTypeId(YC2)==1747990094 then
call L22(L52(GetSellingUnit()),false)
endif
set YC2=null
return false
endfunction
function L92 takes nothing returns boolean
local integer i=1
local trigger t
call S0I(GetTriggeringTrigger())
loop
exitwhen i>28
call RemoveUnit(U90[i])
set i=i+1
endloop
call SuspendTimeOfDay(false)
call L12()
call QM1()
call Z22(90)
call UnitApplyTimedLife(U80[1],1112820806,2)
call UnitApplyTimedLife(U80[2],1112820806,2)
call UnitApplyTimedLife(U80[3],1112820806,2)
call UnitApplyTimedLife(U80[4],1112820806,2)
call UnitApplyTimedLife(U80[5],1112820806,2)
call UnitApplyTimedLife(U80[6],1112820806,2)
call UnitApplyTimedLife(U80[7],1112820806,2)
call UnitApplyTimedLife(U80[8],1112820806,2)
call UnitApplyTimedLife(U80[9],1112820806,2)
call UnitApplyTimedLife(U80[10],1112820806,2)
call UnitApplyTimedLife(U80[11],1112820806,2)
call UnitApplyTimedLife(U80[12],1112820806,2)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,7,false)
call TriggerAddCondition(t,Condition(function KX2))
set t=null
call KW2()
return false
endfunction
function LA2 takes nothing returns boolean
local integer i
local trigger t
local force f
local string c="|c006699CC"
set UE0[UD0]=IMaxBJ(UE0[UD0]-1,0)
call KL2(false,false)
if UL0[UD0]<1 then
if UD0==1 then
call PEI(BO[1],"Sound\\Interface\\Rescue.wav")
call PEI(BO[2],"Sound\\Interface\\Rescue.wav")
call PEI(BO[3],"Sound\\Interface\\Rescue.wav")
call PEI(BO[4],"Sound\\Interface\\Rescue.wav")
call PEI(BO[5],"Sound\\Interface\\Rescue.wav")
else
call PEI(CO[1],"Sound\\Interface\\Rescue.wav")
call PEI(CO[2],"Sound\\Interface\\Rescue.wav")
call PEI(CO[3],"Sound\\Interface\\Rescue.wav")
call PEI(CO[4],"Sound\\Interface\\Rescue.wav")
call PEI(CO[5],"Sound\\Interface\\Rescue.wav")
endif
set UF0=UF0+1
if UD0==1 then
set UD0=2
set f=AO
else
set UD0=1
set f=OO
endif
set UE0[UD0]=IMaxBJ(UE0[UD0],6)
if UF0==1 or UF0==2 or UF0==3 or UF0==4 then
set UL0[UD0]=1
call QRI(f,15,c+GetObjectName(1848657970)+"|r")
elseif UF0==5 then
set UL0[UD0]=1
call QRI(f,15,c+GetObjectName(1848657971)+"|r")
elseif UF0==6 or UF0==7 or UF0==8 or UF0==9 then
set UL0[UD0]=2
call QRI(f,15,c+GetObjectName(1848657972)+"|r")
elseif UF0==10 then
set UL0[UD0]=1
call QRI(f,15,c+GetObjectName(1848657971)+"|r")
else
call KL2(false,true)
call S0I(GetTriggeringTrigger())
call S0I(U60)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,6,false)
call TriggerAddCondition(t,Condition(function L92))
set t=null
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848657977))
endif
elseif UE0[UD0]==0 then
call L62()
endif
return false
endfunction
function LB2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local force f
local string c="|c006699CC"
call S0I(t)
set UC0=GetRandomInt(1,2)
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
if UC0==1 then
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848653131)+" "+C0[GetPlayerId(BO[0])]+GetObjectName(1848653365)+"|r"+" "+GetObjectName(1848653366))
else
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848653131)+" "+C0[GetPlayerId(CO[0])]+GetObjectName(1848653379)+"|r"+" "+GetObjectName(1848653366))
endif
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
set UD0=UC0
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function LA2))
set UE0[1]=150
set UE0[2]=150
set UF0=1
set UL0[UD0]=1
call KL2(true,false)
if UD0==1 then
set f=OO
else
set f=AO
endif
call QRI(f,15,c+GetObjectName(1848657970)+"|r")
set UM0=false
set t=null
return false
endfunction
function XH2 takes nothing returns nothing
local integer i
local player p
local boolean KZ2=false
local real a
local real x
local real y
local trigger t
local integer TJI
local boolean K82=false
local boolean K92=false
local boolean KA2=false
local boolean KB2=false
local boolean KC2=false
local boolean KD2=false
local boolean KE2=false
local boolean KF2=false
local boolean KG2=false
local integer z
local string c="|c006699CC"
local boolean array KH2
call OZ2()
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,15,false)
call TriggerAddCondition(t,Condition(function LB2))
set t=null
set UD0=-1
set RU0=false
set BN=true
set A3=false
set O3=false
set TP0=false
call PEI(GetLocalPlayer(),"Sound\\Interface\\Rescue.wav")
call SuspendTimeOfDay(true)
set U60=CreateTrigger()
call UnitAddAbility(EI0,1097295983)
call UnitAddAbility(E10,1097295983)
call UnitAddAbility(EO0,1097295983)
call UnitAddAbility(E20,1097295983)
call UnitAddAbility(E70,1097295983)
call UnitAddAbility(E80,1097295983)
call UnitAddAbility(E90,1097295983)
call UnitAddAbility(EA0,1097295983)
call UnitAddAbility(E30,1097295983)
call UnitAddAbility(E40,1097295983)
call UnitAddAbility(E50,1097295983)
call UnitAddAbility(E60,1097295983)
set p=BO[1]
set U80[1]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[2]
set U80[2]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[3]
set U80[3]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[4]
set U80[4]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=BO[5]
set U80[5]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[1]
set U80[6]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[2]
set U80[7]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[3]
set U80[8]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[4]
set U80[9]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set p=CO[5]
set U80[10]=CreateUnit(p,1848656963,PC0,PD0,0)
call PanCameraToTimedForPlayer(p,PC0,PD0,0)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
set UX0[1]=PC0+I8I*(-3.5)
set UY0[1]=PD0+I9I
set UX0[2]=PC0+I8I*(3.5)
set UY0[2]=PD0+I9I
set UX0[3]=PC0+I8I*(-2)
set UY0[3]=PD0+I9I
set UX0[4]=PC0+I8I*(-1)
set UY0[4]=PD0+I9I
set UX0[5]=PC0+I8I*(0)
set UY0[5]=PD0+I9I
set UX0[6]=PC0+I8I*(1)
set UY0[6]=PD0+I9I
set UX0[7]=PC0+I8I*(2)
set UY0[7]=PD0+I9I
set UJ0[1]=PC0+I8I*(-3.5)
set UK0[1]=PD0-I9I
set UJ0[2]=PC0+I8I*(3.5)
set UK0[2]=PD0-I9I
set UJ0[3]=PC0+I8I*(-2)
set UK0[3]=PD0-I9I
set UJ0[4]=PC0+I8I*(-1)
set UK0[4]=PD0-I9I
set UJ0[5]=PC0+I8I*(0)
set UK0[5]=PD0-I9I
set UJ0[6]=PC0+I8I*(1)
set UK0[6]=PD0-I9I
set UJ0[7]=PC0+I8I*(2)
set UK0[7]=PD0-I9I
call UPI(PC0,PD0,600)
set i=1
loop
exitwhen i>28
set TJI=RHI(true,true)
if K82 then
set K82=false
set TJI=50
elseif K92 then
set K92=false
set TJI=51
elseif KA2 then
set KA2=false
set TJI=104
elseif KB2 then
set KB2=false
set TJI=65
elseif KC2 then
set KC2=false
set TJI=49
elseif KD2 then
set KD2=false
if GetRandomInt(1,2)==1 then
set TJI=16
else
set TJI=86
endif
elseif KE2 then
set KE2=false
if GetRandomInt(1,2)==1 then
set TJI=73
else
set TJI=83
endif
elseif KF2 then
set KF2=false
elseif KG2 then
set KG2=false
endif
if KH2[TJI]==false then
set KH2[TJI]=true
set U70[i]=TJI
call FL1("Pool"+I2S(i),DC0[U70[i]])
if KZ2==false then
set KZ2=true
else
set KZ2=false
endif
set a=(i/I2R(28))*360.0
set x=PC0+I7I*Cos(a*bj_DEGTORAD)
set y=PD0+I7I*Sin(a*bj_DEGTORAD)
set U90[i]=CreateUnit(BO[0],DT0[U70[i]],x,y,UEI(x,y,PC0,PD0))
call SetUnitPathing(U90[i],false)
call SetUnitX(U90[i],x)
call SetUnitY(U90[i],y)
call LO2(x,y)
if KZ2 then
call SetUnitColor(U90[i],GetPlayerColor(CO[5]))
else
call SetUnitColor(U90[i],GetPlayerColor(CO[4]))
endif
set UG0[i]=false
call TriggerRegisterUnitEvent(U60,U90[i],EVENT_UNIT_SELL)
set i=i+1
endif
endloop
call TriggerAddCondition(U60,Condition(function L72))
call TZI()
endfunction
function LC2 takes player p,integer SJI returns nothing
local integer i=1
loop
exitwhen i>5
if p!=BO[i]then
call SetPlayerTechMaxAllowed(BO[i],SJI,0)
endif
if p!=CO[i]then
call SetPlayerTechMaxAllowed(CO[i],SJI,0)
endif
set i=i+1
endloop
endfunction
function ModeSD_Chosen takes nothing returns boolean
local string DC2=GetEventPlayerChatString()
local integer a=S2I(SubString(DC2,6,StringLength(DC2)))
local integer SJI
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local location ZC1=GetRectCenter(F4)
local location ZD1=GetRectCenter(E4)
local player p=GetTriggerPlayer()
if a==1 then
set SJI=(LoadInteger(LY,(S5I),(166)))
elseif a==2 then
set SJI=(LoadInteger(LY,(S5I),(167)))
elseif a==3 then
set SJI=(LoadInteger(LY,(S5I),(168)))
else
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set ZC1=null
set ZD1=null
return false
endif
if GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)>=250 then
if TII(p)then
set K1[GetPlayerId(p)]=CreateUnitAtLoc(p,DC0[SJI],ZC1,0)
else
set K1[GetPlayerId(p)]=CreateUnitAtLoc(p,DC0[SJI],ZD1,0)
endif
call A31(p)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-250)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call PZI(p,GetObjectName(1848652595))
endif
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set ZC1=null
set ZD1=null
set t=null
set p=null
return false
endfunction
function LD2 takes integer LE2 returns integer
local integer R4O
if LE2==1 then
set R4O=GetUnitPointValueByType(DZ0[GetRandomInt(1,DV0)])
elseif LE2==2 then
set R4O=GetUnitPointValueByType(DW0[GetRandomInt(1,DX0)])
elseif LE2==3 then
set R4O=GetUnitPointValueByType(DY0[GetRandomInt(1,DJ0)])
endif
return R4O
endfunction
function LF2 takes integer LG2,integer LH2,integer LE2 returns integer
local integer RBI
local integer RCI
local integer R4O
set R4O=LD2(LE2)
if F2 and LG2!=R4O and LH2!=R4O then
return R4O
endif
loop
exitwhen R[R4O]==false and LG2!=R4O and LH2!=R4O
set R4O=LD2(LE2)
endloop
set R[R4O]=true
return R4O
endfunction
function XI2 takes nothing returns nothing
local player p
local integer i=1
local integer LZ2
local integer LV2
local integer LW2
local trigger t
local integer S5I
set IAI=true
set BL=120
set O3=false
set A3=false
call PauseUnit(EI0,true)
call PauseUnit(E10,true)
call PauseUnit(EO0,true)
call PauseUnit(E20,true)
call PauseUnit(E30,true)
call PauseUnit(E40,true)
call PauseUnit(E50,true)
call PauseUnit(E60,true)
call PauseUnit(E70,true)
call PauseUnit(E80,true)
call PauseUnit(E90,true)
call PauseUnit(EA0,true)
loop
exitwhen i>5
set p=BO[i]
set LZ2=0
set LV2=0
set LW2=0
if T3I(p)then
call UnitAddAbility(D30[GetPlayerId(p)],1093743686)
call UnitAddAbility(D30[GetPlayerId(p)],1093743685)
call UnitAddAbility(D30[GetPlayerId(p)],1093743688)
set LZ2=LF2(LZ2,LV2,1)
set LV2=LF2(LZ2,LV2,2)
set LW2=LF2(LZ2,LV2,3)
call AddUnitToStock(D30[GetPlayerId(p)],DC0[LZ2],1,1)
call LC2(p,DC0[LZ2])
call AddUnitToStock(D30[GetPlayerId(p)],DC0[LV2],1,1)
call LC2(p,DC0[LV2])
call AddUnitToStock(D30[GetPlayerId(p)],DC0[LW2],1,1)
call LC2(p,DC0[LW2])
call ClearSelectionForPlayer(p)
call SelectUnitAddForPlayer(D30[GetPlayerId(p)],p)
call PanCameraToTimedForPlayer(p,GetRectCenterX(O4),GetRectCenterY(O4),0)
call DisplayTimedTextToPlayer(p,0,U2,15," ")
call DisplayTimedTextToPlayer(p,0,U2,15," ")
call DisplayTimedTextToPlayer(p,0,U2,15," ")
call DisplayTimedTextToPlayer(p,0,U2,15,"|cff99ccff"+GetObjectName(1848657206)+"|r")
call DisplayTimedTextToPlayer(p,0,U2,15," ")
endif
set p=CO[i]
set LZ2=0
set LV2=0
set LW2=0
if T3I(p)then
call UnitAddAbility(D30[GetPlayerId(p)],1093743686)
call UnitAddAbility(D30[GetPlayerId(p)],1093743685)
call UnitAddAbility(D30[GetPlayerId(p)],1093743688)
set LZ2=LF2(LZ2,LV2,1)
set LV2=LF2(LZ2,LV2,2)
set LW2=LF2(LZ2,LV2,3)
call AddUnitToStock(D30[GetPlayerId(p)],DC0[LZ2],1,1)
call LC2(p,DC0[LZ2])
call AddUnitToStock(D30[GetPlayerId(p)],DC0[LV2],1,1)
call LC2(p,DC0[LV2])
call AddUnitToStock(D30[GetPlayerId(p)],DC0[LW2],1,1)
call LC2(p,DC0[LW2])
call ClearSelectionForPlayer(p)
call SelectUnitAddForPlayer(D30[GetPlayerId(p)],p)
call PanCameraToTimedForPlayer(p,GetRectCenterX(S3),GetRectCenterY(S3),0)
call DisplayTimedTextToPlayer(p,0,U2,15," ")
call DisplayTimedTextToPlayer(p,0,U2,15," ")
call DisplayTimedTextToPlayer(p,0,U2,15," ")
call DisplayTimedTextToPlayer(p,0,U2,15,"|cff99ccff"+GetObjectName(1848657206)+"|r")
call DisplayTimedTextToPlayer(p,0,U2,15," ")
endif
set i=i+1
endloop
set p=null
set t=null
endfunction
function LX2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer O91=(LoadInteger(LY,(S5I),(55)))
local player p
local integer TJI
local location ZC1=GetRectCenter(O4)
local location ZD1=GetRectCenter(S3)
if O91<6 then
set p=BO[O91]
elseif O91<11 then
set p=CO[O91-5]
endif
if O91>10 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if X0==false then
set A3=true
endif
elseif O91<6 then
call SaveInteger(LY,(S5I),(55),(O91+1))
set K1[GetPlayerId(p)]=null
if T3I(p)then
loop
exitwhen K1[GetPlayerId(p)]!=null
set TJI=TYI()
if R[TJI]==false then
if not F2 then
set R[TJI]=true
endif
set K1[GetPlayerId(p)]=CreateUnitAtLoc(p,DC0[TJI],ZC1,bj_UNIT_FACING)
endif
endloop
endif
elseif O91<11 then
call SaveInteger(LY,(S5I),(55),(O91+1))
set K1[GetPlayerId(p)]=null
if T3I(p)then
loop
exitwhen K1[GetPlayerId(p)]!=null
set TJI=TYI()
if R[TJI]==false then
if not F2 then
set R[TJI]=true
endif
set K1[GetPlayerId(p)]=CreateUnitAtLoc(p,DC0[TJI],ZD1,bj_UNIT_FACING)
endif
endloop
endif
endif
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set ZC1=null
set ZD1=null
set p=null
set t=null
return false
endfunction
function WM2 takes nothing returns nothing
local location ZC1=GetRectCenter(O4)
local location ZD1=GetRectCenter(S3)
local location LY2=GetRectCenter(O4)
local location LJ2=GetRectCenter(S3)
local integer TGI=1
local integer THI=5
local integer TJI
local trigger t
set Y0=true
set O3=false
if not F2 then
call TZI()
endif
set T0=400
call PanCameraToTimedLocForPlayer(BO[1],LY2,0)
call PanCameraToTimedLocForPlayer(BO[2],LY2,0)
call PanCameraToTimedLocForPlayer(BO[3],LY2,0)
call PanCameraToTimedLocForPlayer(BO[4],LY2,0)
call PanCameraToTimedLocForPlayer(BO[5],LY2,0)
call PanCameraToTimedLocForPlayer(CO[1],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[2],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[3],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[4],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[5],LJ2,0)
if Y2 then
loop
set TJI=TYI()
exitwhen R[TJI]==false
endloop
if TII(WO)then
set K1[GetPlayerId(WO)]=CreateUnit(WO,DC0[TJI],GetLocationX(ZC1),GetLocationY(ZC1),270)
else
set K1[GetPlayerId(WO)]=CreateUnit(WO,DC0[TJI],GetLocationX(ZD1),GetLocationY(ZD1),270)
endif
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
call RemoveLocation(LY2)
call RemoveLocation(LJ2)
set ZC1=null
set ZD1=null
set LY2=null
set LJ2=null
set t=null
return
endif
set A3=false
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,.5,true)
call TriggerAddCondition(t,Condition(function LX2))
call SaveInteger(LY,(GetHandleId(t)),(55),(1))
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
call RemoveLocation(LY2)
call RemoveLocation(LJ2)
set ZC1=null
set ZD1=null
set LY2=null
set LJ2=null
set t=null
endfunction
function LK2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
call S0I(t)
set I3=true
set t=null
return false
endfunction
function LL2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local trigger LM2=(LoadTriggerHandle(LY,(S5I),(35)))
local integer i
local integer x
local integer TJI
local integer LN2=T8I(OO)
local integer LS2=T8I(AO)
local location ZC1=GetRectCenter(F4)
local location ZD1=GetRectCenter(E4)
local location LY2=GetRectCenter(O4)
local location LJ2=GetRectCenter(S3)
call S0I(LM2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set IVI=(LoadInteger(LY,(2001),(126)))
set IWI=(LoadInteger(LY,(2001),(127)))
set IXI=(LoadInteger(LY,(2001),(128)))
set i=1
loop
exitwhen i>LN2
set IZI[i]=ICI[i]
set i=i+1
endloop
set x=GetRandomInt(1,3)
if x==1 then
if LN2==1 then
set IZI[1]=ICI[1]
elseif LN2==2 then
set IZI[1]=ICI[2]
set IZI[2]=ICI[1]
elseif LN2==3 then
set IZI[1]=ICI[3]
set IZI[2]=ICI[1]
set IZI[3]=ICI[2]
elseif LN2==4 then
set IZI[1]=ICI[4]
set IZI[2]=ICI[3]
set IZI[3]=ICI[2]
set IZI[4]=ICI[1]
elseif LN2==5 then
set IZI[1]=ICI[5]
set IZI[2]=ICI[4]
set IZI[3]=ICI[1]
set IZI[4]=ICI[2]
set IZI[5]=ICI[3]
endif
elseif x==2 then
if LN2==1 then
set IZI[1]=ICI[1]
elseif LN2==2 then
set IZI[1]=ICI[2]
set IZI[2]=ICI[1]
elseif LN2==3 then
set IZI[1]=ICI[2]
set IZI[2]=ICI[3]
set IZI[3]=ICI[1]
elseif LN2==4 then
set IZI[1]=ICI[3]
set IZI[2]=ICI[1]
set IZI[3]=ICI[4]
set IZI[4]=ICI[2]
elseif LN2==5 then
set IZI[1]=ICI[4]
set IZI[2]=ICI[3]
set IZI[3]=ICI[2]
set IZI[4]=ICI[5]
set IZI[5]=ICI[1]
endif
else
if LN2==1 then
set IZI[1]=ICI[1]
elseif LN2==2 then
set IZI[1]=ICI[1]
set IZI[2]=ICI[2]
elseif LN2==3 then
set IZI[1]=ICI[3]
set IZI[2]=ICI[2]
set IZI[3]=ICI[1]
elseif LN2==4 then
set IZI[1]=ICI[2]
set IZI[2]=ICI[4]
set IZI[3]=ICI[3]
set IZI[4]=ICI[1]
elseif LN2==5 then
set IZI[1]=ICI[5]
set IZI[2]=ICI[1]
set IZI[3]=ICI[3]
set IZI[4]=ICI[4]
set IZI[5]=ICI[2]
endif
endif
set i=1
loop
exitwhen i>LN2
set ICI[i]=IZI[i]
set i=i+1
endloop
set i=1
loop
exitwhen i>LN2
set IZI[i]=IDI[i]
set i=i+1
endloop
set x=GetRandomInt(1,3)
if x==1 then
if LN2==1 then
set IZI[1]=IDI[1]
elseif LN2==2 then
set IZI[1]=IDI[2]
set IZI[2]=IDI[1]
elseif LN2==3 then
set IZI[1]=IDI[3]
set IZI[2]=IDI[1]
set IZI[3]=IDI[2]
elseif LN2==4 then
set IZI[1]=IDI[4]
set IZI[2]=IDI[3]
set IZI[3]=IDI[2]
set IZI[4]=IDI[1]
elseif LN2==5 then
set IZI[1]=IDI[5]
set IZI[2]=IDI[4]
set IZI[3]=IDI[1]
set IZI[4]=IDI[2]
set IZI[5]=IDI[3]
endif
elseif x==2 then
if LN2==1 then
set IZI[1]=IDI[1]
elseif LN2==2 then
set IZI[1]=IDI[2]
set IZI[2]=IDI[1]
elseif LN2==3 then
set IZI[1]=IDI[2]
set IZI[2]=IDI[3]
set IZI[3]=IDI[1]
elseif LN2==4 then
set IZI[1]=IDI[3]
set IZI[2]=IDI[1]
set IZI[3]=IDI[4]
set IZI[4]=IDI[2]
elseif LN2==5 then
set IZI[1]=IDI[4]
set IZI[2]=IDI[3]
set IZI[3]=IDI[2]
set IZI[4]=IDI[5]
set IZI[5]=IDI[1]
endif
else
if LN2==1 then
set IZI[1]=IDI[1]
elseif LN2==2 then
set IZI[1]=IDI[1]
set IZI[2]=IDI[2]
elseif LN2==3 then
set IZI[1]=IDI[3]
set IZI[2]=IDI[2]
set IZI[3]=IDI[1]
elseif LN2==4 then
set IZI[1]=IDI[2]
set IZI[2]=IDI[4]
set IZI[3]=IDI[3]
set IZI[4]=IDI[1]
elseif LN2==5 then
set IZI[1]=IDI[5]
set IZI[2]=IDI[1]
set IZI[3]=IDI[3]
set IZI[4]=IDI[4]
set IZI[5]=IDI[2]
endif
endif
set i=1
loop
exitwhen i>LN2
set IDI[i]=IZI[i]
set i=i+1
endloop
set i=1
loop
exitwhen i>LN2
set IZI[i]=IEI[i]
set i=i+1
endloop
set x=GetRandomInt(1,3)
if x==1 then
if LN2==1 then
set IZI[1]=IEI[1]
elseif LN2==2 then
set IZI[1]=IEI[2]
set IZI[2]=IEI[1]
elseif LN2==3 then
set IZI[1]=IEI[3]
set IZI[2]=IEI[1]
set IZI[3]=IEI[2]
elseif LN2==4 then
set IZI[1]=IEI[4]
set IZI[2]=IEI[3]
set IZI[3]=IEI[2]
set IZI[4]=IEI[1]
elseif LN2==5 then
set IZI[1]=IEI[5]
set IZI[2]=IEI[4]
set IZI[3]=IEI[1]
set IZI[4]=IEI[2]
set IZI[5]=IEI[3]
endif
elseif x==2 then
if LN2==1 then
set IZI[1]=IEI[1]
elseif LN2==2 then
set IZI[1]=IEI[2]
set IZI[2]=IEI[1]
elseif LN2==3 then
set IZI[1]=IEI[2]
set IZI[2]=IEI[3]
set IZI[3]=IEI[1]
elseif LN2==4 then
set IZI[1]=IEI[3]
set IZI[2]=IEI[1]
set IZI[3]=IEI[4]
set IZI[4]=IEI[2]
elseif LN2==5 then
set IZI[1]=IEI[4]
set IZI[2]=IEI[3]
set IZI[3]=IEI[2]
set IZI[4]=IEI[5]
set IZI[5]=IEI[1]
endif
else
if LN2==1 then
set IZI[1]=IEI[1]
elseif LN2==2 then
set IZI[1]=IEI[1]
set IZI[2]=IEI[2]
elseif LN2==3 then
set IZI[1]=IEI[3]
set IZI[2]=IEI[2]
set IZI[3]=IEI[1]
elseif LN2==4 then
set IZI[1]=IEI[2]
set IZI[2]=IEI[4]
set IZI[3]=IEI[3]
set IZI[4]=IEI[1]
elseif LN2==5 then
set IZI[1]=IEI[5]
set IZI[2]=IEI[1]
set IZI[3]=IEI[3]
set IZI[4]=IEI[4]
set IZI[5]=IEI[2]
endif
endif
set i=1
loop
exitwhen i>LN2
set IEI[i]=IZI[i]
set i=i+1
endloop
set i=1
loop
exitwhen i>LN2
set IZI[i]=IFI[i]
set i=i+1
endloop
set x=GetRandomInt(1,3)
if x==1 then
if LN2==1 then
set IZI[1]=IFI[1]
elseif LN2==2 then
set IZI[1]=IFI[2]
set IZI[2]=IFI[1]
elseif LN2==3 then
set IZI[1]=IFI[3]
set IZI[2]=IFI[1]
set IZI[3]=IFI[2]
elseif LN2==4 then
set IZI[1]=IFI[4]
set IZI[2]=IFI[3]
set IZI[3]=IFI[2]
set IZI[4]=IFI[1]
elseif LN2==5 then
set IZI[1]=IFI[5]
set IZI[2]=IFI[4]
set IZI[3]=IFI[1]
set IZI[4]=IFI[2]
set IZI[5]=IFI[3]
endif
elseif x==2 then
if LN2==1 then
set IZI[1]=IFI[1]
elseif LN2==2 then
set IZI[1]=IFI[2]
set IZI[2]=IFI[1]
elseif LN2==3 then
set IZI[1]=IFI[2]
set IZI[2]=IFI[3]
set IZI[3]=IFI[1]
elseif LN2==4 then
set IZI[1]=IFI[3]
set IZI[2]=IFI[1]
set IZI[3]=IFI[4]
set IZI[4]=IFI[2]
elseif LN2==5 then
set IZI[1]=IFI[4]
set IZI[2]=IFI[3]
set IZI[3]=IFI[2]
set IZI[4]=IFI[5]
set IZI[5]=IFI[1]
endif
else
if LN2==1 then
set IZI[1]=IFI[1]
elseif LN2==2 then
set IZI[1]=IFI[1]
set IZI[2]=IFI[2]
elseif LN2==3 then
set IZI[1]=IFI[3]
set IZI[2]=IFI[2]
set IZI[3]=IFI[1]
elseif LN2==4 then
set IZI[1]=IFI[2]
set IZI[2]=IFI[4]
set IZI[3]=IFI[3]
set IZI[4]=IFI[1]
elseif LN2==5 then
set IZI[1]=IFI[5]
set IZI[2]=IFI[1]
set IZI[3]=IFI[3]
set IZI[4]=IFI[4]
set IZI[5]=IFI[2]
endif
endif
set i=1
loop
exitwhen i>LN2
set IFI[i]=IZI[i]
set i=i+1
endloop
set i=1
loop
exitwhen i>LN2
set IZI[i]=IGI[i]
set i=i+1
endloop
set x=GetRandomInt(1,3)
if x==1 then
if LN2==1 then
set IZI[1]=IGI[1]
elseif LN2==2 then
set IZI[1]=IGI[2]
set IZI[2]=IGI[1]
elseif LN2==3 then
set IZI[1]=IGI[3]
set IZI[2]=IGI[1]
set IZI[3]=IGI[2]
elseif LN2==4 then
set IZI[1]=IGI[4]
set IZI[2]=IGI[3]
set IZI[3]=IGI[2]
set IZI[4]=IGI[1]
elseif LN2==5 then
set IZI[1]=IGI[5]
set IZI[2]=IGI[4]
set IZI[3]=IGI[1]
set IZI[4]=IGI[2]
set IZI[5]=IGI[3]
endif
elseif x==2 then
if LN2==1 then
set IZI[1]=IGI[1]
elseif LN2==2 then
set IZI[1]=IGI[2]
set IZI[2]=IGI[1]
elseif LN2==3 then
set IZI[1]=IGI[2]
set IZI[2]=IGI[3]
set IZI[3]=IGI[1]
elseif LN2==4 then
set IZI[1]=IGI[3]
set IZI[2]=IGI[1]
set IZI[3]=IGI[4]
set IZI[4]=IGI[2]
elseif LN2==5 then
set IZI[1]=IGI[4]
set IZI[2]=IGI[3]
set IZI[3]=IGI[2]
set IZI[4]=IGI[5]
set IZI[5]=IGI[1]
endif
else
if LN2==1 then
set IZI[1]=IGI[1]
elseif LN2==2 then
set IZI[1]=IGI[1]
set IZI[2]=IGI[2]
elseif LN2==3 then
set IZI[1]=IGI[3]
set IZI[2]=IGI[2]
set IZI[3]=IGI[1]
elseif LN2==4 then
set IZI[1]=IGI[2]
set IZI[2]=IGI[4]
set IZI[3]=IGI[3]
set IZI[4]=IGI[1]
elseif LN2==5 then
set IZI[1]=IGI[5]
set IZI[2]=IGI[1]
set IZI[3]=IGI[3]
set IZI[4]=IGI[4]
set IZI[5]=IGI[2]
endif
endif
set i=1
loop
exitwhen i>LN2
set IGI[i]=IZI[i]
set i=i+1
endloop
set i=1
loop
exitwhen i>LN2
set IZI[i]=IHI[i]
set i=i+1
endloop
set x=GetRandomInt(1,3)
if x==1 then
if LN2==1 then
set IZI[1]=IHI[1]
elseif LN2==2 then
set IZI[1]=IHI[2]
set IZI[2]=IHI[1]
elseif LN2==3 then
set IZI[1]=IHI[3]
set IZI[2]=IHI[1]
set IZI[3]=IHI[2]
elseif LN2==4 then
set IZI[1]=IHI[4]
set IZI[2]=IHI[3]
set IZI[3]=IHI[2]
set IZI[4]=IHI[1]
elseif LN2==5 then
set IZI[1]=IHI[5]
set IZI[2]=IHI[4]
set IZI[3]=IHI[1]
set IZI[4]=IHI[2]
set IZI[5]=IHI[3]
endif
elseif x==2 then
if LN2==1 then
set IZI[1]=IHI[1]
elseif LN2==2 then
set IZI[1]=IHI[2]
set IZI[2]=IHI[1]
elseif LN2==3 then
set IZI[1]=IHI[2]
set IZI[2]=IHI[3]
set IZI[3]=IHI[1]
elseif LN2==4 then
set IZI[1]=IHI[3]
set IZI[2]=IHI[1]
set IZI[3]=IHI[4]
set IZI[4]=IHI[2]
elseif LN2==5 then
set IZI[1]=IHI[4]
set IZI[2]=IHI[3]
set IZI[3]=IHI[2]
set IZI[4]=IHI[5]
set IZI[5]=IHI[1]
endif
else
if LN2==1 then
set IZI[1]=IHI[1]
elseif LN2==2 then
set IZI[1]=IHI[1]
set IZI[2]=IHI[2]
elseif LN2==3 then
set IZI[1]=IHI[3]
set IZI[2]=IHI[2]
set IZI[3]=IHI[1]
elseif LN2==4 then
set IZI[1]=IHI[2]
set IZI[2]=IHI[4]
set IZI[3]=IHI[3]
set IZI[4]=IHI[1]
elseif LN2==5 then
set IZI[1]=IHI[5]
set IZI[2]=IHI[1]
set IZI[3]=IHI[3]
set IZI[4]=IHI[4]
set IZI[5]=IHI[2]
endif
endif
set i=1
loop
exitwhen i>LN2
set IHI[i]=IZI[i]
set i=i+1
endloop
set TJI=GetRandomInt(1,2)
if IVI>=IWI and IVI>=IXI then
call ClearTextMessages()
call QRI(bj_FORCE_ALL_PLAYERS,45,GetObjectName(1848653146)+" "+IYI)
call QRI(bj_FORCE_ALL_PLAYERS,45," ")
set i=1
set x=1
loop
exitwhen i>5
if T3I(BO[i])then
if TJI==1 then
set K1[GetPlayerId(BO[i])]=CreateUnitAtLoc(BO[i],ICI[x],ZC1,bj_UNIT_FACING)
else
set K1[GetPlayerId(BO[i])]=CreateUnitAtLoc(BO[i],IDI[x],ZC1,bj_UNIT_FACING)
endif
set x=x+1
endif
set i=i+1
endloop
set i=1
set x=1
loop
exitwhen i>5
if T3I(CO[i])then
if TJI==1 then
set K1[GetPlayerId(CO[i])]=CreateUnitAtLoc(CO[i],IDI[x],ZD1,bj_UNIT_FACING)
else
set K1[GetPlayerId(CO[i])]=CreateUnitAtLoc(CO[i],ICI[x],ZD1,bj_UNIT_FACING)
endif
set x=x+1
endif
set i=i+1
endloop
elseif IWI>=IVI and IWI>=IXI then
call ClearTextMessages()
call QRI(bj_FORCE_ALL_PLAYERS,45,GetObjectName(1848653146)+" "+IJI)
call QRI(bj_FORCE_ALL_PLAYERS,45," ")
set i=1
set x=1
loop
exitwhen i>5
if T3I(BO[i])then
if TJI==1 then
set K1[GetPlayerId(BO[i])]=CreateUnitAtLoc(BO[i],IEI[x],ZC1,bj_UNIT_FACING)
else
set K1[GetPlayerId(BO[i])]=CreateUnitAtLoc(BO[i],IFI[x],ZC1,bj_UNIT_FACING)
endif
set x=x+1
endif
set i=i+1
endloop
set i=1
set x=1
loop
exitwhen i>5
if T3I(CO[i])then
if TJI==1 then
set K1[GetPlayerId(CO[i])]=CreateUnitAtLoc(CO[i],IFI[x],ZD1,bj_UNIT_FACING)
else
set K1[GetPlayerId(CO[i])]=CreateUnitAtLoc(CO[i],IEI[x],ZD1,bj_UNIT_FACING)
endif
set x=x+1
endif
set i=i+1
endloop
elseif IXI>=IVI and IXI>=IWI then
call ClearTextMessages()
call QRI(bj_FORCE_ALL_PLAYERS,45,GetObjectName(1848653146)+" "+IKI)
call QRI(bj_FORCE_ALL_PLAYERS,45," ")
set i=1
set x=1
loop
exitwhen i>5
if T3I(BO[i])then
if TJI==1 then
set K1[GetPlayerId(BO[i])]=CreateUnitAtLoc(BO[i],IGI[x],ZC1,bj_UNIT_FACING)
else
set K1[GetPlayerId(BO[i])]=CreateUnitAtLoc(BO[i],IHI[x],ZC1,bj_UNIT_FACING)
endif
set x=x+1
endif
set i=i+1
endloop
set i=1
set x=1
loop
exitwhen i>5
if T3I(CO[i])then
if TJI==1 then
set K1[GetPlayerId(CO[i])]=CreateUnitAtLoc(CO[i],IHI[x],ZD1,bj_UNIT_FACING)
else
set K1[GetPlayerId(CO[i])]=CreateUnitAtLoc(CO[i],IGI[x],ZD1,bj_UNIT_FACING)
endif
set x=x+1
endif
set i=i+1
endloop
endif
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,70,false)
call TriggerAddCondition(t,Condition(function LK2))
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
call RemoveLocation(LY2)
call RemoveLocation(LJ2)
set ZC1=null
set ZD1=null
set LY2=null
set LJ2=null
set t=null
set LM2=null
return false
endfunction
function LT2 takes integer i returns integer
if i==1 then
return RQI(DY0[GetRandomInt(1,DJ0)])
elseif i==2 then
return RQI(DZ0[GetRandomInt(1,DV0)])
elseif i==3 then
return RQI(DW0[GetRandomInt(1,DX0)])
elseif i==4 then
return RQI(DM0[GetRandomInt(1,DN0)])
elseif i==5 then
return RQI(DK0[GetRandomInt(1,DL0)])
endif
return 0
endfunction
function LR2 takes integer i returns integer
local integer RBI
local integer RCI
local integer R4O
set R4O=LT2(i)
if F2 then
return R4O
endif
loop
exitwhen S2[R4O]==false
set R4O=LT2(i)
endloop
set S2[R4O]=true
return R4O
endfunction
function LP2 takes nothing returns nothing
local integer i=DE0
loop
exitwhen i>DH0
set S2[i]=false
set i=i+1
endloop
endfunction
function LQ2 takes nothing returns boolean
local integer LU2=GetPlayerId(GetTriggerPlayer())
local string M02=SubString(GetEventPlayerChatString(),8,9)
local integer MI2=0
if M02=="1"then
set MI2=1
elseif M02=="2"then
set MI2=2
elseif M02=="3"then
set MI2=3
endif
if MI2==0 then
call PYI(GetTriggerPlayer(),GetObjectName(1848652612))
return false
endif
if(LoadBoolean(LY,(2001),(950+LU2)))then
call PYI(GetTriggerPlayer(),GetObjectName(1848652609))
return false
endif
call SaveBoolean(LY,(2001),(950+LU2),(true))
if MI2==1 then
call SaveInteger(LY,(2001),(126),(1+(LoadInteger(LY,(2001),(126)))))
elseif MI2==2 then
call SaveInteger(LY,(2001),(127),(1+(LoadInteger(LY,(2001),(127)))))
else
call SaveInteger(LY,(2001),(128),(1+(LoadInteger(LY,(2001),(128)))))
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,20,GetObjectName(1848654157)+" Option "+I2S(MI2)+".")
return false
endfunction
function WN2 takes nothing returns nothing
local integer LN2=T8I(OO)
local integer LS2=T8I(AO)
local integer i
local integer x
local trigger t=CreateTrigger()
local location ZC1=GetRectCenter(F4)
local location ZD1=GetRectCenter(E4)
local location LY2=GetRectCenter(O4)
local location LJ2=GetRectCenter(S3)
local integer TJI
local trigger t2
set N2=true
set O3=false
set A3=false
call TZI()
call PanCameraToTimedLocForPlayer(BO[1],LY2,0)
call PanCameraToTimedLocForPlayer(BO[2],LY2,0)
call PanCameraToTimedLocForPlayer(BO[3],LY2,0)
call PanCameraToTimedLocForPlayer(BO[4],LY2,0)
call PanCameraToTimedLocForPlayer(BO[5],LY2,0)
call PanCameraToTimedLocForPlayer(CO[1],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[2],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[3],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[4],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[5],LJ2,0)
call TriggerRegisterPlayerChatEvent(t,BO[1],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-Option",false)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-Option",false)
call TriggerAddCondition(t,Condition(function LQ2))
call LP2()
set i=1
loop
exitwhen i>LN2
set ICI[i]=DC0[LR2(i)]
set IYI=IYI+GetObjectName(ICI[i])
set i=i+1
if i<=LN2 then
set IYI=IYI+"|c005BFEEA-|r"
endif
endloop
set IYI=IYI+" |c00FF0000vs |r"
set i=1
loop
exitwhen i>LS2
set IDI[i]=DC0[LR2(i)]
set IYI=IYI+GetObjectName(IDI[i])
set i=i+1
if i<=LS2 then
set IYI=IYI+"|c005BFEEA-|r"
endif
endloop
call LP2()
set i=1
loop
exitwhen i>LN2
set IEI[i]=DC0[LR2(i)]
set IJI=IJI+GetObjectName(IEI[i])+" "
set i=i+1
if i<=LN2 then
set IJI=IJI+"|c005BFEEA-|r"
endif
endloop
set IJI=IJI+" |c00FF0000vs |r"
set i=1
loop
exitwhen i>LS2
set IFI[i]=DC0[LR2(i)]
set IJI=IJI+GetObjectName(IFI[i])+" "
set i=i+1
if i<=LS2 then
set IJI=IJI+"|c005BFEEA-|r"
endif
endloop
call LP2()
set i=1
loop
exitwhen i>LN2
set IGI[i]=DC0[LR2(i)]
set IKI=IKI+GetObjectName(IGI[i])+" "
set i=i+1
if i<=LN2 then
set IKI=IKI+"|c005BFEEA-|r"
endif
endloop
set IKI=IKI+" |c00FF0000vs |r"
set i=1
loop
exitwhen i>LS2
set IHI[i]=DC0[LR2(i)]
set IKI=IKI+GetObjectName(IHI[i])+" "
set i=i+1
if i<=LS2 then
set IKI=IKI+"|c005BFEEA-|r"
endif
endloop
call QRI(bj_FORCE_ALL_PLAYERS,75," ")
call QRI(bj_FORCE_ALL_PLAYERS,75,GetObjectName(1848653396))
call QRI(bj_FORCE_ALL_PLAYERS,75,GetObjectName(1848653385)+" "+GetObjectName(1848653380))
call QRI(bj_FORCE_ALL_PLAYERS,75," ")
call QRI(bj_FORCE_ALL_PLAYERS,75,IYI)
call QRI(bj_FORCE_ALL_PLAYERS,75," ")
call QRI(bj_FORCE_ALL_PLAYERS,75,IJI)
call QRI(bj_FORCE_ALL_PLAYERS,75," ")
call QRI(bj_FORCE_ALL_PLAYERS,75,IKI)
set t2=CreateTrigger()
call TriggerRegisterTimerEvent(t2,30,false)
call TriggerAddCondition(t2,Condition(function LL2))
call SaveTriggerHandle(LY,(GetHandleId(t2)),(35),(t))
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
call RemoveLocation(LY2)
call RemoveLocation(LJ2)
set ZC1=null
set ZD1=null
set LY2=null
set LJ2=null
set t=null
set t2=null
endfunction
function M12 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer NPI=GetTriggerEvalCount(t)
local integer GW1=20-(NPI-(NPI/20)*20)
call LeaderboardSetLabel(ITI,"           "+GetObjectName(1848657242)+" "+I2S(GW1))
if NPI>125 then
call DestroyLeaderboard(ITI)
call HJ2()
call S0I(t)
endif
set t=null
return false
endfunction
function MO2 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function M12))
set ITI=CreateLeaderboard()
call LeaderboardSetStyle(ITI,true,false,false,false)
call LeaderboardDisplay(ITI,false)
call PlayerSetLeaderboard(BO[1],ITI)
call PlayerSetLeaderboard(BO[2],ITI)
call PlayerSetLeaderboard(BO[3],ITI)
call PlayerSetLeaderboard(BO[4],ITI)
call PlayerSetLeaderboard(BO[5],ITI)
call PlayerSetLeaderboard(CO[1],ITI)
call PlayerSetLeaderboard(CO[2],ITI)
call PlayerSetLeaderboard(CO[3],ITI)
call PlayerSetLeaderboard(CO[4],ITI)
call PlayerSetLeaderboard(CO[5],ITI)
set t=null
endfunction
function M22 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer KO2=(LoadInteger(LY,(S5I),(25)))
local player p1
local player p2
local player K22
local player K32
if KO2==0 then
if ILI==1 then
set p1=BO[1]
else
set p1=CO[1]
endif
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p1)])
if GetLocalPlayer()==p1 then
call LeaderboardDisplay(ITI,true)
else
call LeaderboardDisplay(ITI,false)
endif
elseif KO2==1 then
if ILI==1 then
set p1=CO[1]
set p2=CO[2]
set K22=BO[1]
else
set p1=BO[1]
set p2=BO[2]
set K22=CO[1]
endif
call TFI(K22)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(ITI,true)
else
call LeaderboardDisplay(ITI,false)
endif
elseif KO2==2 then
if ILI==1 then
set p1=BO[2]
set p2=BO[3]
set K22=CO[1]
set K32=CO[2]
else
set p1=CO[2]
set p2=CO[3]
set K22=BO[1]
set K32=BO[2]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(ITI,true)
else
call LeaderboardDisplay(ITI,false)
endif
elseif KO2==3 then
if ILI==1 then
set p1=CO[3]
set p2=CO[4]
set K22=BO[2]
set K32=BO[3]
else
set p1=BO[3]
set p2=BO[4]
set K22=CO[2]
set K32=CO[3]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(ITI,true)
else
call LeaderboardDisplay(ITI,false)
endif
elseif KO2==4 then
if ILI==1 then
set p1=BO[4]
set p2=BO[5]
set K22=CO[3]
set K32=CO[4]
else
set p1=CO[4]
set p2=CO[5]
set K22=BO[3]
set K32=BO[4]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(ITI,true)
else
call LeaderboardDisplay(ITI,false)
endif
elseif KO2==5 then
if ILI==1 then
set p1=CO[5]
set K22=BO[4]
set K32=BO[5]
else
set p1=BO[5]
set K22=CO[4]
set K32=CO[5]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IMI[GetPlayerId(p1)])
if GetLocalPlayer()==p1 then
call LeaderboardDisplay(ITI,true)
else
call LeaderboardDisplay(ITI,false)
endif
elseif KO2==6 then
if ILI==1 then
set K22=CO[5]
else
set K22=BO[5]
endif
call TFI(K22)
call LeaderboardDisplay(ITI,false)
call SuspendTimeOfDay(false)
endif
if KO2>6 then
set ISI=true
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveInteger(LY,(S5I),(25),(KO2+1))
endif
set t=null
set p1=null
set p2=null
set K22=null
set K32=null
return false
endfunction
function M32 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I
call S0I(t)
call SuspendTimeOfDay(true)
set ILI=GetRandomInt(1,2)
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
if ILI==1 then
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848653131)+" "+C0[GetPlayerId(BO[0])]+GetObjectName(1848653365)+"|r"+" "+GetObjectName(1848653366))
else
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848653131)+" "+C0[GetPlayerId(CO[0])]+GetObjectName(1848653379)+"|r"+" "+GetObjectName(1848653366))
endif
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,20,true)
call TriggerAddCondition(t,Condition(function M22))
call SaveInteger(LY,(S5I),(25),(0))
call MO2()
call TriggerEvaluate(t)
set t=null
return false
endfunction
function WP2 takes nothing returns nothing
local trigger t
local integer x=1
set INI=true
set BL=180
set A3=false
set O3=false
call OZ2()
set IMI[GetPlayerId(BO[1])]=GetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(BO[2])]=GetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(BO[3])]=GetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(BO[4])]=GetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(BO[5])]=GetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(CO[1])]=GetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(CO[2])]=GetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(CO[3])]=GetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(CO[4])]=GetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD)
set IMI[GetPlayerId(CO[5])]=GetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD)
call SetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD,0)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,15-TimerGetElapsed(M),false)
call TriggerAddCondition(t,Condition(function M32))
set t=null
endfunction
function M42 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer NPI=GetTriggerEvalCount(t)
local integer GW1=20-(NPI-(NPI/20)*20)
call LeaderboardSetLabel(O0I,"           "+GetObjectName(1848657242)+" "+I2S(GW1))
if NPI>125 then
call DestroyLeaderboard(O0I)
call HJ2()
call S0I(t)
endif
set t=null
return false
endfunction
function M52 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function M42))
set O0I=CreateLeaderboard()
call LeaderboardSetStyle(O0I,true,false,false,false)
call LeaderboardDisplay(O0I,false)
call PlayerSetLeaderboard(BO[1],O0I)
call PlayerSetLeaderboard(BO[2],O0I)
call PlayerSetLeaderboard(BO[3],O0I)
call PlayerSetLeaderboard(BO[4],O0I)
call PlayerSetLeaderboard(BO[5],O0I)
call PlayerSetLeaderboard(CO[1],O0I)
call PlayerSetLeaderboard(CO[2],O0I)
call PlayerSetLeaderboard(CO[3],O0I)
call PlayerSetLeaderboard(CO[4],O0I)
call PlayerSetLeaderboard(CO[5],O0I)
set t=null
endfunction
function M62 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer KO2=(LoadInteger(LY,(S5I),(25)))
local player p1
local player p2
local player K22
local player K32
if KO2==0 then
if IRI==1 then
set p1=BO[1]
else
set p1=CO[1]
endif
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p1)])
if GetLocalPlayer()==p1 then
call LeaderboardDisplay(O0I,true)
else
call LeaderboardDisplay(O0I,false)
endif
elseif KO2==1 then
if IRI==1 then
set p1=CO[1]
set p2=CO[2]
set K22=BO[1]
else
set p1=BO[1]
set p2=BO[2]
set K22=CO[1]
endif
call TFI(K22)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(O0I,true)
else
call LeaderboardDisplay(O0I,false)
endif
elseif KO2==2 then
if IRI==1 then
set p1=BO[2]
set p2=BO[3]
set K22=CO[1]
set K32=CO[2]
else
set p1=CO[2]
set p2=CO[3]
set K22=BO[1]
set K32=BO[2]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(O0I,true)
else
call LeaderboardDisplay(O0I,false)
endif
elseif KO2==3 then
if IRI==1 then
set p1=CO[3]
set p2=CO[4]
set K22=BO[2]
set K32=BO[3]
else
set p1=BO[3]
set p2=BO[4]
set K22=CO[2]
set K32=CO[3]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(O0I,true)
else
call LeaderboardDisplay(O0I,false)
endif
elseif KO2==4 then
if IRI==1 then
set p1=BO[4]
set p2=BO[5]
set K22=CO[3]
set K32=CO[4]
else
set p1=CO[4]
set p2=CO[5]
set K22=BO[3]
set K32=BO[4]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p2)]+(D80[GetPlayerId((p2))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p1)])
call SetPlayerState(p2,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p2)])
if GetLocalPlayer()==p1 or GetLocalPlayer()==p2 then
call LeaderboardDisplay(O0I,true)
else
call LeaderboardDisplay(O0I,false)
endif
elseif KO2==5 then
if IRI==1 then
set p1=CO[5]
set K22=BO[4]
set K32=BO[5]
else
set p1=BO[5]
set K22=CO[4]
set K32=CO[5]
endif
call TFI(K22)
call TFI(K32)
call QRI(bj_FORCE_ALL_PLAYERS,15.00,C0[GetPlayerId(p1)]+(D80[GetPlayerId((p1))])+"|r"+" "+GetObjectName(1848653364))
call SetPlayerState(p1,PLAYER_STATE_RESOURCE_GOLD,IPI[GetPlayerId(p1)])
if GetLocalPlayer()==p1 then
call LeaderboardDisplay(O0I,true)
else
call LeaderboardDisplay(O0I,false)
endif
elseif KO2==6 then
if IRI==1 then
set K22=CO[5]
else
set K22=BO[5]
endif
call TFI(K22)
call LeaderboardDisplay(O0I,false)
call SuspendTimeOfDay(false)
endif
if KO2>6 then
set IUI=true
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SaveInteger(LY,(S5I),(25),(KO2+1))
endif
set t=null
set p1=null
set p2=null
set K22=null
set K32=null
return false
endfunction
function M72 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local trigger M82=(LoadTriggerHandle(LY,(S5I),(169)))
set TP0=true
call S0I(M82)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,20,true)
call TriggerAddCondition(t,Condition(function M62))
call SaveInteger(LY,(S5I),(25),(0))
call SetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call EnableTrigger(EV0)
call EnableTrigger(DN)
set IRI=GetRandomInt(1,2)
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
if IRI==1 then
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848654159)+" "+GetObjectName(1848653131)+" "+C0[GetPlayerId(BO[0])]+GetObjectName(1848653365)+"|r"+" "+GetObjectName(1848653366))
else
call QRI(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName(1848654159)+" "+GetObjectName(1848653131)+" "+C0[GetPlayerId(CO[0])]+GetObjectName(1848653379)+"|r"+" "+GetObjectName(1848653366))
endif
call QRI(bj_FORCE_ALL_PLAYERS,15.00," ")
call M52()
call TriggerEvaluate(t)
set t=null
set M82=null
return false
endfunction
function M92 takes nothing returns boolean
local unit SFI=GetSoldUnit()
local string MA2=C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r"
call QRI(bj_FORCE_ALL_PLAYERS,20,MA2+" "+GetObjectName(1848654153)+" "+GetUnitName(SFI)+" "+GetObjectName(1848654158))
call TCI(GetUnitTypeId(GetSoldUnit()))
call FL1("Ban"+I2S(GetPlayerId(GetOwningPlayer(GetSoldUnit()))),GetUnitTypeId(GetSoldUnit()))
call RemoveUnit(GetSoldUnit())
set SFI=null
return false
endfunction
function MB2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local trigger M82=CreateTrigger()
local integer S5I
local string MC2=C0[GetPlayerId(BO[1])]+(D80[GetPlayerId((BO[1]))])+"|r"
local string MD2=C0[GetPlayerId(CO[1])]+(D80[GetPlayerId((CO[1]))])+"|r"
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
call QRI(bj_FORCE_ALL_PLAYERS,20.00,MC2+" "+GetObjectName(1848654155))
call QRI(bj_FORCE_ALL_PLAYERS,20.00,MD2+" "+GetObjectName(1848654155))
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
call S0I(t)
call UMI(M82,EVENT_PLAYER_UNIT_SELL)
call TriggerAddCondition(M82,Condition(function M92))
call SuspendTimeOfDay(true)
call DisableTrigger(EV0)
call DisableTrigger(DN)
call SetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD,1000)
call SetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD,1000)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveTriggerHandle(LY,(S5I),(169),(M82))
call TriggerRegisterTimerEvent(t,20,false)
call TriggerAddCondition(t,Condition(function M72))
set M82=null
set t=null
return false
endfunction
function WQ2 takes nothing returns nothing
local trigger t
local location ZC1=GetRectCenter(N4)
local location ZD1=GetRectCenter(S4)
local integer x=1
loop
exitwhen x>5
if T3I(BO[x])then
call CreateUnitAtLoc(BO[x],1848651843,ZD1,bj_UNIT_FACING)
endif
if T3I(CO[x])then
call CreateUnitAtLoc(CO[x],1848651843,ZC1,bj_UNIT_FACING)
endif
set x=x+1
endloop
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set IQI=true
set BL=180
set A3=false
set O3=false
set TP0=false
call OZ2()
set IPI[GetPlayerId(BO[1])]=GetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(BO[2])]=GetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(BO[3])]=GetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(BO[4])]=GetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(BO[5])]=GetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(CO[1])]=GetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(CO[2])]=GetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(CO[3])]=GetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(CO[4])]=GetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD)
set IPI[GetPlayerId(CO[5])]=GetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD)
call SetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD,0)
call SetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD,0)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,15-TimerGetElapsed(M),false)
call TriggerAddCondition(t,Condition(function MB2))
set t=null
set ZC1=null
set ZD1=null
endfunction
function ME2 takes nothing returns boolean
local player T4I
set G3=true
set T4I=BO[1]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=BO[2]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=BO[3]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=BO[4]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=BO[5]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=CO[1]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=CO[2]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=CO[3]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=CO[4]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
set T4I=CO[5]
if(GetPlayerSlotState((T4I))==PLAYER_SLOT_STATE_EMPTY)==false and C3[GetPlayerId(T4I)]==false then
call RGI(T4I)
endif
return false
endfunction
function MF2 takes nothing returns boolean
set O3=false
set A3=false
call TZI()
return false
endfunction
function WR2 takes nothing returns nothing
local integer S5I=2000
local player array LN2
local player array LS2
local integer x=0
local integer y=0
local integer i=0
local trigger t=CreateTrigger()
set B3=true
call TriggerAddCondition(t,Condition(function ME2))
call TriggerRegisterTimerEvent(t,60-TimerGetElapsed(M),false)
set t=CreateTrigger()
call TriggerAddCondition(t,Condition(function MF2))
call TriggerRegisterTimerEvent(t,57-TimerGetElapsed(M),false)
set t=null
if T3I(BO[1])then
set x=x+1
set LN2[x]=BO[1]
endif
if T3I(BO[2])then
set x=x+1
set LN2[x]=BO[2]
endif
if T3I(BO[3])then
set x=x+1
set LN2[x]=BO[3]
endif
if T3I(BO[4])then
set x=x+1
set LN2[x]=BO[4]
endif
if T3I(BO[5])then
set x=x+1
set LN2[x]=BO[5]
endif
if T3I(CO[1])then
set y=y+1
set LS2[y]=CO[1]
endif
if T3I(CO[2])then
set y=y+1
set LS2[y]=CO[2]
endif
if T3I(CO[3])then
set y=y+1
set LS2[y]=CO[3]
endif
if T3I(CO[4])then
set y=y+1
set LS2[y]=CO[4]
endif
if T3I(CO[5])then
set y=y+1
set LS2[y]=CO[5]
endif
set i=1
loop
exitwhen i>x
call SavePlayerHandle(LY,(2000),(550+GetPlayerId(LN2[i])),(LS2[i]))
call SavePlayerHandle(LY,(2000),(550+GetPlayerId(LS2[i])),(LN2[i]))
set i=i+1
endloop
endfunction
function MH2 takes nothing returns nothing
call Q5I(GetEnumUnit())
endfunction
function MZ2 takes unit SFI returns nothing
local integer MV2=GetPlayerId(GetOwningPlayer(SFI))
set KO[MV2]=UnitItemInSlot(SFI,0)
set LO[MV2]=UnitItemInSlot(SFI,1)
set NO[MV2]=UnitItemInSlot(SFI,2)
set TO[MV2]=UnitItemInSlot(SFI,3)
set PO[MV2]=UnitItemInSlot(SFI,4)
set QO[MV2]=UnitItemInSlot(SFI,5)
endfunction
function MW2 takes player RZI,player RVI returns integer
local unit MX2=K1[GetPlayerId(RZI)]
local unit MY2=K1[GetPlayerId(RVI)]
call UnitRemoveBuffs(MX2,true,true)
call UnitRemoveBuffs(MY2,true,true)
if MX2==null and MY2==null then
call QRI(bj_FORCE_ALL_PLAYERS,15,C0[GetPlayerId(BO[0])]+(D80[GetPlayerId((RZI))])+" "+GetObjectName(1848653367)+" "+(D80[GetPlayerId((RVI))])+" "+GetObjectName(1848656176)+"|r")
elseif GetRandomInt(1,2)==1 then
if(MX2!=null)then
return GetUnitTypeId(MX2)
else
return GetUnitTypeId(MY2)
endif
else
if(MY2!=null)then
return GetUnitTypeId(MY2)
else
return GetUnitTypeId(MX2)
endif
endif
call QRI(bj_FORCE_ALL_PLAYERS,15,C0[GetPlayerId(BO[0])]+(D80[GetPlayerId((RZI))])+" "+GetObjectName(1848653367)+" "+(D80[GetPlayerId((RVI))])+" "+GetObjectName(1848654146))
return TYI()
endfunction
function MJ2 takes nothing returns nothing
if(GetUnitTypeId(GetEnumUnit())==1848651828)then
call RemoveUnit(GetEnumUnit())
endif
if(GetUnitTypeId(GetEnumUnit())==1865429043)then
call RemoveUnit(GetEnumUnit())
endif
endfunction
function MK2 takes nothing returns boolean
local integer TGI
local group ML2=NTI()
local unit MM2
local location LY2=GetRectCenter(O4)
local location LJ2=GetRectCenter(S3)
local integer MN2=T8I(OO)
local player array MS2
local player array MT2
local integer x
local integer y
local real MR2
local real MP2
local real MQ2
local integer MU2
local group Z51=NTI()
call GroupEnumUnitsInRect(Z51,GetWorldBounds(),Condition(function N1I))
call ForGroup(Z51,function MJ2)
call NSI(Z51)
set TGI=1
set x=1
set y=1
loop
exitwhen TGI>5
if(T3I(BO[TGI]))then
call MZ2(K1[GetPlayerId(BO[TGI])])
call GroupAddUnit(ML2,K1[GetPlayerId(BO[TGI])])
set MS2[x]=BO[TGI]
set x=x+1
endif
if(T3I(CO[TGI]))then
call MZ2(K1[GetPlayerId(CO[TGI])])
call GroupAddUnit(ML2,K1[GetPlayerId(CO[TGI])])
set MT2[y]=CO[TGI]
set y=y+1
endif
set TGI=TGI+1
endloop
set x=1
loop
exitwhen x>MN2
set MU2=MW2(MS2[x],MT2[x])
if(K1[GetPlayerId(MS2[x])]==null)then
set MR2=GetLocationX(LY2)+GetRandomReal(1,40)
set MP2=GetLocationY(LY2)+GetRandomReal(1,40)
set MQ2=270
else
set MR2=GetUnitX(K1[GetPlayerId(MS2[x])])
set MP2=GetUnitY(K1[GetPlayerId(MS2[x])])
set MQ2=GetUnitFacing(K1[GetPlayerId(MS2[x])])
call SetUnitPathing(K1[GetPlayerId(MS2[x])],false)
endif
set K1[GetPlayerId(MS2[x])]=CreateUnit(MS2[x],MU2,MR2,MP2,MQ2)
call SetUnitPathing(K1[GetPlayerId(MS2[x])],false)
call SetUnitPosition(K1[GetPlayerId(MS2[x])],MR2,MP2)
call UnitAddItem(K1[GetPlayerId(MS2[x])],KO[GetPlayerId(MS2[x])])
call UnitAddItem(K1[GetPlayerId(MS2[x])],LO[GetPlayerId(MS2[x])])
call UnitAddItem(K1[GetPlayerId(MS2[x])],NO[GetPlayerId(MS2[x])])
call UnitAddItem(K1[GetPlayerId(MS2[x])],TO[GetPlayerId(MS2[x])])
call UnitAddItem(K1[GetPlayerId(MS2[x])],PO[GetPlayerId(MS2[x])])
call UnitAddItem(K1[GetPlayerId(MS2[x])],QO[GetPlayerId(MS2[x])])
call ClearSelectionForPlayer(MS2[x])
call SelectUnitAddForPlayer(K1[GetPlayerId(MS2[x])],MS2[x])
call PanCameraToTimedForPlayer(MS2[x],MR2,MP2,0)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Awaken\\Awaken.mdl",MR2,MP2))
if(K1[GetPlayerId(MT2[x])]==null)then
set MR2=GetLocationX(LJ2)
set MP2=GetLocationY(LJ2)
set MQ2=270
else
set MR2=GetUnitX(K1[GetPlayerId(MT2[x])])
set MP2=GetUnitY(K1[GetPlayerId(MT2[x])])
set MQ2=GetUnitFacing(K1[GetPlayerId(MT2[x])])
call SetUnitPathing(K1[GetPlayerId(MT2[x])],false)
endif
set K1[GetPlayerId(MT2[x])]=CreateUnit(MT2[x],MU2,MR2,MP2,MQ2)
call SetUnitPathing(K1[GetPlayerId(MT2[x])],false)
call SetUnitPosition(K1[GetPlayerId(MT2[x])],MR2,MP2)
call UnitAddItem(K1[GetPlayerId(MT2[x])],KO[GetPlayerId(MT2[x])])
call UnitAddItem(K1[GetPlayerId(MT2[x])],LO[GetPlayerId(MT2[x])])
call UnitAddItem(K1[GetPlayerId(MT2[x])],NO[GetPlayerId(MT2[x])])
call UnitAddItem(K1[GetPlayerId(MT2[x])],TO[GetPlayerId(MT2[x])])
call UnitAddItem(K1[GetPlayerId(MT2[x])],PO[GetPlayerId(MT2[x])])
call UnitAddItem(K1[GetPlayerId(MT2[x])],QO[GetPlayerId(MT2[x])])
call ClearSelectionForPlayer(MT2[x])
call SelectUnitAddForPlayer(K1[GetPlayerId(MT2[x])],MT2[x])
call PanCameraToTimedForPlayer(MT2[x],MR2,MP2,0)
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Awaken\\Awaken.mdl",MR2,MP2))
set x=x+1
endloop
call ForGroup(ML2,function MH2)
call NSI(ML2)
set x=1
loop
exitwhen x>MN2
call SetUnitPathing(K1[GetPlayerId(MS2[x])],true)
call SetUnitPathing(K1[GetPlayerId(MT2[x])],true)
set x=x+1
endloop
call RemoveLocation(LY2)
call RemoveLocation(LJ2)
set ML2=null
set MM2=null
set LY2=null
set LJ2=null
set Z51=null
return false
endfunction
function N02 takes nothing returns boolean
set D2=true
return false
endfunction
function NI2 takes nothing returns boolean
set A3=false
set O3=false
call TZI()
return false
endfunction
function WZ2 takes nothing returns nothing
local trigger t=CreateTrigger()
call QRI(P2,10,GetObjectName(1848654152))
call QRI(P2,10,GetObjectName(1848654149))
set E2=true
call TCI(1211117641)
call TriggerRegisterTimerEvent(t,60-TimerGetElapsed(M),false)
call TriggerAddCondition(t,Condition(function MK2))
set t=CreateTrigger()
call TriggerAddCondition(t,Condition(function NI2))
call TriggerRegisterTimerEvent(t,57-TimerGetElapsed(M),false)
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,55+60-TimerGetElapsed(M),false)
call TriggerAddCondition(t,Condition(function N02))
set t=null
endfunction
function WT2 takes nothing returns nothing
local location ZC1=GetRectCenter(F4)
local location ZD1=GetRectCenter(E4)
local location LY2=GetRectCenter(O4)
local location LJ2=GetRectCenter(S3)
local integer TGI
local integer THI
local integer TJI
if not F2 then
call TZI()
endif
set J0=true
set T0=400
set O3=false
call PanCameraToTimedLocForPlayer(BO[1],LY2,0)
call PanCameraToTimedLocForPlayer(BO[2],LY2,0)
call PanCameraToTimedLocForPlayer(BO[3],LY2,0)
call PanCameraToTimedLocForPlayer(BO[4],LY2,0)
call PanCameraToTimedLocForPlayer(BO[5],LY2,0)
call PanCameraToTimedLocForPlayer(CO[1],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[2],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[3],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[4],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[5],LJ2,0)
if Y2 then
if TII(WO)then
loop
set TJI=GetRandomInt(DE0,DF0)
exitwhen R[TJI]==false
endloop
set K1[GetPlayerId(WO)]=CreateUnit(WO,DC0[TJI],GetLocationX(ZC1),GetLocationY(ZC1),270)
else
loop
set TJI=GetRandomInt(DG0,DH0)
exitwhen R[TJI]==false
endloop
set K1[GetPlayerId(WO)]=CreateUnit(WO,DC0[TJI],GetLocationX(ZD1),GetLocationY(ZD1),270)
endif
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
call RemoveLocation(LY2)
call RemoveLocation(LJ2)
return
endif
set A3=false
set TGI=1
set THI=5
loop
exitwhen TGI>THI
set K1[GetPlayerId(BO[TGI])]=null
if(T3I(BO[TGI]))then
loop
set TJI=GetRandomInt(DE0,DF0)
if(R[TJI]==false)then
if not F2 then
set R[TJI]=true
endif
set K1[GetPlayerId(BO[TGI])]=CreateUnitAtLoc(BO[TGI],DC0[TJI],ZC1,bj_UNIT_FACING)
endif
exitwhen(K1[GetPlayerId(BO[TGI])]!=null)
endloop
endif
set TGI=TGI+1
endloop
set TGI=1
set THI=5
loop
exitwhen TGI>THI
set K1[GetPlayerId(CO[TGI])]=null
if(T3I(CO[TGI]))then
loop
set TJI=GetRandomInt(DG0,DH0)
if(R[TJI]==false)then
if not F2 then
set R[TJI]=true
endif
set K1[GetPlayerId(CO[TGI])]=CreateUnitAtLoc(CO[TGI],DC0[TJI],ZD1,bj_UNIT_FACING)
endif
exitwhen(K1[GetPlayerId(CO[TGI])]!=null)
endloop
endif
set TGI=TGI+1
endloop
set A3=true
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
call RemoveLocation(LY2)
call RemoveLocation(LJ2)
endfunction
function N22 takes nothing returns nothing
set WL=true
call QRI(bj_FORCE_ALL_PLAYERS,10,GetObjectName(1848653387)+" "+GetObjectName(1848653388))
call DisableTrigger(GetTriggeringTrigger())
endfunction
function N32 takes nothing returns nothing
local integer N42=S2I(SubString(GetEventPlayerChatString(),6,StringLength(GetEventPlayerChatString())))
if N42>YL then
call PZI(WO,GetObjectName(1848652611))
elseif N42<10 then
call PZI(WO,GetObjectName(1848652361))
else
set YL=N42
call QRI(bj_FORCE_ALL_PLAYERS,10,GetObjectName(1848653400)+" "+I2S(YL)+" "+GetObjectName(1848653390))
call DisableTrigger(GetTriggeringTrigger())
endif
endfunction
function N52 takes nothing returns nothing
call DisableTrigger((LoadTriggerHandle(LY,(GetHandleId(GetTriggeringTrigger())),(170))))
call DisableTrigger((LoadTriggerHandle(LY,(GetHandleId(GetTriggeringTrigger())),(171))))
call DisableTrigger(GetTriggeringTrigger())
endfunction
function N62 takes nothing returns nothing
local trigger N72=CreateTrigger()
local trigger N82=CreateTrigger()
local trigger nd=CreateTrigger()
set YL=Q9I(DF0,DH0-DG0+1)
call QRI(bj_FORCE_ALL_PLAYERS,10.00," ")
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653391)+" -nd "+GetObjectName(1848653367)+" -lives xx "+GetObjectName(1848653393))
call QRI(bj_FORCE_ALL_PLAYERS,10.00,GetObjectName(1848653360)+" "+I2S(YL))
call TriggerRegisterTimerEvent(N72,15,false)
call TriggerAddAction(N72,function N52)
call SaveTriggerHandle(LY,(GetHandleId(N72)),(170),(nd))
call SaveTriggerHandle(LY,(GetHandleId(N72)),(171),(N82))
call TriggerRegisterPlayerChatEvent(nd,WO,"-nd",true)
call TriggerAddAction(nd,function N22)
call TriggerRegisterPlayerChatEvent(N82,WO,"-lives",false)
call TriggerAddAction(N82,function N32)
endfunction
function N92 takes nothing returns nothing
local integer NA2=(LoadInteger(LY,(GetHandleId(GetTriggeringTrigger())),(173)))
local integer TGI
local integer THI
local integer TJI
local integer O91
local location ZC1=GetRectCenter(N4)
local location ZD1=GetRectCenter(S4)
if Q2 then
return
endif
if TII(Player(NA2))then
set TGI=DE0
set THI=DF0
set O91=0
else
set TGI=DG0
set THI=DH0
set O91=1
endif
if K0 then
set TGI=DE0
set THI=DH0
if TII(Player(NA2))then
call CreateUnitAtLoc(Player(NA2),1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(Player(NA2),1848651843,ZD1,bj_UNIT_FACING)
else
call CreateUnitAtLoc(Player(NA2),1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(Player(NA2),1848651843,ZD1,bj_UNIT_FACING)
endif
else
set TGI=DE0
set THI=DH0
if TII(Player(NA2))then
call CreateUnitAtLoc(Player(NA2),1848651843,ZC1,bj_UNIT_FACING)
else
call CreateUnitAtLoc(Player(NA2),1848651843,ZD1,bj_UNIT_FACING)
endif
endif
if not Y0 then
loop
exitwhen TGI>THI
if R[TGI]==false then
call SetPlayerTechMaxAllowed(Player(NA2),DC0[TGI],1)
endif
set TGI=TGI+1
endloop
if(GetPlayerState(Player(NA2),PLAYER_STATE_RESOURCE_GOLD)<250)then
call SetPlayerState(Player(NA2),PLAYER_STATE_RESOURCE_GOLD,250)
endif
elseif(T1[O91]<YL)then
set K1[NA2]=null
if T3I(Player(NA2))then
loop
set TJI=TYI()
if R[TJI]==false then
set R[TJI]=true
if TII(Player(NA2))then
set K1[NA2]=CreateUnitAtLoc(Player(NA2),DC0[TJI],ZC1,bj_UNIT_FACING)
else
set K1[NA2]=CreateUnitAtLoc(Player(NA2),DC0[TJI],ZD1,bj_UNIT_FACING)
endif
endif
exitwhen K1[NA2]!=null
endloop
endif
endif
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
if not Y0 then
endif
endfunction
function WH2 takes nothing returns nothing
local location BFO
local real NB2
local trigger t
local integer NC2
local integer x
set X0=true
call TCI(1211117641)
set x=1
loop
exitwhen x>5
set NC2=GetPlayerId(BO[x])
set t=CreateTrigger()
call TriggerRegisterTimerExpireEvent(t,F0[NC2])
call TriggerAddAction(t,function N92)
call SaveInteger(LY,(GetHandleId(t)),(173),(NC2))
set NC2=GetPlayerId(CO[x])
set t=CreateTrigger()
call TriggerRegisterTimerExpireEvent(t,F0[NC2])
call TriggerAddAction(t,function N92)
call SaveInteger(LY,(GetHandleId(t)),(173),(NC2))
set x=x+1
endloop
call UnitRemoveAbility(CT0,1096906593)
call UnitRemoveAbility(CR0,1096906593)
call UnitRemoveAbility(CP0,1096906593)
call UnitRemoveAbility(CQ0,1096906593)
call UnitRemoveAbility(CU0,1096906593)
call UnitRemoveAbility(D00,1096906593)
call UnitRemoveAbility(DI0,1096906593)
call UnitRemoveAbility(D10,1096906593)
call UnitRemoveAbility(DO0,1096906593)
call UnitRemoveAbility(D20,1096906593)
call ExecuteFunc("N62")
endfunction
function X12 takes nothing returns nothing
local integer L42=GetRandomInt(1,4)
set G2=true
if(L42==1)then
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848657476))
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
call ExecuteFunc("X02")
endif
if(L42==2)then
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848657477))
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
call ExecuteFunc("XI2")
endif
if(L42==3)then
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848657483))
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
call ExecuteFunc("WN2")
endif
if(L42==4)then
call QRI(bj_FORCE_ALL_PLAYERS,20.00,GetObjectName(1848657485))
call QRI(bj_FORCE_ALL_PLAYERS,20.00," ")
call ExecuteFunc("WX2")
call ExecuteFunc("WM2")
endif
endfunction
function WL2 takes nothing returns nothing
set F2=true
call TCI(1211117641)
call TCI(1311788373)
endfunction
function WE2 takes nothing returns nothing
local integer ZB1=T8I(OO)
local integer ZA1=T8I(AO)
local integer QHI=ZB1+ZA1
local integer TGI
local integer NF2
local integer x
local integer y
local integer z
local player array NG2
local player array NH2
local integer w
local integer NZ2
local integer NV2
local location LY2=GetRectCenter(O4)
local location LJ2=GetRectCenter(S3)
local location ZC1=GetRectCenter(N4)
local location ZD1=GetRectCenter(S4)
set FO=true
call QK1(BO[1])
call QK1(BO[2])
call QK1(BO[3])
call QK1(BO[4])
call QK1(BO[5])
call QK1(CO[1])
call QK1(CO[2])
call QK1(CO[3])
call QK1(CO[4])
call QK1(CO[5])
set x=1
loop
exitwhen x>5
if T3I(BO[x])then
call CreateUnitAtLoc(BO[x],1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(BO[x],1848651843,ZD1,bj_UNIT_FACING)
endif
if T3I(CO[x])then
call CreateUnitAtLoc(CO[x],1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(CO[x],1848651843,ZD1,bj_UNIT_FACING)
endif
set x=x+1
endloop
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set NZ2=GetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD)
set NV2=GetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD)
set NG2[1]=null
set NG2[2]=null
set NG2[3]=null
set NG2[4]=null
set NG2[5]=null
set NG2[6]=null
set NG2[7]=null
set NG2[8]=null
set NG2[9]=null
set NG2[10]=null
set z=1
set w=1
set TGI=1
loop
exitwhen TGI>5
if(T3I(BO[TGI]))then
set NG2[w]=BO[TGI]
set w=w+1
else
set NH2[z]=BO[TGI]
set z=z+1
endif
set TGI=TGI+1
endloop
set TGI=1
loop
exitwhen TGI>5
if(T3I(CO[TGI]))then
set NG2[w]=CO[TGI]
set w=w+1
else
set NH2[z]=CO[TGI]
set z=z+1
endif
set TGI=TGI+1
endloop
set BO[1]=null
set BO[2]=null
set BO[3]=null
set BO[4]=null
set BO[5]=null
set CO[1]=null
set CO[2]=null
set CO[3]=null
set CO[4]=null
set CO[5]=null
set TGI=1
loop
exitwhen TGI>(QHI/2)
set NF2=GetRandomInt(1,QHI)
if(NG2[NF2]!=null)then
set BO[TGI]=NG2[NF2]
set NG2[NF2]=null
set TGI=TGI+1
endif
endloop
set x=TGI
set TGI=1
loop
exitwhen TGI>QHI-x+1
set NF2=GetRandomInt(1,QHI)
if(NG2[NF2]!=null)then
set CO[TGI]=NG2[NF2]
set NG2[NF2]=null
set TGI=TGI+1
endif
endloop
set z=TGI
set TGI=x
set y=1
loop
exitwhen TGI>5
set BO[TGI]=NH2[y]
set y=y+1
set TGI=TGI+1
endloop
set TGI=z
loop
exitwhen TGI>5
set CO[TGI]=NH2[y]
set y=y+1
set TGI=TGI+1
endloop
set TGI=0
loop
exitwhen TGI>5
set TGI=TGI+1
endloop
call SetPlayerTeam(BO[0],0)
call SetPlayerTeam(BO[1],0)
call SetPlayerTeam(BO[2],0)
call SetPlayerTeam(BO[3],0)
call SetPlayerTeam(BO[4],0)
call SetPlayerTeam(BO[5],0)
call SetPlayerTeam(CO[0],1)
call SetPlayerTeam(CO[1],1)
call SetPlayerTeam(CO[2],1)
call SetPlayerTeam(CO[3],1)
call SetPlayerTeam(CO[4],1)
call SetPlayerTeam(CO[5],1)
call Z11()
set x=0
set y=0
loop
exitwhen x>5
loop
exitwhen y>5
call SetPlayerAllianceStateBJ(BO[x],BO[y],3)
call SetPlayerAllianceStateBJ(CO[x],CO[y],3)
call SetPlayerAllianceStateBJ(BO[x],CO[y],0)
call SetPlayerAllianceStateBJ(CO[x],BO[y],0)
set y=y+1
endloop
set y=0
set x=x+1
endloop
call ForceClear(OO)
call ForceClear(AO)
call ForceAddPlayer(OO,BO[0])
call ForceAddPlayer(OO,BO[1])
call ForceAddPlayer(OO,BO[2])
call ForceAddPlayer(OO,BO[3])
call ForceAddPlayer(OO,BO[4])
call ForceAddPlayer(OO,BO[5])
call ForceAddPlayer(AO,CO[0])
call ForceAddPlayer(AO,CO[1])
call ForceAddPlayer(AO,CO[2])
call ForceAddPlayer(AO,CO[3])
call ForceAddPlayer(AO,CO[4])
call ForceAddPlayer(AO,CO[5])
call ExecuteFunc("ZO1")
call P7O()
set ZB1=T8I(OO)
set ZA1=T8I(AO)
set TGI=1
loop
exitwhen TGI>5
if(T3I(BO[TGI]))then
call SetPlayerStateBJ(BO[TGI],PLAYER_STATE_RESOURCE_GOLD,(4375/ZB1))
call SetPlayerStateBJ(BO[TGI],PLAYER_STATE_RESOURCE_LUMBER,0)
endif
if(T3I(CO[TGI]))then
call SetPlayerStateBJ(CO[TGI],PLAYER_STATE_RESOURCE_GOLD,(4375/ZA1))
call SetPlayerStateBJ(CO[TGI],PLAYER_STATE_RESOURCE_LUMBER,0)
endif
set TGI=TGI+1
endloop
if C2 then
set x=0
loop
exitwhen x>5
call SetPlayerAlliance(Player(0),BO[x],ConvertAllianceType(0),true)
call SetPlayerAlliance(Player(0),BO[x],ConvertAllianceType(4),true)
call SetPlayerAlliance(Player(0),CO[x],ConvertAllianceType(0),false)
call SetPlayerAlliance(Player(0),CO[x],ConvertAllianceType(4),false)
set x=x+1
endloop
endif
call ZI1()
set LY2=null
set LJ2=null
set ZC1=null
set ZD1=null
endfunction
function WF2 takes nothing returns nothing
local integer ZB1=T8I(OO)
local integer ZA1=T8I(AO)
local integer QHI=ZB1+ZA1
local integer TGI
local integer NF2
local integer x
local integer y
local integer z
local player array NG2
local player array NH2
local integer w
local integer NZ2
local integer NV2
local location LY2
local location LJ2
local location ZC1
local location ZD1
local integer NX2
set NX2=GetRandomInt(1,2)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,GetObjectName(1848657753))
if NX2==1 then
return
endif
set OII=true
set LY2=GetRectCenter(O4)
set LJ2=GetRectCenter(S3)
set ZC1=GetRectCenter(N4)
set ZD1=GetRectCenter(S4)
call QK1(BO[1])
call QK1(BO[2])
call QK1(BO[3])
call QK1(BO[4])
call QK1(BO[5])
call QK1(CO[1])
call QK1(CO[2])
call QK1(CO[3])
call QK1(CO[4])
call QK1(CO[5])
set x=1
loop
exitwhen x>5
if T3I(BO[x])then
call CreateUnitAtLoc(BO[x],1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(BO[x],1848651843,ZD1,bj_UNIT_FACING)
endif
if T3I(CO[x])then
call CreateUnitAtLoc(CO[x],1848651843,ZC1,bj_UNIT_FACING)
call CreateUnitAtLoc(CO[x],1848651843,ZD1,bj_UNIT_FACING)
endif
set x=x+1
endloop
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set NZ2=GetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD)
set NV2=GetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD)+GetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD)
set NG2[1]=BO[1]
set NG2[2]=BO[2]
set NG2[3]=BO[3]
set NG2[4]=BO[4]
set NG2[5]=BO[5]
set NG2[6]=CO[1]
set NG2[7]=CO[2]
set NG2[8]=CO[3]
set NG2[9]=CO[4]
set NG2[10]=CO[5]
set BO[1]=NG2[6]
set BO[2]=NG2[7]
set BO[3]=NG2[8]
set BO[4]=NG2[9]
set BO[5]=NG2[10]
set CO[1]=NG2[1]
set CO[2]=NG2[2]
set CO[3]=NG2[3]
set CO[4]=NG2[4]
set CO[5]=NG2[5]
call SetPlayerTeam(BO[0],0)
call SetPlayerTeam(BO[1],0)
call SetPlayerTeam(BO[2],0)
call SetPlayerTeam(BO[3],0)
call SetPlayerTeam(BO[4],0)
call SetPlayerTeam(BO[5],0)
call SetPlayerTeam(CO[0],1)
call SetPlayerTeam(CO[1],1)
call SetPlayerTeam(CO[2],1)
call SetPlayerTeam(CO[3],1)
call SetPlayerTeam(CO[4],1)
call SetPlayerTeam(CO[5],1)
call Z11()
set x=0
set y=0
loop
exitwhen x>5
loop
exitwhen y>5
call SetPlayerAllianceStateBJ(BO[x],BO[y],3)
call SetPlayerAllianceStateBJ(CO[x],CO[y],3)
call SetPlayerAllianceStateBJ(BO[x],CO[y],0)
call SetPlayerAllianceStateBJ(CO[x],BO[y],0)
set y=y+1
endloop
set y=0
set x=x+1
endloop
call ForceClear(OO)
call ForceClear(AO)
call ForceAddPlayer(OO,BO[0])
call ForceAddPlayer(OO,BO[1])
call ForceAddPlayer(OO,BO[2])
call ForceAddPlayer(OO,BO[3])
call ForceAddPlayer(OO,BO[4])
call ForceAddPlayer(OO,BO[5])
call ForceAddPlayer(AO,CO[0])
call ForceAddPlayer(AO,CO[1])
call ForceAddPlayer(AO,CO[2])
call ForceAddPlayer(AO,CO[3])
call ForceAddPlayer(AO,CO[4])
call ForceAddPlayer(AO,CO[5])
call ExecuteFunc("ZO1")
set ZB1=T8I(OO)
set ZA1=T8I(AO)
set TGI=1
loop
exitwhen TGI>5
if(T3I(BO[TGI]))then
call SetPlayerStateBJ(BO[TGI],PLAYER_STATE_RESOURCE_GOLD,(4375/ZB1))
call SetPlayerStateBJ(BO[TGI],PLAYER_STATE_RESOURCE_LUMBER,0)
endif
if(T3I(CO[TGI]))then
call SetPlayerStateBJ(CO[TGI],PLAYER_STATE_RESOURCE_GOLD,(4375/ZA1))
call SetPlayerStateBJ(CO[TGI],PLAYER_STATE_RESOURCE_LUMBER,0)
endif
set TGI=TGI+1
endloop
call PanCameraToTimedLocForPlayer(BO[1],LY2,0)
call PanCameraToTimedLocForPlayer(BO[2],LY2,0)
call PanCameraToTimedLocForPlayer(BO[3],LY2,0)
call PanCameraToTimedLocForPlayer(BO[4],LY2,0)
call PanCameraToTimedLocForPlayer(BO[5],LY2,0)
call PanCameraToTimedLocForPlayer(CO[1],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[2],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[3],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[4],LJ2,0)
call PanCameraToTimedLocForPlayer(CO[5],LJ2,0)
call DestroyFogModifier(CreateFogModifierRectBJ(true,BO[1],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,BO[2],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,BO[3],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,BO[4],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,BO[5],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,CO[1],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,CO[2],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,CO[3],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,CO[4],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
call DestroyFogModifier(CreateFogModifierRectBJ(true,CO[5],FOG_OF_WAR_MASKED,bj_mapInitialPlayableArea))
if C2 then
set x=0
loop
exitwhen x>5
call SetPlayerAlliance(Player(0),BO[x],ConvertAllianceType(0),true)
call SetPlayerAlliance(Player(0),BO[x],ConvertAllianceType(4),true)
call SetPlayerAlliance(Player(0),CO[x],ConvertAllianceType(0),false)
call SetPlayerAlliance(Player(0),CO[x],ConvertAllianceType(4),false)
set x=x+1
endloop
endif
call ZI1()
call P7O()
set LY2=null
set LJ2=null
set ZC1=null
set ZD1=null
endfunction
function WW2 takes nothing returns nothing
local integer TGI
local integer THI
set H2=true
set TGI=1
set THI=DJ0
loop
exitwhen TGI>THI
call TCI(DY0[TGI])
set TGI=TGI+1
endloop
set TGI=1
set THI=DX0
loop
exitwhen TGI>THI
call TCI(DW0[TGI])
set TGI=TGI+1
endloop
endfunction
function NJ2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SZI=(LoadInteger(LY,(S5I),(172)))
local player T4I
local integer x=1
loop
exitwhen x>5
set T4I=BO[x]
if T3I(T4I)and T4I!=WO then
set K1[GetPlayerId(T4I)]=CreateUnit(T4I,SZI,GetRectCenterX(O4),GetRectCenterY(O4),270)
endif
set T4I=CO[x]
if T3I(T4I)and T4I!=WO then
set K1[GetPlayerId(T4I)]=CreateUnit(T4I,SZI,GetRectCenterX(S3),GetRectCenterY(S3),270)
endif
set x=x+1
endloop
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set T4I=null
return false
endfunction
function NK2 takes nothing returns nothing
local integer x=1
local player T4I
local unit SFI=GetTriggerUnit()
local integer SZI=GetUnitTypeId(SFI)
local trigger t
local integer S5I
if(GetOwningPlayer(SFI)==WO and IsUnitType(SFI,UNIT_TYPE_HERO)==true)then
call DisableTrigger(GetTriggeringTrigger())
if S0[GetPlayerId(WO)]==false and Y0==false and J0==false then
call SetPlayerState(WO,PLAYER_STATE_RESOURCE_GOLD,250+GetPlayerState(WO,PLAYER_STATE_RESOURCE_GOLD))
endif
set D0[GetPlayerId(WO)]=true
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.01,false)
call TriggerAddCondition(t,Condition(function NJ2))
call SaveInteger(LY,(S5I),(172),(SZI))
endif
set T4I=null
set SFI=null
set t=null
endfunction
function WV2 takes nothing returns nothing
local integer x=1
local trigger t=CreateTrigger()
local region r=CreateRegion()
set Y2=true
call TCI(1211117641)
call TCI(1311788373)
loop
exitwhen x>5
if(BO[x]!=WO)then
call TFI(BO[x])
set S0[GetPlayerId(BO[x])]=true
set D0[GetPlayerId(BO[x])]=true
endif
if(CO[x]!=WO)then
call TFI(CO[x])
set S0[GetPlayerId(CO[x])]=true
set D0[GetPlayerId(CO[x])]=true
endif
set x=x+1
endloop
call RegionAddRect(r,bj_mapInitialPlayableArea)
call TriggerRegisterEnterRegion(t,r,Condition(function N1I))
call TriggerAddAction(t,function NK2)
endfunction
function WY2 takes nothing returns nothing
local integer TGI
local integer THI
set V2=true
set TGI=1
set THI=DJ0
loop
exitwhen TGI>THI
call TCI(DY0[TGI])
set TGI=TGI+1
endloop
set TGI=1
set THI=DV0
loop
exitwhen TGI>THI
call TCI(DZ0[TGI])
set TGI=TGI+1
endloop
endfunction
function WX2 takes nothing returns nothing
local integer TGI
local integer THI
set Z2=true
set TGI=1
set THI=DV0
loop
exitwhen TGI>THI
call TCI(DZ0[TGI])
set TGI=TGI+1
endloop
set TGI=1
set THI=DX0
loop
exitwhen TGI>THI
call TCI(DW0[TGI])
set TGI=TGI+1
endloop
endfunction
function WK2 takes nothing returns nothing
local integer TGI
local integer THI
set O1I=true
set TGI=1
set THI=DL0
loop
exitwhen TGI>THI
call TCI(DK0[TGI])
set TGI=TGI+1
endloop
endfunction
function WJ2 takes nothing returns nothing
local integer TGI
local integer THI
set OOI=true
set TGI=1
set THI=DN0
loop
exitwhen TGI>THI
call TCI(DM0[TGI])
set TGI=TGI+1
endloop
endfunction
function XO2 takes nothing returns nothing
set L0=true
endfunction
function X42 takes nothing returns nothing
set R0=true
call SetPlayerTechResearched(BO[0],1378889780,1)
call SetPlayerTechResearched(CO[0],1378889780,1)
call SetPlayerHandicapXP(BO[1],1.5)
call SetPlayerHandicapXP(BO[2],1.5)
call SetPlayerHandicapXP(BO[3],1.5)
call SetPlayerHandicapXP(BO[4],1.5)
call SetPlayerHandicapXP(BO[5],1.5)
call SetPlayerHandicapXP(CO[1],1.5)
call SetPlayerHandicapXP(CO[2],1.5)
call SetPlayerHandicapXP(CO[3],1.5)
call SetPlayerHandicapXP(CO[4],1.5)
call SetPlayerHandicapXP(CO[5],1.5)
endfunction
function X22 takes nothing returns nothing
set P0=true
call DisableTrigger(J20)
endfunction
function X32 takes nothing returns nothing
set Q0=true
endfunction
function NQ2 takes nothing returns nothing
set O3I=false
call QRI(bj_FORCE_ALL_PLAYERS,10,GetObjectName(1848657985))
call DisableTrigger(GetTriggeringTrigger())
endfunction
function NU2 takes nothing returns nothing
call DisableTrigger((LoadTriggerHandle(LY,(GetHandleId(GetTriggeringTrigger())),(174))))
call DisableTrigger(GetTriggeringTrigger())
endfunction
function S02 takes nothing returns nothing
local trigger N72=CreateTrigger()
local trigger nn=CreateTrigger()
call QRI(bj_FORCE_ALL_PLAYERS,10.00," ")
call QRI(bj_FORCE_ALL_PLAYERS,10.00,"Extra commands: -noneutrals can be entered in the following 15 seconds. ")
call TriggerRegisterTimerEvent(N72,15,false)
call TriggerAddAction(N72,function NU2)
call SaveTriggerHandle(LY,(GetHandleId(N72)),(174),(nn))
call TriggerRegisterPlayerChatEvent(nn,WO,"-noneutrals",true)
call TriggerAddAction(nn,function NQ2)
endfunction
function X52 takes nothing returns nothing
set O2I=true
call ExecuteFunc("S02")
endfunction
function X62 takes nothing returns nothing
set O4I=true
endfunction
function WG2 takes nothing returns nothing
set O5I=true
endfunction
function X82 takes nothing returns nothing
set O6I=true
endfunction
function X72 takes nothing returns nothing
set O7I=true
endfunction
function XA2 takes nothing returns nothing
set FL=true
set GL=false
endfunction
function XB2 takes nothing returns nothing
set O8I=true
endfunction
function X92 takes nothing returns nothing
set VL=true
set JL=true
endfunction
function XC2 takes nothing returns nothing
set ZL=true
endfunction
function S52 takes nothing returns nothing
local integer i=0
loop
exitwhen i>5
call SetPlayerName(BO[i],(D80[GetPlayerId((BO[i]))])+" ("+I2S(I[GetPlayerId(BO[i])])+"/"+I2S(O[GetPlayerId(BO[i])])+" | "+I2S(A[GetPlayerId(BO[i])])+"-"+I2S(B[GetPlayerId(BO[i])])+")")
call SetPlayerName(CO[i],(D80[GetPlayerId((CO[i]))])+" ("+I2S(I[GetPlayerId(CO[i])])+"/"+I2S(O[GetPlayerId(CO[i])])+" | "+I2S(A[GetPlayerId(CO[i])])+"-"+I2S(B[GetPlayerId(CO[i])])+")")
set i=i+1
endloop
endfunction
function S62 takes nothing returns boolean
if O9I==false then
if GetLocalPlayer()==D60 or GetLocalPlayer()==D70 then
call S52()
endif
endif
return false
endfunction
function XD2 takes nothing returns nothing
set O9I=true
endfunction
function S82 takes nothing returns nothing
local unit SFI=GetTriggerUnit()
call SetUnitScale(SFI,SMI(SFI)*OAI,SMI(SFI)*OAI,SMI(SFI)*OAI)
set SFI=null
endfunction
function S92 takes nothing returns boolean
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
call S82()
endif
return false
endfunction
function XE2 takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterEnterRectSimple(t,bj_mapInitialPlayableArea)
call TriggerAddCondition(t,Condition(function S92))
set OBI=true
set OAI=0.5
endfunction
function XF2 takes nothing returns nothing
set OCI=true
endfunction
function XG2 takes nothing returns nothing
set HL=true
endfunction
function SB2 takes nothing returns boolean
if GetLocalPlayer()==D60 or GetLocalPlayer()==D70 then
if GetTriggerEvalCount(GetTriggeringTrigger())==1 then
call CameraSetupSetDestPosition(OEI,0,0,0.0)
else
call CameraSetupSetDestPosition(OEI,GetCameraTargetPositionX(),GetCameraTargetPositionY(),0.0)
endif
call CameraSetupApplyForPlayer(true,OEI,GetLocalPlayer(),0)
call SetTerrainFogEx(0,0.0,100000.0,0.500,0.353,0.314,0.235)
endif
return false
endfunction
function XZ2 takes nothing returns nothing
local trigger t=CreateTrigger()
set ODI=true
set OEI=CreateCameraSetup()
call CameraSetupSetField(OEI,CAMERA_FIELD_ZOFFSET,0.0,0.0)
call CameraSetupSetField(OEI,CAMERA_FIELD_ROTATION,90.0,0.0)
call CameraSetupSetField(OEI,CAMERA_FIELD_ANGLE_OF_ATTACK,304.0,0.0)
call CameraSetupSetField(OEI,CAMERA_FIELD_TARGET_DISTANCE,2500.0,0.0)
call CameraSetupSetField(OEI,CAMERA_FIELD_ROLL,0.0,0.0)
call CameraSetupSetField(OEI,CAMERA_FIELD_FIELD_OF_VIEW,70.0,0.0)
call CameraSetupSetField(OEI,CAMERA_FIELD_FARZ,16000.0,0.0)
call CameraSetupSetDestPosition(OEI,0.0,0.0,0.0)
call TriggerRegisterTimerEvent(t,180,true)
call TriggerRegisterTimerEvent(t,0.1,false)
call TriggerAddCondition(t,Condition(function SB2))
set t=null
endfunction
function SC2 takes nothing returns boolean
return TII(GetOwningPlayer(GetFilterUnit()))and RRI(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())!=1211117642
endfunction
function SD2 takes nothing returns boolean
return TOI(GetOwningPlayer(GetFilterUnit()))and RRI(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())!=1211117642
endfunction
function SE2 takes nothing returns nothing
local unit u=GetEnumUnit()
call SetUnitState(u,UNIT_STATE_LIFE,GetUnitState(u,UNIT_STATE_LIFE)+200)
call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)+200)
call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)+150)
call AddHeroXP(u,248,true)
set u=null
endfunction
function SF2 takes integer i,integer JF2,integer r,integer g,integer b,integer a,real x,real y,boolean SG2 returns nothing
local integer S5I=GetHandleId(GetTriggeringTrigger())
local image SH2=(LoadImageHandle(LY,(S5I),(476+i)))
local image SZ2=(LoadImageHandle(LY,(S5I),(484+i)))
if SH2!=null then
call DestroyImage(SH2)
call SaveImageHandle(LY,(S5I),(476+i),(null))
set SH2=null
endif
if SZ2!=null then
call DestroyImage(SZ2)
call SaveImageHandle(LY,(S5I),(484+i),(null))
set SZ2=null
endif
if SG2==false or JF2<1 then
return
endif
if StringLength(I2S(JF2))>1 then
call JD2("Fonts\\"+SubString(I2S(JF2),0,1)+".blp",120,120,x-30,y,0,true)
call SetImageColor(MK,r,g,b,a)
set SH2=MK
call JD2("Fonts\\"+SubString(I2S(JF2),1,2)+".blp",120,120,x+30,y,0,true)
call SetImageColor(MK,r,g,b,a)
set SZ2=MK
else
call JD2("Fonts\\0.blp",120,120,x-30,y,0,true)
call SetImageColor(MK,r,g,b,a)
set SH2=MK
call JD2("Fonts\\"+SubString(I2S(JF2),0,1)+".blp",120,120,x+30,y,0,true)
call SetImageColor(MK,r,g,b,a)
set SZ2=MK
endif
call SaveImageHandle(LY,(S5I),(476+i),(SH2))
call SaveImageHandle(LY,(S5I),(484+i),(SZ2))
set SH2=null
set SZ2=null
endfunction
function SV2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local group SW2=NTI()
local group SX2=NTI()
local integer SY2
local integer SJ2
local real x
local real y
local rect r
local player SK2
local player SL2
local integer i=0
local integer Q4I
local unit CP
local real Z7O
local real SOI=(TimerGetElapsed(M))
loop
exitwhen i>5
set r=(LoadRectHandle(LY,(S5I),(460+i)))
set Q4I=(LoadInteger(LY,(S5I),(492+i)))
set CP=(LoadUnitHandle(LY,(S5I),(452+i)))
set SK2=GetOwningPlayer(CP)
set SL2=(LoadPlayerHandle(LY,(S5I),(468+i)))
set x=GetRectCenterX(r)
set y=GetRectCenterY(r)
call GroupEnumUnitsInRect(SW2,r,Condition(function SC2))
call GroupEnumUnitsInRect(SX2,r,Condition(function SD2))
set SY2=CountUnitsInGroup(SW2)
set SJ2=CountUnitsInGroup(SX2)
if(SY2>0 and SJ2>0)or(SY2==0 and SJ2==0)then
if SK2==EO then
set SL2=EO
call SavePlayerHandle(LY,(S5I),(468+i),(SL2))
endif
set Q4I=61
call SaveInteger(LY,(S5I),(492+i),(Q4I))
elseif SY2>0 and SJ2==0 then
set SL2=BO[1]
call SavePlayerHandle(LY,(S5I),(468+i),(SL2))
set Q4I=Q4I-SY2
call SaveInteger(LY,(S5I),(492+i),(Q4I))
elseif SJ2>0 and SY2==0 then
set SL2=CO[1]
call SavePlayerHandle(LY,(S5I),(468+i),(SL2))
set Q4I=Q4I-SJ2
call SaveInteger(LY,(S5I),(492+i),(Q4I))
endif
if SL2==EO and SK2!=EO then
call SetUnitColor(CP,GetPlayerColor(SL2))
call SetUnitOwner(CP,SL2,false)
call SF2(i,Q4I,255,0,0,255,x,y,false)
elseif SL2==SK2 then
call SF2(i,Q4I,255,0,0,255,x,y,false)
set Q4I=61
call SaveInteger(LY,(S5I),(492+i),(Q4I))
elseif SL2!=EO then
if Q4I<61 then
call SF2(i,Q4I,255,0,0,255,x,y,true)
else
call SF2(i,Q4I,255,0,0,255,x,y,false)
endif
if Q4I<1 then
call PingMinimapEx(x,y,2,255,255,255,false)
call PHI(SL2,"Sound\\Interface\\Rescue.wav")
call SetUnitOwner(CP,SL2,false)
set Q4I=61
call SaveInteger(LY,(S5I),(492+i),(Q4I))
call SaveReal(LY,(S5I),(500+i),((SOI)*1.0))
if TII(SL2)then
call SetUnitColor(CP,GetPlayerColor(BO[0]))
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,"|c00ff0303The Sentinel now controls a Capture Point.|r")
call ForGroup(SW2,function SE2)
else
call SetUnitColor(CP,GetPlayerColor(CO[0]))
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,10,"|c00ff0303The Scourge now controls a Capture Point.|r")
call ForGroup(SX2,function SE2)
endif
endif
endif
set i=i+1
endloop
call NSI(SW2)
call NSI(SX2)
set SW2=null
set SX2=null
return false
endfunction
function SM2 takes nothing returns boolean
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local fogmodifier I31
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function SV2))
call PingMinimapEx(GetRectCenterX(KB),GetRectCenterY(KB),4,255,255,255,false)
call PingMinimapEx(GetRectCenterX(MB),GetRectCenterY(MB),4,255,255,255,false)
call PingMinimapEx(GetRectCenterX(TB),GetRectCenterY(TB),4,255,255,255,false)
call PingMinimapEx(GetRectCenterX(LB),GetRectCenterY(LB),4,255,255,255,false)
call PingMinimapEx(GetRectCenterX(SB),GetRectCenterY(SB),4,255,255,255,false)
call PingMinimapEx(GetRectCenterX(RB),GetRectCenterY(RB),4,255,255,255,false)
set OGI=CreateUnit(EO,1852010546,GetRectCenterX(KB),GetRectCenterY(KB),0)
set OHI=CreateUnit(EO,1852010546,GetRectCenterX(MB),GetRectCenterY(MB),0)
set OZI=CreateUnit(EO,1852010546,GetRectCenterX(TB),GetRectCenterY(TB),0)
set OVI=CreateUnit(EO,1852010546,GetRectCenterX(LB),GetRectCenterY(LB),0)
set OWI=CreateUnit(EO,1852010546,GetRectCenterX(SB),GetRectCenterY(SB),0)
set OXI=CreateUnit(EO,1852010546,GetRectCenterX(RB),GetRectCenterY(RB),0)
set I31=CreateFogModifierRadius(BO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(KB),GetRectCenterY(KB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(CO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(KB),GetRectCenterY(KB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(BO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(MB),GetRectCenterY(MB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(CO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(MB),GetRectCenterY(MB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(BO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(TB),GetRectCenterY(TB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(CO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(TB),GetRectCenterY(TB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(BO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(LB),GetRectCenterY(LB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(CO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(LB),GetRectCenterY(LB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(BO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(SB),GetRectCenterY(SB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(CO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(SB),GetRectCenterY(SB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(BO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(RB),GetRectCenterY(RB),600,true,true)
call FogModifierStart(I31)
set I31=CreateFogModifierRadius(CO[1],FOG_OF_WAR_VISIBLE,GetRectCenterX(RB),GetRectCenterY(RB),600,true,true)
call FogModifierStart(I31)
call UVI("Speed",OGI,255,233,12)
call UVI("Speed",OVI,255,233,12)
call UVI("Combat",OHI,255,233,12)
call UVI("Combat",OWI,255,233,12)
call UVI("Regen",OZI,255,233,12)
call UVI("Regen",OXI,255,233,12)
call UnitAddAbility(OGI,1395667023)
call UnitAddAbility(OVI,1395667026)
call UnitAddAbility(OHI,1093750863)
call UnitAddAbility(OHI,1093750860)
call UnitAddAbility(OWI,1093750862)
call UnitAddAbility(OWI,1093750858)
call UnitAddAbility(OZI,1093750870)
call UnitAddAbility(OZI,1093750854)
call UnitAddAbility(OXI,1093750852)
call UnitAddAbility(OXI,1093750853)
set OYI=61
set OJI=61
set OKI=61
set OLI=61
set OMI=61
set ONI=61
call SaveUnitHandle(LY,(S5I),(452),(OGI))
call SaveUnitHandle(LY,(S5I),(453),(OHI))
call SaveUnitHandle(LY,(S5I),(454),(OZI))
call SaveUnitHandle(LY,(S5I),(455),(OVI))
call SaveUnitHandle(LY,(S5I),(456),(OWI))
call SaveUnitHandle(LY,(S5I),(457),(OXI))
call SaveReal(LY,(S5I),(500),((-1)*1.0))
call SaveReal(LY,(S5I),(501),((-1)*1.0))
call SaveReal(LY,(S5I),(502),((-1)*1.0))
call SaveReal(LY,(S5I),(503),((-1)*1.0))
call SaveReal(LY,(S5I),(504),((-1)*1.0))
call SaveReal(LY,(S5I),(505),((-1)*1.0))
call SaveRectHandle(LY,(S5I),(460),(KB))
call SaveRectHandle(LY,(S5I),(461),(MB))
call SaveRectHandle(LY,(S5I),(462),(TB))
call SaveRectHandle(LY,(S5I),(463),(LB))
call SaveRectHandle(LY,(S5I),(464),(SB))
call SaveRectHandle(LY,(S5I),(465),(RB))
call SavePlayerHandle(LY,(S5I),(468),(EO))
call SavePlayerHandle(LY,(S5I),(469),(EO))
call SavePlayerHandle(LY,(S5I),(470),(EO))
call SavePlayerHandle(LY,(S5I),(471),(EO))
call SavePlayerHandle(LY,(S5I),(472),(EO))
call SavePlayerHandle(LY,(S5I),(473),(EO))
call SaveInteger(LY,(S5I),(492),(61))
call SaveInteger(LY,(S5I),(493),(61))
call SaveInteger(LY,(S5I),(494),(61))
call SaveInteger(LY,(S5I),(495),(61))
call SaveInteger(LY,(S5I),(496),(61))
call SaveInteger(LY,(S5I),(497),(61))
call SaveImageHandle(LY,(S5I),(476),(null))
call SaveImageHandle(LY,(S5I),(484),(null))
call SaveImageHandle(LY,(S5I),(477),(null))
call SaveImageHandle(LY,(S5I),(485),(null))
call SaveImageHandle(LY,(S5I),(478),(null))
call SaveImageHandle(LY,(S5I),(486),(null))
call SaveImageHandle(LY,(S5I),(479),(null))
call SaveImageHandle(LY,(S5I),(487),(null))
call SaveImageHandle(LY,(S5I),(480),(null))
call SaveImageHandle(LY,(S5I),(488),(null))
call SaveImageHandle(LY,(S5I),(481),(null))
call SaveImageHandle(LY,(S5I),(489),(null))
call S0I(GetTriggeringTrigger())
set t=null
return false
endfunction
function O02 takes nothing returns nothing
local trigger t
if OFI then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,600,false)
call TriggerAddCondition(t,Condition(function SM2))
set t=null
endif
endfunction
function XV2 takes nothing returns nothing
set OFI=true
endfunction
function SN2 takes nothing returns nothing
local integer E81=EB1(GetEnumItem())
if GetWidgetLife(GetEnumItem())>0 and GetItemPlayer(GetEnumItem())==A1I and E81!=VL0 and E81!=W30 and E81!=W40 and E81!=GZ0 and E81!=GV0 then
if IsItemVisible(GetEnumItem())then
call SetItemVisible(GetEnumItem(),false)
else
call SetItemVisible(GetEnumItem(),true)
endif
endif
endfunction
function SS2 takes nothing returns nothing
local player p=A1I
local region r=CreateRegion()
local unit u=GetEnumUnit()
local integer E81
local integer i=0
local item BA1
local integer id
local real x
local real y
if TII(p)then
call RegionAddRect(r,G5)
set x=GetRectCenterX(G5)
set y=GetRectCenterY(G5)
else
call RegionAddRect(r,H5)
set x=GetRectCenterX(H5)
set y=GetRectCenterY(H5)
endif
loop
exitwhen i>5
set BA1=UnitItemInSlot(u,i)
set E81=EB1(BA1)
if GetItemPlayer(BA1)==A1I and E81!=VL0 and E81!=W30 and E81!=W40 and E81!=GZ0 and E81!=GV0 then
call UnitRemoveItemFromSlot(u,i)
set id=GetPlayerId(GetItemPlayer(BA1))
call SetItemPosition(BA1,x,y)
endif
set i=i+1
endloop
call RemoveRegion(r)
set u=null
set r=null
endfunction
function ST2 takes nothing returns boolean
return(GetUnitTypeId(GetFilterUnit())==1852010352 or RYI(GetFilterUnit())or(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and GetOwningPlayer(GetFilterUnit())!=A1I and GetOwningPlayer(GetFilterUnit())!=BO[0]and GetOwningPlayer(GetFilterUnit())!=CO[0]))and IsUnitAlly(GetFilterUnit(),A1I)==true
endfunction
function SR2 takes player p returns nothing
local integer i=0
local item BA1
local integer id=GetPlayerId(p)
local group g=NTI()
set A1I=p
call GroupEnumUnitsInRange(g,0,0,99999,Condition(function ST2))
call ForGroup(g,function SS2)
call NSI(g)
endfunction
function SP2 takes player p returns nothing
set A1I=p
call EnumItemsInRectBJ(bj_mapInitialPlayableArea,function SN2)
endfunction
function SQ2 takes unit u returns nothing
local unit AD1=u
local player I6O=GetOwningPlayer(u)
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
function SU2 takes unit T02,unit TI2 returns nothing
local player p=GetOwningPlayer(TI2)
local integer id=GetPlayerId(p)
call SetHeroXP(TI2,GetHeroXP(T02),true)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,(LoadInteger(LY,(GetHandleId(TI2)),(787)))+OUI[id])
set OQI[id]=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
set OUI[id]=0
endfunction
function T12 takes integer id,unit R5I returns boolean
return SGI(DC0[id])!=SEI(R5I)
endfunction
function TO2 takes unit u returns integer
return 255
endfunction
function T22 takes unit u returns integer
return 255
endfunction
function T32 takes unit u returns integer
return 255
endfunction
function T42 takes unit u,integer id,player p returns nothing
local player p1=GetOwningPlayer(u)
local player p2
local integer i
local item FH1
if TII(GetOwningPlayer(u))then
set p2=BO[0]
else
set p2=CO[0]
endif
call SaveInteger(LY,(GetHandleId(u)),(787),(GetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)))
call SaveBoolean(LY,(GetHandleId(u)),(140),(false))
call SaveInteger(LY,(GetHandleId((u))),((4259)),(1))
call UnitAddAbility(u,1093678162)
call BK1(u,true)
call PauseUnit(u,true)
call SetUnitVertexColor(u,TO2(u),T22(u),T32(u),150)
call SelectUnitRemoveForPlayer(u,GetOwningPlayer(u))
call SetUnitOwner(u,p2,false)
call SetUnitPathing(u,false)
call SetUnitX(u,GetUnitX(D30[id]))
call SetUnitY(u,GetUnitY(D30[id]))
set i=0
loop
exitwhen i>5
if UnitItemInSlot(u,i)==null then
set FH1=CreateItem(1227895373,GetUnitX(u),GetUnitY(u))
call UnitAddItem(u,FH1)
endif
set i=i+1
endloop
set p1=null
set p2=null
endfunction
function T52 takes unit u,integer id,player p returns nothing
local integer i
set K1[id]=u
call SaveBoolean(LY,(GetHandleId(u)),(140),(false))
call SaveInteger(LY,(GetHandleId((u))),((4259)),(2))
call UnitRemoveAbility(u,1093678162)
call BK1(u,false)
call PauseUnit(u,false)
call SetUnitVertexColor(u,TO2(u),T22(u),T32(u),255)
call SelectUnitAddForPlayer(u,GetOwningPlayer(u))
call SetUnitOwner(u,p,false)
call SetUnitPathing(u,true)
if TII(Player(id))==true then
call SetUnitPosition(u,GetRectCenterX(O4),GetRectCenterY(O4))
else
call SetUnitPosition(u,GetRectCenterX(S3),GetRectCenterY(S3))
endif
set i=0
loop
exitwhen i>5
if GetItemTypeId(UnitItemInSlot(u,i))==1227895373 then
call EL1(UnitItemInSlot(u,i))
endif
set i=i+1
endloop
endfunction
function T62 takes integer id returns boolean
local region r=CreateRegion()
local boolean FB1=false
if TII(Player(id))==true then
call RegionAddRect(r,F4)
else
call RegionAddRect(r,E4)
endif
if IsUnitInRegion(r,ORI[id])and IsUnitInRegion(r,OPI[id])then
set FB1=true
endif
call RemoveRegion(r)
return FB1 or IC1(ORI[id])or IC1(OPI[id])
endfunction
function T72 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer id=(LoadInteger(LY,(S5I),(34)))
local integer T82=GetTriggerEvalCount(t)
local player p=Player(id)
if T82==1 then
call SR2(p)
elseif T82==2 then
call SP2(p)
elseif T82==3 then
if K1[id]==ORI[id]then
call SQ2(ORI[id])
call T42(ORI[id],id,p)
call T52(OPI[id],id,p)
call SU2(ORI[id],OPI[id])
else
call SQ2(OPI[id])
call T42(OPI[id],id,p)
call T52(ORI[id],id,p)
call SU2(OPI[id],ORI[id])
endif
else
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
return false
endfunction
function T92 takes nothing returns boolean
local integer id=GetPlayerId(GetTriggerPlayer())
local real SOI=(TimerGetElapsed(M))
local trigger t
local integer S5I
if(SOI-OTI[id])<180 then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848659282)+": "+I2S(R2I(180-(SOI-OTI[id]))))
elseif T62(id)==false then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,U2,10,GetObjectName(1848659283))
else
set OTI[id]=SOI
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function T72))
call SaveInteger(LY,(S5I),(34),(id))
set t=null
endif
return false
endfunction
function TA2 takes nothing returns boolean
local integer i=1
local integer id
local integer TB2
local integer ADO
local player p
loop
exitwhen i>5
set p=BO[i]
set id=GetPlayerId(p)
set ADO=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
if OQI[id]<ADO and AII[id]==false then
set OUI[id]=OUI[id]+ADO-OQI[id]
endif
set OQI[id]=ADO
if AII[id]==true then
set AII[id]=false
endif
set p=CO[i]
set id=GetPlayerId(p)
set ADO=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
if OQI[id]<ADO and AII[id]==false then
set OUI[id]=OUI[id]+ADO-OQI[id]
endif
set OQI[id]=ADO
if AII[id]==true then
set AII[id]=false
endif
set i=i+1
endloop
return false
endfunction
function TC2 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer O91=(LoadInteger(LY,(S5I),(55)))
local player p
local integer TJI
local location ZC1=GetRectCenter(O4)
local location ZD1=GetRectCenter(S3)
local integer id
if O91<6 then
set p=BO[O91]
set id=GetPlayerId(p)
elseif O91<11 then
set p=CO[O91-5]
set id=GetPlayerId(p)
endif
if O91>10 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call TriggerRegisterTimerEvent(A0I,0.1,true)
call TriggerAddCondition(A0I,Condition(function TA2))
elseif O91<6 then
call SaveInteger(LY,(S5I),(55),(O91+1))
set K1[GetPlayerId(p)]=null
if T3I(p)then
loop
exitwhen K1[GetPlayerId(p)]!=null
set TJI=TYI()
if R[TJI]==false then
if not F2 then
set R[TJI]=true
endif
set K1[id]=CreateUnitAtLoc(p,DC0[TJI],ZC1,bj_UNIT_FACING)
set ORI[id]=K1[id]
call T42(K1[id],id,p)
endif
endloop
endif
elseif O91<11 then
call SaveInteger(LY,(S5I),(55),(O91+1))
set K1[GetPlayerId(p)]=null
if T3I(p)then
loop
exitwhen K1[id]!=null
set TJI=TYI()
if R[TJI]==false then
if not F2 then
set R[TJI]=true
endif
set K1[id]=CreateUnitAtLoc(p,DC0[TJI],ZD1,bj_UNIT_FACING)
set ORI[id]=K1[id]
call T42(K1[id],id,p)
endif
endloop
endif
endif
if O91<6 then
set p=BO[O91]
elseif O91<11 then
set p=CO[O91-5]
endif
if O91<6 then
call SaveInteger(LY,(S5I),(55),(O91+1))
set K1[GetPlayerId(p)]=null
if T3I(p)then
loop
exitwhen K1[id]!=null
set TJI=TYI()
if R[TJI]==false and T12(TJI,ORI[id])then
if not F2 then
set R[TJI]=true
endif
set K1[id]=CreateUnitAtLoc(p,DC0[TJI],ZC1,bj_UNIT_FACING)
set OPI[id]=K1[id]
set OQI[id]=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
call T52(K1[id],id,p)
call SaveUnitHandle(LY,(GetHandleId(OPI[id])),(788),(ORI[id]))
call SaveUnitHandle(LY,(GetHandleId(ORI[id])),(788),(OPI[id]))
endif
endloop
endif
elseif O91<11 then
call SaveInteger(LY,(S5I),(55),(O91+1))
set K1[id]=null
if T3I(p)then
loop
exitwhen K1[id]!=null
set TJI=TYI()
if R[TJI]==false and T12(TJI,ORI[id])then
if not F2 then
set R[TJI]=true
endif
set K1[id]=CreateUnitAtLoc(p,DC0[TJI],ZD1,bj_UNIT_FACING)
set OPI[id]=K1[id]
set OQI[id]=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
call T52(K1[id],id,p)
call SaveUnitHandle(LY,(GetHandleId(OPI[id])),(788),(ORI[id]))
call SaveUnitHandle(LY,(GetHandleId(ORI[id])),(788),(OPI[id]))
endif
endloop
endif
endif
call RemoveLocation(ZC1)
call RemoveLocation(ZD1)
set ZC1=null
set ZD1=null
set p=null
set t=null
return false
endfunction
function XW2 takes nothing returns nothing
local integer i=1
local integer id
local real SOI=(TimerGetElapsed(M))
local trigger t
set OSI=true
set A3=false
set GL=false
call TCI(1211117641)
call TCI(1328558160)
call TCI(1211117653)
loop
exitwhen i>5
set id=GetPlayerId(BO[i])
set AII[id]=false
set OTI[id]=SOI-180
set OUI[id]=0
set id=GetPlayerId(CO[i])
set AII[id]=false
set OTI[id]=SOI-180
set OUI[id]=0
set i=i+1
endloop
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,.5,true)
call TriggerAddCondition(t,Condition(function TC2))
call SaveInteger(LY,(GetHandleId(t)),(55),(1))
set t=CreateTrigger()
call TriggerRegisterPlayerChatEvent(t,BO[1],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,BO[2],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,BO[3],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,BO[4],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,BO[5],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,CO[1],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,CO[2],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,CO[3],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,CO[4],"-tt",true)
call TriggerRegisterPlayerChatEvent(t,CO[5],"-tt",true)
call TriggerAddCondition(t,Condition(function T92))
set t=null
endfunction
function TD2 takes nothing returns nothing
set Q[1]=0
endfunction
function TF2 takes nothing returns nothing
set Q[2]=0
endfunction
function TH2 takes nothing returns nothing
set Q[3]=0
endfunction
function TV2 takes nothing returns nothing
set Q[4]=0
endfunction
function TX2 takes nothing returns nothing
set Q[5]=0
endfunction
function TJ2 takes nothing returns nothing
set Q[7]=0
endfunction
function TL2 takes nothing returns nothing
set Q[8]=0
endfunction
function TN2 takes nothing returns nothing
set Q[9]=0
endfunction
function TT2 takes nothing returns nothing
set Q[10]=0
endfunction
function TP2 takes nothing returns nothing
set Q[11]=0
endfunction
function TU2 takes nothing returns nothing
local integer i=1
local string id
local player p
loop
exitwhen i>5
set p=BO[i]
set id=I2S(GetPlayerId(p))
call StoreInteger(OS,id,"id",i)
set p=CO[i]
set id=I2S(GetPlayerId(p))
call StoreInteger(OS,id,"id",i+5)
if GetLocalPlayer()==WO then
call SyncStoredInteger(OS,I2S(GetPlayerId(BO[i])),"id")
call SyncStoredInteger(OS,I2S(GetPlayerId(CO[i])),"id")
endif
set i=i+1
endloop
endfunction