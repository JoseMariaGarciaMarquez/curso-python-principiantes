#!/bin/bash
# 🚀 Script de configuración automática para GitHub

echo "🐍 === CONFIGURACIÓN AUTOMÁTICA PARA GITHUB ==="
echo ""

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Función para mostrar mensajes
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[!]${NC} $1"
}

print_error() {
    echo -e "${RED}[✗]${NC} $1"
}

# Verificar que Git está instalado
if ! command -v git &> /dev/null; then
    print_error "Git no está instalado. Por favor instala Git primero."
    exit 1
fi

print_success "Git está instalado"

# Verificar que estamos en la carpeta correcta
if [ ! -f "guia-python.png" ]; then
    print_error "No se encuentra guia-python.png. Asegúrate de estar en la carpeta del curso."
    exit 1
fi

print_success "Archivos del curso encontrados"

# Solicitar información del usuario
echo ""
print_status "Configuración de usuario Git:"
read -p "Ingresa tu nombre: " user_name
read -p "Ingresa tu email: " user_email
read -p "Ingresa tu usuario de GitHub: " github_user

# Configurar Git
git config --global user.name "$user_name"
git config --global user.email "$user_email"
print_success "Configuración de Git completada"

# Preparar archivos para GitHub
if [ -f "README.md" ]; then
    mv README.md README-LOCAL.md
    print_status "README local guardado como README-LOCAL.md"
fi

if [ -f "README-GITHUB.md" ]; then
    mv README-GITHUB.md README.md
    print_success "README de GitHub configurado"
fi

# Actualizar enlaces en README con el usuario real
sed -i.bak "s/TU_USUARIO/$github_user/g" README.md
sed -i.bak "s/tu-email@ejemplo.com/$user_email/g" README.md
rm README.md.bak 2>/dev/null
print_success "Enlaces actualizados en README"

# Inicializar repositorio Git
if [ ! -d ".git" ]; then
    git init
    print_success "Repositorio Git inicializado"
else
    print_warning "El repositorio Git ya existe"
fi

# Agregar archivos
git add .
print_success "Archivos agregados al repositorio"

# Commit inicial
git commit -m "🎉 Primera versión del curso de Python para principiantes

- ✅ Módulos completos de fundamentos
- ✅ Notebooks interactivos 
- ✅ Proyectos prácticos
- ✅ Ejercicios progresivos
- ✅ Documentación completa"

print_success "Commit inicial creado"

# Configurar rama main
git branch -M main
print_success "Rama principal configurada como 'main'"

# Mostrar instrucciones finales
echo ""
echo "🎉 ¡Configuración completada!"
echo ""
print_status "Próximos pasos:"
echo "1. Crea un repositorio en GitHub con el nombre: curso-python-principiantes"
echo "2. Ejecuta estos comandos:"
echo ""
echo -e "${YELLOW}git remote add origin https://github.com/$github_user/curso-python-principiantes.git${NC}"
echo -e "${YELLOW}git push -u origin main${NC}"
echo ""
print_status "¡Tu curso estará listo en GitHub!"
echo ""
print_warning "Recuerda: Asegúrate de que el repositorio en GitHub esté creado antes de hacer push"
