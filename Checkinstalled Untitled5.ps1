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
    
$software = "Endgame";
$installed = (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -Match $software })
$installed.displayname
if ($installed.displayName -contains "Endgame") {
    Write-Host "Endgame installed"
}else{
    Write-Host "Endgame-not-installed"
     Invoke-WebRequest -Uri https://paymentus-deployment-installers.s3.amazonaws.com/SensorWindowsInstaller-IT-Sensor-3.55.1.cfg?X-Amz-Algorithm=AWS4-HMAC-SHA256'&'X-Amz-Credential=AKIA2TSQZD345EK7GMBE/20200928/us-east-1/s3/aws4_request'&'X-Amz-Date=20200928T144018Z'&'X-Amz-Expires=604794'&'X-Amz-Signature=b657a6de994feabb55a5864c58549218b4562b4e39ac35ada91b881eacaf0245'&'X-Amz-SignedHeaders=host'&'response-content-disposition=inline -OutFile SensorWindowsInstaller-IT-Sensor-3.55.1.cfg; 
Invoke-WebRequest -Uri https://paymentus-deployment-installers.s3.amazonaws.com/SensorWindowsInstaller-IT-Sensor-3.55.1.exe?X-Amz-Algorithm=AWS4-HMAC-SHA256'&'X-Amz-Credential=AKIA2TSQZD345EK7GMBE/20200928/us-east-1/s3/aws4_request'&'X-Amz-Date=20200928T144119Z'&'X-Amz-Expires=604796'&'X-Amz-Signature=6aa27ab6860cc5fea9b92a03c656467b786a6be76f5d16f11448c72c6aedf9c1'&'X-Amz-SignedHeaders=host'&'response-content-disposition=inline -OutFile SensorWindowsInstaller-IT-Sensor-3.55.1.exe;
$Command = ".\SensorWindowsInstaller-IT-Sensor-3.55.1.exe -c .\SensorWindowsInstaller-IT-Sensor-3.55.1.cfg -k 657366978028D8303F73 -l endgame_install.log"; 
Invoke-Expression $Command; 
Get-Content endgame_install.log; 
    }