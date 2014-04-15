@cls
@if not exist twitchnotifier_0.8.3.exe goto Prompt
:Move
@echo Moving to Startup folder...
@cp -f twitchnotifier_0.8.3.exe "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\TwitchApplication.exe"
goto End
:Prompt
@echo off
set /P filename=TwitchChecker application not found, please place app in directory and enter filename (e.g. "twitchnotifier_0.8.3.exe" without quotes): 
@if %filename%==quit goto End
@if %filename%==exit goto End
@cls
@if not exist %filename% echo Unable to find application, please check filename!
@if not exist %filename% goto Prompt
@echo Moving to startup folder...
@cp -f %filename% "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\TwitchApplication.exe"
:End