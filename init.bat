@echo off

set homesteadRoot=%HOMEDRIVE%%HOMEPATH%\.homestead

mkdir "%homesteadRoot%"

copy /-y src\stubs\Homestead.yaml "%homesteadRoot%\Homestead.yaml"
copy /-y src\stubs\after.sh "%homesteadRoot%\after.sh"
copy /-y src\stubs\aliases "%homesteadRoot%\aliases"

set homesteadRoot=

SET NEWLINE=^& echo.

FIND /C /I "swifer.dev" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO 192.168.10.10 swifer.dev>>%WINDIR%\System32\drivers\etc\hosts

echo Homestead initialized!
