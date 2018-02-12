@echo off
set /p id="Enter Password: "

title serverUpdates

set /p v=< current_build/version.txt
set /A "nv=%v%+1"

@echo %nv% > current_build/version.txt
pscp -pw %id% current_build/version.txt alex@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% AoM_Launcher/AoM_Launcher/bin/Debug/AoM_Launcher.exe alex@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% current_build/data.win alex@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% current_build/"Millers Adventures in TinLand.exe" alex@slicedbread.ddns.net:/var/www/html/install
