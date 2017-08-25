# powershell-alert-reachability
A PowerShell function that checks if a host is reachable via the Test-Connection function. When the host is determined reachable a song is played.

# install this script so it is loaded automatically
If you want to have this function available on each load of PowerShell you can add it to your user's profile. To do this here are a few steps you can do:
'''
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
ise $PROFILE
'''
