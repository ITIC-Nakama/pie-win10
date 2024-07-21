@echo off

wpeinit
ping -n 10 -w 1000 nas.example.com > null

if %ERRORLEVEL% NEQ 0 (
    echo Could not reach nas.example.com
    echo please check your connectivity or network drivers
    pause
    echo
) else (
    net use Z: \\nas.example.com\pxe /user:SHARES_USERNAME SHARES_PASSWORD > null && Z:\windows\setup.exe /unattend:"Z:\windows\autounattend.xml"
)