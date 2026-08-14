function M4I takes real M5I returns nothing
local real M6I
local real st=TimerGetElapsed(LQI)
if st<=0 then
set LQI=CreateTimer()
call TimerStart(LQI,1000000,false,null)
endif
if(M5I>0)then
loop
set M6I=M5I-TimerGetElapsed(LQI)+st
exitwhen M6I<=0
if(M6I>bj_POLLED_WAIT_SKIP_THRESHOLD)then
call TriggerSleepAction(0.1*M6I)
else
call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
endif
endloop
endif
endfunction

function MXI takes nothing returns nothing
call MHI()
call TimerStart(bj_stockUpdateTimer,bj_STOCK_RESTOCK_INTERVAL,true,function MHI)
endfunction

function QFI takes unit SWI,real PAI returns nothing
local timer t=CreateTimer()
local integer S5I=GetHandleId(t)
call SaveReal(LY,(S5I),(20),((PAI)*1.0))
call SaveUnitHandle(LY,(S5I),(26),(SWI))
call TimerStart(t,0,false,function QEI)
endfunction

function RepeatedPauseAll takes nothing returns nothing
local timer t=CreateTimer()
call TimerStart(t,1,true,function UII)
endfunction

function UGI takes string UHI,real x1,real y1,real x2,real y2,real r,real g,real b,real a,real M5I returns nothing
local timer t=CreateTimer()
local lightning UZI=AddLightning(UHI,true,x1,y1,x2,y2)
call SetLightningColor(UZI,r,g,b,a)
call SaveLightningHandle(LY,(GetHandleId(t)),(41),(UZI))
call TimerStart(t,M5I,false,function UFI)
endfunction

function HA1 takes nothing returns nothing
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

function U71 takes nothing returns boolean
if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and(LoadInteger(EY0,(GetSpellAbilityId()),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId()))))>0 then
call TimerStart(EJ0[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))],(LoadInteger(EY0,(GetSpellAbilityId()),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId())))),false,null)
endif
if GetSpellAbilityId()==1093677655 then
call TimerStart(EJ0[GetPlayerId((GetOwningPlayer(GetTriggerUnit())))],0,false,null)
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

function B92 takes nothing returns boolean
if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true then
call UnitResetCooldown(GetFilterUnit())
call TimerStart(EJ0[GetPlayerId((GetOwningPlayer(GetFilterUnit())))],0,false,null)
call SetUnitState(GetFilterUnit(),UNIT_STATE_LIFE,GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_LIFE))
call SetUnitState(GetFilterUnit(),UNIT_STATE_MANA,GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_MANA))
endif
return false
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

function L44 takes nothing returns nothing
local timer t=CreateTimer()
call SetUnitAnimationByIndex(GetTriggerUnit(),2)
call SaveUnitHandle(LY,(GetHandleId(t)),(221),(GetTriggerUnit()))
call TimerStart(t,1,false,function L34)
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

