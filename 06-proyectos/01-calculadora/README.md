# 🎯 Proyecto 1: Calculadora Interactiva

![Guía de Python](../../guia-python.png)

## 📋 Descripción del Proyecto

Vamos a crear una calculadora interactiva que pueda realizar múltiples operaciones y tenga un menú de opciones. Este proyecto combina todo lo que has aprendido hasta ahora.

## 🎯 Objetivos

- Aplicar variables, operadores y condicionales
- Crear un programa interactivo
- Manejar errores básicos
- Estructurar código de forma organizada

## 🚀 Funcionalidades

La calculadora incluirá:
- ✅ Operaciones básicas (+, -, *, /)
- ✅ Operaciones avanzadas (potencia, raíz cuadrada)
- ✅ Menú interactivo
- ✅ Validación de entrada
- ✅ Historial de operaciones
- ✅ Opción de salir

## 💻 Código Completo

### calculadora.py

```python
import math

def mostrar_menu():
    """Muestra el menú principal de la calculadora"""
    print("\n" + "="*40)
    print("🧮 CALCULADORA INTERACTIVA")
    print("="*40)
    print("1. Suma")
    print("2. Resta") 
    print("3. Multiplicación")
    print("4. División")
    print("5. Potencia")
    print("6. Raíz cuadrada")
    print("7. Ver historial")
    print("8. Limpiar historial")
    print("9. Salir")
    print("="*40)

def obtener_numero(mensaje):
    """Solicita un número al usuario con validación"""
    while True:
        try:
            numero = float(input(mensaje))
            return numero
        except ValueError:
            print("❌ Error: Por favor ingresa un número válido")

def suma(a, b):
    """Realiza la suma de dos números"""
    resultado = a + b
    return f"{a} + {b} = {resultado}"

def resta(a, b):
    """Realiza la resta de dos números"""
    resultado = a - b
    return f"{a} - {b} = {resultado}"

def multiplicacion(a, b):
    """Realiza la multiplicación de dos números"""
    resultado = a * b
    return f"{a} × {b} = {resultado}"

def division(a, b):
    """Realiza la división de dos números"""
    if b == 0:
        return "❌ Error: No se puede dividir por cero"
    resultado = a / b
    return f"{a} ÷ {b} = {resultado}"

def potencia(a, b):
    """Calcula a elevado a la potencia b"""
    resultado = a ** b
    return f"{a}^{b} = {resultado}"

def raiz_cuadrada(a):
    """Calcula la raíz cuadrada de un número"""
    if a < 0:
        return "❌ Error: No se puede calcular la raíz cuadrada de un número negativo"
    resultado = math.sqrt(a)
    return f"√{a} = {resultado}"

def main():
    """Función principal de la calculadora"""
    historial = []
    
    print("¡Bienvenido a la Calculadora Interactiva! 🧮")
    
    while True:
        mostrar_menu()
        
        opcion = input("Selecciona una opción (1-9): ")
        
        if opcion == "1":
            # Suma
            num1 = obtener_numero("Primer número: ")
            num2 = obtener_numero("Segundo número: ")
            resultado = suma(num1, num2)
            print(f"✅ {resultado}")
            historial.append(resultado)
            
        elif opcion == "2":
            # Resta
            num1 = obtener_numero("Primer número: ")
            num2 = obtener_numero("Segundo número: ")
            resultado = resta(num1, num2)
            print(f"✅ {resultado}")
            historial.append(resultado)
            
        elif opcion == "3":
            # Multiplicación
            num1 = obtener_numero("Primer número: ")
            num2 = obtener_numero("Segundo número: ")
            resultado = multiplicacion(num1, num2)
            print(f"✅ {resultado}")
            historial.append(resultado)
            
        elif opcion == "4":
            # División
            num1 = obtener_numero("Dividendo: ")
            num2 = obtener_numero("Divisor: ")
            resultado = division(num1, num2)
            print(f"✅ {resultado}")
            if not resultado.startswith("❌"):
                historial.append(resultado)
                
        elif opcion == "5":
            # Potencia
            base = obtener_numero("Base: ")
            exponente = obtener_numero("Exponente: ")
            resultado = potencia(base, exponente)
            print(f"✅ {resultado}")
            historial.append(resultado)
            
        elif opcion == "6":
            # Raíz cuadrada
            num = obtener_numero("Número: ")
            resultado = raiz_cuadrada(num)
            print(f"✅ {resultado}")
            if not resultado.startswith("❌"):
                historial.append(resultado)
                
        elif opcion == "7":
            # Ver historial
            if historial:
                print("\n📜 HISTORIAL DE OPERACIONES:")
                print("-" * 30)
                for i, operacion in enumerate(historial, 1):
                    print(f"{i}. {operacion}")
            else:
                print("📭 El historial está vacío")
                
        elif opcion == "8":
            # Limpiar historial
            historial.clear()
            print("🗑️ Historial limpiado")
            
        elif opcion == "9":
            # Salir
            print("¡Gracias por usar la calculadora! 👋")
            print("¡Hasta la próxima!")
            break
            
        else:
            print("❌ Opción no válida. Selecciona un número del 1 al 9")
        
        # Pausa antes de mostrar el menú de nuevo
        input("\nPresiona Enter para continuar...")

# Ejecutar la calculadora
if __name__ == "__main__":
    main()
```

## 🎮 Cómo Usar la Calculadora

1. **Ejecuta el programa**: `python calculadora.py`
2. **Selecciona una opción** del menú (1-9)
3. **Ingresa los números** cuando se soliciten
4. **Ve el resultado** de la operación
5. **Consulta el historial** para ver operaciones anteriores
6. **Sal del programa** con la opción 9

## 🧪 Ejemplo de Uso

```text
🧮 CALCULADORA INTERACTIVA
========================================
1. Suma
2. Resta
3. Multiplicación
4. División
5. Potencia
6. Raíz cuadrada
7. Ver historial
8. Limpiar historial
9. Salir
========================================
Selecciona una opción (1-9): 1
Primer número: 15
Segundo número: 25
✅ 15.0 + 25.0 = 40.0

Presiona Enter para continuar...
```

## 🏋️ Ejercicios de Extensión

### Ejercicio 1: Nuevas Operaciones

Añade estas operaciones a la calculadora:

```python
def factorial(n):
    """Calcula el factorial de un número"""
    if n < 0:
        return "❌ Error: El factorial no está definido para números negativos"
    if n == 0 or n == 1:
        return f"{n}! = 1"
    
    resultado = 1
    for i in range(2, int(n) + 1):
        resultado *= i
    return f"{int(n)}! = {resultado}"

def porcentaje(numero, porcentaje):
    """Calcula el porcentaje de un número"""
    resultado = (numero * porcentaje) / 100
    return f"{porcentaje}% de {numero} = {resultado}"
```

### Ejercicio 2: Validaciones Mejoradas

```python
def validar_opcion_menu():
    """Valida que la opción del menú sea correcta"""
    while True:
        opcion = input("Selecciona una opción (1-9): ")
        if opcion in ["1", "2", "3", "4", "5", "6", "7", "8", "9"]:
            return opcion
        else:
            print("❌ Error: Selecciona un número del 1 al 9")
```

### Ejercicio 3: Guardar Historial en Archivo

```python
def guardar_historial(historial):
    """Guarda el historial en un archivo de texto"""
    with open("historial_calculadora.txt", "w") as archivo:
        archivo.write("HISTORIAL DE CALCULADORA\\n")
        archivo.write("=" * 30 + "\\n")
        for operacion in historial:
            archivo.write(f"{operacion}\\n")
    print("💾 Historial guardado en 'historial_calculadora.txt'")
```

## 🔍 Conceptos Aplicados

En este proyecto has usado:

- **Variables**: Para almacenar números y resultados
- **Funciones**: Para organizar el código
- **Condicionales**: Para el menú y validaciones
- **Listas**: Para el historial
- **Bucles**: Para el menú principal
- **Manejo de errores**: Con try/except
- **Importación de módulos**: math para funciones matemáticas

## 🎁 Versión Simplificada

Si el código completo te parece muy avanzado, aquí tienes una versión más simple:

### calculadora_simple.py

```python
print("🧮 CALCULADORA SIMPLE")
print("=" * 25)

while True:
    print("\\n1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Salir")
    
    opcion = input("\\nElige una opción: ")
    
    if opcion == "5":
        print("¡Adiós!")
        break
    
    if opcion in ["1", "2", "3", "4"]:
        num1 = float(input("Primer número: "))
        num2 = float(input("Segundo número: "))
        
        if opcion == "1":
            resultado = num1 + num2
            print(f"Resultado: {num1} + {num2} = {resultado}")
        elif opcion == "2":
            resultado = num1 - num2
            print(f"Resultado: {num1} - {num2} = {resultado}")
        elif opcion == "3":
            resultado = num1 * num2
            print(f"Resultado: {num1} × {num2} = {resultado}")
        elif opcion == "4":
            if num2 != 0:
                resultado = num1 / num2
                print(f"Resultado: {num1} ÷ {num2} = {resultado}")
            else:
                print("❌ Error: No se puede dividir por cero")
    else:
        print("❌ Opción no válida")
```

## ✅ Checklist del Proyecto

- [ ] Has ejecutado la calculadora
- [ ] Has probado todas las operaciones básicas
- [ ] Has usado el historial
- [ ] Entiendes cómo funciona el menú
- [ ] Has intentado al menos una extensión

¡Felicidades! Has completado tu primer proyecto en Python 🎉

---

**Siguiente**: [Proyecto 2: Lista de Tareas](../02-lista-tareas/)
