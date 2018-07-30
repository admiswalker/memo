@echo off
setlocal enabledelayedexpansion
set Input=
set buf=
set FilePath=
for %%a in (%*) do (
 set Input=%%a
 set buf=!Input::=!
 set FilePath=!buf:\=/!
 C:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -e C:\cygwin64\bin\emacs-X11.exe /cygdrive/!FilePath!
)
endlocal

if "%1" == "" (
 C:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -e C:\cygwin64\bin\emacs-X11.exe
)
