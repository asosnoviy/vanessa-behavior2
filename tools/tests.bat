echo off
SET mypath=%~dp0
SETLOCAL

set BUILDPATH=./build

set RUNNER_IBNAME=/F"%BUILDPATH%/ib"
rem set RUNNER_DBUSER=base
rem set RUNNER_DBPWD=234567890

SET RUNNER_ENV=debug

IF "%~1"=="" (
    set mode="./tools/JSON/VBParams837UF.json"
) else (
    set mode=%1
)


echo "vanessa"
oscript %mypath%/runner.os run --execute "./build/out/tools/epf/init.epf" --command "InitDataBase;VBParams=$instrumentsRoot/init.json"
oscript %mypath%/runner.os vanessa --pathvanessa "%BUILDPATH%/out/vanessa-behavior.epf" --vanessasettings "%mode%"
exit /B
