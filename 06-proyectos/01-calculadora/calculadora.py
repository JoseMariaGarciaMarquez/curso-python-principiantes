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
