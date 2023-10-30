$prevColor = $Host.UI.RawUI.ForegroundColor
$Host.UI.RawUI.ForegroundColor = "Cyan"

# Checking the list of connected devices
Write-Output "Listing all connected devices..."
Start-Process -NoNewWindow adb -ArgumentList "devices"

$Host.UI.RawUI.ForegroundColor = $prevColor
