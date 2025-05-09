@echo off
chcp 65001 > nul
for %%i in (*.js) do (
    echo ===================================================================
    echo %%i
    ..\build\bin\Release\x86\qjs --dump --std %%i
    if %ERRORLEVEL% neq 0 (
        echo 程序异常停止
    )
)

pause