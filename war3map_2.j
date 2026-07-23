function InitTrig_Hero takes nothing returns nothing
call ZE1()
endfunction
function ZF1 takes nothing returns nothing
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
endfunction
function InitTrig_Unit takes nothing returns nothing
call ZF1()
endfunction
function ZG1 takes nothing returns nothing
local trigger t=CreateTrigger()
local player T4I=Player(15)
local real ZH1=GetUnitX(VX)
local real ZZ1=GetUnitY(VX)
local real ZV1=GetUnitX(MZ)
local real ZW1=GetUnitY(MZ)
local real ZX1=GetUnitX(HX)
local real ZY1=GetUnitY(HX)
local real ZJ1=GetUnitX(YY)
local real ZK1=GetUnitY(YY)
local real ZL1=GetUnitX(LZ)
local real ZM1=GetUnitY(LZ)
local real ZN1=GetUnitX(NZ)
local real ZS1=GetUnitY(NZ)
local real ZT1=GetUnitX(IZ)
local real ZR1=GetUnitY(IZ)
local real ZP1=GetUnitX(KY)
local real ZQ1=GetUnitY(KY)
local real ZU1=GetUnitX(EZ)
local real V01=GetUnitY(EZ)
local real VI1=GetUnitX(ZX)
local real V11=GetUnitY(ZX)
local real VO1=GetUnitX(HY)
local real V21=GetUnitY(HY)
local real V31=GetUnitX(JY)
local real V41=GetUnitY(JY)
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
endfunction
function InitTrig_Tavern takes nothing returns nothing
call ZG1()
endfunction
function V51 takes integer id returns boolean
return id==1211117642 or id==1311788365
endfunction
function V61 takes integer id returns boolean
local integer i=0
loop
exitwhen i>EE0
if ED0[i]==id then
return true
endif
set i=i+1
endloop
return false
endfunction
function V71 takes nothing returns nothing
set EE0=EE0+1
set ED0[EE0]=1093753431
set EE0=EE0+1
set ED0[EE0]=1093681718
set EE0=EE0+1
set ED0[EE0]=1093684023
set EE0=EE0+1
set ED0[EE0]=1093686327
set EE0=EE0+1
set ED0[EE0]=1093686328
set EE0=EE0+1
set ED0[EE0]=1093742918
set EE0=EE0+1
set ED0[EE0]=1093742920
set EE0=EE0+1
set ED0[EE0]=1093742919
set EE0=EE0+1
set ED0[EE0]=1093742916
set EE0=EE0+1
set ED0[EE0]=1093686067
set EE0=EE0+1
set ED0[EE0]=1093742917
set EE0=EE0+1
set ED0[EE0]=1093743959
set EE0=EE0+1
set ED0[EE0]=1093814353
set EE0=EE0+1
set ED0[EE0]=1093808945
set EE0=EE0+1
set ED0[EE0]=1093814351
set EE0=EE0+1
set ED0[EE0]=1093677647
set EE0=EE0+1
set ED0[EE0]=1093679193
set EE0=EE0+1
set ED0[EE0]=1093679194
set EE0=EE0+1
set ED0[EE0]=1093679408
set EE0=EE0+1
set ED0[EE0]=1093679410
set EE0=EE0+1
set ED0[EE0]=1095331943
set EE0=EE0+1
set ED0[EE0]=1095332962
set EE0=EE0+1
set ED0[EE0]=1093683254
set EE0=EE0+1
set ED0[EE0]=1093751108
set EE0=EE0+1
set ED0[EE0]=1093751863
set EE0=EE0+1
set ED0[EE0]=1093744973
set EE0=EE0+1
set ED0[EE0]=1093747011
set EE0=EE0+1
set ED0[EE0]=1094936696
set EE0=EE0+1
set ED0[EE0]=1093810265
set EE0=EE0+1
set ED0[EE0]=1095328363
set EE0=EE0+1
set ED0[EE0]=1093748055
set EE0=EE0+1
set ED0[EE0]=1093677367
set EE0=EE0+1
set ED0[EE0]=1093683801
set EE0=EE0+1
set ED0[EE0]=1093682767
set EE0=EE0+1
set ED0[EE0]=1093683255
set EE0=EE0+1
set ED0[EE0]=1093681720
set EE0=EE0+1
set ED0[EE0]=1093752645
set EE0=EE0+1
set ED0[EE0]=1095333995
set EE0=EE0+1
set ED0[EE0]=1093753417
set EE0=EE0+1
set ED0[EE0]=1093681995
set EE0=EE0+1
set ED0[EE0]=1093683788
set EE0=EE0+1
set ED0[EE0]=1093748303
set EE0=EE0+1
set ED0[EE0]=1095328865
set EE0=EE0+1
set ED0[EE0]=1093683266
set EE0=EE0+1
set ED0[EE0]=1093682227
set EE0=EE0+1
set ED0[EE0]=1093682246
set EE0=EE0+1
set ED0[EE0]=1093682756
set EE0=EE0+1
set ED0[EE0]=1093743191
set EE0=EE0+1
set ED0[EE0]=1093743681
set EE0=EE0+1
set ED0[EE0]=1093748292
set EE0=EE0+1
set ED0[EE0]=1093749071
set EE0=EE0+1
set ED0[EE0]=1093677655
set EE0=EE0+1
set ED0[EE0]=1093809721
set EE0=EE0+1
set ED0[EE0]=1093815111
set EE0=EE0+1
set ED0[EE0]=1093748304
set EE0=EE0+1
set ED0[EE0]=1093686329
set EE0=EE0+1
set ED0[EE0]=1093751096
set EE0=EE0+1
set ED0[EE0]=1093750095
set EE0=EE0+1
set ED0[EE0]=1093810244
set EE0=EE0+1
set ED0[EE0]=1097163124
set EE0=EE0+1
set ED0[EE0]=1093684016
set EE0=EE0+1
set ED0[EE0]=1095331948
set EE0=EE0+1
set ED0[EE0]=1093683796
set EE0=EE0+1
set ED0[EE0]=1095331954
set EE0=EE0+1
set ED0[EE0]=1093677656
set EE0=EE0+1
set ED0[EE0]=1093751349
set EE0=EE0+1
set ED0[EE0]=1095332727
set EE0=EE0+1
set ED0[EE0]=1093808182
set EE0=EE0+1
set ED0[EE0]=1093753416
set EE0=EE0+1
set ED0[EE0]=1093813569
set EE0=EE0+1
set ED0[EE0]=1093815092
set EE0=EE0+1
set ED0[EE0]=1093815095
set EE0=EE0+1
set ED0[EE0]=1093815089
set EE0=EE0+1
set ED0[EE0]=1093817925
endfunction
function V81 takes integer id returns boolean
return id==1093808454 or id==1093808455 or id==1093808456 or id==1093751609 or id==1093809217 or id==1093809218 or id==1093751609 or id==1093678667 or id==1093752391 or id==1093810257 or id==1093752646 or id==1093686328 or id==1093686327 or id==1093808206 or id==1093753394 or id==1093753395 or id==1093808181 or id==1093743681 or id==1093809721 or id==1093815111 or id==1093815881 or id==1093810008 or id==1093810265 or id==1093809221 or id==1093753416 or id==1093752655 or id==1093748305 or id==1093686341 or id==1093814863 or id==1093813848 or id==1093684560 or id==1093815109 or id==1093815112 or id==1093815097 or id==1093814860 or id==1093815857 or id==1093815618 or id==1093816114 or id==1093816121 or id==1093817416 or id==1093817419 or id==1093815369 or id==1093747504 or id==1093818443
endfunction
function V91 takes nothing returns nothing
set EC0=EC0+1
set EB0[EC0]=1093683254
set EC0=EC0+1
set EB0[EC0]=1093677362
set EC0=EC0+1
set EB0[EC0]=1093678667
set EC0=EC0+1
set EB0[EC0]=1093683513
set EC0=EC0+1
set EB0[EC0]=1093683265
set EC0=EC0+1
set EB0[EC0]=1093684021
set EC0=EC0+1
set EB0[EC0]=1093685337
set EC0=EC0+1
set EB0[EC0]=1093748303
set EC0=EC0+1
set EB0[EC0]=1093818442
set EC0=EC0+1
set EB0[EC0]=1093686081
set EC0=EC0+1
set EB0[EC0]=1093686327
set EC0=EC0+1
set EB0[EC0]=1093686328
set EC0=EC0+1
set EB0[EC0]=1093743681
set EC0=EC0+1
set EB0[EC0]=1093681733
set EC0=EC0+1
set EB0[EC0]=1093808472
set EC0=EC0+1
set EB0[EC0]=1093808471
set EC0=EC0+1
set EB0[EC0]=1093808470
set EC0=EC0+1
set EB0[EC0]=1097754673
set EC0=EC0+1
set EB0[EC0]=1093750618
set EC0=EC0+1
set EB0[EC0]=1093743428
set EC0=EC0+1
set EB0[EC0]=1093677622
set EC0=EC0+1
set EB0[EC0]=1093751096
endfunction
function VA1 takes nothing returns nothing
set T2[1]=1095331188
set T2[2]=1095328865
set T2[3]=1095660653
set T2[4]=1093817908
set T2[5]=1095333995
set T2[6]=1093681995
set T2[7]=1093677367
set T2[8]=1093681720
set T2[9]=1093683266
set T2[10]=1093682227
set T2[10]=1093682246
set T2[11]=1093677655
set T2[12]=1095331954
set T2[13]=1095331948
set T2[14]=1093682767
set T2[15]=1093683255
set T2[16]=1093683254
set T2[17]=1093677656
set T2[18]=1095332727
set T2[19]=1093682008
set T2[20]=1093681718
set T2[21]=1097163124
set T2[22]=1093679180
set T2[23]=1095328633
set T2[24]=1093678426
set T2[25]=1095328363
set T2[26]=1093682265
set T2[27]=1093684314
set T2[28]=1093685065
set T2[29]=1093684056
set T2[30]=1093684055
set T2[31]=1093677622
set T2[32]=1093681972
set T2[33]=1093677362
set T2[34]=1093678667
set T2[35]=1093677652
set T2[36]=1095263841
set T2[37]=1093679446
set T2[38]=1093678425
set T2[39]=1093683513
set T2[40]=1093683265
set T2[41]=1093684021
set T2[42]=1093685337
set T2[43]=1093685582
set T2[44]=1093818442
set T2[45]=1093685840
set T2[46]=1093743191
set T2[47]=1093686081
set T2[48]=1093686327
set T2[49]=1093686328
set T2[50]=1093743681
set T2[51]=1093681733
set T2[52]=1093808472
set T2[53]=1093808471
set T2[54]=1093808470
set T2[55]=1093684560
set T2[56]=1093743428
set T2[57]=1093683801
set T2[58]=1093743959
set T2[59]=1093748303
set T2[60]=1093748292
set T2[61]=1093750618
set T2[62]=1093750095
set T2[63]=1093749071
set T2[64]=1093751096
set T2[65]=1093751361
set T2[66]=1093751126
set T2[67]=1093752645
set T2[68]=1093752642
set T2[69]=1093815111
set T2[70]=1093815859
set T2[71]=1093817677
set T2[72]=1093817925
set R2=72
endfunction
function VB1 takes nothing returns boolean
call VA1()
call V91()
call V71()
return false
endfunction
function VD1 takes nothing returns nothing
call CreateQuestBJ(0,"TRIGSTR_50004","TRIGSTR_50005","ReplaceableTextures\\CommandButtons\\BTNSpy.blp")
call CreateQuestBJ(0,"TRIGSTR_50006","TRIGSTR_50007","ReplaceableTextures\\CommandButtons\\BTNTome.blp")
call CreateQuestBJ(0,"TRIGSTR_50008","TRIGSTR_50009","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
call CreateQuestBJ(2,"TRIGSTR_50010","TRIGSTR_50011","ReplaceableTextures\\CommandButtons\\BTNScrollOfHaste.blp")
call CreateQuestBJ(2,"TRIGSTR_50012","TRIGSTR_50013","ReplaceableTextures\\CommandButtons\\BTNBansheeMaster.blp")
call CreateQuestBJ(2,"TRIGSTR_50014","TRIGSTR_50015","ReplaceableTextures\\CommandButtons\\BTNCarrionScarabs.blp")
endfunction
function VF1 takes nothing returns boolean
local string s
if IsUnitIllusion(GetTriggerUnit())==false and V51(GetUnitTypeId(GetTriggerUnit()))==false then
set s=GetUnitName(GetTriggerUnit())+" "+GetObjectName(1848657986)+" "+GetObjectName(GetLearnedSkill())+" ("+GetObjectName(1848657987)+" "+I2S(GetUnitAbilityLevel(GetTriggerUnit(),GetLearnedSkill()))+")"
call DisplayTimedTextToPlayer(D60,0,0,3,s)
call DisplayTimedTextToPlayer(D70,0,0,3,s)
endif
return false
endfunction
function VG1 takes nothing returns nothing
local trigger t=CreateTrigger()
call UMI(t,EVENT_PLAYER_HERO_SKILL)
call TriggerAddCondition(t,Condition(function VF1))
set t=null
endfunction
function VH1 takes nothing returns nothing
call QRI(bj_FORCE_ALL_PLAYERS,25.00,(D80[GetPlayerId((GetTriggerPlayer()))])+"|c00ff0303 "+GetObjectName(1848652356)+"|r")
endfunction
function VZ1 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player VV1=(LoadPlayerHandle(LY,(S5I),(78)))
local integer TGI=1
local integer VW1
local integer ROI=GetPlayerState(VV1,PLAYER_STATE_RESOURCE_GOLD)
if RX0[GetPlayerId(VV1)]==false and JL==true then
if GetTriggerEvalCount(t)==4 then
if IsPlayerAlly(GetLocalPlayer(),VV1)==true then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,GetObjectName(1848658483))
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,6,GetObjectName(1848658503))
endif
endif
return false
endif
if ROI>20 then
call SetPlayerState(VV1,PLAYER_STATE_RESOURCE_GOLD,0)
set EL0[GetPlayerId(VV1)]=0
if TII(VV1)then
set VW1=T8I(OO)
else
set VW1=T8I(AO)
endif
if TII(VV1)then
loop
exitwhen TGI>5
if T3I(BO[TGI])then
call SetPlayerState(BO[TGI],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(BO[TGI],PLAYER_STATE_RESOURCE_GOLD)+ROI/VW1)
endif
set TGI=TGI+1
endloop
else
loop
exitwhen TGI>5
if T3I(CO[TGI])then
call SetPlayerState(CO[TGI],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(CO[TGI],PLAYER_STATE_RESOURCE_GOLD)+ROI/VW1)
endif
set TGI=TGI+1
endloop
endif
endif
return false
endfunction
function VX1 takes player VV1 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SavePlayerHandle(LY,(S5I),(78),(VV1))
call TriggerRegisterTimerEvent(t,2,true)
call TriggerAddCondition(t,Condition(function VZ1))
set t=null
endfunction
function VY1 takes player p returns nothing
local multiboarditem N8I=MultiboardGetItem(M0,S50[GetPlayerId(p)],S40[GetPlayerId(p)])
call MultiboardSetItemValue(N8I,"|c00333333"+(D80[GetPlayerId((p))])+"|r")
call MultiboardReleaseItem(N8I)
endfunction
function VJ1 takes nothing returns nothing
local integer ZB1=T8I(OO)
local integer ZA1=T8I(AO)
local integer TGI
local integer THI
local string GW1
local string DD0
local unit SFI=K1[GetPlayerId(GetTriggerPlayer())]
if SFI==null then
set DD0=GetObjectName(1848657239)
else
set DD0=GetUnitName(SFI)
endif
if(Z0<10)then
set GW1=I2S(H0)+":0"+I2S(Z0)
else
set GW1=I2S(H0)+":"+I2S(Z0)
endif
if Q2==false then
set K3[GetPlayerId(GetTriggerPlayer())]="|c00555555"+GW1+"|r"
call QRI(bj_FORCE_ALL_PLAYERS,25.00,C0[GetPlayerId(GetTriggerPlayer())]+(D80[GetPlayerId((GetTriggerPlayer()))])+" ("+DD0+")|r|c00ff0303 "+GetObjectName(1848652356)+"|r")
if(TII(GetTriggerPlayer())==true)then
set TGI=1
set THI=5
loop
exitwhen TGI>THI
if(BO[TGI]!=GetTriggerPlayer())then
if(T3I(BO[TGI])==true)then
call SetPlayerAllianceStateBJ(GetTriggerPlayer(),BO[TGI],4)
endif
endif
set TGI=TGI+1
endloop
else
set TGI=1
set THI=5
loop
exitwhen TGI>THI
if(CO[TGI]!=GetTriggerPlayer())then
if(T3I(CO[TGI])==true)then
call SetPlayerAllianceStateBJ(GetTriggerPlayer(),CO[TGI],4)
endif
endif
set TGI=TGI+1
endloop
endif
if TII(GetTriggerPlayer())or TOI(GetTriggerPlayer())then
set EG0=EG0+1
endif
call FL1("C"+"K"+I2S(A[GetPlayerId(GetTriggerPlayer())])+"D"+I2S(B[GetPlayerId(GetTriggerPlayer())])+"N"+I2S((LoadInteger(LY,(400+GetPlayerId(GetTriggerPlayer())),(79)))),GetPlayerId(GetTriggerPlayer()))
set RO0=GetTriggerPlayer()
call ExecuteFunc("VK1")
if JL then
call B91(GetTriggerPlayer())
endif
set EF0[GetPlayerId(GetTriggerPlayer())]=true
call VY1(GetTriggerPlayer())
call VX1(GetTriggerPlayer())
if EG0==2 and C2==false and VL==true then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60," ")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60," ")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60,"|c006699CC"+GetObjectName(1848657495)+"|r")
endif
if EG0==3 then
set RI0=true
call ExecuteFunc("VL1")
set RI0=false
endif
else
set K3[GetPlayerId(GetTriggerPlayer())]="|c00555555End|r"
call ExecuteFunc("VM1")
endif
endfunction
function VS1 takes unit SFI returns nothing
if GetUnitTypeId(SFI)!=1211117642 and GetUnitTypeId(SFI)!=1211117641 then
if GetOwningPlayer(SFI)==GetLocalPlayer()then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1," ")
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1,"|c006699CC"+GetObjectName(1848657746))
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1," ")
endif
call OQ1(KE,GetOwningPlayer(SFI))
endif
call SetUnitInvulnerable(SFI,false)
call UnitRemoveAbility(SFI,1093681498)
call UnitRemoveAbility(SFI,1093679434)
call UnitRemoveAbility(SFI,1093684052)
call UnitRemoveAbility(SFI,1093684823)
call UnitRemoveAbility(SFI,1093684821)
call UnitRemoveAbility(SFI,1093685079)
call UnitRemoveAbility(SFI,1093685078)
call UnitRemoveAbility(SFI,1093685080)
call UnitRemoveAbility(SFI,1093685081)
call UnitRemoveAbility(SFI,1093685296)
call UnitRemoveAbility(SFI,1093744459)
call UnitRemoveAbility(SFI,1093685334)
call UnitRemoveAbility(SFI,1093685583)
call UnitRemoveAbility(SFI,1093685827)
call UnitRemoveAbility(SFI,1093685830)
call UnitRemoveAbility(SFI,FN)
call UnitRemoveAbility(SFI,GN)
call UnitRemoveAbility(SFI,HN)
call UnitRemoveAbility(SFI,ZN)
call UnitRemoveAbility(SFI,1093684821)
call UnitRemoveAbility(SFI,1093684823)
call UnitRemoveAbility(SFI,N90)
call UnitRemoveAbility(SFI,1093683509)
call UnitRemoveAbility(SFI,1093681977)
call UnitRemoveAbility(SFI,1093683528)
call UnitRemoveAbility(SFI,1110455863)
call UnitRemoveAbility(SFI,1110456396)
call UnitRemoveAbility(SFI,1093686098)
call UnitRemoveAbility(SFI,1093687119)
call UnitRemoveAbility(SFI,1093687122)
call UnitRemoveAbility(SFI,1093747534)
call UnitRemoveAbility(SFI,1093686856)
call UnitRemoveAbility(SFI,1093686858)
call UnitRemoveAbility(SFI,1093742649)
call UnitRemoveAbility(SFI,1093686871)
call UnitRemoveAbility(SFI,1093687373)
call UnitRemoveAbility(SFI,1093742927)
call UnitRemoveAbility(SFI,1093742930)
call UnitRemoveAbility(SFI,1093743671)
call UnitRemoveAbility(SFI,1093743672)
call UnitRemoveAbility(SFI,1093742933)
call UnitRemoveAbility(SFI,1093743673)
call UnitRemoveAbility(SFI,1093743153)
call UnitRemoveAbility(SFI,1093743158)
call UnitRemoveAbility(SFI,1093744441)
call UnitRemoveAbility(SFI,1097167980)
call UnitRemoveAbility(SFI,WN[0])
call UnitRemoveAbility(SFI,WN[1])
call UnitRemoveAbility(SFI,WN[2])
call UnitRemoveAbility(SFI,WN[3])
call UnitRemoveAbility(SFI,WN[4])
call UnitRemoveAbility(SFI,WN[5])
call UnitRemoveAbility(SFI,1093748533)
call UnitRemoveAbility(SFI,1093748531)
call UnitRemoveAbility(SFI,1093748534)
call UnitRemoveAbility(SFI,1093748532)
call SaveBoolean(LY,(GetHandleId(SFI)),(80),(false))
call SetUnitPathing(SFI,true)
call PauseUnit(SFI,false)
call SetUnitFlyHeight(SFI,GetUnitDefaultFlyHeight(SFI),0)
call SetUnitScale(SFI,SMI(SFI)*OAI,SMI(SFI)*OAI,SMI(SFI)*OAI)
call UnitRemoveAbility(SFI,1093747521)
call UnitRemoveAbility(SFI,1093747513)
call UnitRemoveAbility(SFI,1093747522)
call UnitRemoveAbility(SFI,1093747523)
call UnitRemoveAbility(SFI,1093748545)
call UnitRemoveAbility(SFI,1093752627)
call UnitRemoveAbility(SFI,1110459471)
call UnitRemoveAbility(SFI,1093752136)
call UnitRemoveAbility(SFI,1093752137)
call UnitRemoveAbility(SFI,1093753396)
call UnitRemoveAbility(SFI,1093753409)
call UnitRemoveAbility(SFI,1093753410)
call UnitRemoveAbility(SFI,1093753401)
call UnitRemoveAbility(SFI,1110459478)
call UnitRemoveAbility(SFI,1093809718)
call UnitRemoveAbility(SFI,1093809717)
call UnitRemoveAbility(SFI,1093809228)
call UnitRemoveAbility(SFI,1110459716)
call UnitRemoveAbility(SFI,1093808975)
call UnitRemoveAbility(SFI,1110459705)
call GA1(SFI,0)
if GetUnitTypeId(SFI)==1160786510 or GetUnitTypeId(SFI)==1160786511 then
call UnitRemoveAbility(SFI,1093808951)
call UnitAddAbility(SFI,1093808706)
call UnitRemoveAbility(SFI,1093808706)
if ES1(SFI,FR0[KN0])!=null then
call UnitAddAbility(SFI,1093808951)
endif
endif
if GetUnitTypeId(SFI)==1311788373 or GetUnitTypeId(SFI)==1311788375 then
call UnitAddAbility(SFI,1093816658)
call UnitRemoveAbility(SFI,1093816658)
endif
if GetUnitTypeId(SFI)==1211123020 or GetUnitTypeId(SFI)==1211123023 then
call UnitAddAbility(SFI,1093817176)
call UnitRemoveAbility(SFI,1093817176)
endif
if GetUnitTypeId(SFI)==1211123026 then
call UnitAddAbility(SFI,1093817942)
call UnitRemoveAbility(SFI,1093817942)
endif
call UnitRemoveAbility(SFI,1093818188)
call UnitRemoveAbility(SFI,1093808966)
call UnitRemoveAbility(SFI,1093818187)
call UnitRemoveAbility(SFI,1093818186)
call UnitRemoveAbility(SFI,1093817137)
call BS1(SFI)
set GK=SFI
call ExecuteFunc("VT1")
endfunction
function VP1 takes nothing returns boolean
if GetPlayerAlliance(GetOwningPlayer(GetFilterUnit()),EZ0,ALLIANCE_SHARED_CONTROL)==true and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false then
set EH0=EH0+1
endif
return false
endfunction
function VQ1 takes unit u,player p,real x,real y,boolean VU1 returns nothing
local group g=NTI()
set EH0=0
set EZ0=p
call GroupEnumUnitsSelected(g,p,Condition(function VP1))
if EH0==0 and GetLocalPlayer()==p then
if VU1==false then
call ClearSelection()
call SelectUnit(u,true)
endif
call PanCameraToTimed(x,y,0)
endif
set EH0=0
call NSI(g)
set g=null
endfunction
function W01 takes unit AD1 returns boolean
return GetUnitTypeId(AD1)==1211117641 or GetUnitTypeId(AD1)==1211117642
endfunction
function WI1 takes unit W11 returns nothing
local integer WO1
if ES1(W11,FR0[WM0])!=null and GetUnitTypeId(W11)!=1211117642 then
set WO1=R2I(GetItemCharges(ES1(W11,FR0[WM0]))*0.67)
if GetItemCharges(ES1(W11,FR0[WM0]))==1 then
set WO1=0
endif
call SetItemCharges(ES1(W11,FR0[WM0]),WO1)
call AddHeroXP(W11,GetHeroXP(M70[GetPlayerId(GetOwningPlayer(W11))]),true)
call RemoveUnit(M70[GetPlayerId(GetOwningPlayer(W11))])
endif
endfunction
function W21 takes unit W31 returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(W31))
local unit W41=(LoadUnitHandle(LY,(S5I),(699)))
local unit W51=(LoadUnitHandle(LY,(S5I),(700)))
local unit W61=(LoadUnitHandle(LY,(S5I),(701)))
local unit W71=(LoadUnitHandle(LY,(S5I),(702)))
local unit W81=(LoadUnitHandle(LY,(S5I),(703)))
local unit W91
set W91=W41
if W91!=null then
call RemoveUnit(W91)
endif
set W91=W51
if W91!=null then
call RemoveUnit(W91)
endif
set W91=W61
if W91!=null then
call RemoveUnit(W91)
endif
set W91=W71
if W91!=null then
call RemoveUnit(W91)
endif
set W91=W81
if W91!=null then
call RemoveUnit(W91)
endif
endfunction
function WA1 takes nothing returns boolean
call S0I(GetTriggeringTrigger())
set NR0=false
return false
endfunction
function WB1 takes unit WC1 returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(WC1))
local unit W41=(LoadUnitHandle(LY,(S5I),(699)))
local unit W51=(LoadUnitHandle(LY,(S5I),(700)))
local unit W61=(LoadUnitHandle(LY,(S5I),(701)))
local unit W71=(LoadUnitHandle(LY,(S5I),(702)))
local unit W81=(LoadUnitHandle(LY,(S5I),(703)))
local unit W91
local real x=GetUnitX(W41)
local real y=GetUnitY(W41)
local trigger t
if NR0==false then
if TII(GetOwningPlayer(W41))then
set x=GetRectCenterX(O4)
set y=GetRectCenterY(O4)
else
set x=GetRectCenterX(S3)
set y=GetRectCenterY(S3)
endif
else
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,2,false)
call TriggerAddCondition(t,Condition(function WA1))
endif
set W91=W41
if W91!=null and WC1!=W91 then
call ReviveHero(W91,x,y,false)
call SetUnitX(W91,x)
call SetUnitY(W91,y)
call VS1(W91)
call SetUnitPathing(W91,true)
call SetUnitState(W91,UNIT_STATE_MANA,10000)
endif
set W91=W51
if W91!=null and WC1!=W91 then
call ReviveHero(W91,x,y,false)
call SetUnitX(W91,x)
call SetUnitY(W91,y)
call VS1(W91)
call SetUnitPathing(W91,true)
call SetUnitState(W91,UNIT_STATE_MANA,10000)
endif
set W91=W61
if W91!=null and WC1!=W91 then
call ReviveHero(W91,x,y,false)
call SetUnitX(W91,x)
call SetUnitY(W91,y)
call VS1(W91)
call SetUnitPathing(W91,true)
call SetUnitState(W91,UNIT_STATE_MANA,10000)
endif
set W91=W71
if W91!=null and WC1!=W91 then
call ReviveHero(W91,x,y,false)
call SetUnitX(W91,x)
call SetUnitY(W91,y)
call VS1(W91)
call SetUnitPathing(W91,true)
call SetUnitState(W91,UNIT_STATE_MANA,10000)
endif
set W91=W81
if W91!=null and WC1!=W91 then
call ReviveHero(W91,x,y,false)
call SetUnitX(W91,x)
call SetUnitY(W91,y)
call VS1(W91)
call SetUnitPathing(W91,true)
call SetUnitState(W91,UNIT_STATE_MANA,10000)
endif
endfunction
function WD1 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local player T4I=GetOwningPlayer(PKI)
local real x
local real y
local integer WO1
set XS[GetPlayerId((T4I))]=false
set HJ[GetPlayerId(GetOwningPlayer((PKI)))]=false
if TII(GetOwningPlayer(PKI))then
set x=GetRectCenterX(O4)
set y=GetRectCenterY(O4)
else
set x=GetRectCenterX(S3)
set y=GetRectCenterY(S3)
endif
if LW0 then
set YS[GetPlayerId(T4I)]=R2I(TimerGetRemaining(F0[GetPlayerId(T4I)])*0.25)
set JS[GetPlayerId(T4I)]=(TimerGetElapsed(M))+TimerGetRemaining(F0[GetPlayerId(T4I)])
else
set YS[GetPlayerId(T4I)]=0
endif
call TimerStart(F0[GetPlayerId(T4I)],0.0,false,null)
if W01(PKI)then
call WB1(PKI)
else
call VQ1(PKI,T4I,x,y,false)
endif
call SetUnitX(PKI,x)
call SetUnitY(PKI,y)
call VS1(PKI)
call SetUnitPathing(PKI,true)
if ES1(PKI,FR0[WM0])!=null and GetUnitTypeId(PKI)!=1211117642 then
set WO1=(R2I(((GetItemCharges(ES1(PKI,FR0[WM0]))*0.67)*1.0)))
if GetItemCharges(ES1(PKI,FR0[WM0]))==1 then
set WO1=0
endif
call SetItemCharges(ES1(PKI,FR0[WM0]),WO1)
call AddHeroXP(PKI,GetHeroXP(M70[GetPlayerId(GetOwningPlayer(PKI))]),true)
call RemoveUnit(M70[GetPlayerId(GetOwningPlayer(PKI))])
endif
endfunction
function WF1 takes unit SFI returns nothing
local integer WG1=GetUnitPointValue(SFI)
local unit WH1
if(WG1==34)then
call ExecuteFunc("WZ1")
call ExecuteFunc("WV1")
call ExecuteFunc("WW1")
elseif(WG1==37)then
call ExecuteFunc("WX1")
call ExecuteFunc("WY1")
call ExecuteFunc("WJ1")
call ExecuteFunc("WK1")
elseif(WG1==38)then
call ExecuteFunc("WL1")
call ExecuteFunc("WM1")
call ExecuteFunc("WN1")
call ExecuteFunc("WS1")
elseif(WG1==32)then
call ExecuteFunc("WT1")
call ExecuteFunc("WR1")
call ExecuteFunc("WP1")
call ExecuteFunc("WQ1")
elseif(WG1==52)then
call ExecuteFunc("WU1")
call ExecuteFunc("X01")
call ExecuteFunc("XI1")
call ExecuteFunc("X11")
elseif(WG1==31)then
call ExecuteFunc("XO1")
call ExecuteFunc("X21")
call ExecuteFunc("X31")
elseif(WG1==24)then
call ExecuteFunc("X41")
call ExecuteFunc("X51")
call ExecuteFunc("X61")
call ExecuteFunc("X71")
elseif(WG1==5)then
call ExecuteFunc("X81")
call ExecuteFunc("X91")
call ExecuteFunc("XA1")
call ExecuteFunc("XB1")
elseif(WG1==8)then
call ExecuteFunc("XC1")
call ExecuteFunc("XD1")
call ExecuteFunc("XE1")
call ExecuteFunc("XF1")
call ExecuteFunc("XG1")
elseif(WG1==3)then
call ExecuteFunc("XH1")
call ExecuteFunc("XZ1")
call ExecuteFunc("XV1")
call ExecuteFunc("XW1")
elseif(WG1==95)then
call ExecuteFunc("XX1")
call ExecuteFunc("XY1")
call ExecuteFunc("XJ1")
call ExecuteFunc("XK1")
elseif(WG1==20)then
call ExecuteFunc("XL1")
call ExecuteFunc("XM1")
call ExecuteFunc("XN1")
call ExecuteFunc("XS1")
elseif(WG1==12)then
call ExecuteFunc("XT1")
call ExecuteFunc("XR1")
call ExecuteFunc("XP1")
elseif(WG1==16)then
call ExecuteFunc("XQ1")
call ExecuteFunc("XU1")
call ExecuteFunc("Y01")
call ExecuteFunc("YI1")
call ExecuteFunc("Y11")
call ExecuteFunc("YO1")
call ExecuteFunc("Y21")
elseif(WG1==25)then
call ExecuteFunc("Y31")
call ExecuteFunc("Y41")
elseif(WG1==4)then
call ExecuteFunc("Y51")
call ExecuteFunc("Y61")
call ExecuteFunc("Y71")
call ExecuteFunc("Y81")
call ExecuteFunc("Y91")
call SetUnitPathing(SFI,false)
call DisableTrigger(LY0)
set TQ0=true
set WH1=CreateUnit(GetOwningPlayer(SFI),GetUnitTypeId(SFI),GetUnitX(SFI),GetUnitY(SFI),GetUnitFacing(SFI))
call SaveBoolean(LY,(GetHandleId(WH1)),(85),(true))
set K1[GetPlayerId(GetOwningPlayer(SFI))]=WH1
call SetUnitPathing(WH1,false)
call SetUnitPosition(WH1,GetUnitX(SFI),GetUnitY(SFI))
if X0 then
call SetHeroXP(WH1,GetHeroXP(SFI),false)
call UnitAddItem(WH1,UnitItemInSlot(SFI,0))
call UnitAddItem(WH1,UnitItemInSlot(SFI,1))
call UnitAddItem(WH1,UnitItemInSlot(SFI,2))
call UnitAddItem(WH1,UnitItemInSlot(SFI,3))
call UnitAddItem(WH1,UnitItemInSlot(SFI,4))
call UnitAddItem(WH1,UnitItemInSlot(SFI,5))
endif
call Q5I(SFI)
call EnableTrigger(LY0)
call SetUnitPathing(WH1,true)
call ClearSelectionForPlayer(GetOwningPlayer(WH1))
call SelectUnitAddForPlayer(WH1,GetOwningPlayer(WH1))
elseif(WG1==7)then
call ExecuteFunc("YA1")
call ExecuteFunc("YB1")
call ExecuteFunc("YC1")
elseif(WG1==18)then
call ExecuteFunc("YD1")
call ExecuteFunc("YE1")
elseif(WG1==36)then
call ExecuteFunc("YF1")
elseif(WG1==21)then
call ExecuteFunc("YG1")
call ExecuteFunc("YH1")
call ExecuteFunc("YZ1")
call ExecuteFunc("YV1")
elseif(WG1==14)then
call ExecuteFunc("YW1")
call ExecuteFunc("YX1")
call ExecuteFunc("YY1")
call ExecuteFunc("YJ1")
call ExecuteFunc("YK1")
call ExecuteFunc("YL1")
elseif(WG1==13)then
call ExecuteFunc("YM1")
call ExecuteFunc("YN1")
call ExecuteFunc("GS")
call ExecuteFunc("YS1")
elseif(WG1==26)then
call ExecuteFunc("YT1")
call ExecuteFunc("YR1")
call ExecuteFunc("YP1")
call ExecuteFunc("YQ1")
elseif(WG1==9)then
call ExecuteFunc("YU1")
call ExecuteFunc("J01")
call ExecuteFunc("JI1")
call ExecuteFunc("J11")
elseif(WG1==10)then
call ExecuteFunc("JO1")
call ExecuteFunc("J21")
call ExecuteFunc("J31")
call ExecuteFunc("J41")
call ExecuteFunc("J51")
call ExecuteFunc("J61")
call ExecuteFunc("J71")
call ExecuteFunc("J81")
elseif(WG1==23)then
call ExecuteFunc("J91")
call ExecuteFunc("JA1")
call ExecuteFunc("JB1")
call ExecuteFunc("JC1")
call ExecuteFunc("JD1")
elseif(WG1==19)then
call ExecuteFunc("JE1")
call ExecuteFunc("JF1")
call ExecuteFunc("JG1")
call ExecuteFunc("JH1")
elseif(WG1==22)then
call ExecuteFunc("JZ1")
call ExecuteFunc("JV1")
call ExecuteFunc("JW1")
call ExecuteFunc("JX1")
elseif(WG1==17)then
call ExecuteFunc("JY1")
call ExecuteFunc("JJ1")
call ExecuteFunc("JK1")
elseif(WG1==1)then
call ExecuteFunc("JL1")
call ExecuteFunc("JM1")
call ExecuteFunc("JN1")
call ExecuteFunc("JS1")
elseif(WG1==2)then
call ExecuteFunc("JT1")
call ExecuteFunc("JR1")
call ExecuteFunc("JP1")
call ExecuteFunc("JQ1")
elseif(WG1==27)then
call ExecuteFunc("JU1")
call ExecuteFunc("K01")
call ExecuteFunc("KI1")
call ExecuteFunc("K11")
call ExecuteFunc("KO1")
elseif(WG1==82)then
call ExecuteFunc("K21")
call ExecuteFunc("K31")
call ExecuteFunc("K41")
call ExecuteFunc("K51")
elseif(WG1==75)then
call ExecuteFunc("K61")
call ExecuteFunc("K71")
call ExecuteFunc("K81")
elseif(WG1==83)then
call ExecuteFunc("K91")
call ExecuteFunc("KA1")
call ExecuteFunc("KB1")
call ExecuteFunc("KC1")
elseif(WG1==112)then
call ExecuteFunc("KD1")
call ExecuteFunc("KE1")
call ExecuteFunc("KF1")
elseif(WG1==108)then
call ExecuteFunc("KG1")
call ExecuteFunc("KH1")
call ExecuteFunc("KZ1")
elseif(WG1==69)then
call ExecuteFunc("KV1")
call ExecuteFunc("KW1")
call ExecuteFunc("KX1")
call ExecuteFunc("KY1")
call ExecuteFunc("KJ1")
elseif(WG1==100)then
call ExecuteFunc("KK1")
call ExecuteFunc("KL1")
call ExecuteFunc("KM1")
call ExecuteFunc("KN1")
elseif(WG1==102)then
call ExecuteFunc("KS1")
call ExecuteFunc("KT1")
call ExecuteFunc("KR1")
elseif(WG1==64)then
call ExecuteFunc("KP1")
call ExecuteFunc("KQ1")
call ExecuteFunc("KU1")
call ExecuteFunc("L01")
elseif(WG1==106)then
call ExecuteFunc("LI1")
call ExecuteFunc("L11")
call ExecuteFunc("LO1")
elseif(WG1==61)then
call ExecuteFunc("L21")
call ExecuteFunc("L31")
call ExecuteFunc("L41")
elseif(WG1==76)then
call ExecuteFunc("L51")
call ExecuteFunc("L61")
call ExecuteFunc("L71")
call ExecuteFunc("L81")
elseif(WG1==80)then
call ExecuteFunc("L91")
call ExecuteFunc("LA1")
call ExecuteFunc("LB1")
call ExecuteFunc("LC1")
call ExecuteFunc("NL")
elseif(WG1==62)then
call ExecuteFunc("LD1")
call ExecuteFunc("LE1")
call ExecuteFunc("LF1")
call ExecuteFunc("LG1")
elseif(WG1==60)then
call ExecuteFunc("LH1")
call ExecuteFunc("LZ1")
call ExecuteFunc("LV1")
elseif(WG1==77)then
call ExecuteFunc("LW1")
call ExecuteFunc("LX1")
call ExecuteFunc("LY1")
call ExecuteFunc("LJ1")
elseif(WG1==73)then
call ExecuteFunc("NW")
call ExecuteFunc("LK1")
call ExecuteFunc("LL1")
elseif(WG1==81)then
call ExecuteFunc("LM1")
call ExecuteFunc("LN1")
call ExecuteFunc("LS1")
elseif(WG1==66)then
call ExecuteFunc("LT1")
call ExecuteFunc("LR1")
elseif(WG1==78)then
call ExecuteFunc("LP1")
call ExecuteFunc("LQ1")
call ExecuteFunc("LU1")
call ExecuteFunc("M01")
elseif(WG1==99)then
call ExecuteFunc("MI1")
call ExecuteFunc("M11")
call ExecuteFunc("MO1")
call ExecuteFunc("M21")
call ExecuteFunc("M31")
call ExecuteFunc("M41")
elseif(WG1==74)then
call ExecuteFunc("M51")
call ExecuteFunc("M61")
call ExecuteFunc("M71")
call ExecuteFunc("M81")
elseif(WG1==105)then
call ExecuteFunc("M91")
call ExecuteFunc("MA1")
call ExecuteFunc("MB1")
elseif(WG1==70)then
call ExecuteFunc("MC1")
call ExecuteFunc("MD1")
call ExecuteFunc("ME1")
elseif(WG1==107)then
call ExecuteFunc("MF1")
call ExecuteFunc("MG1")
call ExecuteFunc("MH1")
call ExecuteFunc("MZ1")
elseif(WG1==79)then
call ExecuteFunc("MV1")
call ExecuteFunc("MW1")
call ExecuteFunc("MX1")
call ExecuteFunc("MY1")
elseif(WG1==68)then
call ExecuteFunc("MJ1")
call ExecuteFunc("MK1")
elseif(WG1==84)then
call ExecuteFunc("ML1")
call ExecuteFunc("MM1")
call ExecuteFunc("MN1")
call ExecuteFunc("MS1")
elseif(WG1==85)then
call ExecuteFunc("MT1")
call ExecuteFunc("MR1")
call ExecuteFunc("MP1")
call ExecuteFunc("MQ1")
call ExecuteFunc("MU1")
elseif(WG1==86)then
call ExecuteFunc("N01")
call ExecuteFunc("NI1")
call ExecuteFunc("N11")
call ExecuteFunc("NO1")
elseif(WG1==87)then
call ExecuteFunc("N21")
call ExecuteFunc("N31")
call ExecuteFunc("N41")
call ExecuteFunc("N51")
elseif(WG1==33)then
call ExecuteFunc("N61")
call ExecuteFunc("N71")
call ExecuteFunc("N81")
elseif(WG1==39)then
call ExecuteFunc("N91")
call ExecuteFunc("NA1")
call ExecuteFunc("NB1")
elseif(WG1==88)then
call ExecuteFunc("NC1")
call ExecuteFunc("ND1")
call ExecuteFunc("NE1")
call ExecuteFunc("NF1")
elseif(WG1==40)then
call ExecuteFunc("NG1")
call ExecuteFunc("NH1")
call ExecuteFunc("NZ1")
call ExecuteFunc("NV1")
elseif WG1==89 then
call ExecuteFunc("NW1")
call ExecuteFunc("NX1")
elseif WG1==90 then
call ExecuteFunc("NY1")
call ExecuteFunc("NJ1")
call ExecuteFunc("NK1")
call ExecuteFunc("NL1")
elseif WG1==71 then
call ExecuteFunc("NM1")
call ExecuteFunc("NN1")
call ExecuteFunc("NS1")
call ExecuteFunc("NT1")
elseif WG1==93 then
call ExecuteFunc("NR1")
call ExecuteFunc("NP1")
call ExecuteFunc("NQ1")
call ExecuteFunc("NU1")
elseif WG1==42 then
call ExecuteFunc("S01")
call ExecuteFunc("SI1")
call ExecuteFunc("S11")
call ExecuteFunc("SO1")
elseif WG1==91 then
call ExecuteFunc("S21")
call ExecuteFunc("S31")
call ExecuteFunc("S41")
call ExecuteFunc("S51")
call ExecuteFunc("S61")
call ExecuteFunc("S71")
call ExecuteFunc("S81")
call ExecuteFunc("S91")
elseif WG1==92 then
call ExecuteFunc("SA1")
call ExecuteFunc("SB1")
call ExecuteFunc("SC1")
call ExecuteFunc("SD1")
elseif WG1==41 then
call ExecuteFunc("SE1")
call ExecuteFunc("SF1")
call ExecuteFunc("SG1")
call ExecuteFunc("SH1")
call ExecuteFunc("SZ1")
elseif WG1==43 then
call ExecuteFunc("SV1")
call ExecuteFunc("SW1")
call ExecuteFunc("SX1")
call ExecuteFunc("SY1")
elseif WG1==44 then
call ExecuteFunc("SJ1")
call ExecuteFunc("SK1")
call ExecuteFunc("SL1")
call ExecuteFunc("SM1")
elseif WG1==72 then
call ExecuteFunc("SN1")
call ExecuteFunc("SS1")
call ExecuteFunc("ST1")
call ExecuteFunc("SR1")
elseif WG1==94 then
call ExecuteFunc("SP1")
elseif WG1==6 then
call ExecuteFunc("SQ1")
call ExecuteFunc("SU1")
call ExecuteFunc("T01")
elseif WG1==104 then
call ExecuteFunc("TI1")
call ExecuteFunc("T11")
elseif WG1==65 then
call ExecuteFunc("TO1")
call ExecuteFunc("T21")
call ExecuteFunc("T31")
call ExecuteFunc("T41")
elseif WG1==111 then
call ExecuteFunc("T51")
call ExecuteFunc("T61")
call ExecuteFunc("T71")
elseif WG1==63 then
call ExecuteFunc("T81")
call ExecuteFunc("T91")
call ExecuteFunc("TA1")
call ExecuteFunc("TB1")
elseif WG1==45 then
call ExecuteFunc("TC1")
call ExecuteFunc("TD1")
call ExecuteFunc("TE1")
call ExecuteFunc("TF1")
elseif WG1==46 then
call ExecuteFunc("TG1")
call ExecuteFunc("TH1")
call ExecuteFunc("TZ1")
call ExecuteFunc("TV1")
elseif WG1==47 then
call ExecuteFunc("TW1")
call ExecuteFunc("TX1")
call ExecuteFunc("TY1")
call ExecuteFunc("TJ1")
elseif WG1==11 then
call ExecuteFunc("TK1")
call ExecuteFunc("TL1")
elseif WG1==96 then
call ExecuteFunc("TM1")
call ExecuteFunc("TN1")
call ExecuteFunc("TS1")
call ExecuteFunc("TT1")
elseif WG1==15 then
call ExecuteFunc("TR1")
call ExecuteFunc("TP1")
call ExecuteFunc("TQ1")
call ExecuteFunc("TU1")
elseif WG1==97 then
call ExecuteFunc("R01")
call ExecuteFunc("RI1")
call ExecuteFunc("R11")
call ExecuteFunc("RO1")
call ExecuteFunc("R21")
elseif WG1==98 then
call ExecuteFunc("R31")
call ExecuteFunc("R41")
call ExecuteFunc("R51")
call ExecuteFunc("R61")
call ExecuteFunc("R71")
elseif WG1==67 then
call ExecuteFunc("R81")
call ExecuteFunc("R91")
elseif WG1==28 then
call ExecuteFunc("RA1")
call ExecuteFunc("RB1")
elseif WG1==51 then
call ExecuteFunc("RC1")
call ExecuteFunc("RD1")
call ExecuteFunc("RE1")
call ExecuteFunc("RF1")
call ExecuteFunc("RG1")
call ExecuteFunc("RH1")
call ExecuteFunc("RZ1")
call ExecuteFunc("RV1")
elseif WG1==100 then
elseif WG1==101 then
call ExecuteFunc("RW1")
call ExecuteFunc("RX1")
call ExecuteFunc("RY1")
call ExecuteFunc("RJ1")
elseif WG1==48 then
call ExecuteFunc("RK1")
call ExecuteFunc("RL1")
call ExecuteFunc("RM1")
call ExecuteFunc("RN1")
elseif WG1==49 then
call ExecuteFunc("RS1")
call ExecuteFunc("RT1")
call ExecuteFunc("RR1")
call ExecuteFunc("RP1")
elseif WG1==29 then
call ExecuteFunc("RQ1")
call ExecuteFunc("RU1")
call ExecuteFunc("P01")
call ExecuteFunc("PI1")
elseif WG1==50 then
call ExecuteFunc("P11")
call ExecuteFunc("PO1")
call ExecuteFunc("P21")
call ExecuteFunc("P31")
elseif WG1==30 then
call ExecuteFunc("P41")
call ExecuteFunc("P51")
elseif WG1==53 then
call ExecuteFunc("P61")
call ExecuteFunc("P71")
call ExecuteFunc("P81")
call ExecuteFunc("P91")
elseif WG1==103 then
call ExecuteFunc("PA1")
elseif WG1==54 then
call ExecuteFunc("PB1")
call ExecuteFunc("PC1")
call ExecuteFunc("PD1")
call ExecuteFunc("PE1")
call ExecuteFunc("PF1")
elseif WG1==55 then
call ExecuteFunc("PG1")
call ExecuteFunc("PH1")
call ExecuteFunc("PZ1")
call ExecuteFunc("PV1")
elseif WG1==56 then
call ExecuteFunc("PW1")
call ExecuteFunc("PX1")
call ExecuteFunc("PY1")
call ExecuteFunc("PJ1")
elseif WG1==57 then
call ExecuteFunc("PK1")
call ExecuteFunc("PL1")
call ExecuteFunc("PM1")
call ExecuteFunc("PN1")
call ExecuteFunc("PS1")
elseif WG1==109 then
call ExecuteFunc("PT1")
call ExecuteFunc("PR1")
call ExecuteFunc("PP1")
call ExecuteFunc("PQ1")
call ExecuteFunc("PU1")
call ExecuteFunc("Q01")
elseif WG1==110 then
call ExecuteFunc("QI1")
call ExecuteFunc("Q11")
call ExecuteFunc("QO1")
call ExecuteFunc("Q21")
call ExecuteFunc("Q31")
elseif WG1==35 then
call ExecuteFunc("Q41")
call ExecuteFunc("Q51")
call ExecuteFunc("Q61")
elseif WG1==58 then
call ExecuteFunc("Q71")
call ExecuteFunc("Q81")
call ExecuteFunc("Q91")
call ExecuteFunc("QA1")
call ExecuteFunc("QB1")
call ExecuteFunc("QC1")
set GK=SFI
call ExecuteFunc("QD1")
elseif WG1==59 then
call ExecuteFunc("QE1")
call ExecuteFunc("QF1")
call ExecuteFunc("QG1")
call ExecuteFunc("QH1")
endif
endfunction
function QZ1 takes player MDI,string NII returns nothing
if IsPlayerInForce(GetLocalPlayer(),MCI(MDI))then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,U2,40,C0[GetPlayerId(MDI)]+(D80[GetPlayerId((MDI))])+"|r "+NII)
endif
endfunction
function Main_AllHasHero takes nothing returns boolean
return K1[GetPlayerId(BO[1])]!=null and K1[GetPlayerId(BO[2])]!=null and K1[GetPlayerId(BO[3])]!=null and K1[GetPlayerId(BO[4])]!=null and K1[GetPlayerId(BO[5])]!=null and K1[GetPlayerId(CO[1])]!=null and K1[GetPlayerId(CO[2])]!=null and K1[GetPlayerId(CO[3])]!=null and K1[GetPlayerId(CO[4])]!=null and K1[GetPlayerId(CO[5])]!=null
endfunction
function QV1 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
set EN=true
call S0I(t)
call DestroyFogModifier(CreateFogModifierRadius(BO[0],FOG_OF_WAR_MASKED,PC0,PD0,700,false,false))
call DestroyFogModifier(CreateFogModifierRadius(CO[0],FOG_OF_WAR_MASKED,PC0,PD0,700,false,false))
set t=null
return false
endfunction
function QW1 takes unit u returns boolean
return GetUnitTypeId(u)!=1211117645 and GetUnitTypeId(u)!=1311788365 and GetUnitTypeId(u)!=1211119431 and GetUnitTypeId(u)!=1211117657 and GetUnitTypeId(u)!=1211117642 and GetUnitTypeId(u)!=1211122232 and GetUnitTypeId(u)!=1211123027
endfunction
function QX1 takes nothing returns boolean
return IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetTriggerUnit())==false and HaveSavedBoolean(LY,GetHandleId(GetTriggerUnit()),85)==false and QW1(GetTriggerUnit())
endfunction
function QY1 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1848651843
endfunction
function QJ1 takes nothing returns nothing
call RemoveUnit(GetEnumUnit())
endfunction
function QK1 takes player T4I returns nothing
local group Z51=NTI()
local boolexpr QL1=Condition(function QY1)
call GroupEnumUnitsOfPlayer(Z51,T4I,QL1)
call ForGroup(Z51,function QJ1)
call NSI(Z51)
endfunction
function QM1 takes nothing returns nothing
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
endfunction
function QN1 takes nothing returns boolean
return GetUnitTypeId(GetFilterUnit())==1852010352
endfunction
function QS1 takes nothing returns nothing
if IAI then
call UnitRemoveAbility(D30[GetPlayerId(GetOwningPlayer(GetEnumUnit()))],1093743686)
call UnitRemoveAbility(D30[GetPlayerId(GetOwningPlayer(GetEnumUnit()))],1093743685)
call UnitRemoveAbility(D30[GetPlayerId(GetOwningPlayer(GetEnumUnit()))],1093743688)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1093683508)==0 then
call UnitAddAbility(GetEnumUnit(),1093683508)
endif
endfunction
function QT1 takes player p returns nothing
local group g=NTI()
call GroupEnumUnitsOfPlayer(g,p,Condition(function QN1))
call ForGroup(g,function QS1)
call NSI(g)
set g=null
endfunction
function DelayedHeroTech_Helper takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer SSI=(LoadInteger(LY,(S5I),(86)))
call TCI(SSI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function QR1 takes unit SFI,player p returns string
local string s=GetObjectName(1848656962)
set s=FS1(s,"$hero",GetUnitName(SFI))
set s=FS1(s,"$p",(D80[GetPlayerId((p))]))
return s
endfunction
function QP1 takes nothing returns nothing
local unit PKI=GetTriggerUnit()
local player T4I=GetOwningPlayer(PKI)
local real x
local real y
local region r=CreateRegion()
local player QQ1=T4I
local item BA1
local unit SFI=PKI
local trigger t
if X0==false then
call GK1(GetOwningPlayer(PKI))
endif
if GetObjectName(1848657992)=="Language: English"and(DR0[(GetUnitPointValue(PKI))]!="")then
call DisplayTimedTextToPlayer(T4I,0,0,4,"A |c006699CC-tips|r command is available if you would like some pointers for this hero")
endif
if PB0[GetPlayerId(T4I)]==true then
call GD1(T4I,GetUnitPointValue(PKI))
endif
if EN==false and(K1[GetPlayerId(BO[1])]!=null and K1[GetPlayerId(BO[2])]!=null and K1[GetPlayerId(BO[3])]!=null and K1[GetPlayerId(BO[4])]!=null and K1[GetPlayerId(BO[5])]!=null and K1[GetPlayerId(CO[1])]!=null and K1[GetPlayerId(CO[2])]!=null and K1[GetPlayerId(CO[3])]!=null and K1[GetPlayerId(CO[4])]!=null and K1[GetPlayerId(CO[5])]!=null)then
set t=CreateTrigger()
call TriggerRegisterTimerEvent(t,7,false)
call TriggerAddCondition(t,Condition(function QV1))
set t=null
endif
set HJ[GetPlayerId(GetOwningPlayer((PKI)))]=false
call RegionAddRect(r,RA)
if B3 and G3==false then
set E3[GetPlayerId(T4I)]=true
set T4I=(LoadPlayerHandle(LY,(2000),(550+GetPlayerId(T4I))))
call SetUnitOwner(PKI,T4I,true)
endif
call SetPlayerAbilityAvailable(GetOwningPlayer(PKI),1093817427,false)
if TII(GetOwningPlayer(PKI))then
if IsUnitInRegion(r,PKI)then
set x=GetRandomReal(GetRectMinX(O4),GetRectMaxX(O4))
set y=GetRandomReal(GetRectMinY(O4),GetRectMaxY(O4))
else
set x=GetUnitX(PKI)
set y=GetUnitY(PKI)
endif
else
if IsUnitInRegion(r,PKI)then
set x=GetRandomReal(GetRectMinX(S3),GetRectMaxX(S3))
set y=GetRandomReal(GetRectMinY(S3),GetRectMaxY(S3))
else
set x=GetUnitX(PKI)
set y=GetUnitY(PKI)
endif
endif
set C3[GetPlayerId(T4I)]=true
if(not B3 or G3)then
if QT0==false and BN==false then
call PanCameraToTimedForPlayer(T4I,x,y,0)
endif
if GetUnitTypeId(PKI)!=1311788365 then
call ClearSelectionForPlayer(T4I)
endif
call SelectUnitAddForPlayer(PKI,T4I)
endif
call SetUnitX(PKI,x)
call SetUnitY(PKI,y)
if GetUnitTypeId(PKI)!=1311788365 then
set K1[GetPlayerId(T4I)]=PKI
endif
call FJ1(T4I,"9",GetUnitTypeId(PKI))
if B3 and G3==false then
call TFI(QQ1)
else
call TFI(T4I)
endif
call SaveBoolean(LY,(GetHandleId(PKI)),(85),(true))
if not F2 then
set R[GetUnitPointValue(PKI)]=true
call TCI(GetUnitTypeId(PKI))
endif
if X0 then
if TII(T4I)then
set T1[0]=T1[0]+1
else
set T1[1]=T1[1]+1
endif
set IO[GetPlayerId(T4I)]=IO[GetPlayerId(T4I)]+1
if IO[GetPlayerId(GetOwningPlayer(PKI))]>1 and PKI!=U1[GetPlayerId(GetOwningPlayer(PKI))]then
call WI1(U1[GetPlayerId(GetOwningPlayer(PKI))])
call DisableTrigger(LY0)
call SetHeroXP(PKI,GetHeroXP(U1[GetPlayerId(GetOwningPlayer(PKI))]),false)
call UnitAddItem(PKI,UnitItemInSlot(U1[GetPlayerId(GetOwningPlayer(PKI))],0))
call UnitAddItem(PKI,UnitItemInSlot(U1[GetPlayerId(GetOwningPlayer(PKI))],1))
call UnitAddItem(PKI,UnitItemInSlot(U1[GetPlayerId(GetOwningPlayer(PKI))],2))
call UnitAddItem(PKI,UnitItemInSlot(U1[GetPlayerId(GetOwningPlayer(PKI))],3))
call UnitAddItem(PKI,UnitItemInSlot(U1[GetPlayerId(GetOwningPlayer(PKI))],4))
call UnitAddItem(PKI,UnitItemInSlot(U1[GetPlayerId(GetOwningPlayer(PKI))],5))
call EnableTrigger(LY0)
if W01(U1[GetPlayerId(GetOwningPlayer(PKI))])then
call W21(U1[GetPlayerId(GetOwningPlayer(PKI))])
else
call Q5I(U1[GetPlayerId(GetOwningPlayer(PKI))])
endif
endif
endif
if T4I!=BO[0]and T4I!=CO[0]then
if B3 then
if TimerGetElapsed(M)>60 then
call QZ1(T4I,GetObjectName(1848652357)+" "+GetUnitName(PKI))
elseif S0[GetPlayerId(QQ1)]==true then
call QZ1(T4I,QR1(PKI,QQ1))
else
call SetPlayerState(QQ1,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(QQ1,PLAYER_STATE_RESOURCE_GOLD)+250)
call QZ1(T4I,GetObjectName(1848656945)+" "+GetUnitName(PKI)+" "+GetObjectName(1848656944)+" "+(D80[GetPlayerId((QQ1))]))
endif
elseif Y2==false or T4I==WO then
if(D0[GetPlayerId(GetOwningPlayer(PKI))]==true and Y2==false)then
call QZ1(T4I,GetObjectName(1848656949)+" "+GetUnitName(PKI)+".")
elseif((S0[GetPlayerId(T4I)]==true and X0==false)or Y0 or J0 or N2)then
call QZ1(T4I,GetObjectName(1848656947)+" "+GetUnitName(PKI)+".")
else
call QZ1(T4I,GetObjectName(1848656946)+" "+GetUnitName(PKI)+".")
endif
endif
endif
if TK then
if B3 then
call QK1(QQ1)
else
call QK1(T4I)
endif
endif
if(QT0 or BN)and TK then
call QK1(T4I)
endif
call QT1(T4I)
if(GetUnitTypeId(PKI)==1160785973)then
call DisplayTimedTextToPlayer(T4I,0,U2,60.00," ")
call DisplayTimedTextToPlayer(T4I,0,U2,60.00,"|c00ff0303"+GetObjectName(1848653384)+GetObjectName(1848656706)+" "+GetObjectName(1848653381)+"|r")
elseif GetUnitTypeId(PKI)==1328558154 or GetUnitTypeId(PKI)==1311781174 or GetUnitTypeId(PKI)==1430468913 or GetUnitTypeId(PKI)==1162032181 then
call DisplayTimedTextToPlayer(T4I,0,U2,10.00," ")
call DisplayTimedTextToPlayer(T4I,0,U2,10.00,"|c00ff0303"+GetObjectName(1848657715)+"|r")
endif
if(GetUnitTypeId(PKI)==1160786242)then
call DisplayTimedTextToPlayer(T4I,0,U2,30.00," ")
call DisplayTimedTextToPlayer(T4I,0,U2,30.00,"|c00ff0303"+GetObjectName(1848653392)+" "+GetObjectName(1848653397)+"|r")
endif
if(S0[GetPlayerId(T4I)]==false)then
if(J2)then
call SetPlayerState(T4I,PLAYER_STATE_RESOURCE_GOLD,175+GetPlayerState(T4I,PLAYER_STATE_RESOURCE_GOLD))
endif
endif
if HaveSavedBoolean(LY,600+GetUnitPointValue(PKI),87)==false then
call SaveBoolean(LY,(600+GetUnitPointValue(PKI)),(87),(true))
call WF1(PKI)
endif
set GK=PKI
call ExecuteFunc("QU1")
if RP0[GetPlayerId(GetLocalPlayer())]==false then
call SetPlayerName(T4I,(D80[GetPlayerId((T4I))])+" ("+S8I(K1[GetPlayerId(T4I)])+")")
endif
call RemoveRegion(r)
endfunction
function U11 takes nothing returns boolean
return IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==true
endfunction
function UO1 takes nothing returns nothing
local unit SFI=GetSoldUnit()
local player T4I=GetOwningPlayer(SFI)
call TFI(T4I)
endfunction
function U31 takes nothing returns boolean
local integer ROI=1
if R0 then
set ROI=2
endif
call SetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(BO[1],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(BO[2],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(BO[3],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(BO[4],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(BO[5],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(CO[1],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(CO[2],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(CO[3],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(CO[4],PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(CO[5],PLAYER_STATE_RESOURCE_GOLD)+ROI)
return false
endfunction
function U51 takes nothing returns nothing
local integer QHI=R2I(TimerGetElapsed(M)-N)
local integer BX1=QHI/60-1/2
local integer BY1=ModuloInteger(QHI,60)
if CL then
call BW1(BX1,BY1,false)
elseif AL==false then
set QHI=R2I(16-TimerGetElapsed(M))
set BX1=QHI/60-1/2
set BY1=ModuloInteger(QHI,60)
call BW1(BX1,BY1,true)
endif
endfunction
function U71 takes nothing returns boolean
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and(LoadInteger(EY0,(GetSpellAbilityId()),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId()))))>0 then
call TimerStart(EJ0[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))],(LoadInteger(EY0,(GetSpellAbilityId()),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId())))),false,null)
endif
if GetSpellAbilityId()==1093677655 then
call TimerStart(EJ0[GetPlayerId((GetOwningPlayer(GetTriggerUnit())))],0,false,null)
endif
return false
endfunction
function U81 takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i
call UMI(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function U71))
set i=0
loop
exitwhen(i>13)
set EJ0[i]=CreateTimer()
set i=i+1
endloop
set EY0=InitHashtable()
call SaveInteger(EY0,(1093742923),(1),(60))
call SaveInteger(EY0,(1093742923),(2),(50))
call SaveInteger(EY0,(1093742923),(3),(40))
call SaveInteger(EY0,(1093685042),(1),(80))
call SaveInteger(EY0,(1093685042),(2),(75))
call SaveInteger(EY0,(1093685042),(3),(70))
call SaveInteger(EY0,(1093810233),(1),(45))
call SaveInteger(EY0,(1093810233),(2),(45))
call SaveInteger(EY0,(1093810233),(3),(45))
call SaveInteger(EY0,(1093682248),(1),(150))
call SaveInteger(EY0,(1093682248),(2),(130))
call SaveInteger(EY0,(1093682248),(3),(110))
call SaveInteger(EY0,(1093750594),(1),(150))
call SaveInteger(EY0,(1093750594),(2),(130))
call SaveInteger(EY0,(1093750594),(3),(110))
call SaveInteger(EY0,(1093682514),(1),(150))
call SaveInteger(EY0,(1093682514),(2),(150))
call SaveInteger(EY0,(1093682514),(3),(150))
call SaveInteger(EY0,(1093817144),(1),(150))
call SaveInteger(EY0,(1093817144),(2),(150))
call SaveInteger(EY0,(1093817144),(3),(150))
call SaveInteger(EY0,(1093684561),(1),(140))
call SaveInteger(EY0,(1093684561),(2),(120))
call SaveInteger(EY0,(1093684561),(3),(100))
call SaveInteger(EY0,(1093747254),(1),(140))
call SaveInteger(EY0,(1093747254),(2),(120))
call SaveInteger(EY0,(1093747254),(3),(100))
call SaveInteger(EY0,(1093752648),(1),(80))
call SaveInteger(EY0,(1093752648),(2),(80))
call SaveInteger(EY0,(1093752648),(3),(80))
call SaveInteger(EY0,(1093746993),(1),(100))
call SaveInteger(EY0,(1093746993),(2),(100))
call SaveInteger(EY0,(1093746993),(3),(100))
call SaveInteger(EY0,(1093678938),(1),(70))
call SaveInteger(EY0,(1093678938),(2),(70))
call SaveInteger(EY0,(1093678938),(3),(70))
call SaveInteger(EY0,(1095656306),(1),(45))
call SaveInteger(EY0,(1095656306),(2),(45))
call SaveInteger(EY0,(1095656306),(3),(45))
call SaveInteger(EY0,(1093687864),(1),(70))
call SaveInteger(EY0,(1093687864),(2),(55))
call SaveInteger(EY0,(1093687864),(3),(40))
call SaveInteger(EY0,(1093747542),(1),(12))
call SaveInteger(EY0,(1093747542),(2),(12))
call SaveInteger(EY0,(1093747542),(3),(12))
call SaveInteger(EY0,(1093677895),(1),(115))
call SaveInteger(EY0,(1093677895),(2),(115))
call SaveInteger(EY0,(1093677895),(3),(115))
call SaveInteger(EY0,(1093810508),(1),(120))
call SaveInteger(EY0,(1093810508),(2),(110))
call SaveInteger(EY0,(1093810508),(3),(100))
call SaveInteger(EY0,(1093685586),(1),(45))
call SaveInteger(EY0,(1093685586),(2),(30))
call SaveInteger(EY0,(1093685586),(3),(15))
call SaveInteger(EY0,(1093747251),(1),(4))
call SaveInteger(EY0,(1093747251),(2),(4))
call SaveInteger(EY0,(1093747251),(3),(4))
call SaveInteger(EY0,(1093678674),(1),(140))
call SaveInteger(EY0,(1093678674),(2),(120))
call SaveInteger(EY0,(1093678674),(3),(100))
call SaveInteger(EY0,(1093747252),(1),(120))
call SaveInteger(EY0,(1093747252),(2),(100))
call SaveInteger(EY0,(1093747252),(3),(80))
call SaveInteger(EY0,(1093682996),(1),(80))
call SaveInteger(EY0,(1093682996),(2),(70))
call SaveInteger(EY0,(1093682996),(3),(60))
call SaveInteger(EY0,(1093747768),(1),(20))
call SaveInteger(EY0,(1093747768),(2),(20))
call SaveInteger(EY0,(1093747768),(3),(20))
call SaveInteger(EY0,(1093810505),(1),(150))
call SaveInteger(EY0,(1093810505),(2),(150))
call SaveInteger(EY0,(1093810505),(3),(150))
call SaveInteger(EY0,(1093682482),(1),(75))
call SaveInteger(EY0,(1093682482),(2),(65))
call SaveInteger(EY0,(1093682482),(3),(55))
call SaveInteger(EY0,(1093750098),(1),(6))
call SaveInteger(EY0,(1093750098),(2),(6))
call SaveInteger(EY0,(1093750098),(3),(6))
call SaveInteger(EY0,(1093677903),(1),(140))
call SaveInteger(EY0,(1093677903),(2),(140))
call SaveInteger(EY0,(1093677903),(3),(140))
call SaveInteger(EY0,(1093685847),(1),(20))
call SaveInteger(EY0,(1093685847),(2),(20))
call SaveInteger(EY0,(1093685847),(3),(20))
call SaveInteger(EY0,(1093684565),(1),(100))
call SaveInteger(EY0,(1093684565),(2),(100))
call SaveInteger(EY0,(1093684565),(3),(100))
call SaveInteger(EY0,(1093681458),(1),(100))
call SaveInteger(EY0,(1093681458),(2),(100))
call SaveInteger(EY0,(1093681458),(3),(100))
call SaveInteger(EY0,(1093686103),(1),(100))
call SaveInteger(EY0,(1093686103),(2),(100))
call SaveInteger(EY0,(1093686103),(3),(100))
call SaveInteger(EY0,(1093679411),(1),(120))
call SaveInteger(EY0,(1093679411),(2),(90))
call SaveInteger(EY0,(1093679411),(3),(60))
call SaveInteger(EY0,(1093677899),(1),(180))
call SaveInteger(EY0,(1093677899),(2),(150))
call SaveInteger(EY0,(1093677899),(3),(120))
call SaveInteger(EY0,(1093747248),(1),(180))
call SaveInteger(EY0,(1093747248),(2),(150))
call SaveInteger(EY0,(1093747248),(3),(120))
call SaveInteger(EY0,(1093685808),(1),(130))
call SaveInteger(EY0,(1093685808),(2),(130))
call SaveInteger(EY0,(1093685808),(3),(130))
call SaveInteger(EY0,(1093682764),(1),(30))
call SaveInteger(EY0,(1093682764),(2),(30))
call SaveInteger(EY0,(1093682764),(3),(30))
call SaveInteger(EY0,(1093747544),(1),(30))
call SaveInteger(EY0,(1093747544),(2),(30))
call SaveInteger(EY0,(1093747544),(3),(30))
call SaveInteger(EY0,(1093677876),(1),(5))
call SaveInteger(EY0,(1093677876),(2),(5))
call SaveInteger(EY0,(1093677876),(3),(5))
call SaveInteger(EY0,(1093743946),(1),(75))
call SaveInteger(EY0,(1093743946),(2),(75))
call SaveInteger(EY0,(1093743946),(3),(75))
call SaveInteger(EY0,(1093818181),(1),(70))
call SaveInteger(EY0,(1093818181),(2),(70))
call SaveInteger(EY0,(1093818181),(3),(70))
call SaveInteger(EY0,(1093678160),(1),(20))
call SaveInteger(EY0,(1093678160),(2),(15))
call SaveInteger(EY0,(1093678160),(3),(10))
call SaveInteger(EY0,(1093684529),(1),(130))
call SaveInteger(EY0,(1093684529),(2),(120))
call SaveInteger(EY0,(1093684529),(3),(110))
call SaveInteger(EY0,(1093747032),(1),(70))
call SaveInteger(EY0,(1093747032),(2),(70))
call SaveInteger(EY0,(1093747032),(3),(70))
call SaveInteger(EY0,(1093678388),(1),(160))
call SaveInteger(EY0,(1093678388),(2),(150))
call SaveInteger(EY0,(1093678388),(3),(140))
call SaveInteger(EY0,(1093677141),(1),(160))
call SaveInteger(EY0,(1093677141),(2),(150))
call SaveInteger(EY0,(1093677141),(3),(140))
call SaveInteger(EY0,(1093683000),(1),(80))
call SaveInteger(EY0,(1093683000),(2),(80))
call SaveInteger(EY0,(1093683000),(3),(80))
call SaveInteger(EY0,(1093678933),(1),(180))
call SaveInteger(EY0,(1093678933),(2),(120))
call SaveInteger(EY0,(1093678933),(3),(60))
call SaveInteger(EY0,(1093684053),(1),(140))
call SaveInteger(EY0,(1093684053),(2),(120))
call SaveInteger(EY0,(1093684053),(3),(100))
call SaveInteger(EY0,(1093748042),(1),(30))
call SaveInteger(EY0,(1093748042),(2),(30))
call SaveInteger(EY0,(1093748042),(3),(30))
call SaveInteger(EY0,(1093681716),(1),(4))
call SaveInteger(EY0,(1093681716),(2),(4))
call SaveInteger(EY0,(1093681716),(3),(4))
call SaveInteger(EY0,(1093749070),(1),(60))
call SaveInteger(EY0,(1093749070),(2),(60))
call SaveInteger(EY0,(1093749070),(3),(60))
call SaveInteger(EY0,(1093683761),(1),(130))
call SaveInteger(EY0,(1093683761),(2),(115))
call SaveInteger(EY0,(1093683761),(3),(100))
call SaveInteger(EY0,(1093747767),(1),(60))
call SaveInteger(EY0,(1093747767),(2),(60))
call SaveInteger(EY0,(1093747767),(3),(60))
call SaveInteger(EY0,(1093750089),(1),(40))
call SaveInteger(EY0,(1093750089),(2),(40))
call SaveInteger(EY0,(1093750089),(3),(40))
call SaveInteger(EY0,(1093816645),(1),(40))
call SaveInteger(EY0,(1093816645),(2),(40))
call SaveInteger(EY0,(1093816645),(3),(40))
call SaveInteger(EY0,(1093747023),(1),(80))
call SaveInteger(EY0,(1093747023),(2),(70))
call SaveInteger(EY0,(1093747023),(3),(60))
call SaveInteger(EY0,(1093752150),(1),(80))
call SaveInteger(EY0,(1093752150),(2),(70))
call SaveInteger(EY0,(1093752150),(3),(60))
call SaveInteger(EY0,(1093750341),(1),(180))
call SaveInteger(EY0,(1093750341),(2),(160))
call SaveInteger(EY0,(1093750341),(3),(140))
call SaveInteger(EY0,(1093814599),(1),(180))
call SaveInteger(EY0,(1093814599),(2),(160))
call SaveInteger(EY0,(1093814599),(3),(140))
call SaveInteger(EY0,(1093747028),(1),(90))
call SaveInteger(EY0,(1093747028),(2),(90))
call SaveInteger(EY0,(1093747028),(3),(90))
call SaveInteger(EY0,(1093685840),(1),(11))
call SaveInteger(EY0,(1093685840),(2),(9))
call SaveInteger(EY0,(1093685840),(3),(7))
call SaveInteger(EY0,(1093684291),(1),(25))
call SaveInteger(EY0,(1093684291),(2),(25))
call SaveInteger(EY0,(1093684291),(3),(25))
call SaveInteger(EY0,(1093683534),(1),(45))
call SaveInteger(EY0,(1093683534),(2),(45))
call SaveInteger(EY0,(1093683534),(3),(45))
call SaveInteger(EY0,(1093747031),(1),(10))
call SaveInteger(EY0,(1093747031),(2),(10))
call SaveInteger(EY0,(1093747031),(3),(10))
call SaveInteger(EY0,(1093684296),(1),(70))
call SaveInteger(EY0,(1093684296),(2),(60))
call SaveInteger(EY0,(1093684296),(3),(50))
call SaveInteger(EY0,(1093678161),(1),(45))
call SaveInteger(EY0,(1093678161),(2),(40))
call SaveInteger(EY0,(1093678161),(3),(35))
call SaveInteger(EY0,(1093687121),(1),(45))
call SaveInteger(EY0,(1093687121),(2),(45))
call SaveInteger(EY0,(1093687121),(3),(45))
call SaveInteger(EY0,(1093679445),(1),(70))
call SaveInteger(EY0,(1093679445),(2),(60))
call SaveInteger(EY0,(1093679445),(3),(50))
call SaveInteger(EY0,(1093682004),(1),(60))
call SaveInteger(EY0,(1093682004),(2),(50))
call SaveInteger(EY0,(1093682004),(3),(40))
call SaveInteger(EY0,(1093810506),(1),(120))
call SaveInteger(EY0,(1093810506),(2),(110))
call SaveInteger(EY0,(1093810506),(3),(100))
call SaveInteger(EY0,(1093678929),(1),(120))
call SaveInteger(EY0,(1093678929),(2),(80))
call SaveInteger(EY0,(1093678929),(3),(40))
call SaveInteger(EY0,(1093683257),(1),(120))
call SaveInteger(EY0,(1093683257),(2),(120))
call SaveInteger(EY0,(1093683257),(3),(120))
call SaveInteger(EY0,(1093677363),(1),(140))
call SaveInteger(EY0,(1093677363),(2),(120))
call SaveInteger(EY0,(1093677363),(3),(100))
call SaveInteger(EY0,(1093681462),(1),(140))
call SaveInteger(EY0,(1093681462),(2),(120))
call SaveInteger(EY0,(1093681462),(3),(60))
call SaveInteger(EY0,(1093679152),(1),(80))
call SaveInteger(EY0,(1093679152),(2),(50))
call SaveInteger(EY0,(1093679152),(3),(30))
call SaveInteger(EY0,(1093677906),(1),(150))
call SaveInteger(EY0,(1093677906),(2),(120))
call SaveInteger(EY0,(1093677906),(3),(90))
call SaveInteger(EY0,(1093681494),(1),(150))
call SaveInteger(EY0,(1093681494),(2),(120))
call SaveInteger(EY0,(1093681494),(3),(90))
call SaveInteger(EY0,(1093686072),(1),(85))
call SaveInteger(EY0,(1093686072),(2),(85))
call SaveInteger(EY0,(1093686072),(3),(85))
call SaveInteger(EY0,(1093751120),(1),(85))
call SaveInteger(EY0,(1093751120),(2),(85))
call SaveInteger(EY0,(1093751120),(3),(85))
call SaveInteger(EY0,(1093684308),(1),(160))
call SaveInteger(EY0,(1093684308),(2),(140))
call SaveInteger(EY0,(1093684308),(3),(120))
call SaveInteger(EY0,(1093747539),(1),(30))
call SaveInteger(EY0,(1093747539),(2),(30))
call SaveInteger(EY0,(1093747539),(3),(30))
call SaveInteger(EY0,(1093742932),(1),(80))
call SaveInteger(EY0,(1093742932),(2),(70))
call SaveInteger(EY0,(1093742932),(3),(60))
call SaveInteger(EY0,(1093752632),(1),(90))
call SaveInteger(EY0,(1093752632),(2),(75))
call SaveInteger(EY0,(1093752632),(3),(60))
call SaveInteger(EY0,(1093752633),(1),(90))
call SaveInteger(EY0,(1093752633),(2),(75))
call SaveInteger(EY0,(1093752633),(3),(60))
call SaveInteger(EY0,(1093810503),(1),(90))
call SaveInteger(EY0,(1093810503),(2),(90))
call SaveInteger(EY0,(1093810503),(3),(90))
call SaveInteger(EY0,(1093810504),(1),(90))
call SaveInteger(EY0,(1093810504),(2),(90))
call SaveInteger(EY0,(1093810504),(3),(90))
call SaveInteger(EY0,(1093684275),(1),(130))
call SaveInteger(EY0,(1093684275),(2),(130))
call SaveInteger(EY0,(1093684275),(3),(130))
call SaveInteger(EY0,(1093816643),(1),(130))
call SaveInteger(EY0,(1093816643),(2),(130))
call SaveInteger(EY0,(1093816643),(3),(130))
call SaveInteger(EY0,(1093677392),(1),(70))
call SaveInteger(EY0,(1093677392),(2),(60))
call SaveInteger(EY0,(1093677392),(3),(50))
call SaveInteger(EY0,(1093679450),(1),(70))
call SaveInteger(EY0,(1093679450),(2),(60))
call SaveInteger(EY0,(1093679450),(3),(50))
call SaveInteger(EY0,(1093743184),(1),(60))
call SaveInteger(EY0,(1093743184),(2),(60))
call SaveInteger(EY0,(1093743184),(3),(60))
call SaveInteger(EY0,(1093747766),(1),(15))
call SaveInteger(EY0,(1093747766),(2),(15))
call SaveInteger(EY0,(1093747766),(3),(15))
call SaveInteger(EY0,(1093744975),(1),(90))
call SaveInteger(EY0,(1093744975),(2),(75))
call SaveInteger(EY0,(1093744975),(3),(60))
call SaveInteger(EY0,(1093681483),(1),(10))
call SaveInteger(EY0,(1093681483),(2),(10))
call SaveInteger(EY0,(1093681483),(3),(10))
call SaveInteger(EY0,(1093748313),(1),(10))
call SaveInteger(EY0,(1093748313),(2),(10))
call SaveInteger(EY0,(1093748313),(3),(10))
call SaveInteger(EY0,(1093686854),(1),(22))
call SaveInteger(EY0,(1093686854),(2),(17))
call SaveInteger(EY0,(1093686854),(3),(12))
call SaveInteger(EY0,(1093686854),(4),(5))
call SaveInteger(EY0,(1093747253),(1),(16))
call SaveInteger(EY0,(1093747253),(2),(8))
call SaveInteger(EY0,(1093747253),(3),(4))
call SaveInteger(EY0,(1093747253),(4),(2))
call SaveInteger(EY0,(1093678923),(1),(6))
call SaveInteger(EY0,(1093678923),(2),(6))
call SaveInteger(EY0,(1093678923),(3),(6))
call SaveInteger(EY0,(1093742673),(1),(40))
call SaveInteger(EY0,(1093742673),(2),(40))
call SaveInteger(EY0,(1093742673),(3),(40))
call SaveInteger(EY0,(1093747778),(1),(40))
call SaveInteger(EY0,(1093747778),(2),(40))
call SaveInteger(EY0,(1093747778),(3),(40))
call SaveInteger(EY0,(1093677128),(1),(120))
call SaveInteger(EY0,(1093677128),(2),(120))
call SaveInteger(EY0,(1093677128),(3),(120))
call SaveInteger(EY0,(1093681457),(1),(120))
call SaveInteger(EY0,(1093681457),(2),(120))
call SaveInteger(EY0,(1093681457),(3),(120))
call SaveInteger(EY0,(1093685045),(1),(60))
call SaveInteger(EY0,(1093685045),(2),(60))
call SaveInteger(EY0,(1093685045),(3),(60))
call SaveInteger(EY0,(1093747249),(1),(60))
call SaveInteger(EY0,(1093747249),(2),(60))
call SaveInteger(EY0,(1093747249),(3),(60))
call SaveInteger(EY0,(1093684820),(1),(80))
call SaveInteger(EY0,(1093684820),(2),(80))
call SaveInteger(EY0,(1093684820),(3),(80))
call SaveInteger(EY0,(1093684824),(1),(80))
call SaveInteger(EY0,(1093684824),(2),(80))
call SaveInteger(EY0,(1093684824),(3),(80))
call SaveInteger(EY0,(1093677649),(1),(100))
call SaveInteger(EY0,(1093677649),(2),(100))
call SaveInteger(EY0,(1093677649),(3),(100))
call SaveInteger(EY0,(1093747769),(1),(100))
call SaveInteger(EY0,(1093747769),(2),(100))
call SaveInteger(EY0,(1093747769),(3),(100))
call SaveInteger(EY0,(1093685579),(1),(100))
call SaveInteger(EY0,(1093685579),(2),(100))
call SaveInteger(EY0,(1093685579),(3),(100))
call SaveInteger(EY0,(1093678899),(1),(135))
call SaveInteger(EY0,(1093678899),(2),(135))
call SaveInteger(EY0,(1093678899),(3),(135))
call SaveInteger(EY0,(1093677898),(1),(135))
call SaveInteger(EY0,(1093677898),(2),(135))
call SaveInteger(EY0,(1093677898),(3),(135))
call SaveInteger(EY0,(1093678154),(1),(135))
call SaveInteger(EY0,(1093678154),(2),(135))
call SaveInteger(EY0,(1093678154),(3),(135))
call SaveInteger(EY0,(1093678157),(1),(135))
call SaveInteger(EY0,(1093678157),(2),(135))
call SaveInteger(EY0,(1093678157),(3),(135))
call SaveInteger(EY0,(1093678158),(1),(135))
call SaveInteger(EY0,(1093678158),(2),(135))
call SaveInteger(EY0,(1093678158),(3),(135))
call SaveInteger(EY0,(1093679413),(1),(160))
call SaveInteger(EY0,(1093679413),(2),(100))
call SaveInteger(EY0,(1093679413),(3),(40))
call SaveInteger(EY0,(1093679447),(1),(100))
call SaveInteger(EY0,(1093679447),(2),(60))
call SaveInteger(EY0,(1093679447),(3),(20))
call SaveInteger(EY0,(1093747288),(1),(200))
call SaveInteger(EY0,(1093747288),(2),(190))
call SaveInteger(EY0,(1093747288),(3),(180))
call SaveInteger(EY0,(1093678420),(1),(120))
call SaveInteger(EY0,(1093678420),(2),(90))
call SaveInteger(EY0,(1093678420),(3),(60))
call SaveInteger(EY0,(1093679176),(1),(120))
call SaveInteger(EY0,(1093679176),(2),(90))
call SaveInteger(EY0,(1093679176),(3),(60))
call SaveInteger(EY0,(1093678647),(1),(100))
call SaveInteger(EY0,(1093678647),(2),(85))
call SaveInteger(EY0,(1093678647),(3),(70))
call SaveInteger(EY0,(1093679184),(1),(70))
call SaveInteger(EY0,(1093679184),(2),(70))
call SaveInteger(EY0,(1093679184),(3),(70))
call SaveInteger(EY0,(1093681987),(1),(22))
call SaveInteger(EY0,(1093681987),(2),(22))
call SaveInteger(EY0,(1093681987),(3),(22))
call SaveInteger(EY0,(1093685067),(1),(160))
call SaveInteger(EY0,(1093685067),(2),(160))
call SaveInteger(EY0,(1093685067),(3),(160))
call SaveInteger(EY0,(1093752407),(1),(160))
call SaveInteger(EY0,(1093752407),(2),(160))
call SaveInteger(EY0,(1093752407),(3),(160))
call SaveInteger(EY0,(1093873718),(1),(135))
call SaveInteger(EY0,(1093873718),(2),(135))
call SaveInteger(EY0,(1093873718),(3),(135))
call SaveInteger(EY0,(1093873719),(1),(40))
call SaveInteger(EY0,(1093873719),(2),(40))
call SaveInteger(EY0,(1093873719),(3),(40))
call SaveInteger(EY0,(1395667000),(1),(165))
call SaveInteger(EY0,(1395667000),(2),(165))
call SaveInteger(EY0,(1395667000),(3),(165))
call SaveInteger(EY0,(1395667029),(1),(165))
call SaveInteger(EY0,(1395667029),(2),(165))
call SaveInteger(EY0,(1395667029),(3),(165))
call SaveInteger(EY0,(1093751874),(1),(90))
call SaveInteger(EY0,(1093751874),(2),(75))
call SaveInteger(EY0,(1093751874),(3),(60))
call SaveInteger(EY0,(1093752118),(1),(90))
call SaveInteger(EY0,(1093752118),(2),(80))
call SaveInteger(EY0,(1093752118),(3),(70))
call SaveInteger(EY0,(1093817912),(1),(90))
call SaveInteger(EY0,(1093817912),(2),(80))
call SaveInteger(EY0,(1093817912),(3),(70))
call SaveInteger(EY0,(1093751861),(1),(55))
call SaveInteger(EY0,(1093751861),(2),(50))
call SaveInteger(EY0,(1093751861),(3),(45))
call SaveInteger(EY0,(1093808949),(1),(55))
call SaveInteger(EY0,(1093808949),(2),(50))
call SaveInteger(EY0,(1093808949),(3),(45))
call SaveInteger(EY0,(1093751617),(1),(50))
call SaveInteger(EY0,(1093751617),(2),(50))
call SaveInteger(EY0,(1093751617),(3),(50))
call SaveInteger(EY0,(1093751371),(1),(110))
call SaveInteger(EY0,(1093751371),(2),(110))
call SaveInteger(EY0,(1093751371),(3),(110))
call SaveInteger(EY0,(1093753169),(1),(25))
call SaveInteger(EY0,(1093753169),(2),(20))
call SaveInteger(EY0,(1093753169),(3),(15))
call SaveInteger(EY0,(1093809992),(1),(20))
call SaveInteger(EY0,(1093809992),(2),(18))
call SaveInteger(EY0,(1093809992),(3),(16))
call SaveInteger(EY0,(1093817913),(1),(2))
call SaveInteger(EY0,(1093817913),(2),(2))
call SaveInteger(EY0,(1093817913),(3),(2))
call SaveInteger(EY0,(1093812807),(1),(60))
call SaveInteger(EY0,(1093812807),(2),(40))
call SaveInteger(EY0,(1093812807),(3),(20))
call SaveInteger(EY0,(1093813065),(1),(50))
call SaveInteger(EY0,(1093813065),(2),(50))
call SaveInteger(EY0,(1093813065),(3),(50))
call SaveInteger(EY0,(1093813557),(1),(8))
call SaveInteger(EY0,(1093813557),(2),(8))
call SaveInteger(EY0,(1093813557),(3),(8))
call SaveInteger(EY0,(1093815600),(1),(65))
call SaveInteger(EY0,(1093815600),(2),(60))
call SaveInteger(EY0,(1093815600),(3),(55))
call SaveInteger(EY0,(1093687856),(1),(90))
call SaveInteger(EY0,(1093687856),(2),(80))
call SaveInteger(EY0,(1093687856),(3),(70))
call SaveInteger(EY0,(1093816118),(1),(90))
call SaveInteger(EY0,(1093816118),(2),(75))
call SaveInteger(EY0,(1093816118),(3),(60))
call SaveInteger(EY0,(1093817417),(1),(80))
call SaveInteger(EY0,(1093817417),(2),(80))
call SaveInteger(EY0,(1093817417),(3),(80))
call SaveInteger(EY0,(1093817414),(1),(20))
call SaveInteger(EY0,(1093817414),(2),(20))
call SaveInteger(EY0,(1093817414),(3),(20))
endfunction
function U91 takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer id=(LoadInteger(LY,(S5I),(758)))
set EK0[id]=GetPlayerState(Player(id),PLAYER_STATE_RESOURCE_GOLD)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function UA1 takes nothing returns boolean
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer id=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function U91))
call SaveInteger(LY,(S5I),(758),(id))
set t=null
return false
endfunction
function UB1 takes nothing returns boolean
local player p
local integer i
local integer id
local integer UC1
set i=1
loop
exitwhen i>5
set p=BO[i]
set id=GetPlayerId(p)
set UC1=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
if JS[id]<(TimerGetElapsed(M))then
set EK0[id]=UC1
elseif UC1>EK0[id]then
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,EK0[id])
else
set EK0[id]=UC1
endif
set p=CO[i]
set id=GetPlayerId(p)
set UC1=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
if JS[id]<(TimerGetElapsed(M))then
set EK0[id]=UC1
elseif UC1>EK0[id]then
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,EK0[id])
else
set EK0[id]=UC1
endif
set i=i+1
endloop
return false
endfunction
function UD1 takes nothing returns boolean
local player p
local integer i
local integer id
local integer UC1
set i=1
loop
exitwhen i>5
set p=BO[i]
set id=GetPlayerId(p)
set UC1=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
if UC1<EL0[id]then
set EL0[id]=UC1
endif
set p=CO[i]
set id=GetPlayerId(p)
set UC1=GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
if UC1<EL0[id]then
set EL0[id]=UC1
endif
set i=i+1
endloop
return false
endfunction
function UG1 takes integer P7I,integer P8I returns boolean
local integer i=ET0-1
local real UH1=0
local real SOI=(TimerGetElapsed(M))
local integer NPI=0
loop
exitwhen i==ET0 or UH1>ER0 or NPI>200
if i==0 then
set i=8000-1
endif
set NPI=NPI+1
set UH1=SOI-EM0[i]
if EN0[i]==P7I and ES0[i]==P8I and UH1<ER0 then
set EN0[i]=0
set ES0[i]=0
return true
endif
set i=i-1
endloop
return false
endfunction
function UZ1 takes integer P7I,integer P8I returns boolean
local integer i=ET0-1
local real UH1=0
local real SOI=(TimerGetElapsed(M))
local integer NPI=0
loop
exitwhen i==ET0 or UH1>ER0 or NPI>200
if i==0 then
set i=8000-1
endif
set NPI=NPI+1
set UH1=SOI-EM0[i]
if EN0[i]==P7I and ES0[i]==P8I and UH1<ER0 then
return true
endif
set i=i-1
endloop
return false
endfunction
function UV1 takes nothing returns nothing
local integer P7I=GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
local integer P8I=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
local real PAI=GetEventDamage()
set EM0[ET0]=(TimerGetElapsed(M))
set EN0[ET0]=P7I
set ES0[ET0]=P8I
set ET0=ET0+1
if ET0==8000 then
set ET0=1
endif
endfunction
function UW1 takes unit AD1,unit UX1 returns string
local integer i=1
local integer UY1=GetPlayerId(GetOwningPlayer(AD1))
local integer UJ1=GetPlayerId(GetOwningPlayer(UX1))
local integer O91
local string UK1=" "+GetObjectName(1848658521)+" "
local boolean UL1=false
loop
exitwhen i>5
if TII(GetOwningPlayer(UX1))then
set O91=GetPlayerId(BO[i])
else
set O91=GetPlayerId(CO[i])
endif
if UJ1!=O91 and UG1(O91,UY1)then
set D[O91]=D[O91]+1
call FL1("Assist"+I2S(O91),UY1)
if UL1 then
set UK1=UK1+"/"+C0[O91]+(D80[GetPlayerId((Player(O91)))])+"|r"
else
set UK1=UK1+C0[O91]+(D80[GetPlayerId((Player(O91)))])+"|r"
endif
set UL1=true
endif
set i=i+1
endloop
if UL1 then
return UK1
endif
return" "
endfunction
function UM1 takes unit AD1,unit UX1 returns string
local integer i=1
local integer UY1=GetPlayerId(GetOwningPlayer(AD1))
local integer UJ1=GetPlayerId(GetOwningPlayer(UX1))
local integer O91
local string UK1=""
local boolean UL1=false
loop
exitwhen i>5
if TII(GetOwningPlayer(UX1))then
set O91=GetPlayerId(BO[i])
else
set O91=GetPlayerId(CO[i])
endif
if UJ1!=O91 and UZ1(O91,UY1)then
if UL1 then
set UK1=UK1+"/"+C0[O91]+(D80[GetPlayerId((Player(O91)))])+"|r"
else
set UK1=UK1+C0[O91]+(D80[GetPlayerId((Player(O91)))])+"|r"
endif
set UL1=true
endif
set i=i+1
endloop
if UL1 then
return UK1
endif
return" "
endfunction
function UN1 takes unit AD1,unit UX1 returns integer
local integer i=1
local integer UY1=GetPlayerId(GetOwningPlayer(AD1))
local integer UJ1=GetPlayerId(GetOwningPlayer(UX1))
local integer O91
local integer NPI=0
loop
exitwhen i>5
if TII(GetOwningPlayer(UX1))then
set O91=GetPlayerId(BO[i])
else
set O91=GetPlayerId(CO[i])
endif
if UJ1!=O91 and UZ1(O91,UY1)then
set NPI=NPI+1
endif
set i=i+1
endloop
return NPI
endfunction
function US1 takes unit AD1,unit UX1 returns boolean
local integer i=1
local integer UY1=GetPlayerId(GetOwningPlayer(AD1))
local integer UJ1=GetPlayerId(GetOwningPlayer(UX1))
local integer O91
local string UK1=" Assists: "
local boolean UL1=false
local integer x=1
set EP0[1]=null
set EP0[2]=null
set EP0[3]=null
set EP0[4]=null
set EP0[5]=null
loop
exitwhen i>5
if TII(GetOwningPlayer(UX1))then
set O91=GetPlayerId(BO[i])
else
set O91=GetPlayerId(CO[i])
endif
if UJ1!=O91 and UZ1(O91,UY1)then
set EP0[x]=Player(O91)
set x=x+1
set UL1=true
endif
set i=i+1
endloop
return UL1
endfunction
function UT1 takes unit AD1,unit UX1,real ROI returns nothing
local integer i=1
local integer NPI=0
call US1(AD1,UX1)
loop
exitwhen i>5
if EP0[i]!=null then
set NPI=NPI+1
endif
set i=i+1
endloop
set i=1
loop
exitwhen i>5
if EP0[i]!=null then
set EL0[GetPlayerId(EP0[i])]=EL0[GetPlayerId(EP0[i])]+R2I(ROI/NPI)
set EK0[GetPlayerId(EP0[i])]=EK0[GetPlayerId(EP0[i])]+R2I(ROI/NPI)
call AA1(EP0[i],R2I(ROI/NPI),K1[GetPlayerId(EP0[i])])
endif
set i=i+1
endloop
endfunction
function UR1 takes nothing returns nothing
endfunction
function UP1 takes nothing returns nothing
local integer id=GetUnitTypeId(GetTriggerUnit())
if GetOwningPlayer(GetTriggerUnit())==DO then
set C[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=C[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
elseif(id==1969711215)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1970169187)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1702061422)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1701081721)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1966092337)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1966092338)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1697656918)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1697656919)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1700946284)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1697657398)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1970107511)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
elseif(id==1966092370)then
if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
set B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=B[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
else
set A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=A[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
endif
endif
call UR1()
endfunction
function UU1 takes integer i returns nothing
local integer x=1
local integer y=1
set EQ0[i]=null
set EU0[i]=0
set F00[i]=false
loop
exitwhen y>FI0
if EU0[y]!=0 then
set F10[x]=EQ0[y]
set FO0[x]=EU0[y]
set F20[x]=F00[y]
set EQ0[y]=null
set EU0[y]=0
set F00[y]=false
set x=x+1
endif
set y=y+1
endloop
set FI0=x-1
set x=1
loop
exitwhen x>FI0
set EQ0[x]=F10[x]
set EU0[x]=FO0[x]
set F00[x]=F20[x]
set x=x+1
endloop
endfunction
function I0O takes unit AD1 returns boolean
return GetUnitTypeId(AD1)==1211117641 or GetUnitTypeId(AD1)==1211117642
endfunction
function IIO takes unit AD1 returns boolean
local integer S5I=GetHandleId(GetOwningPlayer(AD1))
local unit W41=(LoadUnitHandle(LY,(S5I),(699)))
local unit W51=(LoadUnitHandle(LY,(S5I),(700)))
local unit W61=(LoadUnitHandle(LY,(S5I),(701)))
local unit W71=(LoadUnitHandle(LY,(S5I),(702)))
local unit W81=(LoadUnitHandle(LY,(S5I),(703)))
if GetUnitAbilityLevel(W41,1093685078)!=0 or GetUnitAbilityLevel(W51,1093685078)!=0 or GetUnitAbilityLevel(W61,1093685078)!=0 or GetUnitAbilityLevel(W71,1093685078)!=0 or GetUnitAbilityLevel(W81,1093685078)!=0 then
return true
endif
return false
endfunction
function I1O takes unit AD1 returns boolean
local integer i=0
local integer S5I=GetHandleId(GetOwningPlayer(AD1))
local unit W31=(LoadUnitHandle(LY,(S5I),(699)))
loop
exitwhen i>5
if GetItemTypeId(UnitItemInSlot(W31,i))==FR0[VL0]and GetItemCharges(UnitItemInSlot(W31,i))>0 then
return true
endif
set i=i+1
endloop
return false
endfunction
function IOO takes unit AD1,location I2O returns nothing
local integer S5I=GetHandleId(GetOwningPlayer(AD1))
local unit W41=(LoadUnitHandle(LY,(S5I),(699)))
local unit W51=(LoadUnitHandle(LY,(S5I),(700)))
local unit W61=(LoadUnitHandle(LY,(S5I),(701)))
local unit W71=(LoadUnitHandle(LY,(S5I),(702)))
local unit W81=(LoadUnitHandle(LY,(S5I),(703)))
if W41!=null then
call ReviveHeroLoc(W41,I2O,true)
call VS1(W41)
endif
if W51!=null then
call ReviveHeroLoc(W51,I2O,true)
call VS1(W51)
endif
if W61!=null then
call ReviveHeroLoc(W61,I2O,true)
call VS1(W61)
endif
if W71!=null then
call ReviveHeroLoc(W71,I2O,true)
call VS1(W71)
endif
if W81!=null then
call ReviveHeroLoc(W81,I2O,true)
call VS1(W81)
endif
endfunction
function CustomHeroRevive_GetTime takes nothing returns real
return TimerGetElapsed(M)
endfunction
function I3O takes unit SFI,real GW1,boolean I4O returns nothing
set FI0=FI0+1
set EQ0[FI0]=SFI
set EU0[FI0]=(TimerGetElapsed(M))+GW1
set F00[FI0]=I4O
endfunction
function I5O takes integer i returns nothing
local unit AD1=EQ0[i]
local boolean I4O=F00[i]
local player I6O=GetOwningPlayer(AD1)
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
call SetUnitState(AD1,UNIT_STATE_MANA,GetUnitState(AD1,UNIT_STATE_MAX_MANA))
endif
call RemoveLocation(I2O)
call UU1(i)
set AD1=null
set I6O=null
set I2O=null
endfunction
function I7O takes nothing returns boolean
local real SOI=(TimerGetElapsed(M))
local integer i
set i=1
loop
exitwhen i>FI0
if EU0[i]<SOI and EU0[i]!=0 then
call I5O(i)
endif
if EU0[i]!=0 and IC1(EQ0[i])==false then
call UU1(i)
endif
set i=i+1
endloop
return false
endfunction
function I9O takes unit AD1,integer IAO returns nothing
local unit IBO=(LoadUnitHandle(LY,(GetHandleId(AD1)),(788)))
local integer ICO=(LoadInteger(LY,(GetHandleId(IBO)),(787)))
call SaveInteger(LY,(GetHandleId(IBO)),(787),(IMaxBJ(ICO-IAO,0)))
set IBO=null
endfunction
function IDO takes unit IEO,unit IFO returns nothing
if QLI(IEO,IFO)>1300 or(IC1(IEO)and GetUnitTypeId(IEO)==1211117643)then
if IsPlayerAlly(GetOwningPlayer(IEO),GetOwningPlayer(IFO))==false then
call AddHeroXP(IEO,RUI(IFO),true)
endif
endif
endfunction
function IGO takes nothing returns nothing
if ES1(GetEnumUnit(),FR0[WM0])!=null then
call SetItemCharges(ES1(GetEnumUnit(),FR0[WM0]),GetItemCharges(ES1(GetEnumUnit(),FR0[WM0]))+1)
endif
endfunction
function IHO takes nothing returns boolean
if(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false then
if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(F30))and ES1(GetFilterUnit(),FR0[WM0])!=null then
return true
endif
endif
return false
endfunction
function IZO takes nothing returns boolean
local item i
local integer EY1
if F50==0 and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(F40))then
if ES1(GetFilterUnit(),FR0[X60])!=null then
set F50=F50+1
set EY1=GetItemCharges(ES1(GetFilterUnit(),FR0[X60]))
if EY1==0 then
set EY1=2
else
set EY1=EY1+1
endif
call SetItemCharges(ES1(GetFilterUnit(),FR0[X60]),EY1)
endif
endif
return false
endfunction
function AncientJangoo_FindNearbyHeroes takes nothing returns boolean
local item i
local integer EY1
if F60==0 and(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(F40))then
if ES1(GetFilterUnit(),FR0[HP0])!=null then
set F60=F60+1
set EY1=GetItemCharges(ES1(GetFilterUnit(),FR0[HP0]))
set EY1=IMinBJ(EY1+1,5)
call SetItemCharges(ES1(GetFilterUnit(),FR0[HP0]),EY1)
endif
endif
return false
endfunction
function IVO takes unit u,unit IWO returns nothing
local group g=NTI()
set F30=u
call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),1625,Condition(function IHO))
if IsUnitAlly(u,GetOwningPlayer(IWO))==false then
call GroupAddUnit(g,IWO)
endif
call ForGroup(g,function IGO)
call NSI(g)
set g=null
endfunction
function IXO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit IYO=(LoadUnitHandle(LY,(S5I),(335)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x
local real y
local real a
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetTriggerUnit()!=IYO then
call KillUnit(IYO)
endif
else
set a=GetUnitFacing(P8I)*bj_RADTODEG
set x=GetUnitX(P8I)+75
set y=GetUnitY(P8I)+75
call SetUnitX(IYO,x)
call SetUnitY(IYO,y)
call IssueTargetOrder(IYO,"attack",P8I)
endif
set t=null
set IYO=null
set P8I=null
return false
endfunction
function IJO takes nothing returns boolean
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
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function IXO))
call SaveUnitHandle(LY,(S5I),(335),(IYO))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call UnitAddAbility(IYO,1097625443)
call SetUnitPosition(IYO,GetUnitX(P8I)+100,GetUnitY(P8I)+100)
call IssueTargetOrder(IYO,"attack",P8I)
call SetUnitMoveSpeed(IYO,522)
endif
set t=null
set P8I=null
set P7I=null
set I01=null
return false
endfunction
function IKO takes unit P7I,unit IWO returns nothing
local unit P8I=IWO
local unit I01
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if RLI(P8I)then
set P8I=(K1[GetPlayerId(GetOwningPlayer((P8I)))])
endif
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UMI(t,EVENT_PLAYER_UNIT_SUMMON)
call TriggerAddCondition(t,Condition(function IJO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call IA1(I01,1093813559)
call IssueTargetOrderById(I01,852274,P8I)
set t=null
set P8I=null
set I01=null
endfunction
function ILO takes nothing returns boolean
if(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IC1(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false then
if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(F30))==false and ES1(GetFilterUnit(),FR0[HU0])!=null then
endif
endif
return false
endfunction
function IMO takes unit u returns nothing
local group g=NTI()
set F30=u
call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),1625,Condition(function ILO))
call NSI(g)
set g=null
endfunction
function INO takes unit u returns nothing
local group g=NTI()
set F50=0
set F40=u
call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),1425,Condition(function IZO))
call NSI(g)
set F50=0
set g=null
endfunction
function ISO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer ITO=(LoadInteger(LY,(S5I),(88)))
local integer i=1
local player p
local string N7I
loop
exitwhen i>5
if ITO==0 then
set p=BO[i]
set N7I=C0[GetPlayerId(BO[0])]+GetObjectName(1848652622)+"|r "+GetObjectName(1848652624)+" "+C0[GetPlayerId(BO[0])]+GetObjectName(1848652625)+"|r"
else
set p=CO[i]
set N7I=C0[GetPlayerId(CO[0])]+GetObjectName(1848652623)+"|r "+GetObjectName(1848652624)+" "+C0[GetPlayerId(CO[0])]+GetObjectName(1848652625)+"|r"
endif
call DisplayTimedTextToPlayer(p,0,0,10,N7I)
call OQ1(JD,p)
set i=i+1
endloop
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function IRO takes integer ITO returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerAddCondition(t,Condition(function ISO))
call SaveInteger(LY,(S5I),(88),(ITO))
set t=null
endfunction
function IPO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer IQO=(LoadInteger(LY,(S5I),(89)))
local string N7I=(LoadStr(LY,(S5I),(90)))
if IQO==1 then
call OP1(HC)
elseif IQO==2 then
call OP1(AE)
elseif IQO==3 then
call OP1(ME)
elseif IQO==4 then
call OP1(NE)
endif
call QRI(P2,10.00,N7I)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function IUO takes string N7I,integer IQO returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1.5,false)
call TriggerAddCondition(t,Condition(function IPO))
call SaveStr(LY,(S5I),(90),(N7I))
call SaveInteger(LY,(S5I),(89),(IQO))
set t=null
endfunction
function O0O takes player AB1,integer AC1 returns nothing
local integer TGI=1
local integer VW1
if TII(AB1)then
set VW1=T8I(OO)
else
set VW1=T8I(AO)
endif
if TII(AB1)then
loop
exitwhen TGI>5
if T3I(BO[TGI])then
set EL0[GetPlayerId(BO[TGI])]=EL0[GetPlayerId(BO[TGI])]+AC1/VW1
set EK0[GetPlayerId(BO[TGI])]=EK0[GetPlayerId(BO[TGI])]+AC1/VW1
call AA1(BO[TGI],AC1/VW1,K1[GetPlayerId(BO[TGI])])
endif
set TGI=TGI+1
endloop
else
loop
exitwhen TGI>5
if T3I(CO[TGI])then
set EL0[GetPlayerId(CO[TGI])]=EL0[GetPlayerId(CO[TGI])]+AC1/VW1
set EK0[GetPlayerId(CO[TGI])]=EK0[GetPlayerId(CO[TGI])]+AC1/VW1
call AA1(CO[TGI],AC1/VW1,K1[GetPlayerId(CO[TGI])])
endif
set TGI=TGI+1
endloop
endif
endfunction
function OIO takes unit AD1,integer IAO returns nothing
local player I6O=GetOwningPlayer(AD1)
call SetPlayerState(I6O,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(I6O,PLAYER_STATE_RESOURCE_GOLD)-IAO)
endfunction
function O1O takes nothing returns boolean
if GetUnitTypeId(GetFilterUnit())==1865429043 then
call KillUnit(GetFilterUnit())
return true
endif
return false
endfunction
function OOO takes nothing returns nothing
local boolexpr QL1=Condition(function O1O)
local group Z51=NTI()
call GroupEnumUnitsInRect(Z51,bj_mapInitialPlayableArea,QL1)
call NSI(Z51)
endfunction
function O2O takes player T1I returns boolean
if T1I==DO then
return true
endif
return false
endfunction
function O3O takes nothing returns boolean
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and GetUnitTypeId(GetTriggerUnit())!=1311788365 then
if GetUnitTypeId(GetTriggerUnit())==1211117642 and I1O(GetTriggerUnit())then
return false
endif
return true
endif
return false
endfunction
function O4O takes player I6O,player AB1,unit UX1 returns boolean
return UX1==null or GetKillingUnit()==null or(TII(I6O)and TII(AB1))or(TOI(I6O)and TOI(AB1))
endfunction
function O5O takes nothing returns nothing
if V51(GetUnitTypeId(GetEnumUnit()))==false then
set FC0=FC0+1
set FD0=FD0+1
endif
endfunction
function O6O takes nothing returns nothing
if(GetUnitTypeId((GetEnumUnit()))==1211117642)==false and V51(GetUnitTypeId(GetEnumUnit()))==false then
call AddHeroXP(GetEnumUnit(),F90,true)
set FA0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=FA0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+F90
set FB0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=FB0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+F80
set EL0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=EL0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+F80
set EK0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=EK0[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+F80
call AA1(GetOwningPlayer(GetEnumUnit()),F80,GetEnumUnit())
endif
endfunction
function O7O takes player p returns integer
local integer O8O=0
local integer i=1
local player p2
loop
exitwhen i==6
set p2=BO[i]
if IsPlayerAlly(p,p2)then
set O8O=O8O+GetHeroXP(K1[GetPlayerId(p2)])
endif
set p2=CO[i]
if IsPlayerAlly(p,p2)then
set O8O=O8O+GetHeroXP(K1[GetPlayerId(p2)])
endif
set i=i+1
endloop
return O8O
endfunction
function O9O takes nothing returns boolean
return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or CI1(GetFilterUnit()))and IsUnitIllusion(GetFilterUnit())==false
endfunction
function OAO takes player p returns integer
local integer OBO=0
local group g=NTI()
local unit u
local integer i
local item BA1
call GroupEnumUnitsOfPlayer(g,p,Condition(function O9O))
loop
exitwhen FirstOfGroup(g)==null
set u=FirstOfGroup(g)
set i=0
loop
exitwhen i==6
set BA1=UnitItemInSlot(u,i)
if BA1!=null and GetItemPlayer(BA1)==p then
set OBO=OBO+(FU0[EB1((BA1))])
endif
set i=i+1
endloop
call GroupRemoveUnit(g,u)
endloop
call NSI(g)
set OBO=OBO+GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)
return OBO
endfunction
function OCO takes player p returns integer
local integer ODO=0
local integer i=1
local player p2
loop
exitwhen i==6
set p2=BO[i]
if IsPlayerAlly(p,p2)then
set ODO=ODO+OAO(p2)
endif
set p2=CO[i]
if IsPlayerAlly(p,p2)then
set ODO=ODO+OAO(p2)
endif
set i=i+1
endloop
return ODO
endfunction
function OEO takes nothing returns boolean
local integer SUI
local real OFO=0
local real OGO=0
local group g
local player OHO
local player OZO
local integer OVO
local integer OWO
local real OXO
local real OYO
local real OJO
local real OKO
local real OLO
local real OMO
local real ONO
local real OSO
local real OTO
local unit ORO=F70
if IsUnitType(ORO,UNIT_TYPE_HERO)==true and IsUnitIllusion(ORO)==false and(GetUnitTypeId((ORO))==1211117642)==false and V51(GetUnitTypeId(ORO))==false then
set SUI=GetHeroLevel(ORO)
set F90=0
set F80=0
set g=NTI()
set FC0=0
set FD0=0
set GK=ORO
call GroupEnumUnitsInRange(g,GetUnitX(ORO),GetUnitY(ORO),1300+25,Condition(function D01))
call ForGroup(g,function O5O)
if IsPlayerAlly(GetOwningPlayer(ORO),BO[0])then
set OHO=BO[0]
set OZO=CO[0]
else
set OHO=CO[0]
set OZO=BO[0]
endif
set OVO=SUI
set OWO=GetHeroXP(ORO)
set OXO=O7O(OHO)
set OYO=O7O(OZO)+1
set OJO=RMaxBJ((OXO-OYO)/(OXO+OYO),0)
set OKO=OJO*OWO
set OLO=OAO(GetOwningPlayer(ORO))
set OMO=OCO(OHO)
set ONO=OCO(OZO)+1
set OSO=RMaxBJ(RMinBJ(OMO/ONO-1,1),0)
set OTO=OSO*OLO
if FC0==1 then
set OFO=20*OVO+OKO*0.23
elseif FC0==2 then
set OFO=15*OVO+OKO*0.23
elseif FC0==3 then
set OFO=10*OVO+OKO*0.2
elseif FC0==4 then
set OFO=7*OVO+OKO*0.15
elseif FC0==5 then
set OFO=5*OVO+OKO*0.12
endif
if FD0==1 then
set OGO=40+7*SUI+0.05*OTO
elseif FD0==2 then
set OGO=30+6*SUI+0.05*OTO
elseif FD0==3 then
set OGO=20+5*SUI+0.05*OTO
elseif FD0==4 then
set OGO=10+4*SUI+0.04*OTO
elseif FD0==5 then
set OGO=10+4*SUI+0.03*OTO
endif
if R0 then
endif
set F90=R2I(OFO)
set F80=R2I(OGO)
call ForGroup(g,function O6O)
call NSI(g)
set g=null
endif
return false
endfunction
function OPO takes nothing returns nothing
local boolean OQO=false
local unit AD1=GetDyingUnit()
local unit UX1=GetKillingUnit()
local player AB1=GetOwningPlayer(UX1)
local player I6O=GetOwningPlayer(AD1)
local location I2O
local integer AC1=0
local integer IAO=0
local boolean OUO=false
local string A0O=""
local string AIO=""
local string A1O=""
local string MidText
local integer x
local string AOO
local string A2O
local string A3O
local string A4O
local boolean I4O=false
local real A5O=1
local real A6O=1
local real A7O=1
local real A8O=1
local real A9O=0
local real AAO=1
local trigger t
local integer ABO
local integer ACO
local integer id
local integer ADO=GetPlayerState(I6O,PLAYER_STATE_RESOURCE_GOLD)
local integer AEO=ADO-EL0[GetPlayerId(I6O)]
local unit AFO
local unit AGO
local boolean AHO=((LoadInteger(LY,(GetHandleId((AD1))),((4418))))==1)
if IsPlayerAlly(AB1,I6O)==false and O2O(AB1)==false then
set F70=GetTriggerUnit()
call ExecuteFunc("OEO")
endif
if AHO then
set XS[GetPlayerId((I6O))]=true
endif
if UX1==null and GetUnitTypeId(AD1)==1315988077 then
set UX1=YXI
set AB1=GetOwningPlayer(UX1)
endif
if IsPlayerAlly(AB1,I6O)==true and((LoadInteger(LY,(GetHandleId((UX1))),((4328))))==1)==true and KDI!=null then
set UX1=KDI
set AB1=GetOwningPlayer(UX1)
endif
if((LoadInteger(LY,(GetHandleId((AD1))),((4333))))==1)then
set UX1=ZJI
set AB1=GetOwningPlayer(UX1)
endif
set ACO=UN1(AD1,UX1)
if UX1!=null then
set id=GetUnitTypeId(UX1)
call IDO(K1[GetPlayerId(GetOwningPlayer(UX1))],AD1)
endif
if O4O(I6O,AB1,UX1)==false and ACO==1 and T2I(AB1)==false and AB1!=DO then
call US1(AD1,UX1)
set AB1=EP0[1]
set UX1=K1[GetPlayerId(AB1)]
endif
if TII(GetOwningPlayer(AD1))then
if GetOwningPlayer(AD1)!=BO[1]then
endif
if GetOwningPlayer(AD1)!=BO[2]then
endif
if GetOwningPlayer(AD1)!=BO[3]then
endif
if GetOwningPlayer(AD1)!=BO[4]then
endif
if GetOwningPlayer(AD1)!=BO[5]then
endif
else
if GetOwningPlayer(AD1)!=CO[1]then
endif
if GetOwningPlayer(AD1)!=CO[2]then
endif
if GetOwningPlayer(AD1)!=CO[3]then
endif
if GetOwningPlayer(AD1)!=CO[4]then
endif
if GetOwningPlayer(AD1)!=CO[5]then
endif
endif
set HJ[GetPlayerId(GetOwningPlayer((AD1)))]=true
if GetUnitAbilityLevel(AD1,1093685078)!=0 or(I0O(AD1)and IIO(AD1))then
set I4O=true
call UnitRemoveAbility(AD1,1093685078)
set XO=AD1
set A2=UX1
if IsUnitType(UX1,UNIT_TYPE_STRUCTURE)==false then
endif
endif
if AB1==null then
set AB1=I6O
endif
if L0 and GetUnitTypeId(AD1)!=1211117642 then
set K2=UnitRemoveItemFromSlot(AD1,GetRandomInt(0,5))
if GetItemTypeId(K2)==1227894859 then
call CreateItem(1227894855,GetItemX(K2),GetItemY(K2))
call RemoveItem(K2)
endif
endif
if TII(I6O)then
if TII(AB1)then
set OQO=true
if(AB1==I6O)then
call QRI(P2,10.00,(C0[GetPlayerId(I6O)]+(D80[GetPlayerId((I6O))])+"|r "+GetObjectName(1848652626)))
else
call QRI(P2,10.00,GI1(I6O,AB1))
endif
elseif TOI(AB1)then
set OUO=true
set O[GetPlayerId(BO[0])]=O[GetPlayerId(BO[0])]+1
set I[GetPlayerId(CO[0])]=I[GetPlayerId(CO[0])]+1
set I0[2]=I0[2]+1
set I0[1]=0
if AB1!=CO[0]then
set I[GetPlayerId(AB1)]=I[GetPlayerId(AB1)]+1
set P[GetPlayerId(AB1)]=P[GetPlayerId(AB1)]+1
endif
endif
endif
if TOI(I6O)then
if TOI(AB1)then
set OQO=true
if(AB1==I6O)then
call QRI(P2,10.00,(C0[GetPlayerId(I6O)]+(D80[GetPlayerId((I6O))])+"|r "+GetObjectName(1848652626)))
else
call QRI(P2,10.00,GI1(I6O,AB1))
endif
elseif TII(AB1)then
set OUO=true
set O[GetPlayerId(CO[0])]=O[GetPlayerId(CO[0])]+1
set I[GetPlayerId(BO[0])]=I[GetPlayerId(BO[0])]+1
set I0[1]=I0[1]+1
set I0[2]=0
if AB1!=BO[0]then
set I[GetPlayerId(AB1)]=I[GetPlayerId(AB1)]+1
set P[GetPlayerId(AB1)]=P[GetPlayerId(AB1)]+1
endif
endif
endif
if AB1==DO then
set OUO=false
if GetUnitTypeId(UX1)==1848651852 then
call QRI(P2,10.00,(C0[GetPlayerId(I6O)]+(D80[GetPlayerId((I6O))])+"|r "+GetObjectName(1848652628)))
else
call QRI(P2,10.00,(C0[GetPlayerId(I6O)]+(D80[GetPlayerId((I6O))])+"|r "+GetObjectName(1848652629)))
endif
set OQO=true
endif
if VN then
call IO1(WC,GetUnitX(AD1),GetUnitY(AD1))
endif
call FL1("Hero"+I2S(GetPlayerId(I6O)),GetPlayerId(AB1))
set x=P[GetPlayerId(I6O)]
if x>2 and OQO==false then
if x==3 then
set AC1=60
set A0O="|c0000ff40"+GetObjectName(1848652876)+"|r"
elseif x==4 then
set AC1=120
set A0O="|c00400080"+GetObjectName(1848652878)+"|r"
elseif x==5 then
set AC1=180
set A0O="|c00ff0080"+GetObjectName(1848652877)+"|r"
elseif x==6 then
set AC1=240
set A0O="|c00ff8000"+GetObjectName(1848652874)+"|r"
elseif x==7 then
set AC1=300
set A0O="|c00808000"+GetObjectName(1848652873)+"|r"
elseif x==8 then
set AC1=360
set A0O="|c00ff80ff"+GetObjectName(1848652630)+"|r"
elseif x==9 then
set AC1=420
set A0O="|c00ff0000"+GetObjectName(1848652631)+"|r"
else
set AC1=480
set A0O="|c00ff8000"+GetObjectName(1848652632)+"|r"
endif
endif
set x=P[GetPlayerId(AB1)]
if x>H[GetPlayerId(AB1)]then
set H[GetPlayerId(AB1)]=x
endif
set AFO=UX1
if IsUnitType(AFO,UNIT_TYPE_HERO)==false then
set AFO=K1[GetPlayerId(GetOwningPlayer(AFO))]
endif
if x>2 and GetUnitTypeId(AFO)!=1429221446 and PA0[GetPlayerId(GetOwningPlayer(AFO))]==0 then
endif
set AGO=AD1
if IsUnitType(AGO,UNIT_TYPE_HERO)==false then
set AGO=K1[GetPlayerId(GetOwningPlayer(AGO))]
endif
if OQO==false and OUO==true then
endif
if x>2 and OQO==false then
if x==3 then
call OP1(RC)
set AIO=" "+GetObjectName(1848652875)+" |c0000ff40"+GetObjectName(1848652876)+"|r"+GetObjectName(1848652857)
elseif x==4 then
call OP1(GC)
set AIO=" "+GetObjectName(1848652872)+" |c00400080"+GetObjectName(1848652878)+"|r"+GetObjectName(1848652857)
elseif x==5 then
call OP1(QC)
set AIO=" "+GetObjectName(1848652871)+" |c00ff0080"+GetObjectName(1848652877)+"|r"+GetObjectName(1848652857)
elseif x==6 then
call OP1(EE)
set AIO=" "+GetObjectName(1848652872)+" |c00ff8000"+GetObjectName(1848652874)+"|r"+GetObjectName(1848652865)
elseif x==7 then
call OP1(HE)
set AIO=" "+GetObjectName(1848652872)+" |c00808000"+GetObjectName(1848652873)+"|r"+GetObjectName(1848652865)
elseif x==8 then
call OP1(OD)
set AIO=" "+GetObjectName(1848652871)+" |c00ff80ff"+GetObjectName(1848652630)+"|r"+GetObjectName(1848652865)
elseif x==9 then
call OP1(XC)
set AIO=" "+GetObjectName(1848652872)+" |c00ff0000"+GetObjectName(1848652631)+"|r"+GetObjectName(1848652866)
else
call OP1(JC)
set AIO=" "+GetObjectName(1848652872)+" |c00ff8000"+GetObjectName(1848652632)+"|r. "+GetObjectName(1848652870)+GetObjectName(1848652866)
endif
endif
if OQO==false then
set AC1=AC1+100+GetHeroLevel(AD1)*9+100
set AOO=C0[GetPlayerId(I6O)]+(D80[GetPlayerId((I6O))])+"|r"
set A2O=C0[GetPlayerId(AB1)]+(D80[GetPlayerId((AB1))])+"|r"
set A4O="|c00FFDC00"+I2S(AC1)+"|r"
if AB1==BO[0]or AB1==CO[0]then
if ACO==0 then
if AB1==BO[0]then
set A3O=A2O+" "+GetObjectName(1848652850)+" "+AOO+GetObjectName(1848652851)+GetObjectName(1848652857)+" "+A4O+" "+GetObjectName(1848652852)+"."
call O0O(AB1,AC1)
elseif AB1==CO[0]then
set A3O=A2O+" "+GetObjectName(1848652850)+" "+AOO+GetObjectName(1848652851)+GetObjectName(1848652857)+" "+A4O+" "+GetObjectName(1848652852)+"."
call O0O(AB1,AC1)
endif
elseif ACO>1 then
set A3O=A2O+" "+GetObjectName(1848652850)+" "+AOO+GetObjectName(1848652851)+GetObjectName(1848652857)+" "+A4O+" "+GetObjectName(1848652852)+"."
call UT1(AD1,UX1,AC1)
endif
elseif A0O==""and AIO==""then
set A3O=A2O+" "+GetObjectName(1848652850)+" "+AOO+GetObjectName(1848652851)+" "+GetObjectName(1848652867)+" "+A4O+" "+GetObjectName(1848652853)+GetObjectName(1848652857)
elseif A0O==""and AIO!=""then
set A3O=A2O+" "+GetObjectName(1848652850)+" "+AOO+GetObjectName(1848652851)+" "+GetObjectName(1848652867)+" "+A4O+" "+GetObjectName(1848652853)+GetObjectName(1848652857)
elseif A0O!=""and AIO==""then
set A3O=A2O+" "+GetObjectName(1848652856)+" "+AOO+GetObjectName(1848652855)+" "+A0O+" "+GetObjectName(1848652854)+" "+A4O+" "+GetObjectName(1848652853)+GetObjectName(1848652857)
elseif A0O!=""and AIO!=""then
set A3O=A2O+" "+GetObjectName(1848652856)+" "+AOO+GetObjectName(1848652855)+" "+A0O+" "+GetObjectName(1848652854)+" "+A4O+" "+GetObjectName(1848652853)+GetObjectName(1848652857)
endif
if OUO then
set A1O=UW1(AD1,UX1)
endif
call QRI(P2,10,A3O+A1O)
if AIO!=""then
call QRI(P2,10,A2O+AIO)
endif
set EL0[GetPlayerId(AB1)]=EL0[GetPlayerId(AB1)]+AC1
set EK0[GetPlayerId(AB1)]=EK0[GetPlayerId(AB1)]+AC1
call AA1(AB1,AC1,AD1)
set Y[GetPlayerId(AB1)]=Y[GetPlayerId(AB1)]+AC1
if I0[1]>4 then
call IRO(0)
endif
if I0[2]>4 then
call IRO(1)
endif
endif
set IAO=GetHeroLevel(AD1)*30
if ES1(AD1,FR0[WM0])!=null then
if GetItemCharges(ES1(AD1,FR0[WM0]))>0 then
set A9O=-1*(4*GetItemCharges(ES1(AD1,FR0[WM0])))
set IAO=IMaxBJ(R2I(IAO-25*GetItemCharges(ES1(AD1,FR0[WM0]))),0)
endif
endif
if IAO>AEO then
set IAO=AEO
endif
call IVO(AD1,AFO)
call INO(AD1)
call IMO(AD1)
if I4O==false then
set G[GetPlayerId(I6O)]=G[GetPlayerId(I6O)]+IAO
call OIO(AD1,IAO)
call I9O(AD1,IAO)
endif
call SaveInteger(LY,(400+GetPlayerId(AB1)),(450+GetPlayerId(I6O)),((LoadInteger(LY,(400+GetPlayerId(AB1)),(450+GetPlayerId(I6O))))+1))
call SaveInteger(LY,(400+GetPlayerId(I6O)),(500+GetPlayerId(AB1)),((LoadInteger(LY,(400+GetPlayerId(I6O)),(500+GetPlayerId(AB1))))+1))
call StartTimerBJ(E0[GetPlayerId(AB1)],false,18)
if OQO==false and AB1!=BO[0]and AB1!=CO[0]and AB1!=DO then
set Q[GetPlayerId(AB1)]=Q[GetPlayerId(AB1)]+1
if Q[GetPlayerId(AB1)]==2 then
set Z[GetPlayerId(AB1)]=Z[GetPlayerId(AB1)]+1
call IUO(C0[GetPlayerId(AB1)]+(D80[GetPlayerId((AB1))])+"|r "+GetObjectName(1848652868)+" |c000000ff"+GetObjectName(1848652883)+"|r"+GetObjectName(1848652857),1)
endif
if Q[GetPlayerId(AB1)]==3 then
set V[GetPlayerId(AB1)]=V[GetPlayerId(AB1)]+1
call IUO(C0[GetPlayerId(AB1)]+(D80[GetPlayerId((AB1))])+"|r "+GetObjectName(1848652868)+" |c0000ff40"+GetObjectName(1848652869)+"|r"+GetObjectName(1848652866),2)
endif
if Q[GetPlayerId(AB1)]==4 then
set V[GetPlayerId(AB1)]=V[GetPlayerId(AB1)]+1
call IUO(C0[GetPlayerId(AB1)]+(D80[GetPlayerId((AB1))])+"|r "+GetObjectName(1848652868)+" |c0000FFFF"+GetObjectName(1848657994)+"|r"+GetObjectName(1848652866),3)
endif
if Q[GetPlayerId(AB1)]>4 then
set V[GetPlayerId(AB1)]=V[GetPlayerId(AB1)]+1
call IUO(C0[GetPlayerId(AB1)]+(D80[GetPlayerId((AB1))])+"|r "+GetObjectName(1848652875)+" |c0000AAFF"+GetObjectName(1848657995)+"|r"+GetObjectName(1848652866),4)
endif
endif
if(OQO==false)then
set P[GetPlayerId(I6O)]=0
endif
set P[0]=0
set P[6]=0
set O[GetPlayerId(I6O)]=O[GetPlayerId(I6O)]+1
if I4O then
set A5O=0.4
endif
if OQO==true and GetUnitTypeId(AD1)==1211117643 then
set A8O=0.5
endif
set ABO=R2I((GetHeroLevel(AD1)*3.8+5)*A5O*A6O*A7O*A8O)+R2I(A9O)
if OCI==true then
set ABO=R2I(ABO*0.5)
endif
set ABO=ABO+YS[GetPlayerId(I6O)]
if(((LoadInteger(LY,(GetHandleId((AD1))),((4333))))==1)==true)then
set ABO=R2I(ABO+30)
endif
if GetUnitAbilityLevel(AD1,1093684567)==1 or GetUnitAbilityLevel(AD1,1093809987)==1 then
set AAO=0.8
endif
if GetUnitAbilityLevel(AD1,1093684567)==2 or GetUnitAbilityLevel(AD1,1093809987)==2 then
set AAO=0.8
endif
if GetUnitAbilityLevel(AD1,1093684567)==3 or GetUnitAbilityLevel(AD1,1093809987)==3 then
set AAO=0.8
endif
set ABO=R2I(ABO*AAO)
if WL then
set W[GetPlayerId(I6O)]=0
call TimerStart(F0[GetPlayerId(I6O)],1.00,false,null)
else
set W[GetPlayerId(I6O)]=W[GetPlayerId(I6O)]+ABO
call TimerStart(F0[GetPlayerId(I6O)],ABO,false,null)
endif
call TriggerExecute(CH)
if X0==false then
call I3O(AD1,ABO,I4O)
else
if(TII(I6O))then
set W0[0]=W0[0]+1
endif
if TOI(I6O)then
set W0[1]=W0[1]+1
endif
set U1[GetPlayerId(I6O)]=AD1
if GetUnitTypeId(AD1)==1211117642 then
set U1[GetPlayerId(I6O)]=(LoadUnitHandle(LY,(GetHandleId(GetOwningPlayer(AD1))),(699)))
endif
if W0[0]==YL then
call TriggerExecute(PK)
endif
if W0[1]==YL then
call TriggerExecute(RK)
endif
if(GetUnitTypeId(AD1)==1429221430)then
call ExecuteFunc("OOO")
elseif GetUnitTypeId(AD1)==1429221432 or GetUnitTypeId(AD1)==1160786229 then
set NK=AD1
call ExecuteFunc("AZO")
elseif GetUnitTypeId(AD1)==1432580716 then
set NK=AD1
call ExecuteFunc("AVO")
endif
endif
endfunction
function AXO takes integer MSI,integer AYO returns nothing
set FF0[FE0]=MSI
set FG0[FE0]=AYO
set FE0=FE0+1
endfunction
function AKO takes unit P7I returns integer
local integer i=0
local integer MSI=GetUnitTypeId(P7I)
loop
exitwhen i>FE0
if FF0[i]==MSI then
return FG0[i]
endif
set i=i+1
endloop
return-1
endfunction
function ALO takes unit P7I returns integer
local integer AMO=AKO(P7I)
if AMO==-1 then
if IsUnitType(P7I,UNIT_TYPE_HERO)==true then
set AMO=RUI(P7I)
else
set AMO=SQI(GetUnitLevel(P7I))
endif
endif
if IsUnitType(P7I,UNIT_TYPE_SUMMONED)==true then
set AMO=R2I(AMO*0.5)
endif
return AMO
endfunction
function ANO takes nothing returns nothing
call AddHeroXP(GetEnumUnit(),FH0,true)
endfunction
function ASO takes nothing returns boolean
local unit P8I=GetFilterUnit()
local unit ATO=GetDyingUnit()
local integer MSI=GetUnitTypeId(P8I)
if(GetOwningPlayer((ATO))==DO)==false or IsUnitType(ATO,UNIT_TYPE_ANCIENT)==true then
if IsUnitEnemy(P8I,GetOwningPlayer(ATO))==false then
return false
endif
endif
if IsUnitType(P8I,UNIT_TYPE_HERO)==false or IC1(P8I)then
return false
endif
if B81(MSI)then
return false
endif
if QNI(FZ0,FV0,GetUnitX(P8I),GetUnitY(P8I))>1300+25 then
return false
endif
return true
endfunction
function ARO takes nothing returns boolean
local unit APO=GetKillingUnit()
local unit ATO=GetDyingUnit()
local integer AMO=ALO(ATO)
local integer NPI
local group g
local group g2
local real x=GetUnitX(ATO)
local real y=GetUnitY(ATO)
local player p
if IsUnitIllusion(ATO)or GetUnitAbilityLevel(ATO,1097625443)>0 or AMO==0 then
return false
endif
if APO==null or IsPlayerAlly(GetOwningPlayer(APO),GetOwningPlayer(ATO))==true or(GetOwningPlayer((APO))==DO)then
return false
endif
set g=NTI()
set g2=NTI()
set FZ0=x
set FV0=y
set p=BO[1]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=BO[2]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=BO[3]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=BO[4]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=BO[5]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=CO[1]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=CO[2]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=CO[3]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=CO[4]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set p=CO[5]
call GroupEnumUnitsOfPlayer(g,p,Condition(function ASO))
call GroupAddGroup(g,g2)
set NPI=CountUnitsInGroup(g2)
if NPI>0 then
set FH0=AMO/NPI
call ForGroup(g2,function ANO)
endif
call NSI(g)
call NSI(g2)
set g=null
set g2=null
set APO=null
set ATO=null
return false
endfunction
function AUO takes nothing returns boolean
local unit IYO=GetSummonedUnit()
local integer x
if IsUnitIllusion(IYO)==true then
set x=P[GetPlayerId(GetOwningPlayer(IYO))]
if x>2 and PA0[GetPlayerId(GetOwningPlayer(IYO))]==0 then
call IA1(IYO,1093815114)
else
call UnitRemoveAbility(IYO,1093815114)
endif
endif
set IYO=null
return false
endfunction
function BIO takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local player AB1=GetOwningPlayer(GetKillingUnit())
local player I6O=GetOwningPlayer(GetTriggerUnit())
local string N7I
local integer ACO=UN1(GetTriggerUnit(),GetKillingUnit())
if AB1==BO[0]or AB1==CO[0]then
call UT1(GetTriggerUnit(),GetKillingUnit(),150)
set N7I=UM1(GetTriggerUnit(),GetKillingUnit())+" "+GetObjectName(1848652887)+" |c00ff0303"+GetObjectName(1848652889)+GetObjectName(1848652857)+"|r "
if ACO>1 then
set N7I=N7I+"(+150 "+GetObjectName(1848652852)+")"
else
set N7I=N7I+"(+150 "+GetObjectName(1848652853)+")"
endif
else
set N7I=C0[GetPlayerId(AB1)]+(D80[GetPlayerId((AB1))])+"|r "+GetObjectName(1848652887)+" |c00ff0303"+GetObjectName(1848652889)+GetObjectName(1848652857)+"|r "
set N7I=N7I+"(+150 "+GetObjectName(1848652853)+")"
call AA1(AB1,150,K1[GetPlayerId(AB1)])
set EL0[GetPlayerId(AB1)]=EL0[GetPlayerId(AB1)]+150
set EK0[GetPlayerId(AB1)]=EK0[GetPlayerId(AB1)]+150
endif
call QRI(P2,10,N7I)
call OP1(ZC)
call S0I(t)
set t=null
endfunction
function B1O takes nothing returns boolean
if GetOwningPlayer(GetKillingUnit())!=DO and GetKillingUnit()!=null and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsPlayerEnemy(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetKillingUnit()))==true then
if GetOwningPlayer(GetKillingUnit())==BO[0]or GetOwningPlayer(GetKillingUnit())==CO[0]then
if UN1(GetTriggerUnit(),GetKillingUnit())>0 then
call BIO()
endif
else
call BIO()
endif
endif
return false
endfunction
function B2O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
endif
if NPI>4 or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetEventDamage()>0)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+0.2*GetUnitState(P7I,UNIT_STATE_MAX_LIFE))
call SetUnitState(P7I,UNIT_STATE_MANA,GetUnitState(P7I,UNIT_STATE_MANA)+0.2*GetUnitState(P7I,UNIT_STATE_MAX_MANA))
set t=null
set P7I=null
return false
endfunction
function B3O takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1.0,true)
call TriggerAddCondition(t,Condition(function B2O))
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DAMAGED)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
endfunction
function B4O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit u
local region r
local integer SUI=1+R2I((TimerGetElapsed(M))/240)
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set u=(LoadUnitHandle(LY,(S5I),(53)))
call SetUnitAbilityLevel(u,1094939747,SUI)
set r=CreateRegion()
call RegionAddRect(r,PA)
call RegionAddRect(r,QA)
call RegionAddRect(r,PB)
if IsUnitInRegion(r,u)==false then
if(LoadBoolean(LY,(S5I),(91)))==true then
call SaveBoolean(LY,(S5I),(91),(false))
else
call SetUnitX(u,GetRectCenterX(P4))
call SetUnitY(u,GetRectCenterY(P4))
call SaveBoolean(LY,(S5I),(91),(true))
endif
endif
call RemoveRegion(r)
set u=null
set r=null
endif
set t=null
return false
endfunction
function B5O takes unit u returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,10,true)
call TriggerAddCondition(t,Condition(function B4O))
call SaveUnitHandle(LY,(S5I),(53),(u))
call SaveBoolean(LY,(S5I),(91),(true))
set t=null
endfunction
function B6O takes nothing returns boolean
local item BA1
local integer NPI=GetTriggerEvalCount(GetTriggeringTrigger())
if NPI==FK0 then
call S0I(GetTriggeringTrigger())
endif
if NPI==FK0-180 or NPI==FK0-60 then
if FW0!=null then
set BA1=ES1(FW0,FR0[VL0])
if BA1!=null then
if NPI==FK0-180 then
if TII(GetOwningPlayer(FW0))then
call QRI(OO,15,GetObjectName(1848657209)+" |c00ff0303"+GetObjectName(1848657207)+"|r")
else
call QRI(AO,15,GetObjectName(1848657209)+" |c00ff0303"+GetObjectName(1848657207)+"|r")
endif
else
if TII(GetOwningPlayer(FW0))then
call QRI(OO,15,GetObjectName(1848657209)+" |c00ff0303"+GetObjectName(1848656984)+"|r")
else
call QRI(AO,15,GetObjectName(1848657209)+" |c00ff0303"+GetObjectName(1848656984)+"|r")
endif
endif
endif
endif
endif
set BA1=null
return false
endfunction
function B7O takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function B6O))
call TriggerEvaluate(t)
set t=null
endfunction
function B8O takes nothing returns boolean
set FY0=GetTriggerEvalCount(GetTriggeringTrigger())
if N0!=null and GetUnitState(N0,UNIT_STATE_LIFE)>1 then
call SetPlayerTechResearched(GetOwningPlayer(N0),1378889798,FY0)
if GetUnitAbilityLevel(N0,1093743666)==0 then
call UnitAddAbility(N0,1093743666)
endif
call SetUnitAbilityLevel(N0,1093743666,FY0+1)
endif
return false
endfunction
function B9O takes nothing returns nothing
local integer i=1
local unit SFI
set FW0=null
loop
exitwhen i>5
set SFI=K1[GetPlayerId(BO[i])]
if SFI!=null and ES1(SFI,FR0[VL0])!=null then
call DisableTrigger(LY0)
call FL1("AegisOff",GetPlayerId(GetOwningPlayer(SFI)))
call RemoveItem(ES1(SFI,FR0[VL0]))
call B3O(SFI)
call EnableTrigger(LY0)
endif
set SFI=K1[GetPlayerId(CO[i])]
if SFI!=null and ES1(SFI,FR0[VL0])!=null then
call DisableTrigger(LY0)
call FL1("AegisOff",GetPlayerId(GetOwningPlayer(SFI)))
call RemoveItem(ES1(SFI,FR0[VL0]))
call B3O(SFI)
call EnableTrigger(LY0)
endif
set i=i+1
endloop
set SFI=null
endfunction
function BAO takes string BBO,string BCO returns string
local string s=GetObjectName(1848656705)
set s=FS1(s,"$team",BBO)
set s=FS1(s,"$team",BCO)
return s
endfunction
function BDO takes nothing returns boolean
return GetUnitTypeId(GetDyingUnit())==1848651852
endfunction
function IsHero takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true
endfunction
function BEO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local location BFO
local real SKI
if GetTriggerEvalCount(t)==FJ0 or R90 then
set R90=false
set BFO=GetRectCenter(P4)
call B9O()
set FM0=FM0+1
set N0=CreateUnitAtLoc(Player(12),1848651852,BFO,bj_UNIT_FACING)
call SetUnitAcquireRange(N0,150)
call B5O(N0)
call UnitAddAbility(N0,1093743666)
call SetPlayerTechResearched(GetOwningPlayer(N0),1378889798,FY0)
call SetUnitAbilityLevel(N0,1093743666,FY0+1)
call RemoveLocation(BFO)
if FM0>1 then
call UnitRemoveAbility(N0,1093684018)
call UnitAddAbility(N0,1093685558)
call UnitAddItem(N0,CreateItem(FR0[ZE0],0,0))
endif
call UnitAddItem(N0,CreateItem(FR0[VL0],0,0))
call S0I(t)
elseif GetTriggerEvalCount(t)==FK0 then
call B9O()
endif
set t=null
return false
endfunction
function BGO takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function BEO))
set R90=false
set FJ0=GetRandomInt(480,660)
call B7O()
set FX0=false
if(TII(GetOwningPlayer(GetKillingUnit())))then
call FL1("Roshan",0)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,BAO("|c00ff0000"+GetObjectName(1848653365)+"|r",GetObjectName(1848653365)))
call AdjustPlayerStateBJ(200,BO[1],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,BO[2],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,BO[3],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,BO[4],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,BO[5],PLAYER_STATE_RESOURCE_GOLD)
endif
if(TOI(GetOwningPlayer(GetKillingUnit())))then
call FL1("Roshan",1)
call QRI(bj_FORCE_ALL_PLAYERS,10.00,BAO("|c00004000"+GetObjectName(1848653379)+"|r",GetObjectName(1848653379)))
call AdjustPlayerStateBJ(200,CO[1],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,CO[2],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,CO[3],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,CO[4],PLAYER_STATE_RESOURCE_GOLD)
call AdjustPlayerStateBJ(200,CO[5],PLAYER_STATE_RESOURCE_GOLD)
endif
set t=null
endfunction
function BZO takes nothing returns nothing
local texttag t=CreateTextTag()
local unit u=GetTriggerUnit()
local player p=GetOwningPlayer(GetKillingUnit())
call SetTextTagText(t,"$",0.027)
call SetTextTagPosUnit(t,u,0)
call SetTextTagColorBJ(t,D90[GetPlayerId(p)],DA0[GetPlayerId(p)],DB0[GetPlayerId(p)],15)
call SetTextTagVelocity(t,0,0.035)
call SetTextTagFadepoint(t,3)
call SetTextTagLifespan(t,1.5)
call SetTextTagPermanent(t,false)
call SetTextTagVisibility(t,false)
if GetLocalPlayer()==D60 or GetLocalPlayer()==D70 then
call SetTextTagVisibility(t,true)
endif
set t=null
set u=null
set p=null
endfunction
function BVO takes unit u,player p returns nothing
local texttag t=CreateTextTag()
call SetTextTagText(t,"!",0.03)
call SetTextTagPosUnit(t,u,0)
call SetTextTagColorBJ(t,D90[GetPlayerId(p)],DA0[GetPlayerId(p)],DB0[GetPlayerId(p)],15)
call SetTextTagVelocity(t,0,0.035)
call SetTextTagFadepoint(t,3)
call SetTextTagLifespan(t,1.5)
call SetTextTagPermanent(t,false)
call SetTextTagVisibility(t,false)
if RN0[GetPlayerId(GetLocalPlayer())]==true or(C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70))then
call SetTextTagVisibility(t,true)
endif
set t=null
endfunction
function BWO takes nothing returns nothing
if IsUnitType(GetEnumUnit(),UNIT_TYPE_MELEE_ATTACKER)==true then
call AddHeroXP(GetEnumUnit(),OK/UJ,true)
else
call AddHeroXP(GetEnumUnit(),IK/UJ,true)
endif
endfunction
function BXO takes nothing returns nothing
local group g=NTI()
local integer BYO
local integer BJO=20
local integer BKO=31
call GroupEnumUnitsInRange(g,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),1300+25,Condition(function D01))
set BYO=O51(g)
set UJ=BYO
set IK=BJO
set OK=BKO
call ForGroup(g,function BWO)
call NSI(g)
call BVO(GetDyingUnit(),GetOwningPlayer(GetKillingUnit()))
set g=null
endfunction
function BLO takes nothing returns boolean
if IsUnitAlly(GetKillingUnit(),GetOwningPlayer(GetTriggerUnit()))==true then
call BXO()
else
if C2 and T2I(GetOwningPlayer(GetKillingUnit()))then
call BZO()
endif
endif
return false
endfunction
function BNO takes player G11,player GO1 returns string
local string s=GetObjectName(1848656208)
set s=FS1(s,"$dead",(D80[GetPlayerId((G11))]))
return s
endfunction
function BSO takes nothing returns boolean
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
function BTO takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
call SetTerrainPathable(x,y,PATHING_TYPE_WALKABILITY,true)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function BSO))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set P7I=null
set t=null
endfunction
function BRO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit BPO=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=GetTriggerEvalCount(t)
local integer BQO
local integer i=1
local integer id
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer BUO=140
if RXI(BPO)then
set BUO=180
endif
set BQO=BUO-NPI
loop
exitwhen i>5
if IsPlayerAlly(GetOwningPlayer(BPO),BO[0])then
set id=GetPlayerId(BO[i])
else
set id=GetPlayerId(CO[i])
endif
set i=i+1
if BQO==0 then
call LeaderboardDisplay(FN0[id],false)
if IsPlayerAlly(BO[0],Player(id))then
set FS0[GetPlayerId(BO[0])]=false
endif
if IsPlayerAlly(CO[0],Player(id))then
set FS0[GetPlayerId(CO[0])]=false
endif
else
if IC1(K1[id])==false then
call PlayerSetLeaderboard(Player(id),FN0[id])
call LeaderboardDisplay(FN0[id],true)
call LeaderboardSetLabel(FN0[id],"    "+GetObjectName(1848659034)+" "+I2S(BQO))
endif
endif
endloop
if BQO==2 then
call SetUnitPosition(BPO,x,y)
endif
if BQO==0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set BPO=null
return false
endfunction
function C0O takes player MDI,integer ROI returns nothing
local texttag t
if ROI>0 then
set t=CreateTextTag()
call SetPlayerState(MDI,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(MDI,PLAYER_STATE_RESOURCE_GOLD)+ROI)
call SetTextTagText(t,"+"+I2S(ROI),0.025)
call SetTextTagPosUnit(t,K1[GetPlayerId(MDI)],0)
call SetTextTagColor(t,255,220,0,255)
call SetTextTagVelocity(t,0,0.03)
if GetLocalPlayer()==MDI then
call SetTextTagVisibility(t,true)
else
call SetTextTagVisibility(t,false)
endif
call SetTextTagFadepoint(t,2)
call SetTextTagLifespan(t,3)
call SetTextTagPermanent(t,false)
endif
endfunction
function CIO takes nothing returns boolean
local real x
local real y
local unit BPO=GetTriggerUnit()
local integer i=1
local integer R4I=175
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if RXI(BPO)==false then
set R4I=150
endif
call FL1("Courier"+I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit()))),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call QRI(P2,10.00,BNO(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetKillingUnit())))
call PingMinimapEx(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),6,255,0,0,false)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerAddCondition(t,Condition(function BRO))
call SaveUnitHandle(LY,(S5I),(2),(BPO))
if IsPlayerAlly(GetOwningPlayer(BPO),BO[0])and FS0[GetPlayerId(BO[0])]==false then
set FS0[GetPlayerId(BO[0])]=true
loop
exitwhen i>5
call C0O(CO[i],R4I)
set i=i+1
endloop
endif
set i=1
if IsPlayerAlly(GetOwningPlayer(BPO),CO[0])and FS0[GetPlayerId(CO[0])]==false then
set FS0[GetPlayerId(CO[0])]=true
loop
exitwhen i>5
call C0O(BO[i],R4I)
set i=i+1
endloop
endif
if TII(GetOwningPlayer(BPO))then
set x=GetRectCenterX(O4)
set y=GetRectCenterY(O4)
else
set x=GetRectCenterX(S3)
set y=GetRectCenterY(S3)
endif
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
if IsTerrainPathable(GetUnitX(BPO),GetUnitY(BPO),PATHING_TYPE_WALKABILITY)then
call BTO(BPO)
endif
set t=null
return false
endfunction
function C1O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x=QS
local real y=US
if TOI(GetOwningPlayer(P7I))then
set x=O50
set y=O60
endif
if IC1(P7I)==false then
if QNI(GetUnitX(P7I),GetUnitY(P7I),x,y)<800 then
call IA1(P7I,1098282348)
else
call UnitRemoveAbility(P7I,1098282348)
endif
endif
set t=null
set P7I=null
return false
endfunction
function COO takes unit BPO returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SetPlayerAbilityAvailable(GetOwningPlayer(BPO),1093810510,false)
call SetPlayerAbilityAvailable(GetOwningPlayer(BPO),1093818445,false)
call UnitMakeAbilityPermanent(BPO,true,1093810509)
call TriggerRegisterDeathEvent(t,BPO)
call TriggerAddCondition(t,Condition(function CIO))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.5,true)
call TriggerAddCondition(t,Condition(function C1O))
call SaveUnitHandle(LY,(S5I),(2),(BPO))
set t=null
endfunction
function C2O takes nothing returns nothing
if RYI(GetTriggerUnit())and IsUnitIllusion(GetTriggerUnit())==false then
call FL1("Courier"+I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit()))),GetPlayerId(GetOwningPlayer(GetKillingUnit())))
call QRI(P2,10.00,BNO(GetOwningPlayer(GetTriggerUnit()),GetOwningPlayer(GetKillingUnit())))
call PingMinimapEx(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),6,255,0,0,false)
endif
endfunction
function C3O takes nothing returns boolean
call S0I(GetTriggeringTrigger())
set FS0[GetPlayerId(BO[0])]=false
set FS0[GetPlayerId(CO[0])]=false
set FN0[GetPlayerId(BO[1])]=CreateLeaderboard()
set FN0[GetPlayerId(BO[2])]=CreateLeaderboard()
set FN0[GetPlayerId(BO[3])]=CreateLeaderboard()
set FN0[GetPlayerId(BO[4])]=CreateLeaderboard()
set FN0[GetPlayerId(BO[5])]=CreateLeaderboard()
set FN0[GetPlayerId(CO[1])]=CreateLeaderboard()
set FN0[GetPlayerId(CO[2])]=CreateLeaderboard()
set FN0[GetPlayerId(CO[3])]=CreateLeaderboard()
set FN0[GetPlayerId(CO[4])]=CreateLeaderboard()
set FN0[GetPlayerId(CO[5])]=CreateLeaderboard()
call PlayerSetLeaderboard(BO[1],FN0[GetPlayerId(BO[1])])
call PlayerSetLeaderboard(BO[2],FN0[GetPlayerId(BO[2])])
call PlayerSetLeaderboard(BO[3],FN0[GetPlayerId(BO[3])])
call PlayerSetLeaderboard(BO[4],FN0[GetPlayerId(BO[4])])
call PlayerSetLeaderboard(BO[5],FN0[GetPlayerId(BO[5])])
call PlayerSetLeaderboard(CO[1],FN0[GetPlayerId(CO[1])])
call PlayerSetLeaderboard(CO[2],FN0[GetPlayerId(CO[2])])
call PlayerSetLeaderboard(CO[3],FN0[GetPlayerId(CO[3])])
call PlayerSetLeaderboard(CO[4],FN0[GetPlayerId(CO[4])])
call PlayerSetLeaderboard(CO[5],FN0[GetPlayerId(CO[5])])
call LeaderboardDisplay(FN0[GetPlayerId(BO[1])],false)
call LeaderboardDisplay(FN0[GetPlayerId(BO[2])],false)
call LeaderboardDisplay(FN0[GetPlayerId(BO[3])],false)
call LeaderboardDisplay(FN0[GetPlayerId(BO[4])],false)
call LeaderboardDisplay(FN0[GetPlayerId(BO[5])],false)
call LeaderboardDisplay(FN0[GetPlayerId(CO[1])],false)
call LeaderboardDisplay(FN0[GetPlayerId(CO[2])],false)
call LeaderboardDisplay(FN0[GetPlayerId(CO[3])],false)
call LeaderboardDisplay(FN0[GetPlayerId(CO[4])],false)
call LeaderboardDisplay(FN0[GetPlayerId(CO[5])],false)
call LeaderboardSetLabelBJ(FN0[GetPlayerId(BO[1])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(BO[2])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(BO[3])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(BO[4])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(BO[5])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(CO[1])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(CO[2])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(CO[3])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(CO[4])]," ")
call LeaderboardSetLabelBJ(FN0[GetPlayerId(CO[5])]," ")
return false
endfunction
function C5O takes nothing returns nothing
local integer id=GetUnitTypeId(GetTriggerUnit())
if id==1697656914 or id==1697657137 or id==1697656915 or id==1697657145 or id==1966092365 or id==1966092356 or id==1966092366 or id==1966092372 then
if IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))then
set X[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=X[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
call QRI(P2,10,C0[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetKillingUnit())))])+"|r "+GetObjectName(1848652880)+".")
else
call QRI(P2,10,C0[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetKillingUnit())))])+"|r "+GetObjectName(1848657230)+".")
endif
endif
endfunction
function C8O takes integer i returns boolean
return i==1227894838 or i==1227894840 or i==1227894858 or i==1227894859 or i==1227894839 or i==1227903555
endfunction
function C9O takes nothing returns nothing
if GetWidgetLife(GetEnumItem())>0 and C8O(GetItemTypeId(GetEnumItem()))then
set VK=GetEnumItem()
endif
endfunction
function CAO takes nothing returns integer
local integer i=GetRandomInt(1,5)
loop
exitwhen i!=J30
set i=GetRandomInt(1,5)
endloop
set J30=i
return i
endfunction
function CBO takes nothing returns boolean
local real x
local real y
local real x1
local real y1
local real x2
local real y2
local integer CCO
local item CDO
local item CEO
if GetRandomInt(1,2)==1 then
set x1=GetLocationX(F1)
set y1=GetLocationY(F1)
set x2=GetLocationX(G1)
set y2=GetLocationY(G1)
else
set x1=GetLocationX(G1)
set y1=GetLocationY(G1)
set x2=GetLocationX(F1)
set y2=GetLocationY(F1)
endif
set VK=null
call EnumItemsInRect(G4,Condition(function N1I),function C9O)
set CDO=VK
set VK=null
call EnumItemsInRect(D4,Condition(function N1I),function C9O)
set CEO=VK
call RemoveItem(CDO)
call RemoveItem(CEO)
if J40==false then
set CCO=CAO()
if CCO==1 then
call CreateItem(1227894839,x1,y1)
elseif CCO==2 then
call CreateItem(1227894838,x1,y1)
elseif CCO==3 then
call CreateItem(1227894859,x1,y1)
elseif CCO==4 then
call CreateItem(1227894840,x1,y1)
elseif CCO==5 then
call CreateItem(1227894858,x1,y1)
endif
set VK=CreateItem(1227903555,x2,y2)
call SaveBoolean(LY,(GetHandleId(VK)),(835),(false))
else
set J40=false
set VK=CreateItem(1227903555,x1,y1)
call SaveBoolean(LY,(GetHandleId(VK)),(835),(true))
set VK=CreateItem(1227903555,x2,y2)
call SaveBoolean(LY,(GetHandleId(VK)),(835),(true))
endif
return false
endfunction
function CGO takes nothing returns nothing
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
endfunction
function InitTrig_Recipe_Definitions takes nothing returns nothing
call CGO()
endfunction
function CHO takes nothing returns nothing
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
endfunction
function InitTrig_Aghanims_Scepter_Definitions takes nothing returns nothing
call CHO()
endfunction
function CZO takes unit P7I returns nothing
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
endfunction
function CVO takes nothing returns nothing
local item BA1=GetEnumItem()
if GetWidgetLife(BA1)>0 and GetItemPlayer(BA1)==LG0 and LV0==0 and IsItemVisible(BA1)==true then
set LV0=LV0+1
call UnitAddItem(LH0,BA1)
endif
set BA1=null
endfunction
function CWO takes nothing returns nothing
local item BA1=GetEnumItem()
if GetWidgetLife(BA1)>0 and GetItemPlayer(BA1)==LG0 and IsItemVisible(BA1)==true then
call UnitAddItem(LZ0,BA1)
endif
set BA1=null
endfunction
function CXO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit BPO=(LoadUnitHandle(LY,(S5I),(92)))
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local rect r=Rect(x-300,y-300,x+300,y+300)
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set LG0=p
set LH0=P7I
set LZ0=BPO
call EnumItemsInRect(r,Condition(function N1I),function CWO)
else
if GetTriggerEvalCount(t)>9 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set LG0=p
set LH0=P7I
set LZ0=BPO
call EnumItemsInRect(r,Condition(function N1I),function CWO)
else
set LG0=p
set LH0=P7I
set LV0=0
call EnumItemsInRect(r,Condition(function N1I),function CVO)
endif
endif
call RemoveRect(r)
set t=null
set P7I=null
set BPO=null
set r=null
return false
endfunction
function CYO takes unit BPO,unit P7I returns nothing
local player p=GetOwningPlayer(P7I)
local integer i
local item BA1
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local real x=GetUnitX(BPO)
local real y=GetUnitY(BPO)
local integer E81
if IsTerrainPathable(x,y,PATHING_TYPE_WALKABILITY)then
set x=GetUnitX(P7I)
set y=GetUnitY(P7I)
endif
call TriggerRegisterDeathEvent(t,P7I)
call TriggerRegisterTimerEvent(t,0.01,true)
call TriggerAddCondition(t,Condition(function CXO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(92),(BPO))
call SavePlayerHandle(LY,(S5I),(54),(p))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
set i=0
loop
exitwhen i>5
set BA1=UnitItemInSlot(BPO,i)
set E81=EB1(BA1)
if BA1!=null and GetItemPlayer(BA1)==p and EG1(BA1)==false and(E81!=HZ0 and E81!=HV0 and E81!=HW0 and E81!=HX0 and E81!=HY0)then
call UnitRemoveItem(BPO,BA1)
call SetItemPosition(BA1,x,y)
endif
set i=i+1
endloop
set t=null
set BA1=null
endfunction
function CJO takes unit B71 returns boolean
local integer CKO=GetUnitCurrentOrder(B71)
return(CKO==0)or(CKO==851973)or(CKO==851975)or(CKO==851987)or(CKO==851993)
endfunction
function CLO takes trigger t returns nothing
local integer S5I=GetHandleId(t)
local unit BPO=(LoadUnitHandle(LY,(S5I),(92)))
local unit SFI=(LoadUnitHandle(LY,(S5I),(2)))
local real x
local real y
local real CMO
local real CNO
local real CSO
local real CTO
local real CRO
local real QWI
local real CPO
local real CQO=GetUnitX(SFI)
local real CUO=GetUnitY(SFI)
if(CJO(SFI)==false)then
set x=GetUnitX(SFI)
set y=GetUnitY(SFI)
set CTO=(LoadReal(LY,(S5I),(677)))
set CRO=(LoadReal(LY,(S5I),(678)))
call SaveReal(LY,(S5I),(677),((x)*1.0))
call SaveReal(LY,(S5I),(678),((y)*1.0))
set CSO=Atan2(y-CRO,x-CTO)
set CMO=SquareRoot((x-CTO)*(x-CTO)+(y-CRO)*(y-CRO))/0.2
set CNO=GetUnitMoveSpeed(BPO)
set QWI=QNI(GetUnitX(SFI),GetUnitY(SFI),GetUnitX(BPO),GetUnitY(BPO))
set CPO=RAbsBJ(CSO*bj_RADTODEG-GetUnitFacing(BPO))
if(QWI<CNO-CMO and CNO>CMO)or(QWI<RMaxBJ(CNO,CMO)and CPO>=90)then
else
set CQO=x+CMO*Cos(CSO)
set CUO=y+CMO*Sin(CSO)
endif
endif
call SaveInteger(LY,(S5I),(679),(1))
call IssuePointOrder(BPO,"move",CQO,CUO)
set BPO=null
set SFI=null
set t=null
endfunction
function D0O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit BPO=(LoadUnitHandle(LY,(S5I),(92)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real x
local real y
local integer i
local player p=GetOwningPlayer(P7I)
local item BA1
if GetTriggerEventId()==EVENT_WIDGET_DEATH then
if GetTriggerUnit()==P7I then
call CZO(BPO)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER then
if(LoadInteger(LY,(S5I),(679)))==1 then
call SaveInteger(LY,(S5I),(679),(0))
elseif GetIssuedOrderId()!=852100 and GetIssuedOrderId()!=852090 then
call S0I(t)
endif
else
if QLI(BPO,P7I)<300 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call CYO(BPO,P7I)
call CZO(BPO)
else
call CLO(t)
endif
endif
set t=null
set BPO=null
set P7I=null
set BA1=null
return false
endfunction
function DIO takes unit SFI,boolean D1O returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit BPO=GetSellingUnit()
local integer DOO=(LoadInteger(LY,(GetHandleId(BPO)),(8000)))
if SFI!=null then
if SFI!=(LoadUnitHandle(LY,(GetHandleId(BPO)),(8002+DOO)))and D1O then
set DOO=DOO+1
call SaveInteger(LY,(GetHandleId(BPO)),(8000),(DOO))
call SaveUnitHandle(LY,(GetHandleId(BPO)),(8002+DOO),(SFI))
endif
call SaveReal(LY,(S5I),(677),((GetUnitX(SFI))*1.0))
call SaveReal(LY,(S5I),(678),((GetUnitY(SFI))*1.0))
call IssueTargetOrder(BPO,"move",SFI)
call TriggerRegisterDeathEvent(t,BPO)
call TriggerRegisterDeathEvent(t,SFI)
call TriggerRegisterUnitEvent(t,BPO,EVENT_UNIT_ISSUED_ORDER)
call TriggerRegisterUnitEvent(t,BPO,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerRegisterUnitEvent(t,BPO,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerRegisterTimerEvent(t,0.2,true)
call TriggerAddCondition(t,Condition(function D0O))
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call SaveUnitHandle(LY,(S5I),(92),(BPO))
endif
set t=null
set BPO=null
endfunction
function D2O takes nothing returns nothing
local item BA1=GetEnumItem()
local unit u=M80
local player p=GetOwningPlayer(u)
local integer id=GetPlayerId(p)
if GetWidgetLife(BA1)>0 and GetItemPlayer(BA1)==p and IsItemVisible(BA1)==true then
call SetItemPosition(BA1,D40[id],D50[id])
call UnitAddItem(LX0,BA1)
endif
set BA1=null
set u=null
set p=null
endfunction
function D3O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit u=(LoadUnitHandle(LY,(S5I),(53)))
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
set M80=u
set LX0=P7I
if TII(GetOwningPlayer(M80))then
call EnumItemsInRect(G5,Condition(function N1I),function D2O)
else
call EnumItemsInRect(H5,Condition(function N1I),function D2O)
endif
if GetTriggerEvalCount(t)==3 then
call KillUnit(u)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set u=null
return false
endfunction
function D4O takes unit SFI returns nothing
local unit u=GetSoldUnit()
local integer i=0
local item BA1
local integer id=GetPlayerId(GetOwningPlayer(u))
local region r=CreateRegion()
local trigger t
local integer S5I
local unit P7I=GetSellingUnit()
if TII(GetOwningPlayer(u))then
call RegionAddRect(r,G5)
else
call RegionAddRect(r,H5)
endif
if IsUnitInRegion(r,P7I)then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function D3O))
call SaveUnitHandle(LY,(S5I),(53),(u))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
loop
exitwhen i>5
set BA1=UnitItemInSlot(P7I,i)
if E91(EB1(BA1))==false and EB1(BA1)!=VL0 and EG1(BA1)==false then
call UnitRemoveItemFromSlot(P7I,i)
if IsUnitInRegion(r,P7I)and IsPlayerAlly(GetItemPlayer(BA1),GetOwningPlayer(P7I))==true then
set id=GetPlayerId(GetItemPlayer(BA1))
call SetItemPosition(BA1,D40[id],D50[id])
endif
endif
set i=i+1
endloop
endif
call RemoveRegion(r)
set u=null
set r=null
endfunction
function D5O takes unit u returns string
local string s=GetObjectName(1848657487)
set s=FS1(s,"$hero",C0[GetPlayerId(GetOwningPlayer(u))]+GetUnitName(u)+"|r")
return s
endfunction
function D6O takes unit P7I returns boolean
if GetOwningPlayer(P7I)!=GetLocalPlayer()then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,15,D5O(K1[GetPlayerId(GetOwningPlayer(P7I))]))
endif
return false
endfunction
function D7O takes nothing returns nothing
if GetUnitTypeId(GetSoldUnit())==1747990581 then
if K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null and IC1(K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])==false then
call DIO(K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))],true)
endif
call KillUnit(GetSoldUnit())
elseif GetUnitTypeId(GetSoldUnit())==1747993174 then
if K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null then
call D4O(K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])
endif
call KillUnit(GetSoldUnit())
elseif GetUnitTypeId(GetSoldUnit())==1747993669 then
if K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null then
call DIO((LoadUnitHandle(LY,(GetHandleId(GetSellingUnit())),(8002+(LoadInteger(LY,(GetHandleId(GetSellingUnit())),(8000)))-1))),false)
endif
call KillUnit(GetSoldUnit())
elseif GZ1(GetUnitTypeId(GetSoldUnit()))then
if K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]!=null then
if IC1(K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])==true and GetOwningPlayer(GetSoldUnit())==GetOwningPlayer(GetSellingUnit())and((LoadInteger(LY,(GetHandleId((K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]))),((4304))))==1)==false and(XS[GetPlayerId((GetOwningPlayer(GetSoldUnit())))]==false)then
call D6O(K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))])
set LW0=true
call ReviveHero(K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))],GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),true)
set LW0=false
call SetUnitState(K1[GetPlayerId(GetOwningPlayer(GetSoldUnit()))],UNIT_STATE_MANA,10000)
set EL0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]=IMaxBJ(0,EL0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]-WS[GV1(GetHeroLevel(K1[GetPlayerId(GetOwningPlayer(GetSellingUnit()))]))])
call GN1(GetOwningPlayer(GetSoldUnit()))
else
call SetPlayerState(GetOwningPlayer(GetSoldUnit()),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GetOwningPlayer(GetSoldUnit()),PLAYER_STATE_RESOURCE_GOLD)+WS[GV1(GetHeroLevel(K1[GetPlayerId(GetOwningPlayer(GetSellingUnit()))]))])
if(XS[GetPlayerId((GetOwningPlayer(GetSoldUnit())))]==false)==false then
call PZI(GetOwningPlayer(GetSoldUnit()),GetObjectName(1848659508))
endif
endif
endif
call KillUnit(GetSoldUnit())
endif
endfunction
function D9O takes player MDI,unit SWI,integer DAO,integer i0,integer i1,integer i2,integer i3,integer i4,integer i5 returns nothing
local item BA1
call DisableTrigger(MO0)
if i0>0 then
set BA1=UnitItemInSlot(SWI,0)
call EL1(BA1)
endif
if i1>0 then
set BA1=UnitItemInSlot(SWI,1)
call EL1(BA1)
endif
if i2>0 then
set BA1=UnitItemInSlot(SWI,2)
call EL1(BA1)
endif
if i3>0 then
set BA1=UnitItemInSlot(SWI,3)
call EL1(BA1)
endif
if i4>0 then
set BA1=UnitItemInSlot(SWI,4)
call EL1(BA1)
endif
if i5>0 then
set BA1=UnitItemInSlot(SWI,5)
call EL1(BA1)
endif
set BA1=UnitAddItemById(SWI,FR0[DAO])
call SetItemPlayer(BA1,MDI,true)
call SetItemUserData(BA1,0)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIem\\AIemTarget.mdl",SWI,"origin"))
if EB1(BA1)==WM0 then
call SetItemCharges(BA1,8)
endif
call EnableTrigger(MO0)
if IsPlayerAlly(GetLocalPlayer(),MDI)==true then
if DAO==VD0 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(MDI)]+(D80[GetPlayerId((MDI))])+"|r |c00ffff00"+GetObjectName(1848659032)+"|r")
elseif DAO==W30 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(MDI)]+(D80[GetPlayerId((MDI))])+"|r |c00ffff00"+GetObjectName(1848659033)+"|r")
endif
endif
set BA1=null
endfunction
function DBO takes player p,unit SWI,integer E81 returns boolean
local integer i
local integer x
local integer y
local integer array DCO
local boolean array DDO
local integer array DEO
local boolean array DFO
local boolean array FW1
local integer array FB1
local player MDI
local integer DGO=1
local integer k
local player array DHO
local integer m
local item DZO
local item DVO
local item DWO
local item DXO
local item DYO
local item DJO
local player DKO
local player DLO
local player DMO
local player DNO
local player DSO
local player DTO
local integer DRO
local integer DPO
local integer DQO
local integer DUO
local integer E0O
local integer EIO
local integer E1O
local integer EOO
local integer E2O
local integer E3O
local integer E4O
local integer E5O
local boolean E6O=false
local boolean E7O=true
set DZO=UnitItemInSlot(SWI,0)
set DVO=UnitItemInSlot(SWI,1)
set DWO=UnitItemInSlot(SWI,2)
set DXO=UnitItemInSlot(SWI,3)
set DYO=UnitItemInSlot(SWI,4)
set DJO=UnitItemInSlot(SWI,5)
set DKO=GetItemPlayer(DZO)
set DLO=GetItemPlayer(DVO)
set DMO=GetItemPlayer(DWO)
set DNO=GetItemPlayer(DXO)
set DSO=GetItemPlayer(DYO)
set DTO=GetItemPlayer(DJO)
set DRO=GetItemUserData(DZO)
set DPO=GetItemUserData(DVO)
set DQO=GetItemUserData(DWO)
set DUO=GetItemUserData(DXO)
set E0O=GetItemUserData(DYO)
set EIO=GetItemUserData(DJO)
set E1O=EB1(DZO)
set EOO=EB1(DVO)
set E2O=EB1(DWO)
set E3O=EB1(DXO)
set E4O=EB1(DYO)
set E5O=EB1(DJO)
if(GetPlayerSlotState((p))==PLAYER_SLOT_STATE_LEFT)then
set DGO=5
set E6O=true
endif
set DHO[1]=p
if E6O then
set k=2
set m=1
loop
exitwhen k>DGO
if TII(p)then
if p!=BO[m]then
set DHO[k]=BO[m]
set k=k+1
endif
else
if p!=CO[m]then
set DHO[k]=CO[m]
set k=k+1
endif
endif
set m=m+1
endloop
endif
set k=1
loop
exitwhen k>DGO
set MDI=DHO[k]
set i=0
if DZO!=null and DRO==1 and(DKO==MDI or ZL or(GetPlayerSlotState((DKO))==PLAYER_SLOT_STATE_LEFT)==true)then
set DCO[i+1]=E1O
else
set DCO[i+1]=0
endif
set i=1
if DVO!=null and DPO==1 and(DLO==MDI or ZL or(GetPlayerSlotState((DLO))==PLAYER_SLOT_STATE_LEFT)==true)then
set DCO[i+1]=EOO
else
set DCO[i+1]=0
endif
set i=2
if DWO!=null and DQO==1 and(DMO==MDI or ZL or(GetPlayerSlotState((DMO))==PLAYER_SLOT_STATE_LEFT)==true)then
set DCO[i+1]=E2O
else
set DCO[i+1]=0
endif
set i=3
if DXO!=null and DUO==1 and(DNO==MDI or ZL or(GetPlayerSlotState((DNO))==PLAYER_SLOT_STATE_LEFT)==true)then
set DCO[i+1]=E3O
else
set DCO[i+1]=0
endif
set i=4
if DYO!=null and E0O==1 and(DSO==MDI or ZL or(GetPlayerSlotState((DSO))==PLAYER_SLOT_STATE_LEFT)==true)then
set DCO[i+1]=E4O
else
set DCO[i+1]=0
endif
set i=5
if DJO!=null and EIO==1 and(DTO==MDI or ZL or(GetPlayerSlotState((DTO))==PLAYER_SLOT_STATE_LEFT)==true)then
set DCO[i+1]=E5O
else
set DCO[i+1]=0
endif
set DCO[0]=E81
set i=1
loop
exitwhen i>(JC0)
set DEO[0]=J50[i]
set DEO[1]=J60[i]
set DEO[2]=J70[i]
set DEO[3]=J80[i]
set DEO[4]=J90[i]
if E7O then
set DFO[0]=true
set DFO[1]=true
set DFO[2]=true
set DFO[3]=true
set DFO[4]=true
set DFO[5]=true
set DFO[6]=true
set DDO[0]=true
set DDO[1]=true
set DDO[2]=true
set DDO[3]=true
set DDO[4]=true
set DDO[5]=true
set DDO[6]=true
set FB1[0]=0
set FB1[1]=0
set FB1[2]=0
set FB1[3]=0
set FB1[4]=0
set FB1[5]=0
set FB1[6]=0
set E7O=false
endif
set FW1[0]=false
set FW1[1]=false
set FW1[2]=false
set FW1[3]=false
set FW1[4]=false
set x=0
loop
exitwhen x==5
if DEO[x]==0 then
set FW1[x]=true
else
set y=0
loop
exitwhen y==7
if DCO[y]==DEO[x]and DDO[y]and DFO[x]then
set DDO[y]=false
set DFO[x]=false
set FW1[x]=true
set FB1[y]=1
set y=7
set E7O=true
else
set y=y+1
endif
endloop
endif
if FW1[x]==true then
set x=x+1
else
set x=5
endif
endloop
if FW1[0]and FW1[1]and FW1[2]and FW1[3]and FW1[4]then
call D9O(MDI,SWI,JB0[i],FB1[1],FB1[2],FB1[3],FB1[4],FB1[5],FB1[6])
set i=JC0+2
else
set i=i+1
endif
endloop
set KK=FB1[0]==1
if i==(JC0+2)then
set DZO=null
set DVO=null
set DWO=null
set DXO=null
set DYO=null
set DJO=null
return true
endif
set k=k+1
endloop
set DZO=null
set DVO=null
set DWO=null
set DXO=null
set DYO=null
set DJO=null
return false
endfunction
function E8O takes player MDI,unit SWI,integer E81 returns boolean
local integer i=1
local boolean FB1
set KK=false
set FB1=DBO(MDI,SWI,E81)
return FB1
endfunction
function E9O takes nothing returns boolean
if IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GK))==true and GetUnitAbilityLevel(GetFilterUnit(),1097625443)==0 and UnitInventorySize(GetFilterUnit())>1 and GetUnitTypeId(GetFilterUnit())!=1852010352 and GetPlayerAlliance(GetOwningPlayer(GetFilterUnit()),GetOwningPlayer(GK),ALLIANCE_SHARED_CONTROL)and GetOwningPlayer(GK)!=GetOwningPlayer(GetFilterUnit())and IsUnitIllusion(GetFilterUnit())==false and IC1(GetFilterUnit())==false then
if RYI(GetFilterUnit())==true then
set UJ=UJ+1
set HK=GetFilterUnit()
endif
endif
return false
endfunction
function EAO takes nothing returns boolean
if IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GK))==true and GetUnitAbilityLevel(GetFilterUnit(),1097625443)==0 and UnitInventorySize(GetFilterUnit())>1 and GetUnitTypeId(GetFilterUnit())!=1852010352 and IsUnitIllusion(GetFilterUnit())==false and IC1(GetFilterUnit())==false then
if GetOwningPlayer(GK)==GetOwningPlayer(GetFilterUnit())then
if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true then
if GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 then
set HK=GetFilterUnit()
endif
elseif IsUnitType(HK,UNIT_TYPE_HERO)==false then
set HK=GetFilterUnit()
endif
endif
endif
return false
endfunction
function EBO takes unit SWI,integer ECO returns unit
local group g=NTI()
set GK=SWI
set HK=null
call GroupEnumUnitsInRange(g,GetUnitX(ZK),GetUnitY(ZK),1300+ECO,Condition(function EAO))
if HK==null then
set UJ=0
call NSI(g)
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(ZK),GetUnitY(ZK),1100+ECO,Condition(function E9O))
if UJ>1 then
set HK=null
endif
endif
call NSI(g)
set g=null
return HK
endfunction
function EDO takes player MDI,unit SWI,unit EEO,integer E81,real x,real y,integer EY1,integer EFO returns nothing
local unit EGO
local item EJ1
set ZK=EEO
if GetUnitPointValue(SWI)==200 then
set EGO=EBO(SWI,0)
if EGO==null then
set EGO=EBO(SWI,300)
endif
else
set EGO=SWI
endif
if EGO==null or E8O(MDI,EGO,E71(E81))==false or KK==false then
if EV1(E71(E81))then
if EQ1(EGO)==0 or EGO==null then
call EK1(FT0[E81],x,y,MDI,true,EY1)
else
set EJ1=UnitAddItemById(EGO,FR0[E81])
call SetItemCharges(EJ1,EY1)
call SetItemPlayer(EJ1,MDI,true)
call SetItemUserData(EJ1,EFO)
endif
elseif EZ1(E71(E81))then
if EGO==null or(EQ1(EGO)==0 and ES1(EGO,FR0[E81])==null)then
call EK1(FT0[E81],x,y,MDI,true,F51(E81))
else
set EJ1=CreateItem(FT0[E81],x,y)
call SetItemPlayer(EJ1,MDI,true)
call SetItemUserData(EJ1,EFO)
call SetItemCharges(EJ1,F51(E81))
call UnitAddItem(EGO,EJ1)
endif
else
if EQ1(EGO)==0 or EGO==null then
call EK1(FT0[E81],x,y,MDI,false,0)
else
set EJ1=UnitAddItemById(EGO,FR0[E81])
call SetItemPlayer(EJ1,MDI,true)
call SetItemUserData(EJ1,0)
endif
endif
else
if IsUnitType(EGO,UNIT_TYPE_HERO)==true then
if EFO==0 then
call FL1("PUI_"+I2S(GetPlayerId(GetOwningPlayer(EGO))),FR0[E71(E81)])
endif
endif
endif
set EGO=null
set EJ1=null
endfunction
function EHO takes player p,integer E81 returns nothing
local integer i=GetPlayerId(p)
if E81==Z50 then
set E[i]=E[i]+1
elseif E81==Z70 then
set E[i]=E[i]+1
elseif E81==Z80 then
set E[i]=E[i]+3
elseif E81==ZA0 then
set E[i]=E[i]+2
set F[i]=F[i]+2
elseif E81==ZB0 then
set E[i]=E[i]+2
set F[i]=F[i]+2
elseif E81==ZC0 then
set E[i]=E[i]+1
elseif E81==ZG0 then
set E[i]=E[i]+2
elseif E81==Z60 then
set E[i]=E[i]+2
elseif E81==ZH0 then
set E[i]=E[i]+2
endif
endfunction
function EZO takes unit EVO,unit EWO returns boolean
local integer E81
if GetUnitTypeId(EWO)==1311788365 then
return true
endif
if(EVO==BL0 or EVO==BY0)and IsUnitAlly(EWO,CO[0])then
return false
elseif(EVO==II0 or EVO==QQ)and IsUnitAlly(EWO,BO[0])then
return false
endif
set E81=FO1(EWO)
if E81==ZA0 or E81==GZ0 or E81==ZZ0 then
return true
endif
return false
endfunction
function EXO takes unit EEO,unit EYO returns real
if EEO==QQ or EEO==UQ or EEO==I00 or EEO==II0 or EEO==I10 or EEO==IO0 or EEO==I20 or EEO==I30 or EEO==I40 or EEO==I50 then
return D40[GetPlayerId(GetOwningPlayer(EYO))]
elseif EEO==BY0 or EEO==BJ0 or EEO==BK0 or EEO==BL0 or EEO==BM0 or EEO==BN0 or EEO==BS0 or EEO==BT0 or EEO==BR0 or EEO==BP0 then
return D40[GetPlayerId(GetOwningPlayer(EYO))]
elseif EEO==VY or EEO==KZ then
return-7133.0
elseif EEO==WY or EEO==XY then
return 7207.0
endif
return GetUnitX(EYO)
endfunction
function EJO takes unit EEO,unit EYO returns real
if EEO==QQ or EEO==UQ or EEO==I00 or EEO==II0 or EEO==I10 or EEO==IO0 or EEO==I20 or EEO==I30 or EEO==I40 or EEO==I50 then
return D50[GetPlayerId(GetOwningPlayer(EYO))]
elseif EEO==BY0 or EEO==BJ0 or EEO==BK0 or EEO==BL0 or EEO==BM0 or EEO==BN0 or EEO==BS0 or EEO==BT0 or EEO==BR0 or EEO==BP0 then
return D50[GetPlayerId(GetOwningPlayer(EYO))]
elseif EEO==VY or EEO==KZ then
return 4317.0
elseif EEO==WY or EEO==XY then
return-4243.0
endif
return GetUnitY(EYO)
endfunction
function EKO takes unit EEO,unit EYO returns real
if EEO==QQ or EEO==UQ or EEO==I00 or EEO==II0 or EEO==I10 or EEO==IO0 or EEO==I20 or EEO==I30 or EEO==I40 or EEO==I50 then
return GetRectCenterX(O4)
elseif EEO==BY0 or EEO==BJ0 or EEO==BK0 or EEO==BL0 or EEO==BM0 or EEO==BN0 or EEO==BS0 or EEO==BT0 or EEO==BR0 or EEO==BP0 then
return GetRectCenterX(S3)
endif
return GetUnitX(EYO)
endfunction
function ELO takes unit EEO,unit EYO returns real
if EEO==QQ or EEO==UQ or EEO==I00 or EEO==II0 or EEO==I10 or EEO==IO0 or EEO==I20 or EEO==I30 or EEO==I40 or EEO==I50 then
return GetRectCenterY(O4)
elseif EEO==BY0 or EEO==BJ0 or EEO==BK0 or EEO==BL0 or EEO==BM0 or EEO==BN0 or EEO==BS0 or EEO==BT0 or EEO==BR0 or EEO==BP0 then
return GetRectCenterY(S3)
endif
return GetUnitY(EYO)
endfunction
function UnitItem_Delayed_Expire takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local player p=(LoadPlayerHandle(LY,(S5I),(54)))
local unit u=(LoadUnitHandle(LY,(S5I),(53)))
local unit s=(LoadUnitHandle(LY,(S5I),(94)))
local integer E81=(LoadInteger(LY,(S5I),(93)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local integer EY1=(LoadInteger(LY,(S5I),(76)))
call EDO(p,u,s,E71(E81),x,y,EY1,0)
call ShowUnit(u,false)
call UnitApplyTimedLife(u,1112820806,2)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set p=null
set u=null
return false
endfunction
function EMO takes nothing returns nothing
local unit u=GetSoldUnit()
local player p=GetOwningPlayer(u)
local integer E81=FO1(u)
local real x
local real y
if EZO(GetSellingUnit(),u)then
call PZI(p,GetObjectName(1848652359))
if IsUnitAlly(u,BO[0])then
set p=CO[0]
else
set p=BO[0]
endif
set x=EKO(GetSellingUnit(),u)
set y=ELO(GetSellingUnit(),u)
call EK1(FT0[FO1(u)],x,y,p,true,F51(FO1(u)))
else
call EHO(p,E71(E81))
if FR0[E81]==0 then
call PZI(p,GetObjectName(1848652360))
else
set x=EXO(GetSellingUnit(),u)
set y=EJO(GetSellingUnit(),u)
if E81==ZG0 then
call EDO(p,u,GetSellingUnit(),E71(E81),x,y,2,0)
else
call EDO(p,u,GetSellingUnit(),E71(E81),x,y,0,0)
endif
endif
endif
call UnitAddAbility(u,1097625443)
call ShowUnit(u,false)
call UnitApplyTimedLife(u,1112820806,2)
set u=null
set p=null
endfunction
function ENO takes nothing returns boolean
if SS==false then
if GetUnitPointValue(GetSoldUnit())>=200 then
call EMO()
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(GetSoldUnit()))or(C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70))then
if GetUnitTypeId(GetSoldUnit())==1747989062 then
call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,20,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848658005)+"|r")
elseif GetUnitTypeId(GetSoldUnit())==1747989329 then
call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,20,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848658759)+"|r")
elseif GetUnitTypeId(GetSoldUnit())==1747990326 then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848658767)+"|r")
elseif GetUnitTypeId(GetSoldUnit())==1747989059 then
call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848658768)+"|r")
elseif GetUnitTypeId(GetSoldUnit())==1747989060 then
call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848658769)+"|r")
elseif GetUnitTypeId(GetSoldUnit())==1747993153 then
call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848658772)+"|r")
elseif GetUnitTypeId(GetSoldUnit())==1747988807 then
call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848659010)+"|r")
elseif GetUnitTypeId(GetSoldUnit())==1747993651 then
call PingMinimapEx(GetUnitX(GetSoldUnit()),GetUnitY(GetSoldUnit()),3,255,255,255,false)
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,4,C0[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(D80[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r |c00ffff00"+GetObjectName(1848659024)+"|r")
endif
endif
else
call D7O()
endif
else
endif
return false
endfunction
function ETO takes unit u returns boolean
local integer id=GetUnitTypeId(u)
return id==1164277353 or id==1164277357 or id==1160786518 or id==1160786519 or id==1160786517
endfunction
function ERO takes unit SFI,item BA1 returns nothing
local unit u=SFI
local integer EE1=GetUnitTypeId(u)
local integer E81=EC1(BA1)
if IsUnitType(u,UNIT_TYPE_MELEE_ATTACKER)==true or IsUnitType(u,UNIT_TYPE_HERO)==false then
if E81==WE0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[WD0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HM0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[HL0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==H80 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[H70])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==X40 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[X30])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==WW0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[WV0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==G30 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[G20])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==VN0 then
if ETO(u)==false then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[VM0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
elseif E81==VM0 then
if ETO(u)==true then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[VN0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
elseif E81==HR0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[HT0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
else
if E81==WD0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[WE0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HL0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[HM0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==H70 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[H80])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==X30 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[X40])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==WV0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[WW0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==G20 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[G30])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==VM0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[VN0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HT0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[HR0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
endif
set u=null
endfunction
function EPO takes unit SFI,item BA1 returns nothing
local unit u=SFI
local integer EE1=GetUnitTypeId(u)
local integer E81=EC1(BA1)
if IsUnitType(u,UNIT_TYPE_MELEE_ATTACKER)==false or IsUnitType(u,UNIT_TYPE_HERO)==false then
if E81==WE0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[WD0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HM0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[HL0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==H80 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[H70])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==X40 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[X30])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==WW0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[WV0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==G30 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[G20])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==VN0 then
if ETO(u)==false then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[VM0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
elseif E81==HR0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[HT0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
else
if E81==WD0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[WE0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HL0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[HM0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==H70 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[H80])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==X30 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[X40])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==WV0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[WW0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==G20 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[G30])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==VM0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[VN0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HT0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[HR0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
endif
set u=null
endfunction
function EQO takes unit SFI returns nothing
local integer i=0
local item BA1
call DisableTrigger(LY0)
loop
exitwhen i>5
set BA1=UnitItemInSlot(SFI,i)
if BA1!=null then
call EPO(SFI,BA1)
endif
set i=i+1
endloop
call EnableTrigger(LY0)
set BA1=null
endfunction
function EUO takes unit SFI,item BA1 returns boolean
local unit u=SFI
local integer EE1=GetUnitTypeId(u)
local integer E81=EB1(BA1)
local real x
local real y
local boolean F0O=true
local integer FIO=(LoadInteger(LY,(GetHandleId(GetOwningPlayer(u))),(4345)))
local integer F1O=0
local integer FF1
if FIO==0 then
set FIO=10
endif
set x=GetUnitX(u)
set y=GetUnitY(u)
if(E81==VZ0 and FIO<10)or(E81==VV0 and FIO<9)or(E81==VW0 and FIO<8)or(E81==VX0 and FIO<7)or(E81==VY0 and FIO<6)or(E81==VJ0 and FIO<5)or(E81==VK0 and FIO<4)then
if FIO==10 then
set F1O=VZ0
elseif FIO==9 then
set F1O=VV0
elseif FIO==8 then
set F1O=VW0
elseif FIO==7 then
set F1O=VX0
elseif FIO==6 then
set F1O=VY0
elseif FIO==5 then
set F1O=VJ0
elseif FIO==4 then
set F1O=VK0
endif
if F1O>0 then
set FF1=A11(u,BA1)
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=FD1(u,FR0[F1O],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
endif
if E81==HD0 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",u,"overhead"))
call PEI(GetOwningPlayer(u),"Abilities\\Spells\\Human\\Heal\\HealTarget.wav")
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[HH0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if E81==V40 and GetItemCharges(BA1)==0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[V60])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if E81==HP0 and GetItemCharges(BA1)==0 then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[HQ0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
call DisableTrigger(LY0)
if(E81==ZM0 or E81==ZL0 or E81==ZN0)and(EM1(u,FR0[ZM0],BA1)!=null or EM1(u,FR0[ZL0],BA1)!=null or EM1(u,FR0[ZN0],BA1)!=null)then
call PZI(GetOwningPlayer(u),GetObjectName(1848652364))
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=CreateItem(FT0[E81],x,y)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if(E81==HL0)and(EM1(u,FR0[HL0],BA1)!=null or EM1(u,FR0[HM0],BA1)!=null)then
call PZI(GetOwningPlayer(u),GetObjectName(1848657996))
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=CreateItem(FT0[E81],x,y)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
set F0O=false
endif
if F0O and(E81==HM0)and(EM1(u,FR0[HL0],BA1)!=null or EM1(u,FR0[HM0],BA1)!=null)then
call PZI(GetOwningPlayer(u),GetObjectName(1848657996))
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=CreateItem(FT0[E81],x,y)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
set F0O=false
endif
if(E81==WT0 or E81==WS0 or E81==WP0 or E81==WR0)and(EM1(u,FR0[WT0],BA1)!=null or EM1(u,FR0[WS0],BA1)!=null or EM1(u,FR0[WP0],BA1)!=null or EM1(u,FR0[WR0],BA1)!=null)then
call PZI(GetOwningPlayer(u),GetObjectName(1848652355))
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=CreateItem(FT0[E81],x,y)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if(E81==W30 and IsPlayerEnemy(GetItemPlayer(BA1),GetOwningPlayer(u)))then
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=UnitAddItemById(u,FR0[W40])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if(E81==VL0)and(RXI(u)or B61(u))then
if RXI(u)then
call PZI(GetOwningPlayer(u),GetObjectName(1848652363))
endif
set JK=GetItemPlayer(BA1)
set UJ=GetItemCharges(BA1)
call RemoveItem(BA1)
if E81==VL0 then
set VK=CreateItem(FT0[E81],GetRectCenterX(P4),GetRectCenterY(P4))
endif
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
if E81==VL0 then
call SetItemCharges(VK,UJ)
endif
endif
if B61(u)and E81==Z00 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=UnitAddItemById(u,FR0[ZI0])
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
endif
if F0O and(E81==HL0 or E81==HM0)and(EE1==1211119187)then
call PZI(GetOwningPlayer(u),GetObjectName(1848652362))
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set VK=CreateItem(FT0[E81],x,y)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
set F0O=false
endif
if(E81==VZ0 or E81==VV0 or E81==VW0 or E81==VX0 or E81==VY0 or E81==VJ0)and EE1==1429221443 then
call DisplayTimedTextToPlayer(GetOwningPlayer(u),0,U2,10,"|c00ff0303"+GetObjectName(1848652368)+"|r")
endif
call EnableTrigger(LY0)
if F0O then
call ERO(SFI,BA1)
endif
set u=null
set BA1=null
return false
endfunction
function FOO takes integer E81 returns boolean
return E81==V90 or E81==WR0 or E81==WP0 or E81==WU0 or E81==V80 or E81==WS0 or E81==WT0 or E81==WQ0 or E81==GZ0 or E81==GV0 or E81==ZS0 or E81==ZT0
endfunction
function F2O takes integer E81 returns boolean
return E81==GZ0 or E81==GV0
endfunction
function F3O takes unit SFI,item BA1 returns boolean
local integer FE1=0
local item AO1=BA1
local integer E81=F01(AO1)
local integer F4O=0
local boolean FB1=false
local integer F5O=FI1(AO1)
local boolean F6O=false
if IsUnitType(SFI,UNIT_TYPE_HERO)==true then
if E81==V90 then
set F4O=V80
endif
if E81==ZT0 then
set F4O=ZS0
endif
if E81==WR0 then
set F4O=WS0
endif
if E81==WP0 then
set F4O=WT0
endif
if E81==WU0 then
set F4O=WQ0
endif
if E81==GV0 then
set F4O=GZ0
endif
if F5O==GV0 then
set F4O=GZ0
set F6O=true
endif
if F4O!=0 then
set JK=GetItemPlayer(AO1)
call EL1(AO1)
if F6O then
set VK=UnitAddItemById(SFI,FQ0[F4O])
else
set VK=UnitAddItemById(SFI,FR0[F4O])
endif
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
set FB1=true
endif
else
if E81==V80 then
set F4O=V90
endif
if E81==ZS0 then
set F4O=ZT0
endif
if E81==WS0 then
set F4O=WR0
endif
if E81==WT0 then
set F4O=WP0
endif
if E81==WQ0 then
set F4O=WU0
endif
if E81==GZ0 then
set F4O=GV0
endif
if F5O==GZ0 then
set F4O=GV0
set F6O=true
endif
if F4O!=0 then
set JK=GetItemPlayer(AO1)
call EL1(AO1)
if F6O then
set VK=UnitAddItemById(SFI,FQ0[F4O])
else
set VK=UnitAddItemById(SFI,FR0[F4O])
endif
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
set FB1=true
endif
endif
set AO1=null
return FB1
endfunction
function F7O takes unit SFI,item BA1 returns boolean
if FOO(F01(BA1))or F2O(FI1(BA1))then
return F3O(SFI,BA1)
endif
return false
endfunction
function ModeTT_ItemHack_End takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local integer id=(LoadInteger(LY,(S5I),(34)))
set AII[id]=false
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
return false
endfunction
function F8O takes unit u returns nothing
local integer id=GetPlayerId(GetOwningPlayer(u))
set AII[id]=true
endfunction
function F9O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit B71=(LoadUnitHandle(LY,(S5I),(26)))
local integer FAO=(LoadInteger(LY,(S5I),(97)))
local integer E81=(LoadInteger(LY,(S5I),(93)))
local boolean FBO=(LoadBoolean(LY,(S5I),(95)))
local item BA1
local player p=GetOwningPlayer(B71)
local player FCO
local integer EY1
local boolean EX1=false
local item EJ1
local integer FDO
local integer FEO
local integer newCharges
local item FFO
local integer targetCount
local item FGO
local boolean FHO=false
call DisableTrigger(MO0)
if FBO then
set FGO=null
set FCO=(LoadPlayerHandle(LY,(S5I),(54)))
set EY1=(LoadInteger(LY,(S5I),(76)))
else
set BA1=(LoadItemHandle(LY,(S5I),(96)))
set FGO=BA1
set FCO=GetItemPlayer(BA1)
set EY1=GetItemCharges(BA1)
endif
if FBO==false and BA1==null then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call EnableTrigger(MO0)
set t=null
set B71=null
set p=null
return false
endif
if FAO==1 then
if p!=FCO and GetUnitTypeId(B71)==1852010352 then
if EZ1(E71(E81))or EV1(E71(E81))then
set EX1=true
endif
if IsPlayerEnemy(p,FCO)then
call EK1(FT0[E81],D40[GetPlayerId(p)],D50[GetPlayerId(p)],FCO,EX1,EY1)
else
call EK1(FT0[E81],D40[GetPlayerId(FCO)],D50[GetPlayerId(FCO)],FCO,EX1,EY1)
endif
call PZI(p,GetObjectName(1848656978))
if FBO==false then
set FHO=true
call EL1(BA1)
endif
elseif ZL==false and FBO==false and GetItemType(BA1)==ITEM_TYPE_CAMPAIGN and F11(BA1)!=0 and(p==FCO or(GetPlayerSlotState((FCO))==PLAYER_SLOT_STATE_LEFT))then
if EV1(E81)or EZ1(E81)then
set EX1=true
else
set EX1=false
endif
if(GetPlayerSlotState((FCO))==PLAYER_SLOT_STATE_LEFT)and E91(E81)then
else
call EL1(BA1)
set FHO=true
set EJ1=UnitAddItemById(B71,FR0[E81])
set FGO=EJ1
call SetItemPlayer(EJ1,FCO,false)
call SetItemUserData(EJ1,0)
if EX1 then
call SetItemCharges(EJ1,EY1)
endif
endif
elseif ZL==false and FBO==false and GetItemType(BA1)==ITEM_TYPE_PERMANENT and p!=FCO and FQ0[EB1(BA1)]!=0 and(GetPlayerSlotState((FCO))==PLAYER_SLOT_STATE_LEFT)==false then
if EV1(E81)or EZ1(E81)then
set EX1=true
else
set EX1=false
endif
call EL1(BA1)
set FHO=true
set EJ1=UnitAddItemById(B71,FQ0[E81])
set FGO=EJ1
call SetItemPlayer(EJ1,FCO,false)
call SetItemUserData(EJ1,0)
if EX1 then
call SetItemCharges(EJ1,EY1)
endif
elseif FBO==false and GetItemType(BA1)==ITEM_TYPE_PERMANENT and EH1(BA1)and IsUnitType(B71,UNIT_TYPE_HERO)==true then
set FDO=ED1(B71)
set FEO=EF1(B71)
if FEO!=0 then
call UnitAddAbility(B71,FEO)
call UnitMakeAbilityPermanent(B71,true,FEO)
call SetPlayerAbilityAvailable(p,FEO,false)
if GetUnitTypeId(B71)==1211117653 then
set GK=B71
call ExecuteFunc("FZO")
elseif GetUnitTypeId(B71)==1215130471 then
set GK=B71
call ExecuteFunc("FVO")
endif
endif
if E81!=FDO then
call EL1(BA1)
set EJ1=UnitAddItemById(B71,FR0[FDO])
set FGO=EJ1
call SetItemPlayer(EJ1,FCO,false)
call SetItemUserData(EJ1,1)
endif
elseif FBO==false and GetItemType(BA1)==ITEM_TYPE_ARTIFACT then
call DisableTrigger(LY0)
set FFO=ET1(FCO,B71,E81,BA1)
if FFO==null then
else
call SetItemCharges(FFO,EY1+GetItemCharges(FFO))
call EL1(BA1)
set FGO=null
endif
call EnableTrigger(LY0)
elseif FBO and EZ1(E71(E81))then
call DisableTrigger(LY0)
if EQ1(B71)==0 and ER1(FCO,B71,E81)==null then
call PZI(p,GetObjectName(1848652367))
call EK1(FT0[(E81)],(((LoadReal(LY,(S5I),(6))))*1.0),(((LoadReal(LY,(S5I),(7))))*1.0),(FCO),(true),(EY1))
else
set FFO=ER1(FCO,B71,E81)
if FFO==null then
call DisableTrigger(LY0)
set EJ1=UnitAddItemById(B71,FR0[E81])
set FGO=EJ1
call SetItemPlayer(EJ1,FCO,false)
call SetItemUserData(EJ1,1)
call SetItemCharges(EJ1,EY1)
else
call SetItemCharges(FFO,EY1+GetItemCharges(FFO))
endif
endif
call EnableTrigger(LY0)
elseif FBO==true then
call EDO(FCO,B71,null,E81,(LoadReal(LY,(S5I),(6))),(LoadReal(LY,(S5I),(7))),EY1,1)
elseif FBO==false and(GetItemType(BA1)==ITEM_TYPE_PERMANENT or GetItemType(BA1)==ITEM_TYPE_CAMPAIGN)then
call SetItemUserData(BA1,1)
set FHO=E8O(FCO,B71,0)
endif
if FHO==false and FGO!=null and F61(FGO)==false then
set FHO=F7O(B71,FGO)
endif
if FHO==false and FGO!=null and F61(FGO)==false then
call EUO(B71,FGO)
endif
else
if GetWidgetLife(BA1)>0 then
set FDO=ED1(B71)
set FEO=EF1(B71)
if ES1(B71,FR0[FDO])==null and GetUnitAbilityLevel(B71,FEO)>0 then
call UnitRemoveAbility(B71,FEO)
if GetUnitTypeId(B71)==1215130471 then
set GK=B71
call ExecuteFunc("FWO")
endif
endif
if IsItemOwned(BA1)==false then
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(E81)or EZ1(E81)then
set EX1=true
endif
call EK1(FT0[E81],GetItemX(BA1),GetItemY(BA1),FCO,EX1,EY1)
call EL1(BA1)
endif
endif
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call EnableTrigger(MO0)
set t=null
set BA1=null
set B71=null
set p=null
set FCO=null
set EJ1=null
set FFO=null
set FGO=null
return false
endfunction
function FXO takes nothing returns boolean
call EnableTrigger(LY0)
call S0I(GetTriggeringTrigger())
return false
endfunction
function DelayTrigger takes nothing returns nothing
local trigger t=CreateTrigger()
call DisableTrigger(LY0)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function FXO))
set t=null
endfunction
function FYO takes nothing returns boolean
local item BA1
local integer FAO
local unit B71=GetTriggerUnit()
local trigger t
local integer S5I
local integer FDO
local integer FEO
local integer id
set id=GetPlayerId(GetOwningPlayer(B71))
if(IsUnitType(B71,UNIT_TYPE_HERO)==true or B61(B71))and IsUnitIllusion(B71)==false and GetUnitTypeId(B71)!=1311788365 then
if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
if GetItemTypeId(GetManipulatedItem())==FR0[HC0]then
set LK0=LK0+1
set L90[id]=L90[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[GJ0]then
set LL0=LL0+1
set LA0[id]=LA0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[WM0]then
set LM0=LM0+1
set LB0[id]=LB0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V10]or GetItemTypeId(GetManipulatedItem())==FR0[XD0]then
set LN0=LN0+1
set LC0[id]=LC0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[WA0]then
set LS0=LS0+1
set M90[id]=M90[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[WO0]then
set LJ0=LJ0+1
set LD0[id]=LD0[id]+1
call F71(B71,1227901005)
elseif GetItemTypeId(GetManipulatedItem())==FR0[VE0]then
set LT0=LT0+1
set LE0[id]=LE0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[VI0]then
set LR0=LR0+1
set LF0[id]=LF0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[XC0]then
set LP0=LP0+1
set M00[id]=M00[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[Z00]then
set LQ0=LQ0+1
set MA0[id]=MA0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V40]then
set LU0=LU0+1
set MI0[id]=MI0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V50]then
set LU0=LU0+1
set MI0[id]=MI0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V60]then
set LU0=LU0+1
set MI0[id]=MI0[id]+1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V70]then
set LU0=LU0+1
set MI0[id]=MI0[id]+1
endif
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM then
if GetItemTypeId(GetManipulatedItem())==FR0[HC0]then
set L90[id]=L90[id]-1
set LK0=LK0-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[GJ0]and GetUnitTypeId(B71)!=1311788365 then
set LA0[id]=LA0[id]-1
set LL0=LL0-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[Z00]then
set MA0[id]=MA0[id]-1
set LQ0=LQ0-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[WM0]then
set LB0[id]=LB0[id]-1
set LM0=LM0-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V10]or GetItemTypeId(GetManipulatedItem())==FR0[XD0]then
set LN0=LN0-1
set LC0[id]=LC0[id]-1
if LC0[id]<1 or EM1(B71,FR0[V10],GetManipulatedItem())==null or EM1(B71,FR0[XD0],GetManipulatedItem())==null then
call UnitRemoveAbility(B71,1093744436)
endif
elseif GetItemTypeId(GetManipulatedItem())==FR0[WA0]and GetUnitTypeId(B71)!=1311788365 then
set M90[id]=M90[id]-1
set LS0=LS0-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[WO0]or GetItemTypeId(GetManipulatedItem())==FQ0[WO0]then
set LJ0=IMaxBJ(LJ0-1,0)
set LD0[id]=IMaxBJ(LD0[id]-1,0)
call UnitRemoveAbility(B71,1110458953)
elseif GetItemTypeId(GetManipulatedItem())==FR0[V40]then
set LU0=LU0-1
set MI0[id]=MI0[id]-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V50]then
set LU0=LU0-1
set MI0[id]=MI0[id]-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V60]then
set LU0=LU0-1
set MI0[id]=MI0[id]-1
elseif GetItemTypeId(GetManipulatedItem())==FR0[V70]then
set LU0=LU0-1
set MI0[id]=MI0[id]-1
endif
endif
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_PAWN_ITEM then
set BA1=GetSoldItem()
call SetItemUserData(BA1,-2)
set FDO=ED1(B71)
set FEO=EF1(B71)
if EM1(B71,FR0[FDO],BA1)==null and GetUnitAbilityLevel(B71,FEO)>0 then
call UnitRemoveAbility(B71,FEO)
if GetUnitTypeId(B71)==1215130471 then
set GK=B71
call ExecuteFunc("FWO")
endif
endif
if OSI==true then
call F8O(B71)
endif
elseif GetItemTypeId(GetManipulatedItem())!=1227894853 and GetItemTypeId(GetManipulatedItem())!=1227895373 then
set BA1=GetManipulatedItem()
if IsUnitIllusion(B71)or GetItemUserData(BA1)==-2 then
set BA1=null
set B71=null
set t=null
return false
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
set FAO=1
else
set FAO=2
endif
if(FAO==1 or(FAO==2 and F61(BA1)==false and GetWidgetLife(BA1)>0))and GetUnitTypeId(B71)!=1211117642 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function F9O))
call SaveUnitHandle(LY,(S5I),(26),(B71))
call SaveInteger(LY,(S5I),(97),(FAO))
call SaveInteger(LY,(S5I),(93),(EB1(BA1)))
if F61(BA1)then
call SaveBoolean(LY,(S5I),(95),(true))
call SavePlayerHandle(LY,(S5I),(54),(GetItemPlayer(BA1)))
call SaveInteger(LY,(S5I),(76),(GetItemCharges(BA1)))
call SaveReal(LY,(S5I),(6),((GetItemX(BA1))*1.0))
call SaveReal(LY,(S5I),(7),((GetItemY(BA1))*1.0))
else
call SaveBoolean(LY,(S5I),(95),(false))
call SaveItemHandle(LY,(S5I),(96),(BA1))
call SaveInteger(LY,(S5I),(76),(GetItemCharges(BA1)))
call SetItemUserData(BA1,0)
endif
else
endif
endif
set BA1=null
set B71=null
set t=null
return false
endfunction
function FKO takes nothing returns boolean
if GetSpellAbilityId()==1093751369 or GetSpellAbilityId()==1093681733 then
if IC1(GetTriggerUnit())==false then
call EQO(GetTriggerUnit())
endif
endif
return false
endfunction
function RestrictedItems_UpdateMeleeRange_All2 takes nothing returns nothing
call EQO(GK)
endfunction
function FMO takes unit SFI,integer FNO,boolean FSO returns nothing
local string FTO
local string s
local player p=GetOwningPlayer(SFI)
local real d=2
local string FRO="Use"
if FSO then
set FRO="Store"
endif
if FNO==1227894838 then
set FTO="|c00ff0000"+GetObjectName(1848658513)+"|r"
call FL1("Rune"+FRO+"1",GetPlayerId(p))
elseif FNO==1227894840 then
set FTO="|c0000ff00"+GetObjectName(1848658510)+"|r"
call FL1("Rune"+FRO+"2",GetPlayerId(p))
elseif FNO==1227894859 then
set FTO="|c000000ff"+GetObjectName(1848658739)+"|r"
call FL1("Rune"+FRO+"3",GetPlayerId(p))
elseif FNO==1227894839 then
set FTO="|c00afaf00"+GetObjectName(1848658738)+"|r"
call FL1("Rune"+FRO+"4",GetPlayerId(p))
elseif FNO==1227894858 then
set FTO="|c00652DC1"+GetObjectName(1848658740)+"|r"
call FL1("Rune"+FRO+"5",GetPlayerId(p))
elseif FNO==1227903555 then
set FTO="|c00FFD700"+GetObjectName(1848659538)+"|r"
call FL1("Rune"+FRO+"6",GetPlayerId(p))
endif
if FSO then
set s=C0[GetPlayerId(p)]+GetUnitName(SFI)+"|r "+GetObjectName(1848657749)+"|r "+FTO+" "+GetObjectName(1848657751)
set d=1
else
if M10 then
set s=C0[GetPlayerId(p)]+GetUnitName(SFI)+"|r "+GetObjectName(1848657750)+"|r "+FTO+" "+GetObjectName(1848657751)
else
set s=C0[GetPlayerId(p)]+GetUnitName(SFI)+"|r "+GetObjectName(1848657748)+"|r "+FTO+" "+GetObjectName(1848657751)
endif
endif
if(IsPlayerAlly(GetLocalPlayer(),p)and GetLocalPlayer()!=p)or P0I(GetLocalPlayer())then
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,d,s)
endif
endfunction
function FPO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if GetUnitAbilityLevel(SFI,1110454611)==0 then
call UnitRemoveAbility(SFI,1110454611)
call UnitRemoveAbility(SFI,1110455361)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetUnitState(SFI,UNIT_STATE_LIFE)==GetUnitState(SFI,UNIT_STATE_MAX_LIFE)and GetUnitState(SFI,UNIT_STATE_MANA)==GetUnitState(SFI,UNIT_STATE_MAX_MANA)then
call UnitRemoveAbility(SFI,1110454611)
call UnitRemoveAbility(SFI,1110455361)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
return false
endfunction
function FQO takes unit SFI,item BA1 returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function FPO))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
set t=null
endfunction
function FUO takes unit SFI,item BA1 returns nothing
local integer G0O=R2I((TimerGetElapsed(M))/60)
local integer XP=50+5*G0O
local integer ROI=50+2*G0O
local boolean GIO=(LoadBoolean(LY,(GetHandleId(BA1)),(835)))
if GIO then
set XP=100
set ROI=100
endif
call AddHeroXP(SFI,XP,true)
call AA1(GetOwningPlayer(SFI),ROI,SFI)
call PlaySoundOnUnitBJ(AG,100,SFI)
endfunction
function G1O takes unit SFI,item BA1 returns nothing
local unit u=SFI
local real x=GetUnitX(u)
local real y=GetUnitY(u)
local unit I01=CreateUnit(GetOwningPlayer(u),1697656901,x,y,0)
if IsUnitType(u,UNIT_TYPE_MELEE_ATTACKER)==true then
call UnitAddAbility(I01,1093818446)
else
call UnitAddAbility(I01,1093683026)
endif
call IssueTargetOrderById(I01,852274,u)
call IssueTargetOrderById(I01,852274,u)
set u=null
set I01=null
endfunction
function GOO takes unit SFI,item BA1 returns nothing
if GetItemTypeId(BA1)==1227894839 or GetItemTypeId(BA1)==1227894838 or GetItemTypeId(BA1)==1227894840 or GetItemTypeId(BA1)==1227894859 or GetItemTypeId(BA1)==1227894858 or GetItemTypeId(BA1)==1227903555 then
call FMO(SFI,GetItemTypeId(BA1),false)
endif
if GetItemTypeId(BA1)==1227894839 then
call G1O(SFI,BA1)
elseif GetItemTypeId(BA1)==1227894858 then
if GetUnitAbilityLevel(SFI,1110456665)>0 then
call UnitRemoveAbility(SFI,1110456665)
call UnitRemoveAbility(SFI,1110454609)
call DisableTrigger(GetTriggeringTrigger())
call UnitAddItemById(SFI,1227894858)
call EnableTrigger(GetTriggeringTrigger())
endif
elseif GetItemTypeId(BA1)==1227894840 then
call FQO(SFI,BA1)
elseif GetItemTypeId(BA1)==1227903555 then
call FUO(SFI,BA1)
endif
endfunction
function G2O takes unit SFI,item BA1 returns nothing
local integer IB1
local integer SUI
call UnitRemoveAbility(SFI,1093810003)
call UnitRemoveAbility(SFI,1093810001)
call UnitRemoveAbility(SFI,1093810002)
call UnitRemoveAbility(SFI,1093810004)
if GetUnitAbilityLevel(SFI,1093810246)>0 then
call UnitRemoveAbility(SFI,1093810246)
call UnitAddAbility(SFI,1093810246)
endif
if GetUnitTypeId(SFI)==1164207469 then
set IB1=1093684057
elseif GetUnitTypeId(SFI)==1429221446 then
set IB1=1093678660
elseif GetUnitTypeId(SFI)==1162032951 then
set IB1=1093684557
elseif GetUnitTypeId(SFI)==1332179560 then
set IB1=1093687627
elseif GetUnitTypeId(SFI)==1211117642 or GetUnitTypeId(SFI)==1211117641 then
set IB1=1093816641
elseif GetUnitTypeId(SFI)==1430468144 then
set IB1=1093817427
else
set SFI=null
return
endif
set SUI=GetUnitAbilityLevel(SFI,IB1)
if SUI>0 then
call UnitRemoveAbility(SFI,IB1)
call UnitAddAbility(SFI,IB1)
call SetUnitAbilityLevel(SFI,IB1,SUI)
endif
endfunction
function G3O takes item BA1,unit P7I,boolean G4O returns nothing
local integer E81=EB1(BA1)
local integer S5I=GetHandleId(P7I)
local string s=""
if(E81==GZ0 and EM1(P7I,GZ0,BA1)==null)or(E81==GV0 and EM1(P7I,GV0,BA1)==null)then
if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(P7I))==true or P0I(GetLocalPlayer())then
set s="Abilities\\Spells\\Human\\MagicSentry\\MagicSentryCaster.mdl"
endif
if G4O then
if EQ1(P7I)>0 or GetItemType(BA1)==ITEM_TYPE_PERMANENT or GetItemType(BA1)==ITEM_TYPE_CAMPAIGN then
if GetUnitAbilityLevel(P7I,1093809729)==0 and GetUnitAbilityLevel(P7I,1093809730)==0 then
if s=="Abilities\\Spells\\Human\\MagicSentry\\MagicSentryCaster.mdl" then
call IA1(P7I,1093809729)
else
call IA1(P7I,1093809730)
endif
endif
endif
else
if not(GetUnitAbilityLevel(P7I,1093809729)==0 and GetUnitAbilityLevel(P7I,1093809730)==0)then
call UnitRemoveAbility(P7I,1093809730)
call UnitRemoveAbility(P7I,1093809729)
call RemoveSavedHandle(LY,(S5I),(670))
endif
endif
endif
endfunction
function G5O takes nothing returns boolean
local unit SFI=GetTriggerUnit()
local item BA1=GetManipulatedItem()
local integer id=GetItemTypeId(BA1)
if BA1==null or IsUnitIllusion(SFI)==true or IsUnitType(SFI,UNIT_TYPE_HERO)==false or V51(GetUnitTypeId(SFI))or GetItemTypeId(BA1)==1227894853 or GetItemTypeId(BA1)==1227895373 then
set SFI=null
set BA1=null
return false
endif
if(GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM and GetItemType(BA1)!=ITEM_TYPE_PURCHASABLE)or GetTriggerEventId()==EVENT_PLAYER_UNIT_PAWN_ITEM then
call G3O(BA1,SFI,false)
call FL1("DRI_"+I2S(GetPlayerId(GetOwningPlayer(SFI))),FR0[E71(EB1(BA1))])
elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
call G3O(BA1,SFI,true)
call FL1("PUI_"+I2S(GetPlayerId(GetOwningPlayer(SFI))),FR0[E71(EB1(BA1))])
endif
set SFI=null
set BA1=null
return false
endfunction
function G7O takes nothing returns boolean
local integer i
if M50>0 and M30[1]<1 then
set i=2
loop
exitwhen i>M50
set M30[i-1]=M30[i]
set M40[i-1]=M40[i]
set i=i+1
endloop
set M50=M50-1
endif
set i=1
loop
exitwhen i>M50
if M30[i]>=1 then
set M30[i]=M30[i]-1
if M30[i]<1 then
call SetItemDroppable(M40[i],true)
endif
endif
set i=i+1
endloop
return false
endfunction
function G8O takes item BA1 returns nothing
set M50=M50+1
set M40[M50]=BA1
set M30[M50]=(GI0[(F01(BA1))])
call SetItemDroppable(BA1,false)
endfunction
function G9O takes nothing returns boolean
if GetUnitTypeId(GetTriggerUnit())!=1697656901 and(GI0[(F01(GetManipulatedItem()))])>0 then
call G8O(GetManipulatedItem())
endif
return false
endfunction
function GAO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit u=(LoadUnitHandle(LY,(S5I),(26)))
local integer GBO=(LoadInteger(LY,(S5I),(98)))
local item BA1=UnitItemInSlot(u,GBO)
if BA1!=null and E91(EB1(BA1))==false and GetWidgetLife(BA1)>0 and EG1(BA1)==false then
call SetItemDroppable(BA1,true)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set BA1=null
return false
endfunction
function GCO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit u=(LoadUnitHandle(LY,(S5I),(26)))
local integer GBO=(LoadInteger(LY,(S5I),(98)))
local item BA1=UnitItemInSlot(u,GBO)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if(u!=null and GetUnitTypeId(u)>1 and IsUnitType(u,UNIT_TYPE_DEAD)==false)and(BA1!=null and GetWidgetLife(BA1)>0)then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SetItemDroppable(BA1,false)
call SaveInteger(LY,(S5I),(98),(GBO))
call SaveUnitHandle(LY,(S5I),(26),(u))
call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_ISSUED_POINT_ORDER)
call TriggerAddCondition(t,Condition(function GAO))
endif
set BA1=null
set u=null
set t=null
return false
endfunction
function GDO takes nothing returns nothing
local integer GBO
local unit u=GetTriggerUnit()
local trigger t
local integer S5I
local item BA1
if GetIssuedOrderId()==852008 then
set GBO=0
elseif GetIssuedOrderId()==852009 then
set GBO=1
elseif GetIssuedOrderId()==852010 then
set GBO=2
elseif GetIssuedOrderId()==852011 then
set GBO=3
elseif GetIssuedOrderId()==852012 then
set GBO=4
elseif GetIssuedOrderId()==852013 then
set GBO=5
endif
set BA1=UnitItemInSlot(u,GBO)
if BA1!=null and GetWidgetLife(BA1)>0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveInteger(LY,(S5I),(98),(GBO))
call SaveUnitHandle(LY,(S5I),(26),(u))
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function GCO))
endif
set BA1=null
set u=null
set t=null
endfunction
function ItemCooldown_CheckOrderID takes nothing returns boolean
if GetIssuedOrderId()==852008 or GetIssuedOrderId()==852009 or GetIssuedOrderId()==852010 or GetIssuedOrderId()==852011 or GetIssuedOrderId()==852012 or GetIssuedOrderId()==852013 then
call GDO()
endif
return false
endfunction
function GFO takes nothing returns nothing
local unit u=GetTriggerUnit()
local item BA1
local integer i=0
local real x=GetUnitX(u)
local real y=GetUnitY(u)
local integer E81
local item EJ1
call DisableTrigger(LY0)
loop
exitwhen i>5
set BA1=UnitItemInSlot(u,i)
set E81=EB1(BA1)
if E81==ZV0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[HI0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[HB0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==ZY0 or E81==ZJ0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[H10],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[H50],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==WQ0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[GQ0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[GT0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[YW0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==WU0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[GQ0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[GT0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[YW0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==WY0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[GX0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[V30],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[YL0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==X90 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[G40],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[GG0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==V80 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[GW0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[GM0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==V90 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[GW0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[GM0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==VM0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[V00],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[H90],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[Y30],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==VN0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[V00],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[H90],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[Y30],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==HS0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[GF0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[X50],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==VE0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[VI0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[V00],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==Z20 or E81==Z30 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[ZQ0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[ZY0],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
elseif E81==XD0 then
set JK=GetItemPlayer(BA1)
call RemoveItem(BA1)
set EJ1=CreateItem(FT0[H30],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
set EJ1=CreateItem(FT0[V10],x,y)
call SetItemPlayer(EJ1,JK,false)
call SetItemUserData(EJ1,1)
endif
set i=i+1
endloop
call EnableTrigger(LY0)
set u=null
set BA1=null
set EJ1=null
endfunction
function GGO takes nothing returns boolean
if GetSpellAbilityId()==1093684021 or GetSpellAbilityId()==1093751366 then
call GFO()
endif
return false
endfunction
function GZO takes integer E81 returns boolean
return E81!=W30 and E81!=WM0 and E81!=GZ0 and E81!=VL0
endfunction
function GVO takes nothing returns nothing
if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
call SetItemPawnable(GetManipulatedItem(),false)
else
call SetItemPawnable(GetManipulatedItem(),true)
endif
endfunction
function GWO takes nothing returns boolean
if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and GZO(F01(GetManipulatedItem()))and RYI(GetTriggerUnit())then
call GVO()
endif
return false
endfunction
function GYO takes nothing returns nothing
local integer x=1
local player p
loop
exitwhen x>16
if ES1(K1[x],FR0[WM0])!=null then
call RemoveUnit(M70[GetPlayerId(GetOwningPlayer(K1[x]))])
endif
set x=x+1
endloop
endfunction
function Bloodstone_ItemCondition takes nothing returns boolean
return GetItemTypeId(GetManipulatedItem())==FR0[WM0]and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true
endfunction
function GJO takes nothing returns boolean
return IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and V51(GetUnitTypeId(GetFilterUnit()))==false and ES1(GetTriggerUnit(),FR0[WM0])!=null
endfunction
function GKO takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),1093678162)!=1 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction
function GLO takes nothing returns nothing
call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+JO)
call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\BloodstoneHealTarget.mdx",GetEnumUnit(),"origin"))
endfunction
function Bloodstone_RegisterUnit takes nothing returns nothing
call SCI(GetEnumUnit(),4254,40)
endfunction
function GMO takes nothing returns nothing
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),1700,Condition(function GKO))
set JO=500+30*GetItemCharges(ES1(GetTriggerUnit(),FR0[WM0]))
call ForGroup(g,function GLO)
call NSI(g)
set g=null
endfunction
function GNO takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1211117645,GetUnitX(SFI),GetUnitY(SFI),GetUnitFacing(SFI))
set M70[GetPlayerId(GetOwningPlayer(SFI))]=I01
call GMO()
endfunction
function GTO takes unit u returns nothing
local integer GRO=GetItemCharges(ES1(u,FR0[WM0]))
if GRO>0 then
call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)+GRO)
endif
endfunction
function GPO takes nothing returns boolean
local integer i=1
local unit SFI
local integer id
if LM0>0 then
loop
exitwhen i>5
set id=GetPlayerId(BO[i])
set SFI=K1[id]
if LB0[id]>0 and SFI!=null and GetUnitTypeId(SFI)>1 and IsUnitType(SFI,UNIT_TYPE_DEAD)==false then
call GTO(SFI)
endif
set id=GetPlayerId(CO[i])
set SFI=K1[id]
if LB0[id]>0 and SFI!=null and GetUnitTypeId(SFI)>1 and IsUnitType(SFI,UNIT_TYPE_DEAD)==false then
call GTO(SFI)
endif
set i=i+1
endloop
endif
set SFI=null
return false
endfunction
function GUO takes unit H0O,unit P7I returns nothing
local string fx=""
if IsPlayerEnemy(GetLocalPlayer(),GetOwningPlayer(P7I))and P0I(GetLocalPlayer())==false then
set fx="war3mapImported\\WardMark_T2.mdx"
endif
call AddSpecialEffectTarget(fx,H0O,"origin")
endfunction
function HIO takes nothing returns boolean
return true
endfunction
function H1O takes unit SFI,unit H0O returns nothing
local integer HOO
local item H2O
if GetUnitTypeId(H0O)==1865429044 then
set HOO=FR0[ZA0]
else
set HOO=FR0[ZB0]
endif
call DisableTrigger(LY0)
set H2O=ES1(SFI,HOO)
if H2O==null then
set JK=GetOwningPlayer(SFI)
set VK=CreateItem(HOO,0,0)
call UnitAddItem(SFI,VK)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
else
call SetItemCharges(H2O,GetItemCharges(H2O)+1)
endif
call EnableTrigger(LY0)
endfunction
function H3O takes nothing returns nothing
local unit H0O=GetSummonedUnit()
local unit SFI=GetSummoningUnit()
if GetUnitTypeId(GetSummonedUnit())==1865429044 then
endif
if GetUnitTypeId(GetSummonedUnit())==1865429044 or GetUnitTypeId(GetSummonedUnit())==1868921189 then
if IsUnitInRegion(R60,H0O)then
call H1O(SFI,H0O)
call RemoveUnit(H0O)
elseif RYI(SFI)then
call H1O(SFI,H0O)
call PZI(GetOwningPlayer(H0O),"Couriers cannot place wards")
call RemoveUnit(H0O)
else
call GUO(GetSummonedUnit(),GetSummoningUnit())
if GetUnitTypeId(GetSummonedUnit())==1868921189 then
call I41(GetOwningPlayer(GetSummonedUnit()),12,GetUnitX(GetSummonedUnit()),GetUnitY(GetSummonedUnit()),150)
endif
endif
elseif GetUnitTypeId(H0O)==1869836340 or GetUnitTypeId(H0O)==1865429048 or GetUnitTypeId(H0O)==1865429049 or GetUnitTypeId(H0O)==1865429315 or GetUnitTypeId(H0O)==1865429316 or GetUnitTypeId(H0O)==1865429317 then
call SelectUnitAddForPlayer(H0O,GetOwningPlayer(H0O))
elseif GetUnitTypeId(H0O)==1865429040 or GetUnitTypeId(H0O)==1865429041 or GetUnitTypeId(H0O)==1865429057 or GetUnitTypeId(H0O)==1865429080 then
call SelectUnitAddForPlayer(H0O,GetOwningPlayer(H0O))
endif
endfunction
function H5O takes nothing returns nothing
local unit u=GetEnumUnit()
local integer i=0
local player p=GetOwningPlayer(GetTriggerUnit())
local item BA1
local integer id=GetPlayerId(p)
loop
exitwhen i>5
set BA1=UnitItemInSlot(u,i)
if BA1!=null and GetItemPlayer(BA1)==p then
call UnitRemoveItem(u,BA1)
call SetItemPosition(BA1,D40[id],D50[id])
endif
set i=i+1
endloop
set u=null
set BA1=null
endfunction
function H6O takes nothing returns nothing
local item BA1=GetEnumItem()
local unit u=M80
local player p=GetOwningPlayer(u)
local integer id=GetPlayerId(p)
if GetWidgetLife(BA1)>0 and GetItemPlayer(BA1)==p and IsItemVisible(BA1)==true then
call SetItemPosition(BA1,D40[id],D50[id])
call UnitAddItem(D30[id],BA1)
endif
set BA1=null
set u=null
set p=null
endfunction
function H7O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit u=(LoadUnitHandle(LY,(S5I),(53)))
set M80=u
if TII(GetOwningPlayer(M80))then
call EnumItemsInRect(G5,Condition(function N1I),function H6O)
else
call EnumItemsInRect(H5,Condition(function N1I),function H6O)
endif
if GetTriggerEvalCount(t)==2 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set u=null
return false
endfunction
function H8O takes nothing returns boolean
return RYI(GetFilterUnit())
endfunction
function H9O takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer i=0
local group g=NTI()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),1300,Condition(function H8O))
call ForGroup(g,function H5O)
call NSI(g)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerAddCondition(t,Condition(function H7O))
call SaveUnitHandle(LY,(S5I),(53),(u))
set u=null
set g=null
endfunction
function HAO takes nothing returns nothing
if GetSpellAbilityId()==1093743684 then
call H9O()
endif
endfunction
function HBO takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer i=0
local item BA1
local integer id=GetPlayerId(GetOwningPlayer(u))
local region r=CreateRegion()
if TII(GetOwningPlayer(u))then
call RegionAddRect(r,G5)
else
call RegionAddRect(r,H5)
endif
loop
exitwhen i>5
set BA1=UnitItemInSlot(u,i)
if E91(EB1(BA1))==false and EB1(BA1)!=VL0 and EG1(BA1)==false then
call UnitRemoveItemFromSlot(u,i)
if(GetUnitTypeId(u)==1852010352 or IsUnitInRegion(r,u))and IsPlayerAlly(GetItemPlayer(BA1),GetOwningPlayer(u))==true then
set id=GetPlayerId(GetItemPlayer(BA1))
call SetItemPosition(BA1,D40[id],D50[id])
endif
endif
set i=i+1
endloop
call RemoveRegion(r)
set u=null
set r=null
endfunction
function HCO takes nothing returns nothing
if GetSpellAbilityId()==1093743416 or GetSpellAbilityId()==1093743683 then
call HBO()
endif
endfunction
function HDO takes unit P7I returns boolean
local integer S5I=GetHandleId(P7I)
local integer i=0
local real GW1=(TimerGetElapsed(M))
local real HEO=13
loop
exitwhen i>0
if(LoadReal(LY,(S5I),(730+i)))<GW1-HEO then
return false
endif
set i=i+1
endloop
return true
endfunction
function HFO takes unit P7I returns nothing
local integer S5I=GetHandleId(P7I)
local integer HGO=(LoadInteger(LY,(S5I),(729)))
call SaveReal(LY,(S5I),(730+HGO),(((TimerGetElapsed(M)))*1.0))
set HGO=HGO+1
if HGO==1 then
set HGO=0
endif
call SaveInteger(LY,(S5I),(729),(HGO))
endfunction
function HHO takes unit SFI returns nothing
local integer i=0
local item HZO
local integer E81
local boolean HVO=false
if HDO(SFI)then
set HVO=true
endif
loop
exitwhen i>5
set HZO=UnitItemInSlot(SFI,i)
set E81=F01(HZO)
if E81==Z00 and HVO==true then
call DisableTrigger(LY0)
set JK=GetItemPlayer(HZO)
call RemoveItem(HZO)
set VK=FD1(SFI,FR0[ZI0],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
if E81==ZI0 and HVO==false then
call DisableTrigger(LY0)
set JK=GetItemPlayer(HZO)
call RemoveItem(HZO)
set VK=FD1(SFI,FR0[Z00],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
set i=i+1
endloop
set SFI=null
set HZO=null
endfunction
function HWO takes unit SFI returns nothing
local integer i=0
local item HXO
local integer E81
local boolean HYO=false
local real Q4I=4
if IsUnitType(SFI,UNIT_TYPE_MELEE_ATTACKER)==false then
set Q4I=6
endif
if(LoadReal(LY,(GetHandleId(SFI)),(785)))+Q4I>(TimerGetElapsed(M))then
set HYO=true
endif
loop
exitwhen i>5
set HXO=UnitItemInSlot(SFI,i)
set E81=F01(HXO)
if E81==WA0 and HYO==true then
call DisableTrigger(LY0)
set JK=GetItemPlayer(HXO)
call RemoveItem(HXO)
set VK=FD1(SFI,FR0[WB0],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
if E81==WB0 and HYO==false then
call DisableTrigger(LY0)
set JK=GetItemPlayer(HXO)
call RemoveItem(HXO)
set VK=FD1(SFI,FR0[WA0],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
set i=i+1
endloop
set SFI=null
set HXO=null
endfunction
function HJO takes nothing returns nothing
if GetEventDamage()>2 and(T2I(GetOwningPlayer(GetEventDamageSource()))or GetUnitTypeId(GetEventDamageSource())==1848651852)and GetUnitAbilityLevel(GetTriggerUnit(),1093685838)==0 then
if NJ0[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==false then
call SaveReal(LY,(GetHandleId(GetTriggerUnit())),(785),(((TimerGetElapsed(M)))*1.0))
if GetEventDamage()>20 then
endif
endif
endif
endfunction
function HKO takes unit SFI returns nothing
local integer i=0
local item HLO
local integer E81
local boolean HMO=false
if(LoadReal(LY,(GetHandleId(SFI)),(785)))+3>(TimerGetElapsed(M))then
set HMO=true
endif
loop
exitwhen i>5
set HLO=UnitItemInSlot(SFI,i)
set E81=F01(HLO)
if E81==GJ0 and HMO==true then
call DisableTrigger(LY0)
set JK=GetItemPlayer(HLO)
call RemoveItem(HLO)
set VK=FD1(SFI,FR0[GK0],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call EnableTrigger(LY0)
endif
if E81==GK0 and HMO==false then
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
function HNO takes nothing returns nothing
local unit SFI=GetEnumUnit()
local integer id=GetPlayerId(GetOwningPlayer(SFI))
if LA0[id]>0 and SFI!=null and GetUnitTypeId(SFI)>1 and IsUnitType(SFI,UNIT_TYPE_DEAD)==false then
call HKO(SFI)
endif
if M90[id]>0 and SFI!=null and GetUnitTypeId(SFI)>1 and IsUnitType(SFI,UNIT_TYPE_DEAD)==false then
call HWO(SFI)
endif
if MA0[id]>0 and SFI!=null and GetUnitTypeId(SFI)>1 and IsUnitType(SFI,UNIT_TYPE_DEAD)==false then
call HHO(SFI)
endif
set SFI=null
endfunction
function HSO takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and GetUnitTypeId(GetFilterUnit())!=1211117642 and GetUnitTypeId(GetFilterUnit())!=1211122232
endfunction
function HTO takes nothing returns boolean
local integer i=1
local unit SFI
local integer id
local group g
if LL0>0 or LS0>0 or LQ0>0 then
set g=NTI()
call GroupEnumUnitsInRange(g,0,0,9999,Condition(function HSO))
loop
exitwhen i>5
set id=GetPlayerId(BO[i])
set SFI=K1[id]
call GroupAddUnit(g,SFI)
set id=GetPlayerId(CO[i])
set SFI=K1[id]
call GroupAddUnit(g,SFI)
set i=i+1
endloop
call ForGroup(g,function HNO)
call NSI(g)
set g=null
endif
set SFI=null
return false
endfunction
function HPO takes nothing returns nothing
local unit SFI=GetFilterUnit()
local integer i=0
local item BA1
local integer E81
loop
exitwhen i>5
set BA1=UnitItemInSlot(SFI,i)
set E81=EB1(BA1)
if(E81==HE0 or E81==HF0 or E81==HG0)and GetItemUserData(BA1)>0 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",SFI,"overhead"))
call PEI(GetOwningPlayer(SFI),"Abilities\\Spells\\Human\\Heal\\HealTarget.wav")
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=FD1(SFI,FR0[HH0],i)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call UnitRemoveAbility(SFI,1110460233)
endif
set i=i+1
endloop
set SFI=null
set BA1=null
endfunction
function HQO takes nothing returns boolean
if UnitInventorySize(GetFilterUnit())>0 and TII(GetOwningPlayer(GetFilterUnit()))and IsUnitIllusion(GetFilterUnit())==false and IC1(GetFilterUnit())==false then
call HPO()
endif
return false
endfunction
function HUO takes nothing returns boolean
if UnitInventorySize(GetFilterUnit())>0 and TOI(GetOwningPlayer(GetFilterUnit()))and IsUnitIllusion(GetFilterUnit())==false and IC1(GetFilterUnit())==false then
call HPO()
endif
return false
endfunction
function Z0O takes nothing returns boolean
local group g=NTI()
call GroupEnumUnitsInRange(g,QS,US,750,Condition(function HQO))
call NSI(g)
set g=NTI()
call GroupEnumUnitsInRange(g,O50,O60,750,Condition(function HUO))
call NSI(g)
set g=null
return false
endfunction
function Z1O takes unit ZOO returns boolean
local unit Z2O=K1[GetPlayerId(GetOwningPlayer(ZOO))]
if((GetUnitX(Z2O)-GetUnitX(ZOO))*(GetUnitX(Z2O)-GetUnitX(ZOO))+(GetUnitY(Z2O)-GetUnitY(ZOO))*(GetUnitY(Z2O)-GetUnitY(ZOO))>=855625)then
return true
endif
return false
endfunction
function Z3O takes nothing returns nothing
local unit Z4O=GetAttacker()
local integer GP1=UnitInventorySize(Z4O)
local integer x=0
local item i
loop
exitwhen x>GP1
set i=UnitItemInSlot(Z4O,x)
if F01(i)==HC0 then
if GetRandomReal(0,1)<=0.2 and BU1(Z4O)==false then
if B61(Z4O)then
if Z1O(Z4O)==false then
if GetUnitAbilityLevel(GetTriggerUnit(),1093678162)==0 then
call P6I(Z4O,GetTriggerUnit(),2,40)
endif
endif
else
if GetUnitAbilityLevel(GetTriggerUnit(),1093678162)==0 then
call P6I(Z4O,GetTriggerUnit(),2,40)
endif
endif
endif
endif
set x=x+1
endloop
set x=0
set Z4O=GetAttacker()
set GP1=UnitInventorySize(Z4O)
loop
exitwhen x>GP1
set i=UnitItemInSlot(Z4O,x)
if F01(i)==Z00 or F01(i)==ZI0 then
call HFO(Z4O)
endif
set x=x+1
endloop
set x=0
set Z4O=GetTriggerUnit()
set GP1=UnitInventorySize(Z4O)
loop
exitwhen x>GP1
set i=UnitItemInSlot(Z4O,x)
if F01(i)==Z00 or F01(i)==ZI0 then
call HFO(Z4O)
endif
set x=x+1
endloop
set i=null
set Z4O=null
endfunction
function Z6O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real Z7O=(LoadReal(LY,(GetHandleId(P7I)),(692)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or Z7O<(TimerGetElapsed(M))then
call UnitRemoveAbility(P7I,1093809717)
call UnitRemoveAbility(P7I,1110456398)
call UnitRemoveAbility(P7I,1093809731)
call SaveReal(LY,(GetHandleId(P7I)),(692),((0)*1.0))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function Z8O takes unit P7I returns nothing
local trigger t
local integer S5I
local real Z7O=(LoadReal(LY,(GetHandleId(P7I)),(692)))
call SaveReal(LY,(GetHandleId(P7I)),(692),(((TimerGetElapsed(M))+MC0)*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,MC0+0.01,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function Z6O))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call IA1(P7I,1093809717)
call IA1(P7I,1093809731)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809717,false)
set t=null
endfunction
function Z9O takes nothing returns boolean
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
call Z8O(P8I)
endif
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function ZAO takes nothing returns nothing
local unit P7I=GetAttacker()
local unit P8I=GetTriggerUnit()
local trigger t
local integer S5I
if((LoadInteger(LY,(GetHandleId((P7I))),((4309))))==1)==false then
call SCI(P7I,4309,0.2)
if GetRandomReal(0,100)<MB0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function Z9O))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
endif
set P7I=null
set P8I=null
endfunction
function DiffusalBlade_End takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real Z7O=(LoadReal(LY,(GetHandleId(P7I)),(833)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or Z7O<(TimerGetElapsed(M))then
call UnitRemoveAbility(P7I,1093809717)
call UnitRemoveAbility(P7I,1110456398)
call UnitRemoveAbility(P7I,1093809731)
call SaveReal(LY,(GetHandleId(P7I)),(833),((0)*1.0))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function ZBO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real ZCO
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
if GetEventDamageSource()==P7I and GetEventDamage()>0 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if GetUnitAbilityLevel(P7I,1093677618)==0 then
set ZCO=RMinBJ(25,GetUnitState(P8I,UNIT_STATE_MANA))
call SetUnitState(P8I,UNIT_STATE_MANA,GetUnitState(P8I,UNIT_STATE_MANA)-ZCO)
call P6I(P7I,P8I,2,ZCO)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\ArcaneTowerAttack.mdl",P8I,"origin"))
endif
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function ZDO takes nothing returns nothing
local unit P7I=GetAttacker()
local unit P8I=GetTriggerUnit()
local trigger t
local integer S5I
if((LoadInteger(LY,(GetHandleId((P7I))),((4340))))==1)==false and GetUnitState(P8I,UNIT_STATE_MANA)>0 then
call SCI(P7I,4340,0.2)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function ZBO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
set P7I=null
set P8I=null
endfunction
function ZEO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local real Z7O=(LoadReal(LY,(GetHandleId(P7I)),(693)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or Z7O<(TimerGetElapsed(M))then
call UnitRemoveAbility(P7I,1093809718)
call UnitRemoveAbility(P7I,1110454857)
call UnitRemoveAbility(P7I,1093809731)
call SaveReal(LY,(GetHandleId(P7I)),(693),((0)*1.0))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function ZFO takes unit P7I returns nothing
local trigger t
local integer S5I
local real Z7O=(LoadReal(LY,(GetHandleId(P7I)),(693)))
call SaveReal(LY,(GetHandleId(P7I)),(693),(((TimerGetElapsed(M))+ME0)*1.0))
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,ME0+0.01,false)
call TriggerRegisterDeathEvent(t,P7I)
call TriggerAddCondition(t,Condition(function ZEO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call IA1(P7I,1093809718)
call IA1(P7I,1093809731)
call SetPlayerAbilityAvailable(GetOwningPlayer(P7I),1093809718,false)
set t=null
endfunction
function ZGO takes nothing returns boolean
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
call ZFO(P8I)
endif
endif
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function ZHO takes nothing returns nothing
local unit P7I=GetAttacker()
local unit P8I=GetTriggerUnit()
local trigger t
local integer S5I
if((LoadInteger(LY,(GetHandleId((P7I))),((4309))))==1)==false then
call SCI(P7I,4309,0.2)
if GetRandomReal(0,100)<MD0 then
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,2.5,false)
call TriggerAddCondition(t,Condition(function ZGO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
endif
endif
set P7I=null
set P8I=null
endfunction
function ZZO takes nothing returns nothing
local unit Z4O=GetAttacker()
local integer ZVO=25
local integer id=GetPlayerId(GetOwningPlayer(GetAttacker()))
local integer S5I=GetHandleId(Z4O)
local real SOI=(TimerGetElapsed(M))
local real ZWO=(LoadReal(LY,(S5I),(101)))
local boolean ZXO=(LoadBoolean(LY,(S5I),(99)))
local boolean ZYO=(LoadBoolean(LY,(S5I),(100)))
local boolean ZJO=SOI<ZWO
local boolean ZKO=false
if IsUnitType(Z4O,UNIT_TYPE_MELEE_ATTACKER)==false then
set ZVO=10
endif
if GetRandomInt(0,100)<ZVO then
set ZKO=true
endif
if GetUnitAbilityLevel(Z4O,1093683786)>0 or GetUnitAbilityLevel(Z4O,1093679153)>0 or GetUnitAbilityLevel(Z4O,1093682997)>0 or GetUnitAbilityLevel(Z4O,1093679429)>0 then
call UnitRemoveAbility(Z4O,1093744436)
set Z4O=null
return
endif
if ZXO and ZJO==false and ZYO==false then
call SaveReal(LY,(S5I),(101),((SOI+2)*1.0))
if ZKO==false then
call SaveBoolean(LY,(S5I),(100),(true))
endif
elseif ZJO or ZYO then
call UnitRemoveAbility(Z4O,1093744436)
call SaveBoolean(LY,(S5I),(99),(false))
call SaveBoolean(LY,(S5I),(100),(false))
endif
if ZKO then
call IA1(Z4O,1093744436)
call UnitMakeAbilityPermanent(Z4O,true,1093744437)
call SaveBoolean(LY,(S5I),(99),(true))
endif
set Z4O=null
endfunction
function ZMO takes unit u returns unit
if IsUnitType(u,UNIT_TYPE_HERO)or GetUnitAbilityLevel(u,1093678162)==0 then
return u
else
return K1[GetPlayerId(GetOwningPlayer(u))]
endif
endfunction
function ZNO takes nothing returns boolean
if IsUnitType(GetKillingUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetDyingUnit(),GetOwningPlayer(GetKillingUnit()))==false then
if GetUnitTypeId(GetTriggerUnit())==1848651850 then
call P6I(GetDyingUnit(),ZMO(GetKillingUnit()),1,550)
elseif GetUnitTypeId(GetTriggerUnit())==1848651841 then
call P6I(GetDyingUnit(),ZMO(GetKillingUnit()),1,675)
elseif GetUnitTypeId(GetTriggerUnit())==1848651830 then
call P6I(GetDyingUnit(),ZMO(GetKillingUnit()),1,800)
endif
endif
return false
endfunction
function ZTO takes nothing returns boolean
local unit SFI=GetTriggerUnit()
local integer SUI=1
if ES1(SFI,FR0[ZI0])!=null then
set SUI=2
endif
if EM1(SFI,FR0[G40],GetManipulatedItem())!=null then
set SUI=3
endif
if EM1(SFI,FR0[XI0],GetManipulatedItem())!=null then
set SUI=4
endif
if EM1(SFI,FR0[ZL0],GetManipulatedItem())!=null or EM1(SFI,FR0[ZM0],GetManipulatedItem())!=null or EM1(SFI,FR0[ZN0],GetManipulatedItem())!=null then
set SUI=5
endif
if EM1(SFI,FR0[X90],GetManipulatedItem())!=null then
set SUI=6
endif
if EM1(SFI,FR0[Z00],GetManipulatedItem())!=null then
set SUI=7
endif
if EM1(SFI,FR0[ZK0],GetManipulatedItem())!=null then
set SUI=8
endif
if EM1(SFI,FR0[VB0],GetManipulatedItem())!=null then
call UnitAddAbility(SFI,1093686832)
call SetUnitAbilityLevel(SFI,1093686832,SUI)
call UnitMakeAbilityPermanent(SFI,true,1093686832)
else
call UnitRemoveAbility(SFI,1093686832)
endif
set SFI=null
return false
endfunction
function ZRO takes nothing returns boolean
local unit SFI=GetTriggerUnit()
local integer SUI=1
if ES1(SFI,FR0[ZI0])!=null then
set SUI=2
endif
if ES1(SFI,FR0[G40])!=null then
set SUI=3
endif
if ES1(SFI,FR0[XI0])!=null then
set SUI=4
endif
if ES1(SFI,FR0[ZL0])!=null or ES1(SFI,FR0[ZM0])!=null or ES1(SFI,FR0[ZN0])!=null then
set SUI=5
endif
if ES1(SFI,FR0[X90])!=null then
set SUI=6
endif
if EM1(SFI,FR0[Z00],GetManipulatedItem())!=null then
set SUI=7
endif
if ES1(SFI,FR0[ZK0])!=null then
set SUI=8
endif
if ES1(SFI,FR0[VB0])!=null then
call UnitAddAbility(SFI,1093686832)
call SetUnitAbilityLevel(SFI,1093686832,SUI)
call UnitMakeAbilityPermanent(SFI,true,1093686832)
endif
set SFI=null
return false
endfunction
function ZQO takes nothing returns nothing
local unit SFI=GetTriggerUnit()
if GetTriggerEventId()==EVENT_PLAYER_UNIT_DROP_ITEM then
if F01(GetManipulatedItem())==WT0 or F01(GetManipulatedItem())==WP0 then
call UnitRemoveAbility(SFI,1093816644)
endif
if F01(GetManipulatedItem())==WC0 then
call UnitRemoveAbility(SFI,1093747287)
endif
if F01(GetManipulatedItem())==WM0 then
call UnitRemoveAbility(SFI,1093682995)
call UnitRemoveAbility(SFI,1093679437)
call UnitRemoveAbility(SFI,1093686616)
call UnitRemoveAbility(SFI,1093815116)
endif
if F01(GetManipulatedItem())==WS0 or F01(GetManipulatedItem())==WR0 then
call UnitRemoveAbility(SFI,1093816644)
call UnitRemoveAbility(SFI,1093686339)
call UnitRemoveAbility(SFI,1093686603)
endif
if F01(GetManipulatedItem())==Z40 then
call UnitRemoveAbility(SFI,1093818693)
call UnitRemoveAbility(SFI,1093818694)
call UnitRemoveAbility(SFI,1093873977)
endif
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM then
if F01(GetManipulatedItem())==WT0 or F01(GetManipulatedItem())==WP0 then
call UnitAddAbility(SFI,1093816644)
call UnitMakeAbilityPermanent(SFI,true,1093816644)
endif
if F01(GetManipulatedItem())==WC0 then
call UnitAddAbility(SFI,1093747287)
call UnitMakeAbilityPermanent(SFI,true,1093747287)
endif
if F01(GetManipulatedItem())==Z40 then
call IA1(SFI,1093873977)
if IsUnitType(SFI,UNIT_TYPE_MELEE_ATTACKER)==true then
call IA1(SFI,1093818693)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093818693,false)
else
call IA1(SFI,1093818694)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),1093818694,false)
endif
endif
if F01(GetManipulatedItem())==WM0 then
call IA1(SFI,1093682995)
call IA1(SFI,1093679437)
call IA1(SFI,1093686616)
call IA1(SFI,1093815116)
endif
if F01(GetManipulatedItem())==WS0 or F01(GetManipulatedItem())==WR0 then
call UnitAddAbility(SFI,1093816644)
call UnitMakeAbilityPermanent(SFI,true,1093816644)
call UnitAddAbility(SFI,1093686339)
call UnitMakeAbilityPermanent(SFI,true,1093686339)
call UnitAddAbility(SFI,1093686603)
call UnitMakeAbilityPermanent(SFI,true,1093686603)
endif
endif
set SFI=null
endfunction
function ZUO takes nothing returns boolean
if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and(F01(GetManipulatedItem())==WS0 or F01(GetManipulatedItem())==WT0 or F01(GetManipulatedItem())==WR0 or F01(GetManipulatedItem())==WP0 or F01(GetManipulatedItem())==WC0 or F01(GetManipulatedItem())==WM0 or F01(GetManipulatedItem())==Z40)then
call ZQO()
endif
return false
endfunction
function VIO takes unit u,integer d returns nothing
local integer array b
local integer a=d
local integer c=1
local integer i=0
local integer EU1
if d<1 then
call UnitRemoveAbility(u,MG0[0])
call UnitRemoveAbility(u,MG0[1])
call UnitRemoveAbility(u,MG0[2])
call UnitRemoveAbility(u,MG0[3])
call UnitRemoveAbility(u,MG0[4])
return
endif
loop
exitwhen c==0
set c=a/2
set b[i]=a-c*2
set a=c
set i=i+1
endloop
set EU1=4
set i=0
loop
exitwhen i>EU1
if b[i]==1 then
call IA1(u,MG0[i])
else
call UnitRemoveAbility(u,MG0[i])
endif
set i=i+1
endloop
endfunction
function V1O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local item BA1=(LoadItemHandle(LY,(S5I),(96)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real VOO=GetUnitState(SFI,UNIT_STATE_MAX_LIFE)-GetUnitState(SFI,UNIT_STATE_LIFE)
if GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==BA1 then
call SaveInteger(LY,(GetHandleId((SFI))),((4298)),(2))
call VIO(SFI,0)
call SetUnitState(SFI,UNIT_STATE_LIFE,QDI(GetUnitState(SFI,UNIT_STATE_MAX_LIFE)-VOO,1))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM and NPI<25 then
call SaveInteger(LY,(GetHandleId((SFI))),((4298)),(1))
set NPI=NPI+1
call VIO(SFI,NPI)
call SetUnitState(SFI,UNIT_STATE_LIFE,QDI(GetUnitState(SFI,UNIT_STATE_MAX_LIFE)-VOO,1))
call SaveInteger(LY,(S5I),(34),(NPI))
else
call SaveInteger(LY,(GetHandleId((SFI))),((4298)),(2))
endif
set t=null
set SFI=null
set BA1=null
return false
endfunction
function V2O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local item BA1=(LoadItemHandle(LY,(S5I),(96)))
if GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==BA1 then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM then
if((LoadInteger(LY,(GetHandleId((SFI))),((4310))))==1)==false then
call SetUnitState(SFI,UNIT_STATE_LIFE,QDI(GetUnitState(SFI,UNIT_STATE_LIFE)-MF0*0.1,1))
endif
endif
set t=null
set SFI=null
set BA1=null
return false
endfunction
function V3O takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function V2O))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveItemHandle(LY,(S5I),(96),(GetManipulatedItem()))
call TriggerEvaluate(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.7/25,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function V1O))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveItemHandle(LY,(S5I),(96),(GetManipulatedItem()))
call SaveInteger(LY,(S5I),(34),(0))
set t=null
set SFI=null
endfunction
function V4O takes nothing returns boolean
if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and(F01(GetManipulatedItem())==WS0 or F01(GetManipulatedItem())==WR0)then
call V3O()
endif
return false
endfunction
function V6O takes nothing returns nothing
local unit P7I=MH0
local unit P8I=GetEnumUnit()
if((LoadInteger(LY,(GetHandleId((P8I))),((4341))))==1)==false then
call SCI(P8I,4341,0.99)
set MZ0=true
call P6I(P7I,P8I,1,50)
set MZ0=false
call U5I("Abilities\\Spells\\Items\\HealingSalve\\HealingSalveTarget.mdl",P8I,"origin",0.9)
endif
set P7I=null
set P8I=null
endfunction
function V7O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local item BA1=(LoadItemHandle(LY,(S5I),(96)))
local group g
if SFI==null or(GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==BA1)then
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM then
if IC1(SFI)==false then
set g=NTI()
set GK=SFI
set MH0=SFI
call GroupEnumUnitsInRange(g,GetUnitX(SFI),GetUnitY(SFI),725,Condition(function CA1))
call ForGroup(g,function V6O)
call NSI(g)
set g=null
endif
endif
set t=null
set SFI=null
set BA1=null
return false
endfunction
function V8O takes unit SFI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DROP_ITEM)
call TriggerAddCondition(t,Condition(function V7O))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveItemHandle(LY,(S5I),(96),(GetManipulatedItem()))
set t=null
endfunction
function V9O takes nothing returns boolean
if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM and GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and F01(GetManipulatedItem())==W80 then
call V8O(GetTriggerUnit())
endif
if GetTriggerEventId()==EVENT_PLAYER_UNIT_SUMMON and UnitInventorySize(GetSummonedUnit())>0 and ES1(GetSummonedUnit(),FR0[W80])!=null then
call V8O(GetSummonedUnit())
endif
return false
endfunction
function VBO takes unit u returns boolean
local item VCO=CreateItem(1227901771,GetUnitX(u),GetUnitY(u))
local boolean FB1=UnitAddItem(u,VCO)
if FB1==false then
call RemoveItem(VCO)
endif
return FB1
endfunction
function VDO takes unit SFI,item BA1,integer FF1 returns item
local real x=FA1(SFI)
local real y=FC1(SFI)
local integer i=0
local boolean array FG1
local item FH1
loop
exitwhen i>(UnitInventorySize(SFI)-1)
if UnitItemInSlot(SFI,i)==null and i!=FF1 then
set FH1=CreateItem(1227895373,x,y)
call UnitAddItem(SFI,FH1)
set FG1[i]=true
else
set FG1[i]=false
endif
if i==FF1 then
call UnitAddItem(SFI,BA1)
endif
set i=i+1
endloop
set i=0
loop
exitwhen i>5
if FG1[i]==true then
call RemoveItem(UnitItemInSlot(SFI,i))
endif
set i=i+1
endloop
set VK=BA1
set FH1=null
return VK
endfunction
function VEO takes unit SFI,integer VFO returns nothing
local integer i=0
local item VGO
local integer E81
local unit I01
local item VHO
if IC1(SFI)then
return
endif
call DisableTrigger(LY0)
if LD0[GetPlayerId(GetOwningPlayer(SFI))]>0 and VFO==WO0 then
call F71(SFI,1227901005)
endif
loop
exitwhen i>5
set VGO=UnitItemInSlot(SFI,i)
set E81=F01(VGO)
if E81==W20 or E81==WO0 then
set JK=GetItemPlayer(VGO)
call RemoveItem(VGO)
set I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
call UnitAddAbility(I01,1095331446)
set VHO=UnitAddItemById(I01,FR0[VFO])
call UnitResetCooldown(I01)
call UnitUseItem(I01,VHO)
set VK=VDO(SFI,VHO,i)
call SetItemPlayer(VHO,JK,false)
call SetItemUserData(VHO,1)
call UnitRemoveAbility(I01,1095331446)
set I01=null
set VHO=null
endif
set VGO=null
set i=i+1
endloop
call EnableTrigger(LY0)
endfunction
function VZO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local integer i=0
local item VGO
local integer E81
local unit I01
local item VHO
if GetTriggerEventId()==EVENT_UNIT_DEATH then
call SaveBoolean(LY,(GetHandleId(SFI)),(102),(false))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif VBO(SFI)==false then
call TriggerRegisterTimerEvent(t,5.5,false)
else
call SaveBoolean(LY,(GetHandleId(SFI)),(102),(false))
call VEO(SFI,WO0)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set SFI=null
return false
endfunction
function VVO takes unit SFI returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer i=0
local item VGO
local integer E81
local unit I01
local item VHO
call SaveBoolean(LY,(GetHandleId(SFI)),(102),(true))
call TriggerRegisterTimerEvent(t,MV0,false)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function VZO))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\DispelMagic\\DispelMagicTarget.mdl",SFI,"origin"))
call VEO(SFI,W20)
set t=null
endfunction
function VWO takes nothing returns boolean
local integer i=1
local unit SFI
local integer id
if Q2 then
return false
endif
if LJ0>0 then
loop
exitwhen i>5
set id=GetPlayerId(BO[i])
set SFI=K1[id]
if LD0[id]>0 and SFI!=null and GetUnitTypeId(SFI)>1 and IsUnitType(SFI,UNIT_TYPE_DEAD)==false and(LoadBoolean(LY,(GetHandleId(SFI)),(102)))==false and NNI(SFI)==false and(LoadBoolean(LY,(GetHandleId(SFI)),(129)))==false then
call VVO(SFI)
endif
set id=GetPlayerId(CO[i])
set SFI=K1[id]
if LD0[id]>0 and SFI!=null and GetUnitTypeId(SFI)>1 and IsUnitType(SFI,UNIT_TYPE_DEAD)==false and(LoadBoolean(LY,(GetHandleId(SFI)),(102)))==false and NNI(SFI)==false and(LoadBoolean(LY,(GetHandleId(SFI)),(129)))==false then
call VVO(SFI)
endif
set i=i+1
endloop
endif
set SFI=null
return false
endfunction
function VXO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetUnitAbilityLevel(P8I,1110458953)==0 then
call VVO(P7I)
if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\DispelMagic\\DispelMagicTarget.mdl",P8I,"origin"))
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
elseif GetTriggerEvalCount(t)>=R2I(MV0/0.1)then
call SaveBoolean(LY,(GetHandleId(P7I)),(102),(false))
call VEO(P7I,WO0)
call UnitRemoveAbility(P8I,1110458953)
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function VYO takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
call F71(P8I,1227901005)
call TriggerRegisterTimerEvent(t,0.1,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function VXO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("effects\\Linkens_Main.mdx",P8I,"chest")))
call SaveBoolean(LY,(GetHandleId(P7I)),(102),(true))
call UnitRemoveAbility(P7I,1110458953)
call VEO(P7I,W20)
set t=null
set P7I=null
set P8I=null
endfunction
function VJO takes nothing returns boolean
if GetSpellAbilityId()==1093817925 and IsUnitIllusion(GetSpellTargetUnit())==false then
call VYO()
endif
return false
endfunction
function VLO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
if P7I!=P8I then
call P6I(P7I,P8I,1,50)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
set P8I=null
return false
endfunction
function VMO takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local unit I01
if P8I==null then
set P8I=P7I
endif
set I01=CreateUnit(GetOwningPlayer(P8I),1697656901,GetUnitX(P8I),GetUnitY(P8I),0)
call UnitAddAbility(I01,1093743446)
call IssueTargetOrder(I01,"cyclone",P8I)
call TriggerRegisterTimerEvent(t,2.51,true)
call TriggerRegisterDeathEvent(t,P8I)
call TriggerAddCondition(t,Condition(function VLO))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
set t=null
set P7I=null
set P8I=null
endfunction
function VNO takes nothing returns boolean
if GetSpellAbilityId()==1093751863 then
if GetTriggerUnit()==GetSpellTargetUnit()or RKI(GetSpellTargetUnit())==false then
if NNI(GetSpellTargetUnit())==false or GetTriggerUnit()==GetSpellTargetUnit()then
call VMO()
endif
endif
endif
return false
endfunction
function VTO takes integer FE1 returns integer
if FE1==1227894838 then
return HW0
elseif FE1==1227894840 then
return HX0
elseif FE1==1227894858 then
return HZ0
elseif FE1==1227894859 then
return HV0
elseif FE1==1227894839 then
return HY0
elseif FE1==1227903555 then
return HJ0
endif
return-1
endfunction
function VRO takes nothing returns boolean
if GetSpellAbilityId()==1093683254 then
call SaveUnitHandle(LY,(GetHandleId(GetTriggerUnit())),(103),(null))
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(104),(0))
if(ES1(GetTriggerUnit(),FR0[HE0])!=null or ES1(GetTriggerUnit(),FQ0[HE0])!=null)and(GetUnitTypeId(GetSpellTargetUnit())==1852206952 or GetUnitTypeId(GetSpellTargetUnit())==1852073580)then
call SaveUnitHandle(LY,(GetHandleId(GetTriggerUnit())),(103),(GetSpellTargetUnit()))
elseif C8O(GetItemTypeId(GetSpellTargetItem()))then
call FMO(GetTriggerUnit(),GetItemTypeId(GetSpellTargetItem()),true)
call SaveInteger(LY,(GetHandleId(GetTriggerUnit())),(104),(GetItemTypeId(GetSpellTargetItem())))
call EL1(GetSpellTargetItem())
endif
endif
return false
endfunction
function VPO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit u=(LoadUnitHandle(LY,(S5I),(26)))
local integer GBO=(LoadInteger(LY,(S5I),(98)))
local item BA1=UnitItemInSlot(u,GBO)
local integer VQO=(LoadInteger(LY,(S5I),(105)))
local item VHO
local integer FF1
if BA1!=null and E91(EB1(BA1))and GetHandleId(BA1)==VQO and IC1(u)==false and IC1(u)==false then
set VHO=CreateItem((LoadInteger(LY,(GetHandleId(BA1)),(GetHandleId(u)))),GetUnitX(u),GetUnitY(u))
call FlushChildHashtable(LY,(GetHandleId(BA1)))
set FF1=A11(u,BA1)
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=FD1(u,FR0[HH0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitAddItem(u,VHO)
call UnitRemoveAbility(u,1110460233)
endif
set t=null
set u=null
set BA1=null
set VHO=null
return false
endfunction
function VUO takes unit u,item VHO returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer GBO=A11(u,VHO)
call SaveInteger(LY,(S5I),(98),(GBO))
call SaveInteger(LY,(S5I),(105),(GetHandleId(VHO)))
call SaveUnitHandle(LY,(S5I),(26),(u))
call TriggerRegisterTimerEvent(t,120,true)
call TriggerAddCondition(t,Condition(function VPO))
set t=null
endfunction
function W0O takes nothing returns nothing
local unit u=GetTriggerUnit()
local item BA1=GetManipulatedItem()
local integer E81=EB1(BA1)
local unit WIO
local integer W1O
local boolean TargetFrog
local integer FF1
local item VHO
local integer WOO
if E81==HE0 then
set FF1=A11(u,BA1)
set WIO=(LoadUnitHandle(LY,(GetHandleId(u)),(103)))
set W1O=(LoadInteger(LY,(GetHandleId(u)),(104)))
if GetUnitTypeId(WIO)==1852206952 or GetUnitTypeId(WIO)==1852073580 then
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",u,"overhead"))
call PEI(GetOwningPlayer(u),"Abilities\\Spells\\Human\\Heal\\HealTarget.wav")
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=FD1(u,FR0[HH0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call UnitRemoveAbility(u,1110460233)
elseif C8O(W1O)then
set WOO=VTO(W1O)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",u,"overhead"))
set JK=GetItemPlayer(BA1)
call EL1(BA1)
call DisableTrigger(LY0)
if GetOwningPlayer(u)==JK then
set VK=FD1(u,FR0[WOO],FF1)
else
set VK=FD1(u,FQ0[WOO],FF1)
endif
call EnableTrigger(LY0)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
set VHO=UnitItemInSlot(u,FF1)
call SaveInteger(LY,(GetHandleId(VHO)),(GetHandleId(u)),(W1O))
call VUO(u,VHO)
call UnitRemoveAbility(u,1110460233)
endif
elseif E81==HH0 then
set FF1=A11(u,BA1)
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=FD1(u,FR0[HG0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HG0 then
set FF1=A11(u,BA1)
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=FD1(u,FR0[HF0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
elseif E81==HF0 then
set FF1=A11(u,BA1)
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=FD1(u,FR0[HE0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,0)
elseif E91(E81)then
if(LoadInteger(LY,(GetHandleId(BA1)),(GetHandleId(u))))>0 then
set M10=true
set FF1=A11(u,BA1)
set VHO=CreateItem((LoadInteger(LY,(GetHandleId(BA1)),(GetHandleId(u)))),GetUnitX(u),GetUnitY(u))
call FlushChildHashtable(LY,(GetHandleId(BA1)))
set JK=GetItemPlayer(BA1)
call EL1(BA1)
set VK=FD1(u,FR0[HH0],FF1)
call SetItemPlayer(VK,JK,false)
call SetItemUserData(VK,1)
call UnitAddItem(u,VHO)
set M10=false
call UnitRemoveAbility(u,1110460233)
endif
endif
set u=null
set BA1=null
set WIO=null
set VHO=null
endfunction
function W2O takes nothing returns boolean
if IsUnitType(GetEventDamageSource(),UNIT_TYPE_MELEE_ATTACKER)==true then
call DisableTrigger(GetTriggeringTrigger())
call P6I(GetEventDamageSource(),GetTriggerUnit(),3,GetEventDamage()*0.5)
call EnableTrigger(GetTriggeringTrigger())
endif
return false
endfunction
function W3O takes nothing returns boolean
if GetIssuedOrderId()==851971 then
if GetOrderTargetItem()!=null and C8O(GetItemTypeId(GetOrderTargetItem()))then
call PJI(GetTriggerUnit())
call PZI(GetOwningPlayer(GetTriggerUnit()),GetObjectName(1848659029))
endif
endif
return false
endfunction
function W4O takes unit W5O returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterUnitEvent(t,W5O,EVENT_UNIT_ISSUED_TARGET_ORDER)
call TriggerAddCondition(t,Condition(function W3O))
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t,W5O,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function W2O))
set t=null
endfunction
function W6O takes player p returns integer
local integer r=GetRandomInt(1,6)
if TII(p)then
if r==1 then
return 1848651849
elseif r==2 then
return 1848652338
elseif r==3 then
return 1848652337
elseif r==4 then
return 1848658777
elseif r==5 then
return 1848658778
else
return 1848659013
endif
else
if r==1 then
return 1848652339
elseif r==2 then
return 1848652340
elseif r==3 then
return 1848652341
elseif r==4 then
return 1848658992
elseif r==5 then
return 1848658993
else
return 1848659252
endif
endif
return 0
endfunction
function W7O takes player p returns integer
if GetRandomInt(1,3)==1 then
return 1697657426
elseif TII(p)then
return 1697657160
else
return 1697657178
endif
return 0
endfunction
function W8O takes nothing returns nothing
local unit W9O=CreateUnit(GetOwningPlayer(GetTriggerUnit()),W6O(GetOwningPlayer(GetTriggerUnit())),GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitFacing(GetTriggerUnit()))
local real x=GetUnitX(GetTriggerUnit())
local real y=GetUnitY(GetTriggerUnit())
local real a=GetUnitFacing(GetTriggerUnit())
call COO(W9O)
call SetUnitPosition(W9O,x+25*Cos(a*bj_DEGTORAD),y+25*Sin(a*bj_DEGTORAD))
if WM[GetPlayerId(GetOwningPlayer(W9O))]==false then
call UnitRemoveType(W9O,UNIT_TYPE_PEON)
else
call UnitAddType(W9O,UNIT_TYPE_PEON)
endif
endfunction
function WAO takes nothing returns nothing
local unit W9O=CreateUnit(GetOwningPlayer(GetTriggerUnit()),W7O(GetOwningPlayer(GetTriggerUnit())),GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitFacing(GetTriggerUnit()))
call COO(W9O)
if WM[GetPlayerId(GetOwningPlayer(W9O))]==false then
call UnitRemoveType(W9O,UNIT_TYPE_PEON)
else
call UnitAddType(W9O,UNIT_TYPE_PEON)
endif
call W4O(W9O)
endfunction
function WBO takes nothing returns boolean
if GetSpellAbilityId()==1093681718 then
call W8O()
endif
if GetSpellAbilityId()==1093683796 then
call WAO()
endif
return false
endfunction
function WCO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit W9O=(LoadUnitHandle(LY,(S5I),(124)))
local integer WDO=(LoadInteger(LY,(S5I),(125)))
local integer WEO=(LoadInteger(LY,(S5I),(106)))
local integer WFO=(LoadInteger(LY,(S5I),(107)))
local integer WGO=(LoadInteger(LY,(S5I),(108)))
local integer WHO=(LoadInteger(LY,(S5I),(109)))
local integer WZO=(LoadInteger(LY,(S5I),(110)))
local integer WVO=(LoadInteger(LY,(S5I),(111)))
local player p0=(LoadPlayerHandle(LY,(S5I),(118)))
local player p1=(LoadPlayerHandle(LY,(S5I),(119)))
local player p2=(LoadPlayerHandle(LY,(S5I),(120)))
local player p3=(LoadPlayerHandle(LY,(S5I),(121)))
local player p4=(LoadPlayerHandle(LY,(S5I),(122)))
local player p5=(LoadPlayerHandle(LY,(S5I),(123)))
local integer WWO=(LoadInteger(LY,(S5I),(112)))
local integer WXO=(LoadInteger(LY,(S5I),(113)))
local integer WYO=(LoadInteger(LY,(S5I),(114)))
local integer WJO=(LoadInteger(LY,(S5I),(115)))
local integer WKO=(LoadInteger(LY,(S5I),(116)))
local integer WLO=(LoadInteger(LY,(S5I),(117)))
call DisableTrigger(LY0)
if GetTriggerEvalCount(t)==1 then
call UnitAddAbility(W9O,WDO)
if WM[GetPlayerId(GetOwningPlayer(W9O))]==false then
call UnitRemoveType(W9O,UNIT_TYPE_PEON)
else
call UnitAddType(W9O,UNIT_TYPE_PEON)
endif
else
if WEO>0 then
set VK=CreateItem(WEO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p0,false)
call SetItemUserData(VK,1)
endif
if WWO>0 then
call SetItemCharges(VK,WWO)
endif
if WFO>0 then
set VK=CreateItem(WFO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p1,false)
call SetItemUserData(VK,1)
endif
if WXO>0 then
call SetItemCharges(VK,WXO)
endif
if WGO>0 then
set VK=CreateItem(WGO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p2,false)
call SetItemUserData(VK,1)
endif
if WYO>0 then
call SetItemCharges(VK,WYO)
endif
if WHO>0 then
set VK=CreateItem(WHO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p3,false)
call SetItemUserData(VK,1)
endif
if WJO>0 then
call SetItemCharges(VK,WJO)
endif
if WZO>0 then
set VK=CreateItem(WZO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p4,false)
call SetItemUserData(VK,1)
endif
if WKO>0 then
call SetItemCharges(VK,WKO)
endif
if WVO>0 then
set VK=CreateItem(WVO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p5,false)
call SetItemUserData(VK,1)
endif
if WLO>0 then
call SetItemCharges(VK,WLO)
endif
if WM[GetPlayerId(GetOwningPlayer(W9O))]==false then
call UnitRemoveType(W9O,UNIT_TYPE_PEON)
else
call UnitAddType(W9O,UNIT_TYPE_PEON)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call EnableTrigger(LY0)
set t=null
set W9O=null
set p0=null
set p1=null
set p2=null
set p3=null
set p4=null
set p5=null
return false
endfunction
function WMO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit WNO=(LoadUnitHandle(LY,(S5I),(2)))
local integer WSO=GetUnitTypeId(WNO)
local real x=GetUnitX(WNO)
local real y=GetUnitY(WNO)
local item WTO
local item WRO
local item WPO
local item WQO
local item WUO
local item X0O
local player p0
local player p1
local player p2
local player p3
local player p4
local player p5
local integer WEO
local integer WFO
local integer WGO
local integer WHO
local integer WZO
local integer WVO
local integer WWO=-1
local integer WXO=-1
local integer WYO=-1
local integer WJO=-1
local integer WKO=-1
local integer WLO=-1
local integer WDO
local item BA1
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if WNO==null or IC1(WNO)then
return false
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
set WTO=UnitItemInSlot(WNO,0)
set WRO=UnitItemInSlot(WNO,1)
set WPO=UnitItemInSlot(WNO,2)
set WQO=UnitItemInSlot(WNO,3)
set WUO=UnitItemInSlot(WNO,4)
set X0O=UnitItemInSlot(WNO,5)
set WEO=GetItemTypeId(WTO)
set WFO=GetItemTypeId(WRO)
set WGO=GetItemTypeId(WPO)
set WHO=GetItemTypeId(WQO)
set WZO=GetItemTypeId(WUO)
set WVO=GetItemTypeId(X0O)
set p0=GetItemPlayer(WTO)
set p1=GetItemPlayer(WRO)
set p2=GetItemPlayer(WPO)
set p3=GetItemPlayer(WQO)
set p4=GetItemPlayer(WUO)
set p5=GetItemPlayer(X0O)
set BA1=WTO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WWO=GetItemCharges(BA1)
endif
set BA1=WRO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WXO=GetItemCharges(BA1)
endif
set BA1=WPO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WYO=GetItemCharges(BA1)
endif
set BA1=WQO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WJO=GetItemCharges(BA1)
endif
set BA1=WUO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WKO=GetItemCharges(BA1)
endif
set BA1=X0O
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WLO=GetItemCharges(BA1)
endif
call EL1(WTO)
call EL1(WRO)
call EL1(WPO)
call EL1(WQO)
call EL1(WUO)
call EL1(X0O)
if WSO==1848651849 then
set WDO=1395667001
elseif WSO==1848652338 then
set WDO=1395667030
elseif WSO==1848652337 then
set WDO=1395667011
elseif WSO==1848652339 then
set WDO=1395667013
elseif WSO==1848652340 then
set WDO=1395667010
elseif WSO==1848652341 then
set WDO=1395667014
elseif WSO==1848658777 then
set WDO=1395667031
elseif WSO==1848658778 then
set WDO=1395667033
elseif WSO==1848658992 then
set WDO=1395667032
elseif WSO==1848658993 then
set WDO=1395667012
elseif WSO==1848659013 then
set WDO=1395667270
elseif WSO==1848659252 then
set WDO=1395667253
endif
if GetRandomInt(1,10)==1 then
set WDO=1395667015
endif
if GetRandomInt(1,10)<3 then
set WDO=1395667254
endif
if WSO==1848651853 then
set WDO=1395667020
elseif WSO==1848659027 then
set WDO=1395667020
elseif WSO==1848658006 then
set WDO=1395667014
endif
if WSO==1697657160 then
set WDO=1395667250
elseif WSO==1697657178 then
set WDO=1395667248
elseif WSO==1697657426 then
set WDO=1395667252
elseif WSO==1697657428 then
set WDO=1395667249
elseif WSO==1697657427 then
set WDO=1395667255
elseif WSO==1697657648 then
set WDO=1395667251
endif
call SavePlayerHandle(LY,(S5I),(118),(p0))
call SavePlayerHandle(LY,(S5I),(119),(p1))
call SavePlayerHandle(LY,(S5I),(120),(p2))
call SavePlayerHandle(LY,(S5I),(121),(p3))
call SavePlayerHandle(LY,(S5I),(122),(p4))
call SavePlayerHandle(LY,(S5I),(123),(p5))
call SaveInteger(LY,(S5I),(106),(WEO))
call SaveInteger(LY,(S5I),(107),(WFO))
call SaveInteger(LY,(S5I),(108),(WGO))
call SaveInteger(LY,(S5I),(109),(WHO))
call SaveInteger(LY,(S5I),(110),(WZO))
call SaveInteger(LY,(S5I),(111),(WVO))
call SaveInteger(LY,(S5I),(112),(WWO))
call SaveInteger(LY,(S5I),(113),(WXO))
call SaveInteger(LY,(S5I),(114),(WYO))
call SaveInteger(LY,(S5I),(115),(WJO))
call SaveInteger(LY,(S5I),(116),(WKO))
call SaveInteger(LY,(S5I),(117),(WLO))
call SaveUnitHandle(LY,(S5I),(124),(WNO))
call SaveInteger(LY,(S5I),(125),(WDO))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function WCO))
set t=null
set WNO=null
set WTO=null
set WRO=null
set WPO=null
set WQO=null
set WUO=null
set X0O=null
set p0=null
set p1=null
set p2=null
set p3=null
set p4=null
set p5=null
return false
endfunction
function XIO takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0.05,false)
call TriggerAddCondition(t,Condition(function WMO))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
set t=null
endfunction
function X1O takes nothing returns boolean
if GetSpellAbilityId()==1093685076 then
call XIO()
endif
return false
endfunction
function XOO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit W9O=(LoadUnitHandle(LY,(S5I),(124)))
local integer WDO=(LoadInteger(LY,(S5I),(125)))
local integer WEO=(LoadInteger(LY,(S5I),(106)))
local integer WFO=(LoadInteger(LY,(S5I),(107)))
local integer WGO=(LoadInteger(LY,(S5I),(108)))
local integer WHO=(LoadInteger(LY,(S5I),(109)))
local integer WZO=(LoadInteger(LY,(S5I),(110)))
local integer WVO=(LoadInteger(LY,(S5I),(111)))
local player p0=(LoadPlayerHandle(LY,(S5I),(118)))
local player p1=(LoadPlayerHandle(LY,(S5I),(119)))
local player p2=(LoadPlayerHandle(LY,(S5I),(120)))
local player p3=(LoadPlayerHandle(LY,(S5I),(121)))
local player p4=(LoadPlayerHandle(LY,(S5I),(122)))
local player p5=(LoadPlayerHandle(LY,(S5I),(123)))
local integer WWO=(LoadInteger(LY,(S5I),(112)))
local integer WXO=(LoadInteger(LY,(S5I),(113)))
local integer WYO=(LoadInteger(LY,(S5I),(114)))
local integer WJO=(LoadInteger(LY,(S5I),(115)))
local integer WKO=(LoadInteger(LY,(S5I),(116)))
local integer WLO=(LoadInteger(LY,(S5I),(117)))
call DisableTrigger(LY0)
if GetTriggerEvalCount(t)==1 then
call UnitAddAbility(W9O,WDO)
if WM[GetPlayerId(GetOwningPlayer(W9O))]==false then
call UnitRemoveType(W9O,UNIT_TYPE_PEON)
else
call UnitAddType(W9O,UNIT_TYPE_PEON)
endif
else
if WEO>0 then
set VK=CreateItem(WEO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p0,false)
call SetItemUserData(VK,1)
endif
if WWO>0 then
call SetItemCharges(VK,WWO)
endif
if WFO>0 then
set VK=CreateItem(WFO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p1,false)
call SetItemUserData(VK,1)
endif
if WXO>0 then
call SetItemCharges(VK,WXO)
endif
if WGO>0 then
set VK=CreateItem(WGO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p2,false)
call SetItemUserData(VK,1)
endif
if WYO>0 then
call SetItemCharges(VK,WYO)
endif
if WHO>0 then
set VK=CreateItem(WHO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p3,false)
call SetItemUserData(VK,1)
endif
if WJO>0 then
call SetItemCharges(VK,WJO)
endif
if WZO>0 then
set VK=CreateItem(WZO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p4,false)
call SetItemUserData(VK,1)
endif
if WKO>0 then
call SetItemCharges(VK,WKO)
endif
if WVO>0 then
set VK=CreateItem(WVO,GetUnitX(W9O),GetUnitY(W9O))
call UnitAddItem(W9O,VK)
call SetItemPlayer(VK,p5,false)
call SetItemUserData(VK,1)
endif
if WLO>0 then
call SetItemCharges(VK,WLO)
endif
if WM[GetPlayerId(GetOwningPlayer(W9O))]==false then
call UnitRemoveType(W9O,UNIT_TYPE_PEON)
else
call UnitAddType(W9O,UNIT_TYPE_PEON)
endif
call SetUnitFlyHeight(W9O,240,0)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
endif
call EnableTrigger(LY0)
set t=null
set W9O=null
set p0=null
set p1=null
set p2=null
set p3=null
set p4=null
set p5=null
return false
endfunction
function X2O takes unit WNO returns nothing
local integer WSO=GetUnitTypeId(WNO)
local real x=GetUnitX(WNO)
local real y=GetUnitY(WNO)
local item WTO
local item WRO
local item WPO
local item WQO
local item WUO
local item X0O
local player p0
local player p1
local player p2
local player p3
local player p4
local player p5
local integer WEO
local integer WFO
local integer WGO
local integer WHO
local integer WZO
local integer WVO
local integer WWO=-1
local integer WXO=-1
local integer WYO=-1
local integer WJO=-1
local integer WKO=-1
local integer WLO=-1
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local integer WDO
local item BA1
local integer i
local item X3O
set i=0
loop
exitwhen i>5
set X3O=UnitItemInSlot(WNO,i)
if EB1(X3O)==GZ0 then
call UnitRemoveItem(WNO,X3O)
endif
set i=i+1
endloop
set WTO=UnitItemInSlot(WNO,0)
set WRO=UnitItemInSlot(WNO,1)
set WPO=UnitItemInSlot(WNO,2)
set WQO=UnitItemInSlot(WNO,3)
set WUO=UnitItemInSlot(WNO,4)
set X0O=UnitItemInSlot(WNO,5)
set WEO=GetItemTypeId(WTO)
set WFO=GetItemTypeId(WRO)
set WGO=GetItemTypeId(WPO)
set WHO=GetItemTypeId(WQO)
set WZO=GetItemTypeId(WUO)
set WVO=GetItemTypeId(X0O)
set p0=GetItemPlayer(WTO)
set p1=GetItemPlayer(WRO)
set p2=GetItemPlayer(WPO)
set p3=GetItemPlayer(WQO)
set p4=GetItemPlayer(WUO)
set p5=GetItemPlayer(X0O)
set BA1=WTO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WWO=GetItemCharges(BA1)
endif
set BA1=WRO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WXO=GetItemCharges(BA1)
endif
set BA1=WPO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WYO=GetItemCharges(BA1)
endif
set BA1=WQO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WJO=GetItemCharges(BA1)
endif
set BA1=WUO
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WKO=GetItemCharges(BA1)
endif
set BA1=X0O
if GetItemType(BA1)==ITEM_TYPE_ARTIFACT or EV1(EB1(BA1))or EZ1(EB1(BA1))then
set WLO=GetItemCharges(BA1)
endif
call EL1(WTO)
call EL1(WRO)
call EL1(WPO)
call EL1(WQO)
call EL1(WUO)
call EL1(X0O)
if TII(GetOwningPlayer(WNO))then
set WDO=1395667017
else
set WDO=1395667018
endif
if GetRandomInt(1,3)==1 then
set WDO=1395667034
endif
call SavePlayerHandle(LY,(S5I),(118),(p0))
call SavePlayerHandle(LY,(S5I),(119),(p1))
call SavePlayerHandle(LY,(S5I),(120),(p2))
call SavePlayerHandle(LY,(S5I),(121),(p3))
call SavePlayerHandle(LY,(S5I),(122),(p4))
call SavePlayerHandle(LY,(S5I),(123),(p5))
call SaveInteger(LY,(S5I),(106),(WEO))
call SaveInteger(LY,(S5I),(107),(WFO))
call SaveInteger(LY,(S5I),(108),(WGO))
call SaveInteger(LY,(S5I),(109),(WHO))
call SaveInteger(LY,(S5I),(110),(WZO))
call SaveInteger(LY,(S5I),(111),(WVO))
call SaveInteger(LY,(S5I),(112),(WWO))
call SaveInteger(LY,(S5I),(113),(WXO))
call SaveInteger(LY,(S5I),(114),(WYO))
call SaveInteger(LY,(S5I),(115),(WJO))
call SaveInteger(LY,(S5I),(116),(WKO))
call SaveInteger(LY,(S5I),(117),(WLO))
call SaveUnitHandle(LY,(S5I),(124),(WNO))
call SaveInteger(LY,(S5I),(125),(WDO))
call TriggerRegisterTimerEvent(t,0.05,true)
call TriggerAddCondition(t,Condition(function XOO))
set t=null
set WNO=null
set WTO=null
set WRO=null
set WPO=null
set WQO=null
set WUO=null
set X0O=null
set p0=null
set p1=null
set p2=null
set p3=null
set p4=null
set p5=null
endfunction
function X4O takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local item X5O=U8I(P7I,FR0[YG0])
if X5O==null then
set X5O=U8I(P7I,FQ0[YG0])
endif
if X5O!=null then
call RemoveItem(X5O)
call X2O(P7I)
else
call PZI(GetOwningPlayer(P7I),GetObjectName(1848652369))
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set P7I=null
return false
endfunction
function X6O takes unit P7I returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call W4O(P7I)
call TriggerRegisterTimerEvent(t,0.05,false)
call TriggerAddCondition(t,Condition(function X4O))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
endfunction
function X7O takes nothing returns boolean
if GetSpellAbilityId()==1093683012 then
call X6O(GetTriggerUnit())
endif
return false
endfunction
function X8O takes nothing returns boolean
local unit SFI=GetTriggerUnit()
local item BA1=GetManipulatedItem()
local integer id=GetItemTypeId(BA1)
local integer i
if(id==FR0[ZC0]or id==FR0[ZK0])and IsUnitType(SFI,UNIT_TYPE_HERO)==true then
set MW0[GetPlayerId(GetOwningPlayer(SFI))]=GetItemX(BA1)
set MX0[GetPlayerId(GetOwningPlayer(SFI))]=GetItemY(BA1)
endif
call GOO(SFI,BA1)
call G2O(SFI,BA1)
if(GetItemTypeId(BA1)==FR0[WS0]or GetItemTypeId(BA1)==FR0[WT0])and RYI(SFI)then
call UnitRemoveItem(SFI,BA1)
elseif GetItemTypeId(BA1)==FR0[X10]and IsUnitType(SFI,UNIT_TYPE_HERO)==true then
set i=(LoadInteger(LY,(GetHandleId(SFI)),(750)))
if i>0 then
if(LoadBoolean(LY,(GetHandleId(SFI)),(751)))==false then
call SaveBoolean(LY,(GetHandleId(SFI)),(751),(true))
call SetItemCharges(BA1,i)
endif
endif
elseif GetItemTypeId(BA1)==FR0[VL0]and GetUnitTypeId(SFI)!=1848651852 and FX0==false then
set FW0=SFI
set FX0=true
call FL1("AegisOn",GetPlayerId(GetOwningPlayer(SFI)))
call QRI(bj_FORCE_ALL_PLAYERS,10.00,C0[GetPlayerId(GetOwningPlayer(SFI))]+GetUnitName(SFI)+"|r "+GetObjectName(1848657233))
elseif GetItemTypeId(BA1)==FR0[YG0]and RWI(SFI)then
call X6O(SFI)
elseif GetItemTypeId(BA1)==FR0[KL0]and GetUnitTypeId(SFI)==1164799855 then
call SetPlayerTechResearched(GetOwningPlayer(SFI),1378889802,1)
elseif GetItemTypeId(BA1)==FR0[KS0]and GetUnitTypeId(SFI)==1211117641 then
set GK=SFI
call ExecuteFunc("X9O")
elseif GetItemTypeId(BA1)==FR0[JK0]and GetUnitTypeId(SFI)==1160786738 then
set GK=SFI
call ExecuteFunc("XAO")
elseif GetItemTypeId(BA1)==FR0[L70]and GetUnitTypeId(SFI)==1214344551 then
set GK=SFI
call ExecuteFunc("XBO")
elseif GetItemTypeId(BA1)==FR0[L80]and GetUnitTypeId(SFI)==1311788373 then
set GK=SFI
call ExecuteFunc("XCO")
elseif GetItemTypeId(BA1)==FR0[KJ0]and GetUnitTypeId(SFI)==1432580716 then
call UnitAddAbility(SFI,1093815106)
call UnitRemoveAbility(SFI,1093815106)
call AddUnitAnimationProperties(SFI,"upgrade",true)
call SetPlayerTechResearched(GetOwningPlayer(SFI),1378889803,1)
endif
set SFI=null
set BA1=null
return false
endfunction
function XEO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
if GetSpellAbilityId()==1097163124 then
call SaveInteger(LY,(S5I),(34),(16))
endif
elseif IC1(P7I)or GetTriggerEventId()==EVENT_UNIT_DEATH or NPI==0 then
call UnitRemoveAbility(P7I,1093685334)
call UnitRemoveAbility(P7I,1110456140)
call SaveInteger(LY,(GetHandleId((P7I))),((4255)),(2))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SetUnitState(P7I,UNIT_STATE_LIFE,GetUnitState(P7I,UNIT_STATE_LIFE)+115/16)
call SaveInteger(LY,(S5I),(34),(NPI-1))
endif
return false
endfunction
function XFO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call SaveInteger(LY,(GetHandleId((P7I))),((4255)),(1))
call IA1(P7I,1093685334)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(34),(16))
call TriggerRegisterTimerEvent(t,1,true)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_DEATH)
call TriggerRegisterUnitEvent(t,P7I,EVENT_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function XEO))
call TriggerEvaluate(t)
set P7I=null
set t=null
endfunction
function Tango_AddSingleTango takes nothing returns nothing
call UnitAddItemById(GetSpellTargetUnit(),1227903286)
endfunction
function XGO takes nothing returns nothing
if GetSpellAbilityId()==1097163124 or GetSpellAbilityId()==1093817927 then
if((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4255))))==1)==false and GetSpellTargetDestructable()!=null then
call XFO()
elseif GetSpellTargetUnit()!=null then
call UnitAddItemById(GetSpellTargetUnit(),1227903286)
endif
endif
endfunction
function XHO takes integer id,real x,real y returns nothing
if IsPointInRegion(MT0,x,y)==false then
set MM0=MM0+1
set MY0[MM0]=Player(id)
set MJ0[MM0]=x
set MK0[MM0]=y
set ML0[MM0]=(TimerGetElapsed(M))
endif
endfunction
function XZO takes integer id,real x,real y returns integer
local real GW1=(TimerGetElapsed(M))
local integer i=0
local integer NPI=0
if IsPointInRegion(MT0,x,y)==true then
return NPI
endif
loop
exitwhen i>MM0
if(GW1<ML0[i]+MN0)and(QNI(x,y,MJ0[i],MK0[i])<MS0*2+50)and IsPlayerAlly(Player(id),MY0[i])==true then
set NPI=NPI+1
endif
set i=i+1
endloop
return NPI
endfunction
function XVO takes integer MLI returns integer
if MLI==GetPlayerId(BO[1])then
return 1747993161
elseif MLI==GetPlayerId(BO[2])then
return 1747993163
elseif MLI==GetPlayerId(BO[3])then
return 1747993159
elseif MLI==GetPlayerId(BO[4])then
return 1747993158
elseif MLI==GetPlayerId(BO[5])then
return 1747993164
elseif MLI==GetPlayerId(CO[1])then
return 1747993160
elseif MLI==GetPlayerId(CO[2])then
return 1747993162
elseif MLI==GetPlayerId(CO[3])then
return 1747993165
elseif MLI==GetPlayerId(CO[4])then
return 1747992885
elseif MLI==GetPlayerId(CO[5])then
return 1747993166
endif
return 1747993166
endfunction
function XWO takes integer MLI returns integer
return 1747992920
endfunction
function XXO takes integer MLI returns string
if MLI==GetPlayerId(BO[1])then
return"war3mapImported\\TeleportTarget_Blue.mdx"
elseif MLI==GetPlayerId(BO[2])then
return"war3mapImported\\TeleportTarget_Teal.mdx"
elseif MLI==GetPlayerId(BO[3])then
return"war3mapImported\\TeleportTarget_Purple.mdx"
elseif MLI==GetPlayerId(BO[4])then
return"war3mapImported\\TeleportTarget_Yellow.mdx"
elseif MLI==GetPlayerId(BO[5])then
return"war3mapImported\\TeleportTarget_Orange.mdx"
elseif MLI==GetPlayerId(CO[1])then
return"war3mapImported\\TeleportTarget_Pink.mdx"
elseif MLI==GetPlayerId(CO[2])then
return"war3mapImported\\TeleportTarget_Gray.mdx"
elseif MLI==GetPlayerId(CO[3])then
return"war3mapImported\\TeleportTarget_LightBlue.mdx"
elseif MLI==GetPlayerId(CO[4])then
return"war3mapImported\\TeleportTarget_DarkGreen.mdx"
elseif MLI==GetPlayerId(CO[5])then
return"war3mapImported\\TeleportTarget_Brown.mdx"
endif
return"Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl"
endfunction
function XYO takes integer MLI returns string
return"Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl"
endfunction
function XJO takes nothing returns boolean
local real d
if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0 and GetUnitAbilityLevel(GetFilterUnit(),1098085732)==0 and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(HK))==true and GetUnitTypeId(GetFilterUnit())!=1966092371 and GetUnitTypeId(GetFilterUnit())!=1852010352 and GetUnitTypeId(GetFilterUnit())!=1701670775 and GetUnitTypeId(GetFilterUnit())!=1970956647 and IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false then
set d=QNI(BK,CK,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
if d<AK then
set AK=d
set GK=GetFilterUnit()
endif
endif
return false
endfunction
function XKO takes unit SWI,real x,real y returns unit
local group g=NTI()
set GK=null
set HK=SWI
set AK=99999
set BK=x
set CK=y
call GroupEnumUnitsInRange(g,x,y,99999,Condition(function XJO))
call NSI(g)
set g=null
return GK
endfunction
function XLO takes unit u returns boolean
local integer id=GetUnitTypeId(u)
return id==1848657480 or id==1848657462 or id==1848657481 or id==1848657482
endfunction
function XMO takes unit u returns boolean
local integer id=GetUnitTypeId(u)
return id==1966092370 or id==1970107511 or id==1697657398 or id==1700946284
endfunction
function XNO takes nothing returns boolean
local real d
if(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 or XMO(GetFilterUnit())or GetUnitTypeId(GetFilterUnit())==1852206952 or GetUnitTypeId(GetFilterUnit())==1852073580 or XLO(GetFilterUnit()))and IC1(GetFilterUnit())==false and GetUnitAbilityLevel(GetFilterUnit(),1098085732)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(HK))==true and GetOwningPlayer(GetFilterUnit())!=EO and IsUnitIllusion(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false and GetUnitTypeId(GetFilterUnit())!=1848657461 then
set d=QNI(BK,CK,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
if d<AK then
set AK=d
set GK=GetFilterUnit()
endif
endif
return false
endfunction
function XSO takes nothing returns boolean
local real d
if(GetUnitAbilityLevel(GetFilterUnit(),1093678162)==0 or XMO(GetFilterUnit())or GetUnitTypeId(GetFilterUnit())==1852206952 or GetUnitTypeId(GetFilterUnit())==1852073580 or XLO(GetFilterUnit()))and IC1(GetFilterUnit())==false and GetUnitAbilityLevel(GetFilterUnit(),1098085732)==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(HK))==true and GetOwningPlayer(GetFilterUnit())!=EO and IsUnitIllusion(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false and GetUnitTypeId(GetFilterUnit())!=1848657461 then
set d=QNI(BK,CK,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
if d<AK and d<325 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true then
set AK=d
set GK=GetFilterUnit()
endif
endif
return false
endfunction
function XTO takes unit SWI,real x,real y returns unit
local group g=NTI()
set GK=null
set HK=SWI
set AK=99999
set BK=x
set CK=y
call GroupEnumUnitsInRange(g,x,y,99999,Condition(function XSO))
if GK==null then
call GroupEnumUnitsInRange(g,x,y,99999,Condition(function XNO))
endif
call NSI(g)
set g=null
return GK
endfunction
function XRO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit XPO=(LoadUnitHandle(LY,(S5I),(448)))
local unit XQO=(LoadUnitHandle(LY,(S5I),(447)))
local ubersplat AR1=(LoadUbersplatHandle(LY,(S5I),(131)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real DC1=(LoadReal(LY,(S5I),(57)))
local real GW1=(LoadReal(LY,(S5I),(442)))
local integer id=GetPlayerId(GetOwningPlayer(SFI))
local boolean XUO=false
local integer i=0
local integer EY1
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
if GetSpellAbilityId()==1093751349 then
set XUO=true
endif
else
set NPI=NPI+1
call SaveInteger(LY,(S5I),(34),(NPI))
if NPI==1 then
if DC1>3 then
call SetUnitAnimationByIndex(XPO,1)
call SetUnitAnimationByIndex(XQO,1)
endif
elseif NPI==2 then
set XUO=true
else
endif
endif
if XUO then
call SaveInteger(LY,(GetHandleId((SFI))),((4256)),(2))
call KillUnit(XPO)
call KillUnit(XQO)
call DestroyUbersplat(AR1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
if NPI==2 then
call DestroyEffect(AddSpecialEffect(XYO(id),GetUnitX(SFI),GetUnitY(SFI)))
call DestroyEffect(AddSpecialEffect(XXO(id),x,y))
call SetUnitX(SFI,x)
call SetUnitY(SFI,y)
call PauseUnit(SFI,true)
call PauseUnit(SFI,false)
call UPI(x,y,240)
set GK=SFI
call ExecuteFunc("Y0O")
endif
endif
set t=null
set SFI=null
set XPO=null
set XQO=null
set AR1=null
return false
endfunction
function YIO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
local real x=(LoadReal(LY,(S5I),(6)))
local real y=(LoadReal(LY,(S5I),(7)))
local unit XPO=(LoadUnitHandle(LY,(S5I),(448)))
local unit XQO=(LoadUnitHandle(LY,(S5I),(447)))
local ubersplat AR1=(LoadUbersplatHandle(LY,(S5I),(131)))
local integer NPI=(LoadInteger(LY,(S5I),(34)))
local real DC1=(LoadReal(LY,(S5I),(57)))
local real GW1=(LoadReal(LY,(S5I),(442)))
local integer id=GetPlayerId(GetOwningPlayer(SFI))
local boolean XUO=false
local integer i=0
local integer EY1
if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
if GetSpellAbilityId()==1093808945 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call SaveInteger(LY,(GetHandleId((SFI))),((4256)),(2))
call KillUnit(XPO)
call KillUnit(XQO)
call DestroyUbersplat(AR1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveType(P8I,UNIT_TYPE_PEON)
endif
elseif GetTriggerEventId()==EVENT_UNIT_DEATH then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call UnitRemoveType(P8I,UNIT_TYPE_PEON)
call SaveInteger(LY,(GetHandleId((SFI))),((4256)),(2))
call KillUnit(XPO)
call KillUnit(XQO)
call DestroyUbersplat(AR1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call DestroyEffect((LoadEffectHandle(LY,(S5I),(175))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(176))))
call DestroyEffect((LoadEffectHandle(LY,(S5I),(177))))
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",GetUnitX(SFI),GetUnitY(SFI)))
call SaveInteger(LY,(GetHandleId((SFI))),((4256)),(2))
call KillUnit(XPO)
call KillUnit(XQO)
call DestroyUbersplat(AR1)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
call UnitRemoveType(P8I,UNIT_TYPE_PEON)
call UPI(GetUnitX(P8I)-1,GetUnitY(P8I)-1,240)
call SetUnitX(SFI,GetUnitX(P8I)-1)
call SetUnitY(SFI,GetUnitY(P8I)-1)
call PauseUnit(SFI,true)
call PauseUnit(SFI,false)
set GK=SFI
call ExecuteFunc("Y0O")
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",GetUnitX(SFI),GetUnitY(SFI)))
endif
set t=null
set SFI=null
set XPO=null
set XQO=null
set AR1=null
set P8I=null
return false
endfunction
function Y1O takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local location l
local real x
local real y
local real a
local trigger t
local integer S5I
local unit XPO
local unit XQO
local ubersplat AR1
local integer id=GetPlayerId(GetOwningPlayer(SFI))
local integer NPI
local real YOO
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveInteger(LY,(GetHandleId((SFI))),((4256)),(1))
if P8I==null then
set l=GetSpellTargetLoc()
set x=GetLocationX(l)
set y=GetLocationY(l)
if x==MW0[id]and y==MX0[id]then
if TII(GetOwningPlayer(SFI))then
set x=GetUnitX(PQ)
set y=GetUnitY(PQ)
else
set x=GetUnitX(BX0)
set y=GetUnitY(BX0)
endif
endif
set P8I=XKO(SFI,x,y)
call RemoveLocation(l)
else
set x=GetUnitX(P8I)
set y=GetUnitY(P8I)
endif
if QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))>MS0 then
set a=Atan2(y-GetUnitY(P8I),x-GetUnitX(P8I))
set x=GetUnitX(P8I)+MS0*Cos(a)
set y=GetUnitY(P8I)+MS0*Sin(a)
elseif QNI(x,y,GetUnitX(P8I),GetUnitY(P8I))<50 then
set a=Atan2(y-GetUnitY(P8I),x-GetUnitX(P8I))
set x=GetUnitX(P8I)+120*Cos(a)
set y=GetUnitY(P8I)+120*Sin(a)
endif
if IsPointInRegion(LN,x,y)==true then
set a=Atan2(y-GetUnitY(P8I),x-GetUnitX(P8I))
set x=GetUnitX(P8I)+200*Cos(a)
set y=GetUnitY(P8I)+200*Sin(a)
endif
set x=PTI(x)
set y=PUI(y)
if(IsUnitAlly(SFI,GetLocalPlayer())and GetLocalPlayer()!=GetOwningPlayer(SFI))or(C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70))then
call PingMinimapEx(x,y,3,255,255,255,false)
endif
set XQO=CreateUnit(GetOwningPlayer(SFI),XVO(id),x,y,0)
set XPO=CreateUnit(GetOwningPlayer(SFI),XWO(id),GetUnitX(SFI),GetUnitY(SFI),0)
set AR1=CreateUbersplat(GetUnitX(SFI),GetUnitY(SFI),"SCTP",255,255,255,255,false,false)
if IsUnitVisible(SFI,GetLocalPlayer())==true then
call SetUbersplatRenderAlways(AR1,true)
else
call SetUbersplatRenderAlways(AR1,false)
endif
set NPI=XZO(GetPlayerId(GetOwningPlayer(SFI)),x,y)
set YOO=3
if NPI>0 then
set YOO=4.5+0.5*NPI
endif
call XHO(GetPlayerId(GetOwningPlayer(SFI)),x,y)
if NPI>0 then
call SetUnitAnimationByIndex(XPO,2)
call SetUnitAnimationByIndex(XQO,2)
endif
call TriggerRegisterTimerEvent(t,YOO-3,false)
call TriggerRegisterTimerEvent(t,YOO,false)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_ENDCAST)
call TriggerAddCondition(t,Condition(function XRO))
call I41(GetOwningPlayer(SFI),YOO,x,y,200)
call SaveUnitHandle(LY,(S5I),(447),(XQO))
call SaveUnitHandle(LY,(S5I),(448),(XPO))
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M)))*1.0))
call SaveReal(LY,(S5I),(57),((YOO)*1.0))
call SaveUbersplatHandle(LY,(S5I),(131),(AR1))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveInteger(LY,(S5I),(34),(0))
call AI1(SFI,XF,x,y,2400)
set SFI=null
set P8I=null
set XPO=null
set XQO=null
set l=null
set t=null
set AR1=null
endfunction
function Y2O takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local location l
local real x
local real y
local real a
local trigger t
local integer S5I
local unit XPO
local unit XQO
local ubersplat AR1
local integer id=GetPlayerId(GetOwningPlayer(SFI))
local integer NPI
local real YOO
set t=CreateTrigger()
set S5I=GetHandleId(t)
if P8I==null then
set l=GetSpellTargetLoc()
set x=GetLocationX(l)
set y=GetLocationY(l)
if x==MW0[id]and y==MX0[id]then
if TII(GetOwningPlayer(SFI))then
set x=GetUnitX(PQ)
set y=GetUnitY(PQ)
else
set x=GetUnitX(BX0)
set y=GetUnitY(BX0)
endif
endif
set P8I=XTO(SFI,x,y)
call RemoveLocation(l)
endif
call SaveInteger(LY,(GetHandleId((SFI))),((4256)),(1))
set x=GetUnitX(P8I)
set y=GetUnitY(P8I)
if(IsUnitAlly(SFI,GetLocalPlayer())and GetLocalPlayer()!=GetOwningPlayer(SFI))or(C2 and(GetLocalPlayer()==D60 or GetLocalPlayer()==D70))then
call PingMinimapEx(x,y,3,255,255,255,false)
endif
set AR1=CreateUbersplat(GetUnitX(SFI),GetUnitY(SFI),"SCTP",255,255,255,255,false,false)
if IsUnitVisible(SFI,GetLocalPlayer())==true then
call SetUbersplatRenderAlways(AR1,true)
else
call SetUbersplatRenderAlways(AR1,false)
endif
set YOO=3
call UnitAddType(P8I,UNIT_TYPE_PEON)
call TriggerRegisterTimerEvent(t,YOO,false)
call TriggerRegisterUnitEvent(t,SFI,EVENT_UNIT_SPELL_ENDCAST)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function YIO))
call I41(GetOwningPlayer(SFI),YOO,x,y,200)
call SaveReal(LY,(S5I),(6),((x)*1.0))
call SaveReal(LY,(S5I),(7),((y)*1.0))
call SaveReal(LY,(S5I),(442),(((TimerGetElapsed(M)))*1.0))
call SaveReal(LY,(S5I),(57),((YOO)*1.0))
call SaveUbersplatHandle(LY,(S5I),(131),(AR1))
call SaveUnitHandle(LY,(S5I),(14),(SFI))
call SaveUnitHandle(LY,(S5I),(17),(P8I))
call SaveInteger(LY,(S5I),(34),(0))
call SaveEffectHandle(LY,(S5I),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",SFI,"origin")))
call SaveEffectHandle(LY,(S5I),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl",SFI,"origin")))
call SaveEffectHandle(LY,(S5I),(177),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",P8I,"origin")))
call AI1(SFI,XF,x,y,2400)
set SFI=null
set P8I=null
set XPO=null
set XQO=null
set l=null
set t=null
set AR1=null
endfunction
function Y3O takes nothing returns nothing
if GetSpellAbilityId()==1093751349 and RYI(GetTriggerUnit())==false then
call Y1O()
endif
if GetSpellAbilityId()==1093808945 then
call Y2O()
endif
endfunction
function Y4O takes nothing returns nothing
if MR0==(LoadInteger(LY,(GetHandleId(GetEnumUnit())),(784)))then
call KillUnit(GetEnumUnit())
endif
endfunction
function Y5O takes unit u returns boolean
local integer i=GetUnitTypeId(u)
return i==1848651848 or i==1848651847 or i==1848651851 or i==1848651850 or i==1848651841 or i==1848651830
endfunction
function Y6O takes nothing returns boolean
return Y5O(GetFilterUnit())
endfunction
function Y7O takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit Y8O
local unit Y9O
local integer YAO
local integer YBO
local group g=NTI()
local real a=GetUnitFacing(P7I)*bj_DEGTORAD
local real x1=GetUnitX(P7I)+50*Cos(a)
local real y1=GetUnitY(P7I)+50*Sin(a)
local real x2=GetUnitX(P7I)+50*Cos(a)
local real y2=GetUnitY(P7I)+50*Sin(a)
if GetSpellAbilityId()==1093683266 then
set YAO=1848651848
set YBO=1848651850
elseif GetSpellAbilityId()==1093682227 then
set YAO=1848651847
set YBO=1848651841
elseif GetSpellAbilityId()==1093682246 then
set YAO=1848651851
set YBO=1848651830
endif
set MR0=GetUnitTypeId(P7I)
call GroupEnumUnitsOfPlayer(g,GetOwningPlayer(GetTriggerUnit()),Condition(function Y6O))
call ForGroup(g,function Y4O)
call NSI(g)
set Y8O=CreateUnit(GetOwningPlayer(P7I),YAO,x1,y1,GetUnitFacing(P7I))
call SaveInteger(LY,(GetHandleId(Y8O)),(784),(MR0))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",Y8O,"origin"))
call UnitApplyTimedLife(Y8O,1112820806,40)
set Y9O=CreateUnit(GetOwningPlayer(P7I),YBO,x2,y2,GetUnitFacing(P7I))
call SaveInteger(LY,(GetHandleId(Y9O)),(784),(MR0))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",Y9O,"origin"))
call UnitApplyTimedLife(Y9O,1112820806,40)
set g=null
set Y8O=null
set Y9O=null
set P7I=null
endfunction
function YCO takes nothing returns nothing
if GetSpellAbilityId()==1093683266 or GetSpellAbilityId()==1093682227 or GetSpellAbilityId()==1093682246 then
call Y7O()
endif
endfunction
function YDO takes nothing returns nothing
if GetSpellAbilityId()==1093748304 then
call U5I("Abilities\\Spells\\Items\\VampiricPotion\\VampPotionCaster.mdl",GetTriggerUnit(),"origin",3.5)
call AH1(GetTriggerUnit(),1093747534,1,3.5)
endif
endfunction
function YEO takes nothing returns boolean
return((LoadInteger(LY,(GetHandleId((GetFilterUnit()))),((4323))))==1)
endfunction
function YFO takes nothing returns nothing
local group g
local unit u
if GetSpellAbilityId()==1093817908 and Y5O(GetSpellTargetUnit())==false then
set g=NTI()
call GroupEnumUnitsOfPlayer(g,GetOwningPlayer(GetTriggerUnit()),Condition(function YEO))
set u=FirstOfGroup(g)
call NSI(g)
if u!=null then
call KillUnit(u)
endif
call SetUnitOwner(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()),true)
call SaveInteger(LY,(GetHandleId((GetSpellTargetUnit()))),((4323)),(1))
call UnitAddAbility(GetSpellTargetUnit(),1097167976)
call UnitAddAbility(GetSpellTargetUnit(),1094939243)
call IA1(GetSpellTargetUnit(),1093818692)
call QSI(GetSpellTargetUnit())
endif
endfunction
function YGO takes integer i returns integer
if i==MP0 then
return N20
endif
if i==MQ0 then
return N30
endif
if i==MU0 then
return N40
endif
if i==N00 then
return N50
endif
if i==NI0 then
return N60
endif
if i==N10 then
return N70
endif
if i==NO0 then
return N80
endif
return 0
endfunction
function YHO takes integer i returns integer
if i==MP0 then
return 10
endif
if i==MQ0 then
return 9
endif
if i==MU0 then
return 8
endif
if i==N00 then
return 7
endif
if i==NI0 then
return 6
endif
if i==N10 then
return 5
endif
if i==NO0 then
return 4
endif
return 0
endfunction
function YZO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit SFI=(LoadUnitHandle(LY,(S5I),(14)))
if IC1(SFI)==false and SFI!=null then
call SetUnitScale(SFI,SMI(SFI)*OAI,SMI(SFI)*OAI,SMI(SFI)*OAI)
endif
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set SFI=null
return false
endfunction
function YVO takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local unit I01=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
local trigger t=CreateTrigger()
local real DC1=YHO(GetSpellAbilityId())
call O21(SFI,N90,DC1)
call UnitMakeAbilityPermanent(SFI,true,N90)
call SetPlayerAbilityAvailable(GetOwningPlayer(SFI),N90,false)
call UnitAddAbility(I01,YGO(GetSpellAbilityId()))
call IssueTargetOrder(I01,"antimagicshell",SFI)
call DU1(SFI,0,0)
call UnitRemoveAbility(SFI,1112044643)
call UnitRemoveAbility(SFI,1110454869)
if RYI(SFI)then
call O01(SFI,DC1,3)
else
call O01(SFI,DC1,1.4)
endif
call TriggerRegisterTimerEvent(t,DC1+7,false)
call TriggerAddCondition(t,Condition(function YZO))
call SaveUnitHandle(LY,(GetHandleId(t)),(14),(SFI))
set t=null
set SFI=null
set I01=null
endfunction
function YWO takes nothing returns nothing
if YGO(GetSpellAbilityId())>0 then
call YVO()
endif
endfunction
function YXO takes nothing returns nothing
if((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((4258))))==1)==true then
call PZI(GetOwningPlayer(GetEnumUnit()),GetObjectName(1848652365)+" "+GetUnitName(GetEnumUnit())+" "+GetObjectName(1848652371))
else
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
call SCI(GetEnumUnit(),4258,25)
endif
call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+250)
endif
endfunction
function YYO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),775,Condition(function CS1))
call ForGroup(g,function YXO)
call NSI(g)
set P7I=null
set g=null
endfunction
function YJO takes nothing returns nothing
if GetSpellAbilityId()==1093681995 then
call YYO()
endif
endfunction
function YKO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
call UnitRemoveAbility(P7I,1093873985)
call UnitRemoveAbility(P7I,1093818698)
call UnitRemoveAbility(P7I,1093818696)
call S0I(t)
call FlushChildHashtable(LY,(S5I))
set t=null
set P7I=null
return false
endfunction
function YLO takes nothing returns nothing
local trigger t
local integer S5I
if((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((4346))))==1)==true then
call PZI(GetOwningPlayer(GetEnumUnit()),GetObjectName(1848659537)+" "+GetUnitName(GetEnumUnit()))
else
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
call SCI(GetEnumUnit(),4346,70)
endif
set t=CreateTrigger()
set S5I=GetHandleId(t)
call IA1(GetEnumUnit(),1093873985)
call IA1(GetEnumUnit(),1093818698)
call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),1093873985,false)
call IA1(GetEnumUnit(),1093818696)
call TriggerRegisterTimerEvent(t,10,false)
call TriggerRegisterDeathEvent(t,GetEnumUnit())
call TriggerAddCondition(t,Condition(function YKO))
call SaveUnitHandle(LY,(S5I),(2),(GetEnumUnit()))
set t=null
endif
endfunction
function YMO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
call PlaySoundOnUnitBJ(BG,100,P7I)
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),775,Condition(function CS1))
call ForGroup(g,function YLO)
call NSI(g)
set P7I=null
set g=null
endfunction
function YNO takes nothing returns nothing
if GetSpellAbilityId()==1093818695 then
call YMO()
endif
endfunction
function YSO takes nothing returns nothing
if((LoadInteger(LY,(GetHandleId((GetEnumUnit()))),((4278))))==1)==true then
call PZI(GetOwningPlayer(GetEnumUnit()),GetObjectName(1848652365))
else
if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
call SCI(GetEnumUnit(),4278,50)
endif
if GetUnitAbilityLevel(GetEnumUnit(),1110458964)==0 and GetUnitAbilityLevel(GetEnumUnit(),1110458965)==0 then
call IssueTargetOrder(NA0,"antimagicshell",GetEnumUnit())
endif
endif
endfunction
function YTO takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local group g=NTI()
set NA0=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(P7I),GetUnitY(P7I),0)
call UnitAddAbility(NA0,1093748054)
call GroupEnumUnitsInRange(g,GetUnitX(P7I),GetUnitY(P7I),925,Condition(function CP1))
call ForGroup(g,function YSO)
call NSI(g)
set P7I=null
set g=null
endfunction
function YRO takes nothing returns nothing
if GetSpellAbilityId()==1093748055 then
call YTO()
endif
endfunction
function YPO takes nothing returns nothing
if GetSpellAbilityId()==1093677655 then
call UnitResetCooldown(GetTriggerUnit())
endif
endfunction
function YQO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local integer PCI=(LoadInteger(LY,(S5I),(30)))
local unit P8I=NYI(PCI)
local real PAI=(LoadReal(LY,(S5I),(20)))
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or GetUnitAbilityLevel(GetTriggerUnit(),1110455089)==0 then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call NXI(PCI)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set JJI=true
call P6I(P7I,P8I,1,PAI)
set JJI=false
if PAI>0 then
call UYI("+"+I2S(R2I(PAI)),1,P8I,0.023,255,0,0,216)
endif
elseif GetEventDamage()>1 then
call SaveReal(LY,(S5I),(20),((PAI+GetEventDamage()*0.3)*1.0))
endif
set t=null
set P7I=null
set P8I=null
return false
endfunction
function YUO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit P8I=(LoadUnitHandle(LY,(S5I),(17)))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=CreateTrigger()
set S5I=GetHandleId(t)
call SaveUnitHandle(LY,(S5I),(2),(P7I))
call SaveInteger(LY,(S5I),(30),(NKI(P8I)))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Silence\\SilenceTarget.mdl",P8I,"overhead")))
call SaveReal(LY,(S5I),(20),((0)*1.0))
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerRegisterTimerEvent(t,5,false)
call TriggerAddCondition(t,Condition(function YQO))
set t=null
return false
endfunction
function J0O takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
call TriggerRegisterTimerEvent(t,0,false)
call TriggerAddCondition(t,Condition(function YUO))
call SaveUnitHandle(LY,(S5I),(17),(GetSpellTargetUnit()))
call SaveUnitHandle(LY,(S5I),(2),(GetTriggerUnit()))
set t=null
endfunction
function JIO takes nothing returns nothing
if GetSpellAbilityId()==1093682756 and NNI(GetSpellTargetUnit())==false then
call J0O()
endif
endfunction
function J1O takes unit u,real d returns boolean
if IsUnitType(u,UNIT_TYPE_HERO)or GetUnitAbilityLevel(u,1093678162)>0 then
return d>5
endif
return true
endfunction
function JOO takes nothing returns nothing
local unit I01
if NC0>0 then
set NC0=NC0-1
set I01=CreateUnit(GetOwningPlayer(NB0),1697656901,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
call UnitAddAbility(I01,1093684022)
call IssueTargetOrder(I01,"forkedlightning",GetEnumUnit())
endif
set I01=null
endfunction
function J2O takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit I01
local unit P7I
local group g
if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
call SCI(GetTriggerUnit(),4257,1)
set P7I=(LoadUnitHandle(LY,(S5I),(2)))
set I01=CreateUnit(GetOwningPlayer(P7I),1697656901,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
call UnitAddAbility(I01,1093684022)
set NB0=P7I
set GK=P7I
set g=NTI()
call GroupEnumUnitsInRange(g,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),925,Condition(function CA1))
set NC0=5
if QLI(GetTriggerUnit(),GetEventDamageSource())<900 then
set NC0=NC0-1
call IssueTargetOrder(I01,"forkedlightning",GetEventDamageSource())
endif
call GroupRemoveUnit(g,GetEventDamageSource())
call ForGroup(g,function JOO)
call NSI(g)
endif
set t=null
set g=null
set I01=null
set P7I=null
endfunction
function J3O takes nothing returns boolean
if(GetTriggerEventId()==EVENT_UNIT_DAMAGED and J1O(GetEventDamageSource(),GetEventDamage())and GetRandomInt(1,100)<21 and((LoadInteger(LY,(GetHandleId((GetTriggerUnit()))),((4257))))==1)==false)or GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
call J2O()
endif
return false
endfunction
function J4O takes nothing returns nothing
local unit P7I=GetTriggerUnit()
local unit P8I=GetSpellTargetUnit()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
if P8I==null then
set P8I=P7I
endif
call SCI(P8I,4279,15)
call TriggerRegisterTimerEvent(t,15,false)
call TriggerRegisterUnitEvent(t,P8I,EVENT_UNIT_DAMAGED)
call TriggerAddCondition(t,Condition(function J3O))
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl",P8I,"origin")))
call SaveUnitHandle(LY,(S5I),(2),(P7I))
set t=null
set P7I=null
set P8I=null
endfunction
function J5O takes nothing returns nothing
if GetSpellAbilityId()==1093683788 and((LoadInteger(LY,(GetHandleId((GetSpellTargetUnit()))),((4279))))==1)==false then
call J4O()
endif
endfunction
function J6O takes nothing returns nothing
local unit J7O=GetTriggerUnit()
local item X5O=U8I(J7O,FR0[YG0])
if X5O==null then
set X5O=U8I(J7O,FQ0[YG0])
endif
if X5O!=null then
call EL1(X5O)
call UnitRemoveAbility(J7O,1093686866)
call UnitAddAbility(J7O,1093686869)
call SetUnitState(J7O,UNIT_STATE_MANA,400)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIem\\AIemTarget.mdl",J7O,"origin"))
else
call PZI(GetOwningPlayer(J7O),GetObjectName(1848652369))
endif
set J7O=null
endfunction
function J8O takes nothing returns nothing
if GetSpellAbilityId()==1093686866 then
call J6O()
endif
endfunction
function J9O takes nothing returns nothing
local unit P8I=GetEnumUnit()
local group JAO=ND0
local unit P7I=NE0
if IsUnitInGroup(P8I,JAO)==false then
call GroupAddUnit(JAO,P8I)
call IssueTargetOrder(NF0,"slow",P8I)
set JJI=true
call P6I(P7I,P8I,1,200)
set JJI=false
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl",P8I,"origin"))
endif
set P8I=null
set JAO=null
set P7I=null
endfunction
function JBO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit P7I=(LoadUnitHandle(LY,(S5I),(2)))
local unit I01=(LoadUnitHandle(LY,(S5I),(19)))
local group JAO=(LoadGroupHandle(LY,(S5I),(133)))
local real d
local real x
local real x0=GetUnitX(P7I)
local real y
local real y0=GetUnitY(P7I)
local group g=NTI()
local integer NPI=GetTriggerEvalCount(t)
local integer i
call SetUnitX(I01,GetUnitX(P7I))
call SetUnitY(I01,GetUnitY(P7I))
set ND0=JAO
set NE0=P7I
set NF0=(LoadUnitHandle(LY,(S5I),(132)))
if GetTriggerEvalCount(t)>37 then
call KillUnit(I01)
call NSI(JAO)
call FlushChildHashtable(LY,(S5I))
call S0I(t)
else
set d=NPI*21
set i=0
loop
exitwhen i>36
set x=x0+d*Cos(360*i/36*bj_DEGTORAD)
set y=y0+d*Sin(360*i/36*bj_DEGTORAD)
set GK=P7I
call GroupEnumUnitsInRange(g,x,y,150,Condition(function C81))
call ForGroup(g,function J9O)
set i=i+1
endloop
endif
call NSI(g)
set t=null
set I01=null
set JAO=null
set P7I=null
set g=null
return false
endfunction
function JCO takes nothing returns nothing
local unit SFI=GetTriggerUnit()
local real x=GetUnitX(SFI)
local real y=GetUnitY(SFI)
local group JAO=NTI()
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit I01=CreateUnit(GetOwningPlayer(SFI),1747990833,x,y,0)
local unit JDO=CreateUnit(GetOwningPlayer(SFI),1697656901,GetUnitX(SFI),GetUnitY(SFI),0)
call UnitAddAbility(JDO,1093686320)
call SaveGroupHandle(LY,(S5I),(133),(JAO))
call SaveUnitHandle(LY,(S5I),(19),(I01))
call SaveUnitHandle(LY,(S5I),(132),(JDO))
call SaveUnitHandle(LY,(S5I),(2),(SFI))
call TriggerRegisterTimerEvent(t,0.06,true)
call TriggerAddCondition(t,Condition(function JBO))
set t=null
set JAO=null
set I01=null
set JDO=null
set SFI=null
endfunction
function JEO takes nothing returns nothing
if GetSpellAbilityId()==1093686329 then
call JCO()
endif
endfunction
function JFO takes unit P7I,integer JGO returns nothing
local integer S5I=GetHandleId(P7I)
call SaveInteger(LY,(S5I),(750),(JGO))
endfunction
function JHO takes nothing returns nothing
local integer i=0
local integer EY1=0
local boolean JZO=false
if GetSpellAbilityId()==1093683801 then
loop
exitwhen i>5
if F01(UnitItemInSlot(GetTriggerUnit(),i))==HK0 or F01(UnitItemInSlot(GetTriggerUnit(),i))==X10 then
set EY1=GetItemCharges(UnitItemInSlot(GetTriggerUnit(),i))
if EY1>0 then
call SetItemCharges(UnitItemInSlot(GetTriggerUnit(),i),0)
call JFO(GetTriggerUnit(),0)
if JZO==false then
set JZO=true
call SetUnitState(GetTriggerUnit(),UNIT_STATE_MANA,GetUnitState(GetTriggerUnit(),UNIT_STATE_MANA)+15*EY1)
call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+15*EY1)
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIre\\AIreTarget.mdl",GetTriggerUnit(),"origin"))
endif
endif
return
endif
set i=i+1
endloop
endif
endfunction
function JVO takes integer id returns boolean
local integer i=1
loop
exitwhen i>EC0
if id==EB0[i]then
return false
endif
set i=i+1
endloop
return true
endfunction
function JWO takes unit JXO,unit P7I returns nothing
if IsUnitVisible(JXO,GetOwningPlayer(P7I))==false and GetRandomInt(1,100)<10 then
call PlaySoundOnUnitBJ(IF,100,P7I)
endif
endfunction
function JYO takes nothing returns nothing
local unit SFI=GetEnumUnit()
local integer i=0
loop
exitwhen i>5
if IsUnitVisible(GetTriggerUnit(),GetOwningPlayer(GetEnumUnit()))==true then
if F01(UnitItemInSlot(SFI,i))==HK0 or F01(UnitItemInSlot(SFI,i))==X10 then
if F01(UnitItemInSlot(SFI,i))==X10 then
if GetItemCharges(UnitItemInSlot(SFI,i))==17 then
call JWO(GetTriggerUnit(),SFI)
endif
call JFO(SFI,Q9I(GetItemCharges(UnitItemInSlot(SFI,i))+1,17))
call SetItemCharges(UnitItemInSlot(SFI,i),Q9I(GetItemCharges(UnitItemInSlot(SFI,i))+1,17))
else
if GetItemCharges(UnitItemInSlot(SFI,i))==10 then
call JWO(GetTriggerUnit(),SFI)
endif
call JFO(SFI,Q9I(GetItemCharges(UnitItemInSlot(SFI,i))+1,10))
call SetItemCharges(UnitItemInSlot(SFI,i),Q9I(GetItemCharges(UnitItemInSlot(SFI,i))+1,10))
endif
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",SFI,"chest"))
set i=5
endif
endif
set i=i+1
endloop
set SFI=null
endfunction
function JJO takes nothing returns nothing
local group g=NTI()
local unit P7I=GetTriggerUnit()
local real x=GetUnitX(P7I)
local real y=GetUnitY(P7I)
call GroupEnumUnitsInRange(g,x,y,1225,Condition(function D01))
call ForGroup(g,function JYO)
call NSI(g)
set g=null
set P7I=null
endfunction
function JKO takes nothing returns nothing
if JVO(GetSpellAbilityId())==true and TRI(GetSpellAbilityId())==true and GetUnitAbilityLevel(GetTriggerUnit(),1093678162)==0 and V81(GetSpellAbilityId())==false then
call JJO()
endif
endfunction
function JLO takes nothing returns boolean
local trigger t=GetTriggeringTrigger()
local integer S5I=GetHandleId(t)
local unit JMO=(LoadUnitHandle(LY,(S5I),(134)))
if GetTriggerEventId()!=EVENT_UNIT_DEATH then
call UnitRemoveAbility(JMO,1093744466)
call UnitRemoveAbility(JMO,1093809222)
endif
call DestroyEffect((LoadEffectHandle(LY,(S5I),(32))))
call FlushChildHashtable(LY,(S5I))
call S0I(t)
set t=null
set JMO=null
return false
endfunction
function JNO takes nothing returns boolean
return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0.5 and IsUnitAlly(GetFilterUnit(),NG0)==true and GetOwningPlayer(GetFilterUnit())!=EO and GetUnitTypeId(GetFilterUnit())!=1852010352 and GetUnitTypeId(GetFilterUnit())!=1848657482 and GetUnitTypeId(GetFilterUnit())!=1848657481 and GetUnitTypeId(GetFilterUnit())!=1848657462 and GetUnitTypeId(GetFilterUnit())!=1848657480
endfunction
function JSO takes nothing returns nothing
local trigger t=CreateTrigger()
local integer S5I=GetHandleId(t)
local unit JMO=GetEnumUnit()
local string s
call UnitAddAbility(JMO,1093744466)
call UnitAddAbility(JMO,1093809222)
if TII(NG0)then
set s="effects\\GlyphSent.mdx"
else
set s="effects\\GlyphScourge.mdx"
endif
call SaveEffectHandle(LY,(S5I),(32),(AddSpecialEffectTarget(s,JMO,"origin")))
call SaveUnitHandle(LY,(S5I),(134),(JMO))
call TriggerRegisterUnitEvent(t,JMO,EVENT_UNIT_DEATH)
call TriggerRegisterTimerEvent(t,NV0,false)
call TriggerAddCondition(t,Condition(function JLO))
set t=null
set JMO=null
endfunction
function JTO takes unit JRO,player p returns nothing
local integer i
if TII(p)then
set i=1
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=2
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=3
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=4
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=5
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
else
set i=7
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=8
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=9
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=10
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
set i=11
if JRO!=D30[i]then
call IssueImmediateOrder(D30[i],"coldarrows")
endif
endif
endfunction
function JPO takes nothing returns nothing
local group g
local unit JRO=GetTriggerUnit()
local player p=GetOwningPlayer(JRO)
if(TII(p)and NH0==false)or(TII(p)==false and NZ0==false)then
set g=NTI()
set NG0=p
call GroupEnumUnitsInRange(g,0,0,12000,Condition(function JNO))
call ForGroup(g,function JSO)
call NSI(g)
if TII(p)then
set NH0=true
call JTO(JRO,p)
set NH0=false
else
set NZ0=true
call JTO(JRO,p)
set NZ0=false
endif
endif
set g=null
set JRO=null
set p=null
endfunction
function JQO takes nothing returns nothing
if GetSpellAbilityId()==1093743665 or GetSpellAbilityId()==1093752649 then
call JPO()
endif
endfunction
function JUO takes nothing returns nothing
if GetSpellAbilityId()==1093743191 and GetUnitAbilityLevel(GetTriggerUnit(),1114665832)>0 then
call UnitRemoveAbility(GetTriggerUnit(),1114665832)
endif
endfunction