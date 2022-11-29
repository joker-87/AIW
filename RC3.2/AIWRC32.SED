[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=0
HideExtractAnimation=1
UseLongFileName=0
InsideCompressed=0
CAB_FixedSize=0
CAB_ResvCodeSigning=0
RebootMode=N
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles
[Strings]
InstallPrompt=
DisplayLicense=
FinishMessage=Thanks for using AIW RC3.2
TargetName=C:\Users\migue\Documents\GitHub\AIW\RC3.2\AIWRC32.EXE
FriendlyName=After Install Wizard RC3.2
AppLaunched=powershell.exe  -executionpolicy bypass -File aiw.ps1
PostInstallCmd=<None>
AdminQuietInstCmd=
UserQuietInstCmd=
FILE0="aiw.ps1"
[SourceFiles]
SourceFiles0=C:\Users\migue\Documents\GitHub\AIW\
[SourceFiles0]
%FILE0%=
