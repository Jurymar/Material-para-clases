import Foundation

//==================================================
// ⭐ COLECCIONES EN SWIFT
//==================================================

// Las colecciones permiten almacenar MUCHOS valores dentro de una sola variable o constante.

// Son como una caja que guarda varios datos del mismo tipo.

// En Swift usamos principalmente:
// 1) Arrays
// 2) Sets
// 3) Diccionarios


//--------------------------------------------------
// ⭐ 1. ARRAYS
//--------------------------------------------------

// Un Array es una colección ORDENADA de elementos.
// Cada elemento tiene una posición (índice).
//
// ⚠️ Los índices comienzan en 0.


//--------------------------------------------------
// ✅ CREAR ARRAYS
//--------------------------------------------------

// Forma explícita
var numeros: [Int] = [1, 2, 3, 4]

// Con inferencia de tipo
var frutas = ["Manzana", "Banana", "Pera"]

// Array vacío
var nombres: [String] = []


//--------------------------------------------------
// ✅ ACCEDER A ELEMENTOS
//--------------------------------------------------

print(frutas[0]) // Manzana
print(frutas[2]) // Pera


//--------------------------------------------------
// ✅ MODIFICAR ARRAYS
//--------------------------------------------------

// Agregar elementos
frutas.append("Uva")

// Insertar en una posición específica
frutas.insert("Fresa", at: 1)

// Eliminar elementos
frutas.remove(at: 0)

// Cambiar un valor
frutas[0] = "Mango"

print(frutas)


//--------------------------------------------------
// ✅ PROPIEDADES ÚTILES
//--------------------------------------------------

print(frutas.count)     // cantidad de elementos
print(frutas.isEmpty)  // true si está vacío


//--------------------------------------------------
// ✅ RECORRER UN ARRAY
//--------------------------------------------------

for fruta in frutas {
    print("Fruta: \(fruta)")
}


//--------------------------------------------------
// ⭐ 2. SETS
//--------------------------------------------------

// Un Set es una colección NO ORDENADA
// y NO permite valores duplicados.
//
// Se usa cuando NO importa el orden
// y NO se quieren repetir valores.


//--------------------------------------------------
// ✅ CREAR SETS
//--------------------------------------------------

// Forma explícita
var numerosSet: Set<Int> = [1, 2, 3]

// Inferencia de tipo
var colores: Set = ["Rojo", "Verde", "Azul"]


//--------------------------------------------------
// ✅ OPERACIONES CON SETS
//--------------------------------------------------

// Agregar elementos
colores.insert("Amarillo")

// Intentar agregar duplicado (no se agrega)
colores.insert("Rojo")

// Eliminar elementos
colores.remove("Verde")

print(colores)


//--------------------------------------------------
// ✅ VERIFICAR EXISTENCIA
//--------------------------------------------------

print(colores.contains("Azul"))


//--------------------------------------------------
// ⭐ 3. DICCIONARIOS
//--------------------------------------------------

// Un Diccionario almacena datos en pares:
// CLAVE : VALOR
//
// Cada clave es única y se usa para acceder al valor.


//--------------------------------------------------
// ✅ CREAR DICCIONARIOS
//--------------------------------------------------

// Forma explícita
var edades: [String: Int] = [
    "Ana": 30,
    "Luis": 25
]

// Inferencia de tipo
var capitales = [
    "Colombia": "Bogotá",
    "México": "CDMX"
]

// Diccionario vacío
var precios: [String: Double] = [:]


//--------------------------------------------------
// ✅ ACCEDER A VALORES
//--------------------------------------------------

// Retorna un opcional
let edadAna = edades["Ana"]
print(edadAna ?? 0)


//--------------------------------------------------
// ✅ MODIFICAR DICCIONARIOS
//--------------------------------------------------

// Agregar o actualizar
edades["Pedro"] = 40
edades["Ana"] = 31

// Eliminar
edades["Luis"] = nil

print(edades)


//--------------------------------------------------
// ✅ RECORRER DICCIONARIOS
//--------------------------------------------------

for (nombre, edad) in edades {
    print("\(nombre) tiene \(edad) años")
}


//--------------------------------------------------
// ⭐ COMPARACIÓN RÁPIDA
//--------------------------------------------------

/*
 Array:
 - Ordenado
 - Permite duplicados
 - Acceso por índice

 Set:
 - No ordenado
 - No permite duplicados
 - Acceso rápido

 Diccionario:
 - Clave → Valor
 - Claves únicas
 - Valores opcionales al acceder
 */


//--------------------------------------------------
// ⭐ EJEMPLOS PRÁCTICOS PARA ESTUDIANTES
//--------------------------------------------------

// Array
let tareas = ["Estudiar Swift", "Practicar SwiftUI", "Hacer ejercicios"]

// Set
let numerosUnicos: Set = [1, 2, 2, 3, 3, 4]

// Diccionario
let notas = [
    "Matemáticas": 90,
    "Programación": 95
]

print(tareas)
print(numerosUnicos)
print(notas)


//==================================================
// ⭐ RESUMEN PARA ESTUDIANTES
//==================================================

/*
 COLECCIONES:
 - Array → lista ordenada
 - Set → valores únicos sin orden
 - Diccionario → clave : valor

 MÉTODOS CLAVE:
 - append(), insert(), remove()
 - count, isEmpty
 - contains()
 */
