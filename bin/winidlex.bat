@echo off

call "%~dp0env_for_icons.bat"  %*
cd/D "%WINPYWORKDIR1%"
rem backward compatibility for non-IDLEX users
if exist "%WINPYDIR%\scripts\idlex.pyw" (
    "%WINPYDIR%\python.exe" "%WINPYDIR%\scripts\idlex.pyw" %*
) else (
    echo "%WINPYDIR%\scripts\idlex.pyw" for IDLEX not found !"
)
