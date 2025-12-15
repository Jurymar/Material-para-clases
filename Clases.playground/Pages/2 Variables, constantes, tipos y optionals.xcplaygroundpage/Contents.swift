//: [Previous](@previous)

import Foundation

//==================================================
// ⭐ VARIABLES Y CONSTANTES EN SWIFT
//==================================================

// Las variables y constantes también son conocidas como atributos o propiedades.

// Son espacios de almacenamiento en memoria.
// Podemos imaginarlas como una "caja" donde guardamos datos.

// Se dividen en dos tipos:
// 1) Variables (var)
// 2) Constantes (let)

//--------------------------------------------------
// ✅ 1. VARIABLES (var)
//--------------------------------------------------

// Las variables pueden cambiar su valor mientras la app está funcionando, es decir, son MUTABLES.

var saludo: String = "Hello"
saludo = "Hi" // el valor cambia
print(saludo)

// Con inferencia de tipo
// Swift detecta automáticamente que es un String
var saludo1 = "Hello"

/*
 ¿Cuándo se usan las variables?
 --------------------------------
 Cuando el valor puede cambiar:
 - Nombre del usuario
 - Contadores
 - Textos dinámicos
 - Estados de botones
 - Resultados de cálculos
 */


//--------------------------------------------------
// ✅ 2. CONSTANTES (let)
//--------------------------------------------------

// Las constantes NO pueden cambiar su valor mientras la app está funcionando, es decir, son INMUTABLES.

let pi: Double = 3.14159
// pi = 3.14 ❌ Esto daría error

/*
 ¿Cuándo se usan las constantes?
 --------------------------------
 Cuando sabes que el valor será siempre el mismo:
 - Valores matemáticos
 - IDs
 - Configuraciones fijas
 - Datos que no deben cambiar
 */


//==================================================
// ⭐ TIPOS DE DATOS EN SWIFT
//==================================================

// Los tipos de datos definen QUÉ tipo de valor puede almacenar
// una variable o constante.

// Cada dato tiene un tipo específico:
// - Texto
// - Número
// - Verdadero / Falso
// - Colecciones
//
// ⚠️ Los tipos de datos en Swift inician con MAYÚSCULA.


//--------------------------------------------------
// ✅ TIPOS DE DATOS PRINCIPALES
//--------------------------------------------------

// String → Texto
var nombre: String = "Ana"

// Int → Números enteros (sin decimales)
var edad: Int = 30

// Double → Números decimales (más precisos)
var altura: Double = 1.65

// Float → Números decimales (menos precisos)
var peso: Float = 60.5

// Bool → Verdadero o falso
var esMayorDeEdad: Bool = true

/*
 ¿Para qué sirven los tipos de datos?
 ------------------------------------
 - Evitan errores
 - Ayudan a Swift a saber qué operaciones puede hacer
 - Hacen el código más seguro y claro
 */


//--------------------------------------------------
// ✅ INFERENCIA DE TIPO
//--------------------------------------------------

// Swift puede deducir el tipo automáticamente
var ciudad = "Bogotá"      // String
var numero = 10            // Int
var temperatura = 25.5     // Double
var estaActivo = false     // Bool


//--------------------------------------------------
// ⚠️ CAMBIAR DE TIPO (TYPE CASTING)
//--------------------------------------------------

// No se pueden mezclar tipos directamente
let años: Int = 10
let textoAños = String(años) // Convertimos Int a String
print("Tengo " + textoAños + " años")


//==================================================
// ⭐ OPCIONALES (OPTIONALS)
//==================================================

// Un opcional es una variable o constante que puede
// tener un valor O puede ser nil (sin valor).
//
// En Swift, nil significa "no hay valor".


//--------------------------------------------------
// ✅ DECLARACIÓN DE OPCIONALES
//--------------------------------------------------

// Se declara usando ?
var segundoNombre: String? = "María"
segundoNombre = nil // válido

/*
 ¿Por qué existen los opcionales?
 --------------------------------
 Porque en la vida real no siempre hay datos:
 - Un usuario puede no tener segundo nombre
 - Un campo puede estar vacío
 - Una respuesta puede fallar
 */


//--------------------------------------------------
// ✅ USO DE OPCIONALES (FORZADO)
//--------------------------------------------------

// ❌ Forzar un opcional (NO recomendado)
var pais: String? = "Colombia"
// print(pais!) // Puede causar crash si es nil


//--------------------------------------------------
// ✅ OPTIONAL BINDING (FORMA SEGURA)
//--------------------------------------------------

// Usamos if let para verificar si hay valor
if let paisSeguro = pais {
    print("El país es \(paisSeguro)")
} else {
    print("No hay país")
}

/*
 if let:
 --------
 - Verifica si el opcional tiene valor
 - Evita errores
 - Es la forma recomendada
 */


//--------------------------------------------------
// ✅ GUARD LET (MUY USADO EN SWIFTUI)
//--------------------------------------------------

func mostrarCiudad(ciudad: String?) {
    guard let ciudadSegura = ciudad else {
        print("No hay ciudad")
        return
    }
    
    print("La ciudad es \(ciudadSegura)")
}

mostrarCiudad(ciudad: "Medellín")
mostrarCiudad(ciudad: nil)


//--------------------------------------------------
// ✅ NIL COALESCING (??)
//--------------------------------------------------

// Asigna un valor por defecto si es nil
let paisPorDefecto = pais ?? "Desconocido"
print(paisPorDefecto)

/*
 ?? significa:
 "Si hay valor, úsalo.
  Si no hay valor, usa este otro."
 */


//==================================================
// ⭐ RESUMEN RÁPIDO PARA ESTUDIANTES
//==================================================

/*
 var  → valor que puede cambiar
 let  → valor que no cambia

 Tipos de datos:
 - String → texto
 - Int → números enteros
 - Double / Float → decimales
 - Bool → true / false

 Opcionales:
 - ?  → puede ser nil
 - if let / guard let → uso seguro
 - ?? → valor por defecto
 */
