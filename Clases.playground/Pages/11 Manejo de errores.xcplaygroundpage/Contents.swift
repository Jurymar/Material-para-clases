//: [Previous](@previous)

import Foundation

//Manejo de Errores :
//es el mecanismo que permite a un programa detectar, controlar y responder a fallos que pueden ocurrir durante su ejecución, evitando que la aplicación se bloquee y permitiendo mostrar mensajes claros al usuario o ejecutar acciones alternativas./

//El manejo de errores es la técnica usada en programación para controlar situaciones inesperadas (errores) y permitir que el programa responda de forma segura usando try, catch y throw.

//El manejo de errores es una forma segura de decirle al programa:
//“Si algo sale mal, no te rompas, maneja la situación y continúa funcionando.”

//es como usar un cinturón de seguridad en un carro: no evita que haya problemas, pero protege al usuario cuando algo sale mal.



//Manejo de errores con try, catch y throw

//1. throw se usa para lanzar un error manualmente cuando algo sale mal.

//En enum Definimos los errores posibles
//Conforma al protocolo Error, lo que permite lanzar y capturar estos casos como errores en Swift.
enum ErrorDeLogin: Error {
    case usuarioVacio
    case passwordVacio
}

// Función que puede lanzar errores
// "throws" indica que esta función puede fallar
func validarLogin(usuario: String, password: String) throws {

    // Verifica si el usuario está vacío
    if usuario.isEmpty {
        throw ErrorDeLogin.usuarioVacio
    }

    // Verifica si el password está vacío
    if password.isEmpty {
        throw ErrorDeLogin.passwordVacio
    }
}
//Lanzar un error detiene la ejecución normal de la función y transfiere el control al bloque do-catch del llamador.
//Para llamar a una función que puede lanzar errores, usas try y la manejas con do-catch:


//2. try se usa cuando llamas una función que puede fallar (que tiene throws).

//3. catch sirve para capturar el error y manejarlo, evitando que la app se rompa.


do {
    // try: indica que llamamos a una función que puede lanzar errores
    try validarLogin(usuario: "", password: "")
    print("✅ Login exitoso")
} catch ErrorDeLogin.usuarioVacio {
    print("❌ El usuario está vacío")
} catch ErrorDeLogin.passwordVacio {
    print("❌ El password está vacío")
} catch {
    print("❌ Ocurrió un error desconocido")
}
//Los catch específicos permiten responder distinto según el caso. El último catch sin tipo captura cualquier otro error no previsto.

//try funcionConError()   // normal, obliga usar do-catch
//try? funcionConError()  // devuelve nil si falla
//try! funcionConError()  // fuerza la ejecución (puede crashear la app)


//throw: Lanza un error
//try:Intenta ejecutar código que puede fallar
//catch: Captura el error y lo maneja

//Ejemplo

enum ErrorEdad: Error {
    case edadInvalida
}

func validarEdad(_ edad: Int) throws {
    //edad negativa
    if edad < 0 {
        throw ErrorEdad.edadInvalida
    }
    print("Edad válida")
}

do {
    try validarEdad(-5)
} catch ErrorEdad.edadInvalida {
    print("La edad no puede ser negativa")
}


//Ejemplos
//1 try funcionConError()   // normal, obliga usar do-catch
//2 try? funcionConError()  // devuelve nil si falla
//3 try! funcionConError()  // fuerza la ejecución (puede crashear la app)


//1. try → uso normal (obliga a usar do-catch), Se usa cuando quieres manejar el error de forma segura.

enum ErrorArchivo: Error {
    case archivoNoEncontrado
}

func leerArchivo(nombre: String) throws -> String {
    if nombre != "datos.txt" {
        throw ErrorArchivo.archivoNoEncontrado
    }
    return "Contenido del archivo"
}

// Uso de try con do-catch
do {
    let contenido = try leerArchivo(nombre: "archivo.txt")
    print(contenido)
} catch ErrorArchivo.archivoNoEncontrado {
    print("❌ El archivo no fue encontrado")
} catch {
    print("❌ Error desconocido")
}


//2. try? → convierte el error en nil (sin do-catch), Se usa cuando no quieres manejar el error explícitamente.Si falla → devuelve nil.


enum ErrorNumero: Error {
    case conversionFallida
}

// Con _ indico no quiero etiqueta externa para este parámetro cuando se llame a la función

//En Swift, cada parámetro puede tener:
//Un nombre externo: cómo lo escribes al llamar a la función.
//Un nombre interno: cómo se usa dentro de la función.

//Ejemplo colocando nombre externo:
//func convertirNumero(texto: String)
func convertirNumero(_ texto: String) throws -> Int {
    guard let numero = Int(texto) else {
        throw ErrorNumero.conversionFallida
    }
    return numero
}

// Uso de opcional opcional try?
let resultado = try? convertirNumero("abc")
//let resultado = try? convertirNumero(texto:"abc")

if let numero = resultado {
    print("✅ Número convertido: \(numero)")
} else {
    print("❌ No se pudo convertir el número")
}

//3. try! → fuerza la ejecución (peligroso ⚠️), Se usa cuando estás 100% seguro de que no habrá error. Si ocurre un error → la app se cierra.

enum ErrorEdad1: Error {
    case edadInvalida
}

func validarEdad1(_ edad: Int) throws -> String {
    if edad < 0 {
        throw ErrorEdad.edadInvalida
    }
    return "Edad válida"
}

// Uso de force try! (PELIGROSO)
let mensaje = try! validarEdad1(25)
print(mensaje)

// Esto causaría un CRASH:
// let crash = try! validarEdad(-5)


//Comparativa rápida
//try: “Llama y si falla, gestionaré el error.”
//try?: “Llama y si falla, dame nil y sigo.”
//try!: “Llama y si falla, prefiero crashear.”


//USO DE GUION BAJO _ en una funcion

enum ErrorNumero3: Error {
    case conversionFallida
}

func convertirNumero3(_ texto: String) throws -> Int {
    guard let numero = Int(texto) else {
        throw ErrorNumero.conversionFallida
    }
    return numero
}

// Versión alternativa SIN guion bajo: requiere etiqueta externa "texto:"
func convertirNumeroConEtiqueta(texto: String) throws -> Int {
    guard let numero = Int(texto) else {
        throw ErrorNumero.conversionFallida
    }
    return numero
}

// Demostración: llamadas lado a lado
let resultadoSinEtiqueta = try? convertirNumero("456")
let resultadoConEtiqueta = try? convertirNumeroConEtiqueta(texto: "789")

if let a = resultadoSinEtiqueta, let b = resultadoConEtiqueta {
    print("✅ Sin etiqueta: \(a) | Con etiqueta: \(b)")
} else {
    print("❌ Alguna conversión falló en la demostración de etiquetas")
}

