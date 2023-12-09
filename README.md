# WSL2 AVD Connector

Minimal Android Virtual Device emulator on Windows that can link to WSL2.

## Reference Guide

Highly recommend going through this guide to make this work as intended.

### Installing Flutter on WSL2 - Windows 10 (no affiliation)

- [Part 1](https://joshkautz.medium.com/installing-flutter-2-0-on-wsl2-2fbf0a354c78)
- [Part 2](https://joshkautz.medium.com/developing-with-flutter-2-0-on-wsl2-a00bd064cf2c)

## Setup

### On Windows

1. Install the Android dependencies

2. Make sure you have set the following to your PATH:

- ```<Android Installation Destination>\cmdline-tools\tools\bin```
- ```<Android Installation Destination>\emulator```
- ```<Android Installation Destination>\platform-tools```

3. Run the ```connector.bat```.

### In WSL

1. ```echo -e "export ADB_SERVER_SOCKET=tcp:\$(cat /etc/resolv.conf | grep nameserver | cut -d' ' -f2):5037" >> $HOME/.bashrc;```

2. ```source $HOME/.bashrc```
