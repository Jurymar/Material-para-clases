import Foundation

//==================================================
// ⭐ FUNCIONES Y PARÁMETROS EN SWIFT
//==================================================

// Una función es un bloque de código que realiza una tarea específica.
//
// Sirve para:
// - Reutilizar código
// - Organizar mejor el programa
// - Evitar repetir la misma lógica muchas veces
// - Hacer el código más claro y mantenible


//--------------------------------------------------
// ⭐ 1. FUNCIÓN BÁSICA (SIN PARÁMETROS)
//--------------------------------------------------

// Función que solo ejecuta una acción
func saludar() {
    print("Hola, bienvenida a Swift")
}

// Llamar (ejecutar) la función
saludar()


//--------------------------------------------------
// ⭐ 2. FUNCIÓN CON UN PARÁMETRO
//--------------------------------------------------

// El parámetro es un valor que la función recibe
// para poder trabajar con él

func saludar(nombre: String) {
    print("Hola, \(nombre)")
}

saludar(nombre: "Ana")
saludar(nombre: "Luis")

/*
 nombre:
 -------
 Es un parámetro de tipo String
 */


//--------------------------------------------------
// ⭐ 3. FUNCIÓN CON VARIOS PARÁMETROS
//--------------------------------------------------
//Los parametros de entrada de una funcion por defecto son constante , no se pueden mutar directo, entonces debo crear una variable para usarla o mutarla

//Los parámetros en Swift son constantes (let) por defecto
//No se pueden modificar directamente 

func sumar(a: Int, b: Int) {
    let resultado = a + b
    print("La suma es \(resultado)")
}

sumar(a: 5, b: 3)


//--------------------------------------------------
// ⭐ 4. FUNCIÓN QUE RETORNA UN VALOR
//--------------------------------------------------

// Las funciones pueden devolver un valor
// usando la palabra return

func multiplicar(a: Int, b: Int) -> Int {
    return a * b
}

let resultadoMultiplicacion = multiplicar(a: 4, b: 2)
print(resultadoMultiplicacion)

/*
 -> Int
 -------
 Indica el tipo de dato que retorna la función
 */


//--------------------------------------------------
// ⭐ 5. FUNCIÓN CON PARÁMETROS EXTERNOS E INTERNOS
//--------------------------------------------------

// En Swift podemos usar dos nombres:
// - Nombre externo: se usa al llamar la función
// - Nombre interno: se usa dentro de la función

func presentar(persona nombre: String, edad: Int) {
    print("Nombre: \(nombre), Edad: \(edad)")
}

presentar(persona: "María", edad: 30)


//--------------------------------------------------
// ⭐ 6. FUNCIÓN SIN ETIQUETA EXTERNA (_)
//--------------------------------------------------

// El guion bajo (_) elimina el nombre externo

func cuadrado(_ numero: Int) -> Int {
    return numero * numero
}

let valor = cuadrado(5)
print(valor)


//--------------------------------------------------
// ⭐ 7. PARÁMETROS CON VALORES POR DEFECTO
//--------------------------------------------------

// Si no se envía el parámetro, se usa el valor por defecto

func saludarConIdioma(nombre: String, idioma: String = "Español") {
    print("Hola \(nombre) - Idioma: \(idioma)")
}

saludarConIdioma(nombre: "Ana")
saludarConIdioma(nombre: "John", idioma: "Inglés")


//--------------------------------------------------
// ⭐ 8. FUNCIONES CON OPCIONALES
//--------------------------------------------------

func mostrarSegundoNombre(_ nombre: String?) {
    
    if let nombreSeguro = nombre {
        print("Segundo nombre: \(nombreSeguro)")
    } else {
        print("No tiene segundo nombre")
    }
}

mostrarSegundoNombre("María")
mostrarSegundoNombre(nil)


//--------------------------------------------------
// ⭐ 9. FUNCIONES CON GUARD LET
//--------------------------------------------------

func validarEdad(_ edad: Int?) {
    
    guard let edadSegura = edad else {
        print("Edad no válida")
        return
    }
    
    print("Edad válida: \(edadSegura)")
}

validarEdad(25)
validarEdad(nil)


//--------------------------------------------------
// ⭐ 10. FUNCIONES Y CONDICIONES
//--------------------------------------------------

func evaluarNota(_ nota: Int) {
    
    if nota >= 70 {
        print("Aprobado")
    } else {
        print("Reprobado")
    }
}

evaluarNota(85)
evaluarNota(60)


//--------------------------------------------------
// ⭐ 11. FUNCIONES Y LOOPS
//--------------------------------------------------

func imprimirNumeros() {
    for numero in 1...5 {
        print(numero)
    }
}

imprimirNumeros()


//--------------------------------------------------
// ⭐ 12. FUNCIONES QUE RETORNAN BOOL
//--------------------------------------------------

func esPar(_ numero: Int) -> Bool {
    return numero % 2 == 0
}

print(esPar(4)) // true
print(esPar(5)) // false


//--------------------------------------------------
// ⭐ EJEMPLOS PRÁCTICOS PARA ESTUDIANTES
//--------------------------------------------------

// 1️⃣ Calcular promedio
func calcularPromedio(notas: [Int]) -> Double {
    var suma = 0
    
    for nota in notas {
        suma += nota
    }
    
    return Double(suma) / Double(notas.count)
}

let promedio = calcularPromedio(notas: [80, 90, 70])
print("Promedio: \(promedio)")


// 2️⃣ Verificar acceso
func puedeEntrar(edad: Int, permiso: Bool) -> Bool {
    return edad >= 18 && permiso
}

print(puedeEntrar(edad: 20, permiso: true))


//--------------------------------------------------
// ⭐ DIFERENCIAS IMPORTANTES
//--------------------------------------------------

/*
 Función:
 --------
 - Realiza una tarea
 - Puede recibir parámetros
 - Puede retornar un valor

 Parámetros:
 -----------
 - Son los datos que recibe la función
 - Pueden tener valores por defecto
 - Pueden ser opcionales
 */


//==================================================
// ⭐ RESUMEN PARA ESTUDIANTES
//==================================================

/*
 FUNCIONES:
 - func nombre() { }
 - Pueden retornar valores con return
 - Usan -> para indicar el tipo de retorno

 PARÁMETROS:
 - Se escriben entre ()
 - Tienen tipo de dato
 - Pueden tener nombre externo e interno
 - _ elimina la etiqueta externa
 */
