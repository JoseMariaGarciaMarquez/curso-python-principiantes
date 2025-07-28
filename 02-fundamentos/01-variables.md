# 📦 Variables y Tipos de Datos

## 🎯 Objetivos

- Entender qué son las variables
- Conocer los tipos de datos básicos
- Aprender a crear y usar variables
- Convertir entre tipos de datos

## 🔤 ¿Qué son las Variables?

Las variables son como "cajas" donde guardamos información:

```python
nombre = "María"
edad = 28
es_estudiante = True
```

### Reglas para nombres de variables

✅ **Permitido:**
```python
nombre = "Juan"
edad_usuario = 25
numero_1 = 10
mi_variable = "datos"
```

❌ **No permitido:**
```python
2nombre = "Juan"        # No puede empezar con número
mi-variable = "datos"   # No usar guiones
class = "Python"       # No usar palabras reservadas
```

## 📊 Tipos de Datos Básicos

### 1. Texto (str - string)

```python
nombre = "Ana"
apellido = 'García'
mensaje = "¡Hola Python!"

print(type(nombre))  # <class 'str'>
```

### 2. Números Enteros (int)

```python
edad = 25
año = 2024
temperatura = -5

print(type(edad))  # <class 'int'>
```

### 3. Números Decimales (float)

```python
precio = 19.99
altura = 1.75
pi = 3.14159

print(type(precio))  # <class 'float'>
```

### 4. Verdadero/Falso (bool)

```python
es_mayor = True
esta_lloviendo = False
tiene_licencia = True

print(type(es_mayor))  # <class 'bool'>
```

## 🔄 Trabajando con Variables

### Asignación y reasignación

```python
# Crear variable
contador = 0
print(contador)  # 0

# Cambiar valor
contador = 5
print(contador)  # 5

# Usar la variable en operaciones
contador = contador + 1
print(contador)  # 6
```

### Múltiples asignaciones

```python
# Asignar el mismo valor
a = b = c = 10

# Asignar valores diferentes
x, y, z = 1, 2, 3
print(x, y, z)  # 1 2 3
```

## 🔧 Función `type()` e `input()`

### Verificar tipos

```python
dato = 42
print(type(dato))  # <class 'int'>

dato = "Hola"
print(type(dato))  # <class 'str'>
```

### Entrada del usuario

```python
nombre = input("¿Cómo te llamas? ")
print("Hola", nombre)
```

**⚠️ Importante:** `input()` siempre devuelve texto (string)

## 🔄 Conversión de Tipos

### String a número

```python
edad_texto = "25"
edad_numero = int(edad_texto)
print(edad_numero + 5)  # 30

precio_texto = "19.99"
precio_numero = float(precio_texto)
print(precio_numero * 2)  # 39.98
```

### Número a string

```python
edad = 25
mensaje = "Tengo " + str(edad) + " años"
print(mensaje)  # Tengo 25 años
```

### Ejemplos prácticos

```python
# Programa que suma dos números del usuario
numero1 = input("Primer número: ")
numero2 = input("Segundo número: ")

suma = int(numero1) + int(numero2)
print("La suma es:", suma)
```

## 🏋️ Ejercicios Prácticos

### Ejercicio 1: Variables Básicas

```python
# Crea variables con tu información
mi_nombre = ""  # Tu nombre
mi_edad = 0     # Tu edad
mi_altura = 0.0 # Tu altura en metros
soy_estudiante = True  # ¿Eres estudiante?

# Muestra la información
print("Nombre:", mi_nombre)
print("Edad:", mi_edad)
print("Altura:", mi_altura)
print("Estudiante:", soy_estudiante)
```

### Ejercicio 2: Calculadora de Edad

```python
# Programa que calcula la edad en diferentes unidades
edad_años = int(input("¿Cuántos años tienes? "))

edad_meses = edad_años * 12
edad_dias = edad_años * 365

print("Tienes aproximadamente:")
print(edad_meses, "meses")
print(edad_dias, "días")
```

### Ejercicio 3: Intercambio de Variables

```python
# Intercambia los valores de dos variables
a = 10
b = 20

print("Antes - a:", a, "b:", b)

# Tu código para intercambiar aquí
# Pista: necesitas una variable temporal

print("Después - a:", a, "b:", b)
```

## 🎁 Ejercicio Extra: Mini Perfil

```python
# Crea un programa que recopile información del usuario
print("=== CREANDO TU PERFIL ===")

nombre = input("Nombre: ")
edad = int(input("Edad: "))
ciudad = input("Ciudad: ")
comida_favorita = input("Comida favorita: ")

print("\n=== TU PERFIL ===")
print(f"Nombre: {nombre}")
print(f"Edad: {edad} años")
print(f"Ciudad: {ciudad}")
print(f"Comida favorita: {comida_favorita}")
```

## 🔍 Errores Comunes

### Error de tipo

```python
edad = "25"
resultado = edad + 5  # ❌ Error: no se puede sumar string + int

# Solución:
edad = int("25")
resultado = edad + 5  # ✅ Correcto
```

### Variable no definida

```python
print(mi_variable)  # ❌ Error: variable no existe

# Solución:
mi_variable = "Hola"
print(mi_variable)  # ✅ Correcto
```

## ✅ Checklist

- [ ] Entiendes qué son las variables
- [ ] Conoces los 4 tipos básicos de datos
- [ ] Sabes usar `type()` e `input()`
- [ ] Puedes convertir entre tipos
- [ ] Has completado al menos 2 ejercicios

---

**Siguiente**: [Operadores](./02-operadores.md)
