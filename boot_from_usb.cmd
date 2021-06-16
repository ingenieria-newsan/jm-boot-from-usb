@echo off
cls
echo (JM) Iniciando...

:: Montar particion de arranque del disco
mountvol S: /s

:: Crear carpeta y copiar archivos de la aplicacion shell.efi
IF NOT EXIST S:\EFI\JMBoot mkdir S:\EFI\JMBoot
copy /Y .\efiapp\uefi_shell_min.efi S:\EFI\JMBoot\bootx64.efi
copy /Y .\efiapp\profiles.txt S:\EFI\JMBoot\profiles.txt

:: Creo y configuro una nueva entrada UEFI
bcdedit /set {bootmgr} path \EFI\JMBoot\bootx64.efi
bcdedit /set {bootmgr} description "System Image Deploy"
bcdedit /default {bootmgr}
bcdedit /displayorder {bootmgr} /addfirst

IF ERRORLEVEL 1 GOTO ERR ELSE echo (JM) Entrada UEFI creada y configurada.

:: Si todo fue OK
:OK
echo (JM) el proceso finalizó sin errores. El equipo se apagará en 5 seguendos.
mountvol S: /d
timeout 5
shutdown /r /f /t 0
GOTO END

:: Si ocurrio un error
:ERR
echo (JM) ocurio un error durante el proceso.
pause

:: Salida
:END
exit
