@echo off

set "dup=%TEMP%\find-java_dup.txt"
set "dedup=%TEMP%\find-java_dedup.txt"

@REM Oracle
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft" /s 2^>nul ^| find " JavaHome "') do @echo %%j >> %dup%

@REM Eclipse Adoptium
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Eclipse Adoptium" /s 2^>nul ^| find " Path "') do @echo %%j >> %dup%

@REM Microsoft
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\JDK" /s 2^>nul ^| find " Path "') do @echo %%j >> %dup%

@REM IBM Semeru
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Semeru" /s 2^>nul ^| find " Path "') do @echo %%j >> %dup%

@REM Azul Zulu
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Azul Systems\Zulu" /s 2^>nul ^| find " InstallationPath "') do @echo %%j >> %dup%

@REM BellSoft Liberica
for /f "tokens=2,*" %%i in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\BellSoft\Liberica" /s 2^>nul ^| find " InstallationPath "') do @echo %%j >> %dup%

@REM remove duplicate rows
sort /unique %dup% /o %dedup%

@REM print result
for /f "tokens=*" %%i in (%dedup%) do echo %%i

@REM remove temp files
del /f "%dup%"
del /f "%dedup%"
