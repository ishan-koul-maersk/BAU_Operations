$credentials = Get-Credential 
# Pooled account credentials
# Get the server names from the text file
$serverNames = Get-Content -Path "C:\scripts\vmrestart.txt"
foreach ($serverName in $serverNames) {
Invoke-Command -ComputerName $serverName -Credential $credentials -ScriptBlock {
        Start-Process -FilePath "C:\TrendApexOne\TrendInstall.cmd" 
    }
    }
   # -ArgumentList "/qb /norestart" -Wait

#assuming TrendApexOne folder exists on VMs with TrendInstall.cmd in it. If not, please tell BAU to update template accordingly
