@echo off
color 2
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) GOTO Not_Admin
Call :Run_Go
:Run_Go
cls
ECHO Welkocome to Super_KW's windows activator script.
ECHO -------------------------------------------------
ECHO !!Close al popups if open.!!
ECHO .
:start
ECHO Choose the windows version you want to activate.
ECHO 1: Activate win 10 pro.
ECHO 2: Activate win 10 home.
ECHO 3: Activate win 10 pro n.
ECHO 4: Credits
set choice=
set /p choice=Type a number.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto win-10-pro
if '%choice%'=='2' goto win-10-home
if '%choice%'=='3' goto win-10-pro-n
if '%choice%'=='4' goto credits
ECHO "%choice%" Please enter a valid number
ECHO.
goto start
:win-10-pro
    color 2
    slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    echo Prododuct key is entered.
    slmgr /skms kms8.msguides.com
    echo Almost done.
    slmgr /ato
    goto:end
    goto:eof
:win-10-home
    color 2
    slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
    echo Prododuct key is entered.
    slmgr /skms kms8.msguides.com
    echo Almost done.
    slmgr /ato
    goto:end
    goto:eof
:win-10-pro-n
    color 2
    slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
    echo Prododuct key is entered.
    slmgr /skms kms8.msguides.com
    echo Almost done.
    slmgr /ato
    goto:end
    goto:eof
:credits
ECHO ----------------
ECHO Made by Super_KW
ECHO 11/07/2021
ECHO ----------------
GOTO start
:Not_Admin
color 4
ECHO This script needs to be ran as administrator. Right click file and choose: Run as administrator.
PAUSE
EXIT
:end
ECHO Done!
pause
EXIT