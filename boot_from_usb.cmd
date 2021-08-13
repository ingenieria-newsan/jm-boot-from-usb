@echo off
cls
echo (JM) Iniciando ...

:: Montar particion de arranque del disco
echo (JM) Montando disco de arranque en S: ...
mountvol S: /s

:: Eliminar archivos de arranque actuales
echo (JM) Eliminanndo archivos de arranque actuales ...
DEL /F /S /Q S:\EFI\*.*

:: Crear carpeta y copiar archivos de la aplicacion shell.efi
echo (JM) Copiando archivos de arranque nuevos ...
IF NOT EXIST S:\EFI\Boot mkdir S:\EFI\Boot
copy /Y .\efiapp\uefi_shell_min.efi S:\EFI\Boot\bootx64.efi
copy /Y .\efiapp\profiles.txt S:\EFI\Boot\profiles.txt

IF ERRORLEVEL 1 GOTO ERR ELSE echo (JM) Validando ...

:: Si todo fue OK
:OK
echo (JM) el proceso finalizó sin errores. El equipo se apagará en 5 seguendos.
mountvol S: /d
timeout 5
shutdown /s /f /t 0
GOTO END

:: Si ocurrio un error
:ERR
echo (JM) ocurio un error durante el proceso.
pause

:: Salida
:END
exit
