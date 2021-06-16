@echo -off
cls

echo (JM) Buscando disco de grabado de imagen...

if exist fs0:\imagen_juana_manso.nsh then
    echo (JM) Disco de clonado encontrado en fs0. Iniciando...
    fs0:\EFI\boot\bootx64.efi
end if

if exist fs1:\imagen_juana_manso.nsh then
    echo (JM) Disco de clonado encontrado en fs1. Iniciando...
    fs1:\EFI\boot\bootx64.efi
end if

if exist fs2:\imagen_juana_manso.nsh then
    echo (JM) Disco de clonado encontrado en fs2. Iniciando...
    fs2:\EFI\boot\bootx64.efi
end if

if exist fs3:\imagen_juana_manso.nsh then
    echo (JM) Disco de clonado encontrado en fs3. Iniciando...
    fs3:\EFI\boot\bootx64.efi
end if

if exist fs4:\imagen_juana_manso.nsh then
    echo (JM) Disco de clonado encontrado en fs4. Iniciando...
    fs4:\EFI\boot\bootx64.efi
end if

if exist fs5:\imagen_juana_manso.nsh then
    echo (JM) Disco de clonado encontrado en fs5. Iniciando...
    fs5:\EFI\boot\bootx64.efi
end if
