$software = "LRSystemMonitor";
$installed = (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -Match $software })
$installed.displayname
if ($installed.displayName -contains "LRSystemMonitor") {
    Write-Host "LRSystemMonitor-installed"
}else{
    Write-Host "LRSystemMonitor-not-installed"
    Start-Process 'D:\LRSystemMonitor_64_7.4.8.8000.exe' "/quiet"
    }

$software = "FortiClient";
$installed = (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -Match $software })
$installed.displayname
if ($installed.displayName -contains "FortiClient") {
    Write-Host "FortiClient-installed"
}else{
    Write-Host "FortiClient-not-installed"
     Start-Process '' "/quiet"  }




$software = "LAPS.x64";
$installed = (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -Match $software })
$installed.displayname
if ($installed.displayName -contains "LAPS.x64") {
    Write-Host "LAPS.x64-installed"
}else{
    Write-Host "LAPS.x64-not-installed"
     Start-Process 'D:\LAPS.x64.msi' "/quiet"
    }
    
