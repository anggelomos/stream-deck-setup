# Disable dark mode
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1

# Restart edge adding the flag to force dark mode
Stop-Process -Name msedge
Start-Process "msedge.exe" --disable-features=WebContentsForceDark

# Restart windows explorer
Stop-Process -Name explorer -Force
