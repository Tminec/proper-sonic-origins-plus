:: Created by AnakamaTheHedgehog

@echo off
color 3F
echo Please wait...
title Proper Sonic Origins+ V3
(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
(NET FILE||(exit)) >NUL 2>&1


:Warning
echo ---------------------------------------------------------------------------------
echo Please make sure you downloaded all the files from the releases and extracted them
echo Otherwise, the games will not work!
echo Press any button to contiune...
echo ---------------------------------------------------------------------------------
pause>nul

:Menu
cls
pushd %~dp0
set "choice=-"
echo.
echo ============================================================
echo  Proper Sonic Origins+ V3
echo ============================================================
echo	16 BIT CLASSICS
echo  [ 0 ] Sonic the Hedgehog
echo  [ 1 ] Sonic the Hedgehog 2
echo  [ 2 ] Sonic the Hedgehog CD
echo  [ 3 ] Sonic the Hedgehog 3 and Knuckles
echo	8 BIT CLASSICS
echo  [ * ] Sonic Chaos Remake
echo  [ Q ] Sonic SMS Remake
echo  [ W ] Sonic SMS Remake 2
echo  [ E ] Sonic SMS Remake 3: Timelines
echo  PLUS
echo  [ 4 ] Sonic Forever
echo  [ 5 ] Sonic Forever Expansion Pack
echo  [ 6 ] Sonic 2 Absolute
echo  [ 7 ] Sonic 3 A.I.R.
echo  [ 8 ] Sonic CD Restored
echo  [ 9 ] Sonic Mania Plus
echo   SETTINGS
echo  [ / ] Check for Updates
echo  [ - ] EXIT
echo.
set /p choice= Game: 
if %choice%==0 goto:sonic
if %choice%==1 goto:sonic2
if %choice%==2 goto:soniccd
if %choice%==3 goto:sonic3
if %choice%==4 goto:sonicforever
if %choice%==5 goto:sonicforevermod
if %choice%==6 goto:2absolute
if %choice%==7 goto:3air
if %choice%==8 goto:cdr
if %choice%==- goto:EXIT
if %choice%==9 goto:mania
if %choice%==* goto:chaos
if %choice%==q goto:sms1
if %choice%==w goto:sms2
if %choice%==e goto:sms3
if %choice%==/ goto:updates

:sonic
cd data/sonic
start RSDKv4_64.exe
exit

:sonic2
cd data/sonic2
start RSDKv4_64.exe
exit

:sonic3
cd data/sonic3
start SONIC3K.EXE
exit

:soniccd
cd data/soniccd
start RSDKv3_64.exe
exit

:sonicforever
cd data/plus/s1f
start SonicForever.exe
exit

:sonicforevermod
cd data/plus/s1fpack
start SonicForever.exe
exit

:2absolute
cd data/plus/s2a
start Sonic2Absolute.exe
exit

:3air
cd data\plus\s3air
start Sonic3AIR.exe
exit

:cdr
cd data/plus/soniccdrestored
start Restored.exe
exit

:mania
cd data/plus/smp
start SonicMania.exe
exit

:sms1
cd data/8bit
start SonicSMSRemake.exe
exit
:sms2
cd data/8bit
start SonicSMSRemake2.exe
exit

:sms3
cd data/8bit/Sonic SMS Remake 3
start SonicSMSRemake3TimelinesSAGE2023.exe
exit

:chaos
cd data/8bit
start SonicChaosRemake.exe
exit

:updates
start https://github.com/Tminec/proper-sonic-origins-plus/releases/latest

goto:MainMenu

:Exit
