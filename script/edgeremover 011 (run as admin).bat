@ECHO OFF

:c
echo EdgeEraser v0.2.0
echo -----------------
echo 1. Remove Edge.
echo 2. Exit.
echo -----------------

set /p option="Enter Number: "

if %option%==1 (
goto a
)

if %option%==2 (
goto b
) else goto c

@ECHO ON

:a
:: Force closes Edge before running the script.

taskkill /f /im msedge.exe
taskkill /f /im MicrosoftEdgeUpdate.exe
taskkill /f /im identity_helper.exe

:: Deletes Edges files.

rd/s/q "C:\Program Files (x86)\Microsoft\Edge"
rd/s/q "C:\Program Files (x86)\Microsoft\EdgeCore"
rd/s/q "C:\Program Files (x86)\Microsoft\EdgeUpdate"
rd/s/q "C:\Program Files (x86)\Microsoft\EdgeWebview"
rd/s/q "C:\Program Files (x86)\Microsoft\Temp"

@ECHO OFF

:: Tells you something.

echo If you get "Acces is denied", run as admin. If you get "The system cannot find the file specified", edge might already be gone

PAUSE

:b