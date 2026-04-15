//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Retain cycle

class Humano {
    var car: Carro?
    
    //deinit : es una funcion que se llama cuando se destruye una instancia, osea el conteo de referencia llega a cero, deinit es importante para debuguear y detectar problemas de Retain cycle.
    
    deinit {
        print("humano deinit")
    }
}

class Carro {
    weak var dueno: Humano?
    
    deinit {
        print("perro deinit")
    }
}

var huma: Humano? = Humano()

var car: Carro? = Carro()

huma?.perro = car
car?.dueno = huma

huma = nil
car = nil
print("Hola")


// EJERCICIO DE REFERENCIAS FUERTES

final class Persona {
    var mascota: Perro?
}

final class Perro {
    weak var dueno: Persona?
}

let persona = Persona()
let perro = Perro()


persona.mascota = perro
perro.dueno = persona

//👉 Persona tiene fuerte a Perro
//👉 Perro tiene fuerte a Persona
//
//💥 Resultado:
//Nunca se liberan de memoria (memory leak)

//✅ Solución: Uso weak para evitar ciclos de retención cuando dos objetos se referencian entre síusar weak
//
//Debes hacer una de las dos referencias débil, normalmente la “inversa”:

//👉 weak solo funciona con opcionales
//
//👉 El dueño tiene la mascota fuerte
//👉 La mascota tiene al dueño débil

