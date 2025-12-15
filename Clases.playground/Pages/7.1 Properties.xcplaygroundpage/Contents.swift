//: [Previous](@previous)

import Foundation

//Properties (Propiedades): Una property es una variable que vive dentro de una clase o estructura y almacena o calcula información sobre algo. se dividen en 2 tipos

//Una property es cualquier dato o característica que pertenece a un objeto.
//Puede ser un dato que se guarda (stored property) o un dato que se calcula (computed property).
//Todas existen para describir y darle información a un objeto..

//1. Stored Properties (Propiedades almacenadas): son variables que guardan datos reales dentro de un objeto. Son como una caja donde se almacena información que puedes leer o cambiar.”

//Son propiedades que guardan un valor real en memoria.

//Solo se pueden usar en: struct y class, (No en enum).

// Esta variable tiene un valos asignado.
var greeting = "Hello, playground"

//Ejemplo
struct Persona {
    var nombre: String     // stored property
    var edad: Int          // stored property
}
//Como se usan?
var p = Persona(nombre: "Ana", edad: 25)

print(p.nombre)  // Ana
p.edad = 30
print(p.edad)    // 30

//Una stored property es como guardar algo en una cartera


//2. Computed Properties (Propiedades calculadas): no guardan datos, sino que calculan un valor usando otras propiedades cuando se necesitan. Esta no tiene un valor asignado, se ejecuta cuando se llama, ejecuta el cuerpo y retorna, no es mutable, se comporta como una funcion.

//No almacenan un valor directamente, sino que calculan su valor cuando se acceden.

//Usan los bloques:
    //get → para obtener el valor
    //set → para modificarlo (opcional)

//no hay que inicializar
var greet: String {
    "Hello, world!"
}

//Ejemplo

struct Rectangulo {
    var ancho: Double
    var alto: Double

    var area: Double {        // computed property
        return ancho * alto
    }
}

//Uso
let r = Rectangulo(ancho: 5, alto: 3)
print(r.area)  // 15
//area no guarda nada en memoria, solo calcula el resultado.

//Computed Properties con get y set

//Ejemplo
struct Circulo {
    var radio: Double

    var diametro: Double {
        //Cuando la lees (Obtener)
        get {
            return radio * 2
        }
        //Cuando la escribes
        set {
            radio = newValue / 2
        }
    }
}

//Uso
var c = Circulo(radio: 4)

print(c.diametro)   // 8  Aqui se esta leyendo, accediendo, obteniendo
c.diametro = 20     // Se esta escribiemdo, mutando, asignando
print(c.radio)      // 10

//Aquí:
//get devuelve el valor
//set recibe un valor con newValue

//Una computed property es como hacer una operación mental cuando lo necesitas.


//Stored Property: Guarda un valor, Ocupa memoria, Puede ser var o let
//Computed Property: Calcula un valor, No guarda datos, Solo puede ser var



//: [Next](@next)
