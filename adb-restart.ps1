$prevColor = $Host.UI.RawUI.ForegroundColor
$Host.UI.RawUI.ForegroundColor = "Cyan"

# Killing the existing adb server
Write-Output "Killing the ADB server if running..."
$Host.UI.RawUI.ForegroundColor = $prevColor
Start-Process -NoNewWindow -Wait adb -ArgumentList "kill-server"
Write-Output "ADB server killed."

# Starting a new adb server listening on all interfaces
$Host.UI.RawUI.ForegroundColor = "Cyan"
Write-Output "Starting the ADB server on all interfaces..."
Start-Process -NoNewWindow adb -ArgumentList "-a", "server", "nodaemon"

$Host.UI.RawUI.ForegroundColor = $prevColor
