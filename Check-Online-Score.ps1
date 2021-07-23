foreach ($item in ((Invoke-WebRequest http://localhost:14002/api/sno).Content | ConvertFrom-Json).satellites.id) {
    ((Invoke-WebRequest http://localhost:14002/api/sno/satellite/$item).Content | ConvertFrom-Json).auditHistory.windows |
        Where-Object{$_.totalCount -ne $_.onlineCount} | ForEach-Object{Write-Host $item; $_ | Format-Table -AutoSize}
}