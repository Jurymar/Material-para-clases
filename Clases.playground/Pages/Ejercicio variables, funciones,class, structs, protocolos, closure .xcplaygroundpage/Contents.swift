import Foundation

//🧩EJERCICIO 1

// =====================================================
// PROTOCOLOS
// =====================================================

// Animal es un tipo de dato ABSTRACTO
// Define qué debe tener cualquier tipo que lo implemente
protocol Animal {

    // get -> permite solo lectura
    // get set -> lectura y escritura
    // Al usar get set, obligo a que quien implemente esta propiedad
    // la haga MUTABLE
    var numeroPatas: Int { get set }
}

protocol Volador {
    func volar()
}

// =====================================================
//STRUCTS
// =====================================================

// Los struct son TIPOS POR VALOR
// No se pueden mutar si la instancia es let
// Si quiero que un método modifique propiedades,
// debo usar el modificador mutating
struct Perro: Animal {

    var numeroPatas: Int = 4

    // Este método NO modifica propiedades,
    // por eso NO necesita mutating
    func correr() {
        print("El perro está corriendo 🐕")
    }
}

// =====================================================
// CLASS
// =====================================================

// Las class son TIPOS POR REFERENCIA
// Sus propiedades SI se pueden modificar
// incluso si la instancia es let
class Gato: Animal {

    var numeroPatas: Int = 4

    func maullar() {
        print("El gato está maullando 🐈")
    }
}

// =====================================================
// STRUCT CON MÚLTIPLES PROTOCOLOS
// =====================================================

struct Paloma: Animal, Volador {

    var numeroPatas: Int = 2

    func volar() {
        print("La paloma está volando 🕊️")
    }
}

// =====================================================
// INSTANCIAS Y MUTABILIDAD
// =====================================================

// En los struct:
// 👉 si la instancia es var → se puede mutar
// 👉 si es let → NO se puede mutar
var perro = Perro()
print("El perro tiene \(perro.numeroPatas) patas")
perro.numeroPatas = 6
print("El perro ahora tiene \(perro.numeroPatas) patas")

// Aunque Paloma tenga get set,
// si la instancia es let NO se puede mutar
let paloma = Paloma()
print("La paloma tiene \(paloma.numeroPatas) patas")

// En las class:
// 👉 aunque la instancia sea let,
// sus propiedades SI se pueden mutar
let gato = Gato()


print("El gato tiene \(gato.numeroPatas) patas")

gato.numeroPatas = 8
print("El gato ahora tiene \(gato.numeroPatas) patas")

perro.correr()

// =====================================================
// GET / SET (ACLARACIÓN TEÓRICA)
// =====================================================

// get -> solo lectura
// get set -> lectura y escritura
//
// Si un protocolo exige get set,
// NO puedo implementar esa propiedad con let,
// porque let no permite set.
//
// Animal exige que numeroPatas sea mutable
// porque se espera que pueda cambiar (ej: amputar patas)

// Animal = tipo abstracto
// Perro, Gato, Paloma = tipos concretos

// =====================================================
// FUNCIÓN QUE MODIFICA UN ANIMAL
// =====================================================

// Función que amputa una pata
func amputarUnaPata(animal: Animal) {

    // 1️⃣ Los parámetros de una función son constantes (let) por defecto
    //    No puedo modificar directamente "animal"

    // 2️⃣ Creo una copia mutable
    var amputando = animal

    // 3️⃣ Accedo a numeroPatas y lo modifico
    //    Swift:
    //    - Lee el valor actual
    //    - Resta 1
    //    - Asigna el nuevo valor
    amputando.numeroPatas = amputando.numeroPatas - 1

    // 4️⃣ Imprimo el resultado
    print("Listo, ya amputamos una pata. Ahora tiene \(amputando.numeroPatas) patas")

    // ⚠️ Importante:
    // El animal original NO cambia
    // porque estamos trabajando con una copia
}

amputarUnaPata(animal: perro)
amputarUnaPata(animal: gato)

// =====================================================
// FUNCIONES Y CLOSURES
// =====================================================

var saludo = ""

// Función normal
func sumar(a: Int, b: Int) -> Int {
    return a + b
}

// Declaración de un closure
// (Int, Int) -> Int  → firma del closure
var suma: (Int, Int) -> Int = { (a, b) in
    return a + b
}

// El signo = separa:
// 👉 la declaración
// 👉 de la asignación
//
// Después de { estoy asignando la IMPLEMENTACIÓN
// del closure (lo que hace)

// =====================================================
// CLOSURE CON PROTOCOLOS
// =====================================================

// Variable de tipo closure
// Recibe:
// - un Animal
// - un Int (cantidad de patas a amputar)
// No retorna nada (Void)

//cuando llamamos a este closure , no indico un numero como en la funcion , aca tengo un numPatas, y le asigno un numero por parametro

//El closure separa el cuerpo de la implementacion, el cuerpo es lo que esta despues de {

var amputar: ((Animal, Int) -> Void)? = { (animal, numPatas) in
    
    var copia = animal
                           //primero se evalua esta expresion y luego se asigna a la izquierda a numeroPatas
    let numeroRestasnte = copia.numeroPatas - numPatas
    copia.numeroPatas = numeroRestasnte

print("Ahora el animal tiene \(copia.numeroPatas) patas") // con \ estoy realizando una interpolacion de string
}


amputar?(perro, 4)


//Ejemplo diferente del closure anterior


/*
 CLOSURE: amputar
 -----------------------------------------
 Este closure funciona igual que una función.
 Recibe:
 1) Un Animal
 2) Un Int que indica cuántas patas se van a amputar
 No retorna nada (Void)
*/
                                         //asigno los parametros
//var amputar: (Animal, Int) -> Void = { (animal, numPatas) in

    // animal y numPatas son PARÁMETROS del closure
    // Son constantes (let) por defecto, por eso no se pueden modificar directamente

    // Creamos una copia MUTABLE del animal recibido
    // Esto nos permite modificar sus propiedades

//var copia = animal

    // Swift SIEMPRE evalúa primero el lado derecho:
    // copia.numeroPatas - numPatas
    // Luego asigna el resultado al lado izquierdo
    
//copia.numeroPatas = copia.numeroPatas - numPatas

    // Imprimimos el resultado final usando interpolación de strings

//print("Ahora el animal tiene \(copia.numeroPatas) patas")

//}

// --------------------------------------------------
// LLAMADA AL CLOSURE
// --------------------------------------------------

// Al llamar al closure:
// - perro se asigna al parámetro 'animal'
// - 4 se asigna al parámetro 'numPatas'
// El closure NO escribe el número, lo recibe por parámetro


//amputar(perro, 4)


//crear un closure de array Animal, que retorne la cantidad de patas de todos los animales

var cantidadPatas: ([Animal]) -> Int = { animales in
     
    var patas = 0
    
    for animal in animales {
        patas += animal.numeroPatas
    }
    return patas
}

let misAnimales: [Animal] = [perro, paloma, gato]

let resultado = cantidadPatas(misAnimales)
print(resultado)



//🧩EJERCICIO 2

//tipo abtracto
protocol Carro {
    var numCauchos: Int { get }
}

//tipo concreto
struct Duster: Carro {
    var numCauchos = 4
}

struct Camaleon: Carro {
    var numCauchos = 6
}

let duster = Duster()
print("La Duster tiene \(duster.numCauchos) cauchos")

let camaleon = Camaleon()
print(print("La Camaleon tiene \(camaleon.numCauchos) cauchos")
)

// Crear un closure que, dado un array de Carro, retorne la suma de numCauchos
//Este closure recibe por parametros un array de Carros (recibe las instancias de Carro)
let obtenerNumeroCauchos: ([Carro]) -> Int = { carros in
    var total = 0
    for carro in carros {
        total += carro.numCauchos
    }
    return total
}

let resul = obtenerNumeroCauchos([duster, camaleon])

print(resul)



//🧩EJERCICIO 3
