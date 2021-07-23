foreach ($item in ("12tRQrMTWUWwzwGh18i7Fqs67kmdhH9t6aToeiwbo5mfS2rUmo",
                    "12EayRS2V1kEsWESU9QMRseFhdxYxKicsiFmxrsLZHeLUtdps3S",
                    "1wFTAgs9DP5RSnCqKV1eLf6N9wtk4EAtmN5DpSxcs8EjT69tGE",
                    "121RTSDpyNZVcEU84Ticf2L1ntiuUimbWgfATz21tuvgk3vzoA6")) {
    ((Invoke-WebRequest http://localhost:14002/api/sno/satellite/$item).Content | ConvertFrom-Json).auditHistory.windows |
        Where-Object{$_.totalCount -ne $_.onlineCount} | ForEach-Object{Write-Host $item; $_ | Format-Table -AutoSize}
}