@echo off
cls
echo (JM) Este script restaura el punto de inicio de Windows Boot Manager.
bcdedit /set {bootmgr} path /EFI/Microsoft/Boot/bootmgr.efi
bcdedit /set {bootmgr} description "Windows Boot Manager"
echo (JM) el proceso finalizo. El equipo se apagará en 5 seguendos.
timeout 5
shutdown /r /f /t 0
