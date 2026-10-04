@ECHO ON

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

:: Tells you something.

echo You can now safely close this program.

:: Pauses the script.

PAUSE
