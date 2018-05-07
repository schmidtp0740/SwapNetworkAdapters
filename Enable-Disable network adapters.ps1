if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
Get-NetAdapter -Name Ethernet | ? status -eq disabled | Enable-NetAdapter
Get-NetAdapter -Name Ethernet | ? status -eq up | Disable-NetAdapter -Confirm:$false
Get-NetAdapter -Name Wi-Fi | ? status -eq disabled | Enable-NetAdapter
Get-NetAdapter -Name Wi-fi | ? status -eq up | Disable-NetAdapter -Confirm:$false


