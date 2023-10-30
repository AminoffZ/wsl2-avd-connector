$prevColor = $Host.UI.RawUI.ForegroundColor
$Host.UI.RawUI.ForegroundColor = "Cyan"

# Running the emulator
Write-Output "Starting the emulator..."
Start-Process -NoNewWindow emulator -ArgumentList "-avd Flutter"

$Host.UI.RawUI.ForegroundColor = $prevColor