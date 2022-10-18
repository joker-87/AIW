[string[]]$services = @('SysMain', 'WSearch', 'DiagTrack', 'dmwappushservice', 'MapsBroker', 'RemoteRegistry', 'Fax', 'BDESVC')
Stop-Service -Name $services -NoWait -Force
while ((Get-Service -Name $services | Where-Object { $_.status -ne 'Stopped'}).Count -ne 0)
{
    Start-Sleep -Seconds 5
}