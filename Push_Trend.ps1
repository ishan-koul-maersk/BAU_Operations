$credentials = Get-Credential
# Get the server names from the text file
$serverNames = Get-Content -Path "C:\scripts\vmrestart.txt"
foreach ($serverName in $serverNames) {
Invoke-Command -ComputerName $serverName -Credential $credentials -ScriptBlock {
        Start-Process -FilePath "C:\TrendApexOne\TrendInstall.cmd" 
    }
    }
   # -ArgumentList "/qb /norestart" -Wait
