@echo off

powershell -ExecutionPolicy Bypass -Command "& './emulator.ps1'"
powershell -ExecutionPolicy Bypass -Command "& './adb-restart.ps1'"
powershell -ExecutionPolicy Bypass -Command "& './check-devices.ps1'"
