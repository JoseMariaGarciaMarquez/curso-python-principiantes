# 📚 Recursos Adicionales - Curso Python

## 🎯 Enlaces Útiles

### Documentación Oficial
- **Python.org**: https://python.org
- **Documentación en Español**: https://docs.python.org/es/3/
- **Tutorial Oficial**: https://docs.python.org/es/3/tutorial/

### Herramientas Online
- **Repl.it**: https://replit.com (Editor online)
- **Python Tutor**: http://pythontutor.com (Visualiza ejecución)
- **Trinket**: https://trinket.io (Python en el navegador)

### Práctica y Ejercicios
- **HackerRank**: https://hackerrank.com/domains/python
- **LeetCode**: https://leetcode.com
- **Codewars**: https://codewars.com
- **Exercism**: https://exercism.io/tracks/python

### Comunidades
- **Reddit r/Python**: https://reddit.com/r/Python
- **Reddit r/LearnPython**: https://reddit.com/r/learnpython
- **Stack Overflow**: https://stackoverflow.com/questions/tagged/python
- **Python España**: https://python-es.org

## 📖 Libros Recomendados

### Para Principiantes
1. **"Python Crash Course"** - Eric Matthes
2. **"Automate the Boring Stuff"** - Al Sweigart (gratis online)
3. **"Learn Python the Hard Way"** - Zed Shaw

### Nivel Intermedio
1. **"Effective Python"** - Brett Slatkin
2. **"Python Tricks"** - Dan Bader
3. **"Fluent Python"** - Luciano Ramalho

## 🎥 Canales de YouTube

### En Español
- **Pildoras Informáticas**
- **Fazt**
- **HolaMundo**
- **Código Facilito**

### En Inglés
- **Programming with Mosh**
- **Corey Schafer**
- **Real Python**
- **Sentdex**

## 🛠️ Extensiones Útiles para VS Code

```json
{
  "extensiones_recomendadas": [
    "ms-python.python",           // Python oficial
    "ms-python.pylint",           // Linter
    "ms-python.autopep8",         // Formateo automático
    "christian-kohler.path-intellisense", // Autocompletado rutas
    "formulahendry.code-runner",  // Ejecutar código rápido
    "ms-vscode.vscode-icons",     // Iconos bonitos
    "bradlc.vscode-tailwindcss"   // Mejor resaltado
  ]
}
```

## 🐍 Código de Ejemplo Avanzado

### Decoradores Simples
```python
def mi_decorador(func):
    def wrapper():
        print("Antes de ejecutar la función")
        func()
        print("Después de ejecutar la función")
    return wrapper

@mi_decorador
def saludar():
    print("¡Hola!")

saludar()
```

### Manejo de Excepciones
```python
def dividir_seguro(a, b):
    try:
        resultado = a / b
        return resultado
    except ZeroDivisionError:
        print("Error: No se puede dividir por cero")
        return None
    except TypeError:
        print("Error: Los argumentos deben ser números")
        return None
    else:
        print("División exitosa")
    finally:
        print("Operación completada")

# Uso
print(dividir_seguro(10, 2))  # 5.0
print(dividir_seguro(10, 0))  # None
```

### List Comprehensions
```python
# Tradicional
numeros_pares = []
for i in range(10):
    if i % 2 == 0:
        numeros_pares.append(i ** 2)

# Con list comprehension
numeros_pares = [i ** 2 for i in range(10) if i % 2 == 0]
print(numeros_pares)  # [0, 4, 16, 36, 64]
```

### Generadores
```python
def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

# Uso
for num in fibonacci(10):
    print(num, end=" ")  # 0 1 1 2 3 5 8 13 21 34
```

## 🗂️ Estructura de Proyecto Recomendada

```
mi_proyecto/
├── README.md
├── requirements.txt
├── main.py
├── src/
│   ├── __init__.py
│   ├── models/
│   ├── utils/
│   └── config/
├── tests/
│   ├── __init__.py
│   └── test_main.py
├── docs/
└── data/
```

## 📦 Paquetes Populares

### Desarrollo Web
- **Flask**: Framework web ligero
- **Django**: Framework web completo
- **FastAPI**: API moderna y rápida

### Ciencia de Datos
- **NumPy**: Cálculos numéricos
- **Pandas**: Manipulación de datos
- **Matplotlib**: Gráficos
- **Scikit-learn**: Machine Learning

### Automatización
- **Requests**: HTTP requests
- **BeautifulSoup**: Web scraping
- **Selenium**: Automatización de navegador
- **Schedule**: Tareas programadas

## 🎨 Buenas Prácticas

### Nomenclatura
```python
# Variables y funciones: snake_case
mi_variable = 10
def calcular_promedio():
    pass

# Clases: PascalCase
class MiClase:
    pass

# Constantes: MAYÚSCULAS
PI = 3.14159
VELOCIDAD_LUZ = 299792458
```

### Comentarios
```python
# Comentario de línea simple

"""
Docstring para funciones y clases.
Explica qué hace, parámetros y retorno.
"""

def ejemplo(parametro):
    """
    Función de ejemplo.
    
    Args:
        parametro (str): Descripción del parámetro
        
    Returns:
        bool: Descripción del retorno
    """
    pass
```

### Imports
```python
# Orden de imports:
# 1. Librerías estándar
import os
import sys

# 2. Librerías de terceros
import requests
import pandas as pd

# 3. Imports locales
from mi_modulo import mi_funcion
```

## 🔧 Configuración de requirements.txt

```text
# requirements.txt
requests>=2.28.0
pandas>=1.5.0
matplotlib>=3.6.0
pytest>=7.0.0
```

Instalar dependencias:
```bash
pip install -r requirements.txt
```

## 🧪 Testing Básico con pytest

```python
# test_calculadora.py
import pytest
from calculadora import suma, division

def test_suma():
    assert suma(2, 3) == 5
    assert suma(-1, 1) == 0

def test_division():
    assert division(10, 2) == 5
    assert division(9, 3) == 3

def test_division_por_cero():
    with pytest.raises(ZeroDivisionError):
        division(10, 0)
```

Ejecutar tests:
```bash
pytest test_calculadora.py
```

## 🚀 Siguiente Nivel

### Después de este curso, considera aprender:
1. **Programación Orientada a Objetos** avanzada
2. **Frameworks web** (Flask/Django)
3. **APIs y servicios web**
4. **Bases de datos** (SQLite, PostgreSQL)
5. **Testing** y metodologías ágiles
6. **Deploy** y producción
7. **Git y control de versiones**

### Especializaciones posibles:
- **Desarrollo Web** (Flask, Django, FastAPI)
- **Ciencia de Datos** (Pandas, NumPy, Jupyter)
- **Machine Learning** (Scikit-learn, TensorFlow)
- **Automatización** (Selenium, Scrapy)
- **DevOps** (Docker, Kubernetes)

## 💡 Consejos Finales

1. **Practica diariamente**: Aunque sea 15-30 minutos
2. **Construye proyectos**: El aprendizaje activo es más efectivo
3. **Lee código de otros**: GitHub es una excelente fuente
4. **Participa en comunidades**: Hacer preguntas y ayudar a otros
5. **Mantente actualizado**: Python evoluciona constantemente
6. **No tengas miedo de los errores**: Son parte del aprendizaje

¡El viaje de aprendizaje nunca termina! 🚀

---

**¿Tienes preguntas?** Recuerda que la comunidad Python es muy acogedora y siempre dispuesta a ayudar.
