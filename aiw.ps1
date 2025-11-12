function Show-Menu {
    Write-Host "=======================================" -F darkgreen
    Write-Host "   After Install Wizard by @joker_s2   " -F darkgreen
    Write-Host "================ MENU ================="  -F darkgreen
    Write-Host "      1: Check & install Winget "  -F darkgreen
    Write-Host "      2: Optimize Windows"  -F darkgreen
    Write-Host "      3: Install base software" -F darkgreen
    Write-Host "      4: Activation" -F darkgreen
    Write-Host "      Q: Quit" -F darkgreen
    Write-Host "=======================================" -F darkgreen
    Write-Host "Press the corresponding key to make your selection " -F darkgreen
}

do {
    Clear-Host
    Show-Menu
    $key = [System.Console]::ReadKey($true).Key

    switch ($key) {
        'NumPad1' { $key = 'D1' }
        'NumPad2' { $key = 'D2' }
        'NumPad3' { $key = 'D3' }
        'NumPad4' { $key = 'D4' }
    }

    switch ($key) {
        'D1' {
            if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
                Start-Process ms-windows-store://pdp/?ProductId=9NBLGGH4NNS1
        
                function IsAppInstalled {
                    $app = Get-AppxPackage -Name Microsoft.DesktopAppInstaller -AllUsers
                    return [bool]$app
                }
        
                do {
                    Write-Host "Waiting for Winget to be installed..." -B DarkRed
                    Start-Sleep -Seconds 10
                } until (IsAppInstalled)
            
            }
            else {
                Write-Host "winget is installed on this system." -F darkgreen
                Start-Sleep -Seconds 2
            }
        }
        'D2' {
            Write-Host "Uninstalling bloatware" -F DarkGreen
            $packages = @(
                "*ActiproSoftwareLLC*"
                "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
                "*BubbleWitch3Saga*"
                "*CandyCrush*"
                "*Dolby*"
                "*Duolingo-LearnLanguagesforFree*"
                "*EclipseManager*"
                "*Facebook*"
                "*Flipboard*"
                "*LinkedIn*"
                "*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*"
                "*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*"
                "*Microsoft.BingWeather*"
                "*Microsoft.MicrosoftStickyNotes*"
                "*Minecraft*"
                "*PandoraMediaInc*"
                "*Royal Revolt*"
                "*Speed Test*"
                "*Spotify*"
                "*Sway*"
                "*Twitter*"
                "*Wunderlist*"
                "Microsoft.3DBuilder",
                "Microsoft.549981C3F5F10"
                "Microsoft.BingNews"
                "Microsoft.GetHelp"
                "Microsoft.Getstarted"
                "Microsoft.Messaging"
                "Microsoft.Microsoft3DViewer"
                "Microsoft.MicrosoftOfficeHub"
                "Microsoft.MicrosoftSolitaireCollection"
                "Microsoft.Mixedreality.Portal"
                "Microsoft.NetworkSpeedTest"
                "Microsoft.News"
                "Microsoft.Office.Lens"
                "Microsoft.Office.OneNote"
                "Microsoft.Office.Sway"
                "Microsoft.Office.Todo.List"
                "Microsoft.OneConnect"
                "Microsoft.OutlookForWindows"
                "Microsoft.People"
                "Microsoft.Print3D"
                "Microsoft.RemoteDesktop"
                "Microsoft.SkypeApp"
                "Microsoft.StorePurchaseApp"
                "Microsoft.Wallet",
                "Microsoft.Whiteboard"
                "Microsoft.WindowsAlarms"
                "Microsoft.WindowsCamera"
                "Microsoft.WindowsFeedbackHub"
                "Microsoft.WindowsMaps"
                "Microsoft.WindowsSoundRecorder"
                "Microsoft.Xbox.TCUI"
                "Microsoft.XboxApp"
                "Microsoft.XboxGameOverlay"
                "Microsoft.XboxIdentityProvider"
                "Microsoft.XboxSpeechToTextOverlay"
                "Microsoft.YourPhone",
                "Microsoft.ZuneMusic"
                "Microsoft.ZuneVideo"
                "microsoft.windowscommunicationsapps"
            )

            foreach ($package in $packages) {
                Write-Host "Attempting to uninstall $package"
                $app = Get-AppxPackage -Name $package -ErrorAction SilentlyContinue
                if ($null -ne $app) {
                    $app | Remove-AppxPackage
                    Write-Host "$package uninstalled"
                }
                else {
                    Write-Host "$package is not installed"
                }
            }
            Start-Sleep -seconds 1
            winget uninstall 9mssgkg348sp -h --accept-package-agreements --accept-source-agreements
            winget uninstall 9p1j8s7ccwwt -h --accept-package-agreements --accept-source-agreements
            winget uninstall 9nblggh5r558 -h --accept-package-agreements --accept-source-agreements
            winget uninstall 9wzdncrfj4q7 -h --accept-package-agreements --accept-source-agreements
            winget uninstall 9nht9rb2f4hd -h --accept-package-agreements --accept-source-agreements
            Start-Sleep -seconds 1
            Write-Host ' Opening System Properties Performance ' -F DarkGreen
            Start-Sleep -Seconds 1
            $wshell = New-Object -ComObject WScript.Shell
            $message = "      Select the option:`n" +
            "                    `n" +
            "Adjust for better performance`n" + 
            "and then press [Apply] and [OK]`n" + 
            "but keep the option:`n" +
            "                    `n" + 
            "Show thumbnails instead of icons"
            $wshell.Popup($message, 0, "Performance Options", 0x1)

            Start-Process C:\Windows\System32\SystemPropertiesPerformance.exe
            Write-Host ' Creating a firewall rule to allow ICMP traffic (Ping) ' -F DarkGreen
            Start-Sleep -Seconds 1
            netsh advfirewall firewall add rule name="Ping" protocol="icmpv4:8,any" dir=in action=allow
            Write-Host ' Turn On Webcam On/Off OSD Notifications ' -F DarkGreen
            Start-Sleep -Seconds 1
            Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\OEM\Device\Capture' -Name 'NoPhysicalCameraLED' -Value '00000001'
            Start-Sleep -Seconds 1
            Write-Host "Optimizing Windows Services" -F DarkGreen
            $services = @(
                "SysMain"
                "WSearch"
                "DiagTrack"
                "dmwappushservice"
                "MapsBroker"
                "RemoteRegistry"
                "BDESVC"
                "ClickToRunSvc"
            )

            foreach ($service in $services) {
                $trap = Get-Service -Name $service -ErrorAction SilentlyContinue
                if ($trap -ne $null) {
                    Write-Host "Checking status of $service"
        
                    if ($trap.Status -eq 'Running') {
                        Write-Host "Stopping $service..."
                        Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
                        Write-Host "$service stopped"
                    }

                    Write-Host "Disabling $service..."
                    Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
                    Write-Host "$service startup type set to Disabled"
        

                    $trap = Get-Service -Name $service
                    Write-Host "$($trap.Name) is now $($trap.Status), Start Type is $($trap.StartType)"
                    Start-Sleep -Seconds 1
                }
            }
        }
        'D3' {
            $apps = @(
                "Mozilla.Firefox",
                "Google.Chrome",
                "Adobe.Acrobat.Reader.64-bit",
                "7zip.7zip",
                "RARLab.WinRAR",
                "Microsoft.DotNet.Framework.DeveloperPack_4",
                "Microsoft.PCManager",
                "WhatsApp",
                "Microsoft.VCRedist.2005.x64",
                "Microsoft.VCRedist.2008.x64",
                "Microsoft.VCRedist.2010.x64",
                "Microsoft.VCRedist.2012.x64",
                "Microsoft.VCRedist.2013.x64",
                "Microsoft.VCRedist.2015+.x64",
                "AIMP.AIMP",
                "VideoLAN.VLC",
                "Oracle.JavaRuntimeEnvironment"
            )
            $apps | ForEach-Object {
                winget install $_  -h --accept-package-agreements --accept-source-agreements
            }
            Dism /online /Enable-Feature /FeatureName:"NetFx3"
        }
        'D4' {
            Write-Host (' Activating WinRAR, please wait ') -F DarkGreen
            $file = "C:\Program Files\WinRAR\rarreg.key"
            $data = @"
RAR registration data
intercambiosvirtuales.org
Unlimited Company License
UID=a575674ee3c43ffe7d87
64122122507d8771aa323ef5a6d06aa2bcbfe377196edbf8d98784
fde1ef1a6bb5b34a9f4060fce6cb5ffde62890079861be57638717
7131ced835ed65cc743d9777f2ea71a8e32c7e593cf66794343565
b41bcf56929486b8bcdac33d50ecf7739960dd4b9b83bc50a10c05
deb052aa17aab4ce70e123cfc882dcda379e7380a23d44a234a527
58d14740a273b3122666fd1091a81244781970359f9834c2605da8
0dbc2b930f2e660657d762ef929448ca12b843cab1ab1874926243
"@

            $data | Out-File -FilePath $file -Encoding utf8
            if (Test-Path $file) {
                Write-host "WinRAR activated" -f Yellow
            }
            Else {
                $data | Out-File -FilePath $file -Encoding utf8
            }
            Start-Sleep -Seconds 2
            Write-Host (' Starting Windows/Office tool ') -F DarkGreen
            Invoke-RestMethod https://get.activated.win | Invoke-Expression
        }
        'Q' { Write-Host "`nGoodbye!" -F DarkGreen; break }
        default { Write-Host "`nInvalid selection, please try again." }
    }
    Start-Sleep -Seconds 1

} while ($key -ne 'Q')
