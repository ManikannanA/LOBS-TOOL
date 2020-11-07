@ECHO OFF

Powershell.exe -File  B:\A_FWD\Hackathon\DEMO\AWDRecoveryProcessor_lib\replace.ps1

java -jar B:\A_FWD\Hackathon\DEMO\AWDRecoveryProcessor.jar


timeout /t 25
