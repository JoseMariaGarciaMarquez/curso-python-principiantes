@echo off
REM 🚀 Script de configuración automática para GitHub (Windows)

echo 🐍 === CONFIGURACIÓN AUTOMÁTICA PARA GITHUB ===
echo.

REM Verificar que Git está instalado
git --version >nul 2>&1
if errorlevel 1 (
    echo [✗] Git no está instalado. Por favor instala Git primero.
    pause
    exit /b 1
)
echo [✓] Git está instalado

REM Verificar que estamos en la carpeta correcta
if not exist "guia-python.png" (
    echo [✗] No se encuentra guia-python.png. Asegúrate de estar en la carpeta del curso.
    pause
    exit /b 1
)
echo [✓] Archivos del curso encontrados

REM Solicitar información del usuario
echo.
echo [INFO] Configuración de usuario Git:
set /p user_name="Ingresa tu nombre: "
set /p user_email="Ingresa tu email: "
set /p github_user="Ingresa tu usuario de GitHub: "

REM Configurar Git
git config --global user.name "%user_name%"
git config --global user.email "%user_email%"
echo [✓] Configuración de Git completada

REM Preparar archivos para GitHub
if exist "README.md" (
    move README.md README-LOCAL.md >nul
    echo [INFO] README local guardado como README-LOCAL.md
)

if exist "README-GITHUB.md" (
    move README-GITHUB.md README.md >nul
    echo [✓] README de GitHub configurado
)

REM Actualizar enlaces en README con PowerShell
powershell -Command "(Get-Content README.md) -replace 'TU_USUARIO', '%github_user%' | Set-Content README.md"
powershell -Command "(Get-Content README.md) -replace 'tu-email@ejemplo.com', '%user_email%' | Set-Content README.md"
echo [✓] Enlaces actualizados en README

REM Inicializar repositorio Git
if not exist ".git" (
    git init
    echo [✓] Repositorio Git inicializado
) else (
    echo [!] El repositorio Git ya existe
)

REM Agregar archivos
git add .
echo [✓] Archivos agregados al repositorio

REM Commit inicial
git commit -m "🎉 Primera versión del curso de Python para principiantes" -m "" -m "- ✅ Módulos completos de fundamentos" -m "- ✅ Notebooks interactivos" -m "- ✅ Proyectos prácticos" -m "- ✅ Ejercicios progresivos" -m "- ✅ Documentación completa"
echo [✓] Commit inicial creado

REM Configurar rama main
git branch -M main
echo [✓] Rama principal configurada como 'main'

REM Mostrar instrucciones finales
echo.
echo 🎉 ¡Configuración completada!
echo.
echo [INFO] Próximos pasos:
echo 1. Crea un repositorio en GitHub con el nombre: curso-python-principiantes
echo 2. Ejecuta estos comandos:
echo.
echo git remote add origin https://github.com/%github_user%/curso-python-principiantes.git
echo git push -u origin main
echo.
echo [INFO] ¡Tu curso estará listo en GitHub!
echo.
echo [!] Recuerda: Asegúrate de que el repositorio en GitHub esté creado antes de hacer push
echo.
pause
