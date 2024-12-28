# Enable dark mode
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0

# Restart edge adding the flag to force dark mode
Stop-Process -Name msedge
Start-Process "msedge.exe" --enable-features=WebContentsForceDark

# Restart windows explorer
Stop-Process -Name explorer -Force
