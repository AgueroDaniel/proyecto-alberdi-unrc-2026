@echo off
setlocal
:: Windos es aburrido, para el no hay colores

if "%1"=="ejecutar" goto ejecutar
if "%1"=="instalar" goto instalar
goto help

:instalar
    echo --- Iniciando comprobacion de dependencias ---
    echo Nota: Se podria solicitar permisos de administrador si es necesario.

    :: Comprobacion rapida de Docker en Windows
    where docker >nul 2>nul
    if %errorlevel% equ 0 (
        echo Docker ya se encuentra instalado. Saltando este paso...
    ) else (
        echo [!] Docker no esta instalado. Por favor descargalo desde la pagina oficial:
        echo https://www.docker.com/products/docker-desktop/
    )

    :: Comprobacion rapida de Python en Windows
    where python >nul 2>nul
    if %errorlevel% equ 0 (
        echo El lenguaje Python ya se encuentra instalado. Saltando este paso...
    ) else (
        echo [!] Python no esta instalado. Por favor descargalo desde la pagina oficial:
        echo https://www.python.org/downloads/
    )
    goto fin

:ejecutar
    where docker >nul 2>nul
    if %errorlevel% equ 0 (
        echo Abriendo el navegador en http://localhost:5000 ...
        start http://localhost:5000
        
        echo Compilando y ejecutando el proyecto con Docker...
        docker compose up --build
    ) else (
        echo --- Por favor utilice el comando instalar para verificar las dependencias ---
        echo --- Para mas informacion ejecuta: manage.bat help ---
    )
    goto fin

:help
    echo ==============================================================
    echo    CENTRO DE MANDO - CLUB BAUTISTA
    echo ==============================================================
    echo Comando         Funcionalidad
    echo --------------------------------------------------------------
    echo instalar        Muestra las instrucciones y enlaces oficiales
    echo ejecutar        Compila y Ejecuta el proyecto con Docker
    echo help            Muestra este menu de ayuda
    echo --------------------------------------------------------------
    echo Uso: manage.bat [comando]
    echo ==============================================================
    goto fin

:fin
endlocal