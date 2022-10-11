function DisplayMenu {
Clear-Host
Write-Host @"
+==============================================================+
|  Windows 10/11 config inicial                      @joker_sr2| 
+==============================================================+
|                                                              |
|    1) Optimizar servicios de windows                         |
|    2) Instalar Programas basicos                             |
|    3) SALIR                                                  |
+==============================================================+

"@

$MENU = Read-Host "OPTION"
Switch ($MENU)
{
1 {
#OPTION1 - Optimizar servicios de windows
<#
Esta parte detiene y deshabilita los servicios de windows 10 que lo podrian ralentizar
y/o dejar el disco en 100% continuamente
#>
Set-Service -Name "SysMain"-Status stopped -StartupType disabled
Set-Service -Name "WSearch"-Status stopped -StartupType disabled
Set-Service -Name "DiagTrack"-Status stopped -StartupType disabled
Set-Service -Name "dmwappushservice"-Status stopped -StartupType disabled
Set-Service -Name "MapsBroker"-Status stopped -StartupType disabled
Set-Service -Name "RemoteRegistry"-Status stopped -StartupType disabled
Set-Service -Name "BDESVC"-Status stopped -StartupType disabled
Set-Service -Name "Fax"-Status stopped -StartupType disabled
Start-Sleep -Seconds 2
DisplayMenu
}
2 {
#OPTION2 - Instalar programas basicos
<#
Esta parte detiene instala los programas basicos (navegador web, visor PDF, descompresores, reproductor de video/mp3... )
para añadir algun programa simplemente ejecutar el comando "winget search nombredelprograma" y te salta si esta para instalar mediante winget, y despues añadir de la
siguiente forma "winget install ID" donde ID es el id del programa a instalar...
para evitar instalar un programa, borrarlo de la lista o poner antes de "winget" el simbolo "#"
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
Start-Sleep -Seconds 2
DisplayMenu
}
3 {
#OPTION3 - EXIT
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
