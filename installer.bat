@echo off
@setlocal enableextensions
@cd /d "%~dp0"
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
echo The Skink Programming Language ^(c^)2021
mkdir tempstall
cd tempstall
echo Downloding latest version of skink from servers...
timeout /t 2 /nobreak > nul
echo Press ENTER if it doesn't continue.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://firebasestorage.googleapis.com/v0/b/skink-cdb44.appspot.com/o/skink.exe?alt=media&token=fa521a89-1a65-4fa9-a634-fee4bb4bdc71', 'skink.exe')"
echo Starting installation, Please do not exit!
timeout /t 2 /nobreak > nul
move %cd%\skink.exe C:\Windows\System32
timeout /t 2 /nobreak > nul
echo Deleting temporary files...
cd ..
rmdir /s /q tempstall
timeout /t 2 /nobreak > nul
echo Installation Complete! Enjoy :)
timeout /t 2 /nobreak > nul
pause
