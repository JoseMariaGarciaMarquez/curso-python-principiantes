# ⚡ Operadores en Python

## 🎯 Objetivos

- Conocer los diferentes tipos de operadores
- Realizar operaciones matemáticas
- Comparar valores
- Combinar condiciones lógicas

## ➕ Operadores Aritméticos

### Operaciones básicas

```python
# Suma
resultado = 10 + 5  # 15

# Resta
resultado = 10 - 5  # 5

# Multiplicación
resultado = 10 * 5  # 50

# División
resultado = 10 / 5  # 2.0 (siempre devuelve float)

# División entera
resultado = 10 // 3  # 3 (sin decimales)

# Módulo (resto)
resultado = 10 % 3   # 1

# Potencia
resultado = 2 ** 3   # 8 (2 elevado a 3)
```

### Orden de operaciones

```python
# Python respeta el orden matemático
resultado = 2 + 3 * 4        # 14 (no 20)
resultado = (2 + 3) * 4      # 20
resultado = 2 ** 3 * 4       # 32
resultado = (2 ** 3) * 4     # 32
```

## 🔢 Operadores de Asignación

```python
# Asignación básica
x = 10

# Asignación con operación
x += 5   # Equivale a: x = x + 5
x -= 3   # Equivale a: x = x - 3
x *= 2   # Equivale a: x = x * 2
x /= 4   # Equivale a: x = x / 4
x **= 2  # Equivale a: x = x ** 2
x %= 3   # Equivale a: x = x % 3
```

## ⚖️ Operadores de Comparación

```python
a = 10
b = 5

# Igualdad
print(a == b)   # False

# Desigualdad
print(a != b)   # True

# Mayor que
print(a > b)    # True

# Menor que
print(a < b)    # False

# Mayor o igual
print(a >= b)   # True

# Menor o igual
print(a <= b)   # False
```

### Comparando strings

```python
nombre1 = "Ana"
nombre2 = "ana"

print(nombre1 == nombre2)    # False (case sensitive)
print(nombre1.lower() == nombre2.lower())  # True
```

## 🧠 Operadores Lógicos

### AND, OR, NOT

```python
# AND - ambas condiciones deben ser True
edad = 20
tiene_licencia = True
puede_conducir = edad >= 18 and tiene_licencia
print(puede_conducir)  # True

# OR - al menos una condición debe ser True
es_fin_semana = True
es_feriado = False
puede_descansar = es_fin_semana or es_feriado
print(puede_descansar)  # True

# NOT - invierte el valor
esta_lloviendo = False
buen_tiempo = not esta_lloviendo
print(buen_tiempo)  # True
```

### Tabla de verdad

```python
# AND
print(True and True)    # True
print(True and False)   # False
print(False and True)   # False
print(False and False)  # False

# OR
print(True or True)     # True
print(True or False)    # True
print(False or True)    # True
print(False or False)   # False

# NOT
print(not True)         # False
print(not False)        # True
```

## 🔍 Operadores de Membresía

```python
# in - verifica si está contenido
texto = "Python es genial"
print("Python" in texto)      # True
print("Java" in texto)        # False

# not in - verifica si NO está contenido
print("Java" not in texto)    # True
```

## 🏋️ Ejercicios Prácticos

### Ejercicio 1: Calculadora Básica

```python
# Solicita dos números y realiza operaciones
num1 = float(input("Primer número: "))
num2 = float(input("Segundo número: "))

print("Suma:", num1 + num2)
print("Resta:", num1 - num2)
print("Multiplicación:", num1 * num2)

if num2 != 0:
    print("División:", num1 / num2)
else:
    print("No se puede dividir por cero")
```

### Ejercicio 2: Verificador de Edad

```python
# Verifica si alguien puede votar
edad = int(input("¿Cuál es tu edad? "))
puede_votar = edad >= 18

print("¿Puedes votar?", puede_votar)

if puede_votar:
    print("¡Ya puedes participar en las elecciones!")
else:
    años_faltantes = 18 - edad
    print(f"Te faltan {años_faltantes} años para votar")
```

### Ejercicio 3: Calculadora de Propinas

```python
# Calcula la propina de una cuenta
cuenta = float(input("Total de la cuenta: $"))
porcentaje = float(input("Porcentaje de propina (ej: 15): "))

propina = cuenta * (porcentaje / 100)
total = cuenta + propina

print(f"Cuenta: ${cuenta:.2f}")
print(f"Propina ({porcentaje}%): ${propina:.2f}")
print(f"Total a pagar: ${total:.2f}")
```

### Ejercicio 4: Verificador de Contraseñas

```python
# Verifica si una contraseña es segura
contraseña = input("Ingresa una contraseña: ")

longitud_ok = len(contraseña) >= 8
tiene_numero = any(c.isdigit() for c in contraseña)
tiene_mayuscula = any(c.isupper() for c in contraseña)

es_segura = longitud_ok and tiene_numero and tiene_mayuscula

print("¿Es segura?", es_segura)

if not es_segura:
    print("La contraseña debe tener:")
    if not longitud_ok:
        print("- Al menos 8 caracteres")
    if not tiene_numero:
        print("- Al menos un número")
    if not tiene_mayuscula:
        print("- Al menos una mayúscula")
```

## 🎁 Ejercicio Extra: Calculadora de IMC

```python
# Calcula el Índice de Masa Corporal
print("=== CALCULADORA DE IMC ===")

peso = float(input("Tu peso en kg: "))
altura = float(input("Tu altura en metros: "))

imc = peso / (altura ** 2)

print(f"Tu IMC es: {imc:.2f}")

# Clasificación del IMC
if imc < 18.5:
    categoria = "Bajo peso"
elif 18.5 <= imc < 25:
    categoria = "Peso normal"
elif 25 <= imc < 30:
    categoria = "Sobrepeso"
else:
    categoria = "Obesidad"

print(f"Categoría: {categoria}")
```

## 🔍 Errores Comunes

### División por cero

```python
resultado = 10 / 0  # ❌ ZeroDivisionError

# Solución:
divisor = 0
if divisor != 0:
    resultado = 10 / divisor
else:
    print("No se puede dividir por cero")
```

### Comparación vs asignación

```python
# Asignación (un =)
x = 5

# Comparación (dos ==)
if x == 5:
    print("x es igual a 5")
```

### Precedencia de operadores

```python
# Incorrecto
resultado = 5 + 3 * 2    # 11, no 16

# Correcto si quieres 16
resultado = (5 + 3) * 2  # 16
```

## ✅ Checklist

- [ ] Conoces los operadores aritméticos
- [ ] Entiendes los operadores de comparación
- [ ] Sabes usar operadores lógicos (and, or, not)
- [ ] Has practicado con los ejercicios
- [ ] Comprendes la precedencia de operadores

---

**Siguiente**: [Entrada y Salida](./03-input-output.md)
