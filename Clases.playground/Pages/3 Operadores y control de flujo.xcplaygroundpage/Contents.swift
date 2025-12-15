import Foundation

//==================================================
// ⭐ OPERADORES EN SWIFT
//==================================================

// Los operadores son símbolos que nos permiten realizar operaciones entre valores.

// Sirven para:
// - Calcular
// - Comparar
// - Asignar valores
// - Tomar decisiones
// - Combinar condiciones


//--------------------------------------------------
// ✅ 1. OPERADORES DE ASIGNACIÓN
//--------------------------------------------------

// El operador = sirve para asignar un valor
var numero = 10

// También existen operadores compuestos
numero += 5   // numero = numero + 5
numero -= 2   // numero = numero - 2
numero *= 3   // numero = numero * 3
numero /= 2   // numero = numero / 2

print(numero)


//--------------------------------------------------
// ✅ 2. OPERADORES ARITMÉTICOS
//--------------------------------------------------

// Se usan para hacer operaciones matemáticas básicas

let suma = 5 + 3
let resta = 10 - 4
let multiplicacion = 2 * 3
let division = 10 / 2
let modulo = 10 % 3   // Residuo de la división

/*
 ¿Para qué sirve el módulo (%)?
 --------------------------------
 Muy usado para:
 - Saber si un número es par o impar
 - Repeticiones
 */

let esPar = 10 % 2 == 0
print(esPar)


//--------------------------------------------------
// ✅ 3. OPERADORES DE COMPARACIÓN
//--------------------------------------------------

// Comparan dos valores y retornan Bool (true / false)

let a = 10
let b = 5

let esMayor = a > b
let esMenor = a < b
let esIgual = a == b
let esDiferente = a != b
let esMayorOIgual = a >= b
let esMenorOIgual = a <= b

print(esMayor)


//--------------------------------------------------
// ✅ 4. OPERADORES LÓGICOS
//--------------------------------------------------

// Se usan para combinar condiciones

let tieneEdad = true
let tienePermiso = false

// AND (&&) → todas deben ser true
let puedeEntrar = tieneEdad && tienePermiso

// OR (||) → al menos una debe ser true
let puedeComprar = tieneEdad || tienePermiso

// NOT (!) → niega el valor
let noTienePermiso = !tienePermiso

print(puedeEntrar)


//--------------------------------------------------
// ✅ 5. OPERADOR TERNARIO
//--------------------------------------------------

// Forma corta de un if - else
let edad = 20

let mensaje = edad >= 18 ? "Es mayor de edad" : "Es menor de edad"
print(mensaje)

/*
 Estructura:
 condición ? valorSiTrue : valorSiFalse
 */


//==================================================
// ⭐ CONTROL DE FLUJO EN SWIFT
//==================================================

// El control de flujo permite:
// - Tomar decisiones
// - Repetir acciones
// - Controlar el orden de ejecución del código


//--------------------------------------------------
// ✅ 1. IF / ELSE
//--------------------------------------------------

let temperatura = 30

if temperatura > 25 {
    print("Hace calor")
} else {
    print("Clima agradable")
}

/*
 if:
 ----
 Se ejecuta si la condición es true
 */


//--------------------------------------------------
// ✅ 2. IF - ELSE IF - ELSE
//--------------------------------------------------

let nota = 85

if nota >= 90 {
    print("Excelente")
} else if nota >= 70 {
    print("Aprobado")
} else {
    print("Reprobado")
}


//--------------------------------------------------
// ✅ 3. SWITCH
//--------------------------------------------------

// Se usa cuando hay múltiples casos posibles
let dia = 3

switch dia {
case 1:
    print("Lunes")
case 2:
    print("Martes")
case 3:
    print("Miércoles")
case 4:
    print("Jueves")
case 5:
    print("Viernes")
default:
    print("Fin de semana")
}

/*
 switch:
 --------
 - Más ordenado que muchos if
 - Siempre debe tener default
 */


//--------------------------------------------------
// ✅ 4. FOR LOOP
//--------------------------------------------------

// Se usa para repetir un bloque de código
for numero in 1...5 {
    print("Número: \(numero)")
}

/*
 1...5:
 ------
 Incluye el 5
 */


//--------------------------------------------------
// ✅ 5. FOR LOOP (SIN INCLUIR EL ÚLTIMO)
//--------------------------------------------------

for numero in 1..<5 {
    print("Número sin incluir el 5: \(numero)")
}


//--------------------------------------------------
// ✅ 6. WHILE
//--------------------------------------------------

// Repite mientras la condición sea true
var contador = 1

while contador <= 3 {
    print("Contador: \(contador)")
    contador += 1
}


//--------------------------------------------------
// ✅ 7. REPEAT - WHILE
//--------------------------------------------------

// Se ejecuta al menos una vez
var intentos = 0

repeat {
    print("Intento número \(intentos)")
    intentos += 1
} while intentos < 3


//--------------------------------------------------
// ✅ 8. CONTROL DE FLUJO CON BREAK Y CONTINUE
//--------------------------------------------------

for numero in 1...5 {
    
    if numero == 3 {
        continue // salta este ciclo
    }
    
    if numero == 5 {
        break // termina el ciclo
    }
    
    print(numero)
}


//==================================================
// ⭐ RESUMEN PARA ESTUDIANTES
//==================================================

/*
 OPERADORES:
 - =  asignación
 - + - * / %  matemáticos
 - == != > < >= <= comparación
 - && || !  lógicos
 - ?: ternario

 CONTROL DE FLUJO:
 - if / else
 - switch
 - for
 - while
 - repeat-while
 - break / continue
 */
