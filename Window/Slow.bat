@echo off
for /l %%x in (1, 1, 3) do (
	echo %%x
	reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %CD%\Wall.bmp /f
	RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
	timeout 1 > null
)
REM start end.vbs
