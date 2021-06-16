# Configurador de Booteo para proyecto JM
Cambia la configuración de inicio de Windowa 10 de modo tal que al siguiente arranque se inicie desde un SO Live.

# Compatibilidad
- Netbook Educativa Noblex SF20GM7

# Preparación
1. Copiar los archivos ubicados en el directorio ``autostart-files`` en el raiz del disco que se quiere arrancar automaticamente.
2. Editar el archivo ``startup.sh`` y cambiar la sección ``\EFI\boot\bootx64.efi`` con la ruta de inicio del SO Live.

# Modo de uso
1. Acceder al directo ``jm-boot-from-usb`` en una consola con privilegios altos.
2. Ejecutar el script ``boot-from-usb.cmd``.
3. El equipo se reiniciará automaticamente.

# Modo operativo
1. Montar particion de arranque Windows 10 como S:
2. Crear carpeta ``S:\EFI\JMBoot``.
3. Copiar archivo ``uefi_shell_min.efi`` como ``S:\EFI\JMBoot\bootx64.efi``.
4. Copiar archivo ``profiles.txt`` como ``S:\EFI\JMBoot\profiles.txt``.
5. Modificar la entrada ``{bootmgr}`` para que apunte a ``\EFI\JMBoot\bootx64.efi``.
6. Modificar el nombre de la entrada a ``System Image Deploy``.
7. Establecer la entrada ``{bootmgr}`` como ``default``.
8. Colocar la entrada ``{bootmgr}`` como primera opcion en la lista.
9. Desmontar la particion de arranque.
10. Enviar orden de apagado del sistema.
