//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//CLASS


class Saludo {
    var mensaje: String = "Hola"
}

class Saludo1 {
    var mensaje1: String
    
    init(mensaje1: String) {
        self.mensaje1 = mensaje1
    }
}


//STRUCT


//Diferencia entre clase y stuct

//STRUCT
struct Perro {
    var numeroPatas: Int = 4
}

//Pero si intento mutar en una clase, si me lo permite

//CLASS
class Gato {
    var numeroPatas: Int = 4
}


var perro = Perro()
print("El perro tiene \(perro.numeroPatas) patas")
var referenciaDePerro = perro // Creamos una copia del perro, cuqluier cambio sobre la copia, afecta solo a la copia.
referenciaDePerro.numeroPatas = 5
print("El perro viejo ahora tiene \(perro.numeroPatas) patas")
print("El perro nuevo ahora tiene \(referenciaDePerro.numeroPatas) patas")


let gato = Gato()
print("El Gato tiene \(gato.numeroPatas) patas")
var referenciaDeGato = gato // Creas una nueva referencia hacia el mismo objeto/instancia, cualquier cambio que se haga en cualquiera de las referencias (gato o referenciaDeGato), afecta al mismo objeto que apuntan.

let referenciaDeGato2 = referenciaDeGato
referenciaDeGato.numeroPatas = 5
print("El Gato viejo ahora tiene \(gato.numeroPatas) patas")
print("El Gato nuevo ahora tiene \(referenciaDeGato.numeroPatas) patas")


//ENUMS
