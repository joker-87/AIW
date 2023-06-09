function DisplayMenu {
Clear-Host
Write-Host @"
+===================================================+
|             After Installl Wizard                 |
|                                         @joker_sr2|
+===================================================+
|                 IMPORTANTE                        |
|    INSTALAR WINGET ANTES DE USAR LA OPCION 3      |
|                                                   |
|    1) Check if winget is installed                |
|    2) Install Winget from Microsoft Store         |
|    3) Optimize Windows                            |
|    4) install base software                       |
|    9) EXIT                                        |
+===================================================+

"@

$MENU = Read-Host "OPTION"
Switch ($MENU)
{
1 {
#OPTION1 - Check if winget is installed
winget
Start-Sleep -Seconds 2
DisplayMenu
}
2 {
#OPTION2 - Install Winget
start ms-windows-store://pdp/?ProductId=9NBLGGH4NNS1
Start-Sleep -Seconds 2
DisplayMenu
}
3 {
#OPTION3 - Optimize Windows
<#
Here we stop the services that slow down the pc and makes the hard drive go to 100% continuously
#>
Stop-Service 'SysMain' -Force
Stop-Service 'WSearch' -Force
Stop-Service 'DiagTrack' -Force
Stop-Service 'dmwappushservice' -Force
Stop-Service 'MapsBroker' -Force
Stop-Service 'RemoteRegistry' -Force
Stop-Service 'BDESVC' -Force
<#
Here we check if the services are stopped and display a message to the user
#>
$trap = get-service -Name SysMain
if ($trap.status -ne "Running")
{

    Write-Host "The service " $trap.name " is not running "
}

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 1

$trap = get-service -Name Wsearch
if ($trap.status -ne "Running")
{

    Write-Host "The service " $trap.name " is not running "
}

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 1

$trap = get-service -Name DiagTrack
if ($trap.status -ne "Running")
{

    Write-Host "The service " $trap.name " is not running "
}

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 1

$trap = get-service -Name MapsBroker
if ($trap.status -ne "Running")
{

    Write-Host "The service " $trap.name " is not running "
}

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 1

$trap = get-service -Name RemoteRegistry
if ($trap.status -ne "Running")
{

    Write-Host "The service " $trap.name " is not running "
}

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 1

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 1

$trap = get-service -Name BDESVC
if ($trap.status -ne "Running")
{

    Write-Host "The service " $trap.name " is not running "
}

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 1

$trap = get-service -Name dmwappushservice
if ($trap.status -ne "Running")
{

    Write-Host "The service " $trap.name " is not running "
}

if ($trap.status -eq "Running")
{

    Write-Host "The service " $trap.name " is not running "
}
Start-Sleep -Seconds 2

<#
Here we disable the services that slow down the pc and makes the hard drive go to 100% continuously
#>
Set-Service -Name "SysMain" -StartupType disabled
Set-Service -Name "WSearch" -StartupType disabled
Set-Service -Name "DiagTrack" -StartupType disabled
Set-Service -Name "dmwappushservice" -StartupType disabled
Set-Service -Name "MapsBroker" -StartupType disabled
Set-Service -Name "RemoteRegistry" -StartupType disabled
Set-Service -Name "BDESVC" -StartupType disabled
Start-Sleep -Seconds 2
<#
Here we check the services StartType and show it to the user
#>
$trap = get-service -Name SysMain
if ($trap.StartType -eq "Automatic")
{

    Write-Host "The service " $trap.name " Start Type is automatic "
}

if ($trap.StartType -eq "Manual")
{

    Write-Host "The service " $trap.name " Start Type is Manual "
}
Start-Sleep -Seconds 1

if ($trap.StartType -eq "Disabled")
{

    Write-Host "The service " $trap.name " Start Type is disabled "
}
Start-Sleep -Seconds 1


$trap = get-service -Name WSearch
if ($trap.StartType -eq "Automatic")
{

    Write-Host "The service " $trap.name " Start Type is automatic "
}

if ($trap.StartType -eq "Manual")
{

    Write-Host "The service " $trap.name " Start Type is Manual "
}
Start-Sleep -Seconds 1

if ($trap.StartType -eq "Disabled")
{

    Write-Host "The service " $trap.name " Start Type is disabled "
}
Start-Sleep -Seconds 1

$trap = get-service -Name DiagTrack
if ($trap.StartType -eq "Automatic")
{

    Write-Host "The service " $trap.name " Start Type is automatic "
}

if ($trap.StartType -eq "Manual")
{

    Write-Host "The service " $trap.name " Start Type is Manual "
}
Start-Sleep -Seconds 1

if ($trap.StartType -eq "Disabled")
{

    Write-Host "The service " $trap.name " Start Type is disabled "
}
Start-Sleep -Seconds 1

$trap = get-service -Name dmwappushservice
if ($trap.StartType -eq "Automatic")
{

    Write-Host "The service " $trap.name " Start Type is automatic "
}

if ($trap.StartType -eq "Manual")
{

    Write-Host "The service " $trap.name " Start Type is Manual "
}
Start-Sleep -Seconds 1

if ($trap.StartType -eq "Disabled")
{

    Write-Host "The service " $trap.name " Start Type is disabled "
}
Start-Sleep -Seconds 1

$trap = get-service -Name MapsBroker
if ($trap.StartType -eq "Automatic")
{

    Write-Host "The service " $trap.name " Start Type is automatic "
}

if ($trap.StartType -eq "Manual")
{

    Write-Host "The service " $trap.name " Start Type is Manual "
}
Start-Sleep -Seconds 1

if ($trap.StartType -eq "Disabled")
{

    Write-Host "The service " $trap.name " Start Type is disabled "
}
Start-Sleep -Seconds 1

$trap = get-service -Name RemoteRegistry
if ($trap.StartType -eq "Automatic")
{

    Write-Host "The service " $trap.name " Start Type is automatic "
}

if ($trap.StartType -eq "Manual")
{

    Write-Host "The service " $trap.name " Start Type is Manual "
}
Start-Sleep -Seconds 1

if ($trap.StartType -eq "Disabled")
{

    Write-Host "The service " $trap.name " Start Type is disabled "
}
Start-Sleep -Seconds 1

$trap = get-service -Name BDESVC
if ($trap.StartType -eq "Automatic")
{

    Write-Host "The service " $trap.name " Start Type is automatic "
}

if ($trap.StartType -eq "Manual")
{

    Write-Host "The service " $trap.name " Start Type is Manual "
}
Start-Sleep -Seconds 1

if ($trap.StartType -eq "Disabled")
{

    Write-Host "The service " $trap.name " Start Type is disabled "
}
Start-Sleep -Seconds 2

<#
We are creating a firewall rule to allow ICMP
#>
powershell -Command "Write-Host ' Creating a firewall rule to allow ICMP traffic (Ping) ' -F darkgray -B black"
Start-Sleep -Seconds 2
netsh advfirewall firewall add rule name="Ping" protocol="icmpv4:8,any" dir=in action=allow
<#
(for notebooks) Here we are creating a registry to inform if webcam is on
#>
powershell -Command "Write-Host ' Turn On Webcam On/Off OSD Notifications ' -F darkgray -B black"
Start-Sleep -Seconds 2
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\OEM\Device\Capture' -Name 'NoPhysicalCameraLED' -Value '00000001'
Start-Sleep -Seconds 2
DisplayMenu
}

4 {
#OPTION4 - Install Base software
<#
we are installing the base software via winget package manager, to add another app please search availability using the command  "winget search appname" 
and add the string "winget install appid"
to remove an app from the install list, place the simbol # before the string belonging to the app you dont wish to install
Winget install GlavSoft.TightVNC -h --accept-package-agreements --accept-source-agreements
winget install RustDesk.RustDesk -h --accept-package-agreements --accept-source-agreements
winget install AIMP.AIMP -h --accept-package-agreements --accept-source-agreements
winget install VideoLAN.VLC -h --accept-package-agreements --accept-source-agreements
#>
winget install Mozilla.Firefox -h --accept-package-agreements --accept-source-agreements
winget install Google.Chrome -h --accept-package-agreements --accept-source-agreements
winget install Adobe.Acrobat.Reader.64-bit -h --accept-package-agreements --accept-source-agreements
winget install 7zip.7zip -h --accept-package-agreements --accept-source-agreements
winget install RARLab.WinRAR -h --accept-package-agreements --accept-source-agreements
winget install Microsoft.DotNet.Framework.DeveloperPack_4 -h --accept-package-agreements --accept-source-agreements
winget install 9WZDNCRDFWX0 -h --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2005.x64 -h --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2008.x64 -h --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2010.x64 -h --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2012.x64 -h --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2013.x64 -h --accept-package-agreements --accept-source-agreements
winget install Microsoft.VCRedist.2015+.x64 -h --accept-package-agreements --accept-source-agreements
Dism /online /Enable-Feature /FeatureName:"NetFx3"
start-sleep -seconds 3
DisplayMenu
}
9 {
#OPTION9 - EXIT
Write-Host "Bye"
Break
}
default {
#DEFAULT OPTION
Write-Host "Option not available"
Start-Sleep -Seconds 2
DisplayMenu
}
}
}
DisplayMenu