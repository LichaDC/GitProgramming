@echo off
SET THEFILE=h:\# programming\pascal\trabajo pr�ctico 2\trabajo pr�ctco (lucas) [corregido].exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o "h:\# programming\pascal\trabajo pr�ctico 2\trabajo pr�ctco (lucas) [corregido].exe" link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
