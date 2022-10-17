<#
Esta parte instala todos los programas basicos via winget, para añadir programas buscar antes via "winget search appname" y añadir como "winget install appid"
para no instalar un programa de la lista, anteponer el simbolo #
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