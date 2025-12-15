import Foundation

//==================================================
// ⭐ LOOPS / BUCLES EN SWIFT
//==================================================

// Los loops (bucles) permiten repetir un bloque de código varias veces sin tener que escribirlo muchas veces.

// Se usan cuando:
// - Queremos recorrer colecciones
// - Repetir acciones
// - Automatizar tareas
// - Trabajar con listas de datos


//--------------------------------------------------
// ⭐ 1. FOR - IN
//--------------------------------------------------

// El loop for-in se usa cuando sabemoscuántas veces queremos repetir algo o cuando recorremos una colección.


//--------------------------------------------------
// ✅ FOR - IN CON RANGOS
//--------------------------------------------------

// Rango cerrado (incluye el último número)
for numero in 1...5 {
    print("Número: \(numero)")
}

/*
 1...5
 ------
 Empieza en 1 y termina en 5 (incluye el 5)
 */


// Rango semiabierto (NO incluye el último número)
for numero in 1..<5 {
    print("Número sin incluir el 5: \(numero)")
}

/*
 1..<5
 ------
 Empieza en 1 y termina en 4
 */


//--------------------------------------------------
// ✅ FOR - IN CON ARRAYS
//--------------------------------------------------

let frutas = ["Manzana", "Banana", "Pera"]

for fruta in frutas {
    print("Fruta: \(fruta)")
}


//--------------------------------------------------
// ✅ FOR - IN CON DICCIONARIOS
//--------------------------------------------------

let edades = [
    "Ana": 30,
    "Luis": 25
]

for (nombre, edad) in edades {
    print("\(nombre) tiene \(edad) años")
}


//--------------------------------------------------
// ⭐ 2. WHILE
//--------------------------------------------------

// El while repite el código MIENTRAS la condición sea verdadera.
//
// ⚠️ Si la condición nunca cambia, se crea un loop infinito.

var contador = 1

while contador <= 3 {
    print("Contador: \(contador)")
    contador += 1
}


//--------------------------------------------------
// ⭐ 3. REPEAT - WHILE
//--------------------------------------------------

// Similar al while, pero este se ejecuta AL MENOS una vez, aunque la condición sea falsa.

var intentos = 0

repeat {
    print("Intento número \(intentos)")
    intentos += 1
} while intentos < 3


//--------------------------------------------------
// ⭐ 4. BREAK Y CONTINUE
//--------------------------------------------------

// break     → termina completamente el loop
// continue  → salta a la siguiente iteración

for numero in 1...5 {
    
    if numero == 3 {
        continue // salta el 3
    }
    
    if numero == 5 {
        break // detiene el loop
    }
    
    print(numero)
}


//--------------------------------------------------
// ⭐ 5. LOOP CON ÍNDICES
//--------------------------------------------------

// Usamos enumerated() para obtener el índice y el valor

let nombres = ["Ana", "Luis", "Pedro"]

for (index, nombre) in nombres.enumerated() {
    print("Índice: \(index) - Nombre: \(nombre)")
}


//--------------------------------------------------
// ⭐ 6. IGNORAR VALORES CON (_)
//--------------------------------------------------

// Cuando no necesitamos el valor del loop
for _ in 1...3 {
    print("Se repite sin usar el número")
}


//--------------------------------------------------
// ⭐ 7. LOOP Y CONDICIONES
//--------------------------------------------------

let notas = [90, 70, 85, 60]

for nota in notas {
    
    if nota >= 70 {
        print("Aprobado con \(nota)")
    } else {
        print("Reprobado con \(nota)")
    }
}


//--------------------------------------------------
// ⭐ EJEMPLOS PRÁCTICOS PARA ESTUDIANTES
//--------------------------------------------------

// 1️⃣ Sumar números de un array
let numeros = [1, 2, 3, 4]
var suma = 0

for numero in numeros {
    suma += numero
}
print("La suma es \(suma)")


// 2️⃣ Contar elementos mayores a 50
let valores = [10, 60, 80, 30]
var contadorMayor = 0

for valor in valores {
    if valor > 50 {
        contadorMayor += 1
    }
}
print("Mayores a 50: \(contadorMayor)")


/*
--------------------------------------------------
 ⭐ DIFERENCIA ENTRE LOS LOOPS
--------------------------------------------------

 for-in:
 - Ideal para colecciones y rangos
 - Más usado en Swift y SwiftUI

 while:
 - Se usa cuando no sabemos cuántas veces
   se repetirá el ciclo

 repeat-while:
 - Se ejecuta al menos una vez
*/


//==================================================
// ⭐ RESUMEN PARA ESTUDIANTES
//==================================================

/*
 LOOPS:
 - for-in → recorrer y repetir
 - while → repetir mientras sea true
 - repeat-while → al menos una vez

 CONTROL:
 - break → termina el loop
 - continue → salta una iteración
 - enumerated() → índice + valor
 - _ → ignorar valor
 */
