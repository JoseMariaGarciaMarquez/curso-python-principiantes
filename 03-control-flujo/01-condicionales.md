# 🔄 Condicionales en Python

## 🎯 Objetivos

- Entender las estructuras condicionales
- Usar if, elif y else
- Crear decisiones en tus programas
- Combinar múltiples condiciones

## 🤔 ¿Qué son las Condicionales?

Las condicionales permiten que tu programa tome decisiones:

```python
edad = 18

if edad >= 18:
    print("Eres mayor de edad")
else:
    print("Eres menor de edad")
```

## 📝 Estructura IF

### IF básico

```python
temperatura = 25

if temperatura > 30:
    print("Hace calor")

print("Este mensaje siempre se muestra")
```

### IF con ELSE

```python
numero = int(input("Ingresa un número: "))

if numero > 0:
    print("El número es positivo")
else:
    print("El número es negativo o cero")
```

### IF con ELIF (else if)

```python
nota = int(input("Ingresa tu nota (0-100): "))

if nota >= 90:
    print("Excelente")
elif nota >= 80:
    print("Muy bueno")
elif nota >= 70:
    print("Bueno")
elif nota >= 60:
    print("Suficiente")
else:
    print("Insuficiente")
```

## 🔗 Condiciones Múltiples

### Usando AND

```python
edad = 20
tiene_licencia = True

if edad >= 18 and tiene_licencia:
    print("Puedes conducir")
else:
    print("No puedes conducir")
```

### Usando OR

```python
dia = "domingo"

if dia == "sábado" or dia == "domingo":
    print("Es fin de semana")
else:
    print("Es día laboral")
```

### Usando NOT

```python
esta_lloviendo = False

if not esta_lloviendo:
    print("Puedes salir a caminar")
else:
    print("Mejor quédate en casa")
```

## 🏗️ Condicionales Anidadas

```python
edad = 25
tiene_trabajo = True
salario = 50000

if edad >= 18:
    print("Eres mayor de edad")
    
    if tiene_trabajo:
        print("Tienes trabajo")
        
        if salario >= 30000:
            print("Puedes solicitar un préstamo")
        else:
            print("Tu salario es muy bajo para el préstamo")
    else:
        print("Necesitas conseguir trabajo")
else:
    print("Eres menor de edad")
```

## 📊 Operador Ternario

Una forma corta de escribir if-else:

```python
# Forma tradicional
edad = 20
if edad >= 18:
    mensaje = "Mayor de edad"
else:
    mensaje = "Menor de edad"

# Forma corta (operador ternario)
edad = 20
mensaje = "Mayor de edad" if edad >= 18 else "Menor de edad"
print(mensaje)
```

## 🏋️ Ejercicios Prácticos

### Ejercicio 1: Clasificador de Números

```python
# Programa que clasifica un número
numero = int(input("Ingresa un número: "))

if numero > 0:
    print(f"{numero} es positivo")
elif numero < 0:
    print(f"{numero} es negativo")
else:
    print("El número es cero")

# Verificar si es par o impar
if numero != 0:
    if numero % 2 == 0:
        print("Y es par")
    else:
        print("Y es impar")
```

### Ejercicio 2: Sistema de Calificaciones

```python
# Sistema de calificaciones mejorado
print("=== SISTEMA DE CALIFICACIONES ===")

materia = input("Materia: ")
nota = float(input("Nota (0-10): "))

if nota < 0 or nota > 10:
    print("Error: La nota debe estar entre 0 y 10")
else:
    if nota >= 9:
        calificacion = "Sobresaliente"
        mensaje = "¡Excelente trabajo!"
    elif nota >= 7:
        calificacion = "Notable"
        mensaje = "¡Muy bien!"
    elif nota >= 5:
        calificacion = "Aprobado"
        mensaje = "Has aprobado"
    else:
        calificacion = "Suspenso"
        mensaje = "Necesitas estudiar más"
    
    print(f"\nMateria: {materia}")
    print(f"Nota: {nota}")
    print(f"Calificación: {calificacion}")
    print(f"Comentario: {mensaje}")
```

### Ejercicio 3: Calculadora de Descuentos

```python
# Calculadora de descuentos en una tienda
print("=== CALCULADORA DE DESCUENTOS ===")

precio = float(input("Precio del producto: $"))
es_miembro = input("¿Eres miembro VIP? (si/no): ").lower()
cantidad = int(input("Cantidad de productos: "))

descuento = 0

# Descuento por ser miembro VIP
if es_miembro == "si":
    descuento += 10
    print("Descuento VIP: 10%")

# Descuento por cantidad
if cantidad >= 5:
    descuento += 15
    print("Descuento por cantidad: 15%")
elif cantidad >= 3:
    descuento += 10
    print("Descuento por cantidad: 10%")

# Calcular precio final
subtotal = precio * cantidad
descuento_total = subtotal * (descuento / 100)
precio_final = subtotal - descuento_total

print(f"\nSubtotal: ${subtotal:.2f}")
print(f"Descuento total: {descuento}% (${descuento_total:.2f})")
print(f"Precio final: ${precio_final:.2f}")
```

### Ejercicio 4: Juego de Adivinanza

```python
# Juego simple de adivinanza
import random

numero_secreto = random.randint(1, 10)
intento = int(input("Adivina el número (1-10): "))

if intento == numero_secreto:
    print("¡Felicidades! Has adivinado el número")
elif abs(intento - numero_secreto) == 1:
    print("¡Muy cerca! El número era", numero_secreto)
else:
    print("No has acertado. El número era", numero_secreto)

if intento > numero_secreto:
    print("Tu número era muy alto")
elif intento < numero_secreto:
    print("Tu número era muy bajo")
```

## 🎁 Ejercicio Extra: Sistema de Login

```python
# Sistema de login simple
print("=== SISTEMA DE LOGIN ===")

# Usuarios registrados (en un programa real estarían en una base de datos)
usuario_correcto = "admin"
contraseña_correcta = "python123"

usuario = input("Usuario: ")
contraseña = input("Contraseña: ")

if usuario == usuario_correcto and contraseña == contraseña_correcta:
    print("¡Bienvenido al sistema!")
    print("Acceso concedido")
    
    # Menú después del login
    print("\n¿Qué deseas hacer?")
    print("1. Ver perfil")
    print("2. Configuración")
    print("3. Salir")
    
    opcion = input("Selecciona una opción: ")
    
    if opcion == "1":
        print("Mostrando perfil de usuario...")
    elif opcion == "2":
        print("Abriendo configuración...")
    elif opcion == "3":
        print("¡Hasta luego!")
    else:
        print("Opción no válida")
        
else:
    print("Usuario o contraseña incorrectos")
    print("Acceso denegado")
    
    # Dar pistas sobre qué está mal
    if usuario != usuario_correcto:
        print("El usuario no existe")
    else:
        print("La contraseña es incorrecta")
```

## 🔍 Errores Comunes

### Indentación incorrecta

```python
# ❌ Incorrecto
if True:
print("Hola")  # Falta indentación

# ✅ Correcto
if True:
    print("Hola")  # 4 espacios de indentación
```

### Usar = en lugar de ==

```python
# ❌ Incorrecto
if x = 5:  # Error de sintaxis

# ✅ Correcto
if x == 5:  # Comparación
```

### Olvidar los dos puntos

```python
# ❌ Incorrecto
if x > 5
    print("Mayor que 5")

# ✅ Correcto
if x > 5:
    print("Mayor que 5")
```

## ✅ Checklist

- [ ] Entiendes la sintaxis de if, elif, else
- [ ] Sabes usar operadores lógicos en condiciones
- [ ] Puedes crear condicionales anidadas
- [ ] Has completado al menos 3 ejercicios
- [ ] Comprendes la importancia de la indentación

---

**Siguiente**: [Bucles](./02-bucles.md)
