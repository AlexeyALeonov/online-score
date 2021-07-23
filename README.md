# online-score

Allows to get a date, when your node was offline from the satellites' point of view.

It uses the default web dashboard port, http://localhost:14002

In the future there could be parameters for these scripts to specify where is your dashboard actually located.

## PowerShell
You need to enable PowerShell execution (by Administrator)
```PowerShell
Set-ExecutionPolicy RemoteSigned
```
In rare cases it's requires to set `unrestricted` execution policy
```PowerShell
Set-ExecutionPolicy Unrestricted
```
Then execute as a casual user (not as an Administrator):
```
.\Check-Online-Score.ps1
```

## bash
```
./check-online-score.sh
```
