@echo off

@REM Oracle
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft" /s ^| find " JavaHome "') do echo %%j

@REM Eclipse Adoptium
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Eclipse Adoptium" /s ^| find " Path "') do echo %%j

@REM Microsoft
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\JDK" /s ^| find " Path "') do echo %%j

@REM Azul Zulu
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Azul Systems\Zulu" /s ^| find " InstallationPath "') do echo %%j
