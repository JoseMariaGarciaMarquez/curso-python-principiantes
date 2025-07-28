# 🚀 Instalación y Configuración

## 🎯 Objetivos
- Instalar Python en tu sistema
- Configurar el entorno de desarrollo
- Verificar que todo funciona correctamente

## 📥 Instalación de Python

### Windows
1. Ve a [python.org](https://www.python.org/downloads/)
2. Descarga la versión más reciente de Python 3
3. Ejecuta el instalador
4. ⚠️ **IMPORTANTE**: Marca la casilla "Add Python to PATH"
5. Haz clic en "Install Now"

### macOS
```bash
# Opción 1: Desde python.org (recomendado)
# Descarga desde https://www.python.org/downloads/

# Opción 2: Usando Homebrew
brew install python
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install python3 python3-pip
```

## 🛠️ Editor de Código

Te recomendamos **Visual Studio Code**:
1. Descarga desde [code.visualstudio.com](https://code.visualstudio.com/)
2. Instala la extensión de Python

### Alternativas
- **PyCharm Community** (más completo)
- **Sublime Text** (ligero)
- **Notepad++** (Windows, básico)

## ✅ Verificación de la Instalación

Abre una terminal/consola y ejecuta:

```bash
python --version
```

O si estás en Linux/macOS:
```bash
python3 --version
```

Deberías ver algo como: `Python 3.11.0`

### Si no funciona
- **Windows**: Reinicia la terminal o revisa que marcaste "Add to PATH"
- **macOS/Linux**: Prueba con `python3` en lugar de `python`

## 🎯 Tu Primera Prueba

Crea un archivo llamado `test.py` con este contenido:

```python
print("¡Hola, Python!")
print("Mi primera línea de código")
```

Ejecuta el archivo:
```bash
python test.py
```

Si ves el mensaje en pantalla, ¡ya tienes Python funcionando! 🎉

## 📁 Organización del Espacio de Trabajo

Crea una carpeta para tus ejercicios:
```
mi-curso-python/
├── ejercicios/
├── proyectos/
└── notas.txt
```

## 🎁 Comando Útil: El Intérprete Interactivo

Escribe `python` en la terminal para abrir el intérprete:
```python
>>> print("¡Esto es Python!")
¡Esto es Python!
>>> 2 + 2
4
>>> exit()
```

---

**Siguiente**: [Tu Primer Programa](./primer-programa.md)
