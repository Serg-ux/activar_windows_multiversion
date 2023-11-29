@echo off
setlocal enabledelayedexpansion

:: Definir colores
set "colorMensaje=6"
set "colorError=4"

:: Verificar si se ejecutó como administrador
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if "%errorlevel%" neq "0" (
    color %colorError%
    echo.
    echo ^<================================================^>
    echo ^< Debe ejecutar este archivo como administrador. ^>
    echo ^<================================================^>
    echo.
    pause
    exit /b
)



:: Configurar colores
color %colorMensaje%

echo.
echo ^<=========================================^>
echo ^<     Seleccione su sistema operativo     ^>
echo ^<=========================================^>
echo.

:: Configurar colores del menú

echo ^1^) Windows 10 Home
echo ^2^) Windows 10 Pro
echo ^3^) Windows 11 Home
echo ^4^) Windows 11 Pro
echo.

:: Solicitar opción
color 6
set /p opcion=%Ingrese el numero correspondiente al sistema operativo: 

:: Configurar colores para la salida

if %opcion% equ 1 (
    set "clave=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    echo.
    echo ^<========================================^>
    echo ^<    Ha seleccionado Windows 10 Home.    ^>
    echo ^<========================================^>
    echo.
) else if %opcion% equ 2 (
    set "clave=VK7JG-NPHTM-C97JM-9MPGT-3V66T"
    echo.
    echo ^<========================================^>
    echo ^<    Ha seleccionado Windows 10 Pro.     ^>
    echo ^<========================================^>
    echo.
) else if %opcion% equ 3 (
    set "clave=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    echo.
    echo ^<========================================^>
    echo ^<    Ha seleccionado Windows 11 Home.    ^>
    echo ^<========================================^>
    echo.
) else if %opcion% equ 4 (
    set "clave=W269N-WFGWX-YVC9B-4J6C9-T83GX"
    echo.
    echo ^<========================================^>
    echo ^<    Ha seleccionado Windows 11 Pro.     ^>
    echo ^<========================================^>
    echo.
) else (
    echo.
    echo ^<========================================^>
    echo ^<           Opción no válida.            ^>
    echo ^<========================================^>
    echo.
    exit /b
)

echo Su clave de activación de Windows es: %clave%

echo.
echo Activando Windows...
echo.

:: Configurar colores para los comandos
slmgr /skms kms.digiboy.ir
slmgr /ipk "%clave%"
slmgr /ato

endlocal
