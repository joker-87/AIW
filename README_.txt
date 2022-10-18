iexpress config:

cmd:
cmd /c script.bat

PowerShell:

powershell.exe  -executionpolicy bypass -File aiw.ps1



DGINF para hacer:

***YA ESTA EN AIW.ps1***activar netframework 3.5 Dism /online /Enable-Feature /FeatureName:"NetFx3"
permitir al usuario cambiar la hora del sistema
regla para permitir ping mediante firewall (netsh advfirewall firewall add rule name="ICMPv4" protocol=icmpv4:8,any dir=in action=allow)

