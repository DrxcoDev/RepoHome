@echo off
setlocal enabledelayedexpansion


set commandName=repo
rem Verifica si se proporciona un argumento
if "%1"=="" (
    echo ERROR: Debes proporcionar un nombre para la carpeta.
    echo Uso: %~nx0 [nombre_carpeta]
    exit /b 1
)

set nombre_carpeta=%1




if "%2"=="game" (
    echo ERROR: Debes proporcionar el estilo de tu repositorio.
    echo Uso: %~nx0 [
        mkdir "%nombre_carpeta%"
        mkdir "%nombre_carpeta%/config"
        mkdir "%nombre_carpeta%/assets"
        mkdir "%nombre_carpeta%/assets/scripts"
        mkdir "%nombre_carpeta%/escenes"
        mkdir "%nombre_carpeta%/packages"
        mkdir "%nombre_carpeta%/assets/sprites"
        mkdir "%nombre_carpeta%/assets/textures"
        mkdir "%nombre_carpeta%/assets/shaders"
        mkdir "%nombre_carpeta%/log"]
)

if "%2"=="default" (
    echo ERROR: Debes proporcionar el estilo de tu repositorio.
    echo Uso: %~nx0 [
        mkdir "%nombre_carpeta%"
        mkdir "%nombre_carpeta%/src"
        mkdir "%nombre_carpeta%/src/static"
        mkdir "%nombre_carpeta%/src/main"
        mkdir "%nombre_carpeta%/src/doc"]
)

if "%2"=="web" (
    echo ERROR: Debes proporcionar el estilo de tu repositorio.
    echo Uso: %~nx0 [
        mkdir "%nombre_carpeta%"
        mkdir "%nombre_carpeta%/src"
        mkdir "%nombre_carpeta%/src/static"
        mkdir "%nombre_carpeta%/src/template"
        mkdir "%nombre_carpeta%/src/doc"
        mkdir "%nombre_carpeta%/src/scripts"]
)






echo ¡Hola! Se ha creado la carpeta "%nombre_carpeta%"

endlocal