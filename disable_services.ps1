[string[]]$services = @('SysMain', 'WSearch', 'DiagTrack', 'dmwappushservice', 'MapsBroker', 'RemoteRegistry', 'Fax', 'BDESVC')
Set-Service -Name $services -StartupType Disabled
while ((Get-Service -Name $services | Where-Object { $_.status -ne 'Stopped'}).Count -ne 0)
{
    Start-Sleep -Seconds 5
}
}