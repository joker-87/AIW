function DisplayMenu {
Clear-Host
Write-Host @"
+===================================================+
|             After Installl Wizard                 |
|                                         @joker_sr2|
+===================================================+
|                                                   |
|    1) Check if winget is installed                |
|    2) Install Winget (if is not installed)        |
|    3) Disable services to optimize windows        |
|    4) Install software via winget                 |
|    5) Open proxy settings                         |
|    6) Check if user has Admin privileges          |
|    7) Change user privileges from admin to user   |
|    8) Join Domain - RESTARTS PC AFTER             |
|    9) EXIT                                        |
+===================================================+

"@

$MENU = Read-Host "OPTION"
Switch ($MENU)
{
1 {
#OPTION1 - Check if winget is installed
winget
Star-Sleep -Seconds 2
DisplayMenu
}
2 {
#OPTION2 - Install Winget
Start "https://www.microsoft.com/store/productId/9NBLGGH4NNS1"
Start-Sleep -Seconds 2
DisplayMenu
}
3 {
#OPTION3 - Disable services to optimize windows 
<#
Stops  and disables the services that slow down the pc and makes the hard drive go to 100% continuously
#>
Set-Service -Name "SysMain" -StartupType disabled
Set-Service -Name "WSearch" -StartupType disabled
Set-Service -Name "DiagTrack" -StartupType disabled
Set-Service -Name "dmwappushservice" -StartupType disabled
Set-Service -Name "MapsBroker" -StartupType disabled
Set-Service -Name "RemoteRegistry" -StartupType disabled
Set-Service -Name "Fax" -StartupType disabled
Set-Service -Name "BDESVC" -StartupType disabled
Start-Sleep -Seconds 2
DisplayMenu
}
4 {
#OPTION4 - Install software via winget 
<#
we are installing the base software via winget package manager, to add another app please search availability using the command  "winget search appname" 
and add the string "winget install appid"
to remove an app from the install list, place the simbol # before the string belonging to the app you dont wish to install
#>
winget install Mozilla.Firefox -h
winget install Google.Chrome -h
winget install Adobe.Acrobat.Reader.64-bit -h
winget install 7zip.7zip -h
winget install RARLab.WinRAR -h
winget install RustDesk.RustDesk -h
winget install VideoLAN.VLC -h
winget install AIMP.AIMP -h
winget install -e --id Microsoft.dotNetFramework -h
winget install WhatsApp.WhatsApp -h
start-sleep -seconds 3
DisplayMenu
}
5 {
#OPTION5 - Open proxy settings
start ms-settings:network-proxy
Start-Sleep -Seconds 2
DisplayMenu
}
6 {
#OPTION6 - Check if user has Admin privileges
Get-LocalGroupMember -Group 'Administradores'
Start-Sleep -Seconds 2
DisplayMenu
}
7 {
#OPTION7 - Change user privileges from admin to user
Add-LocalGroupMember -Group 'usuarios' -Member 'usuario'
Star-Sleep -Seconds 1
Remove-LocalGroupMember -Group 'Administradores' -Member 'usuario'
Start-Sleep -Seconds 1
Get-LocalGroupMember -Group 'Administradores'
Start-Sleep -Seconds 2
DisplayMenu
}
8 {
#OPTION8 - Join Domain
Add-Computer -DomainName campana.gov.ar -Restart
Start-Sleep -Seconds 2
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