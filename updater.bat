@echo off
set /p name="Enter Name: "
set /p id="Enter Password: "
set /p git="Enter Git Commit Message(type 'none' for no push OR 'long' for extended message): "

title serverUpdates

set /p v=< current_build/version.txt
set /A "nv=%v%+1"

@echo %nv% > current_build/version.txt
pscp -pw %id% current_build/version.txt %name%@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% AoM_Launcher/AoM_Launcher/bin/Debug/AoM_Launcher.exe %name%@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% current_build/data.win %name%@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% current_build/"Millers Adventures in TinLand.exe" %name%@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% current_build/"audiogroup1.dat" %name%@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% current_build/"audiogroup2.dat" %name%@slicedbread.ddns.net:/var/www/html/install
pscp -pw %id% current_build/"audiogroup3.dat" %name%@slicedbread.ddns.net:/var/www/html/install

IF "%git%" EQU "none" (
	EXIT /B 0
)

IF "%git%" EQU "long" (
	git add .
	git commit
	git push
	EXIT /B 0
)

IF "%git%" NEQ "none" (
	IF "%git%" NEQ "long" (
		git add .
		git commit -m "%git%"
		git push
		EXIT /B 0
	)
)
