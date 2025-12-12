import Foundation

protocol Animal {
    var numeroPatas: Int { get set} //tengo que indicar que control de acceso debe tener la propiedad del protocolo
}

protocol Volador {
    func volar()
}

// los struct no se pueden mutar , si quiero que sea mutable debo colocarle el modificador mutating
struct Perro: Animal {
    var numeroPatas: Int = 4
    
       func correr() { // ya que el struct no se puede modificar debo usar en la funcion el modificador mutating
    }
}

//Pero si intento mutar en una clase, si me lo permite

class Gato: Animal {
    var numeroPatas: Int = 4
    
    func patas() {
    }
}

struct Paloma: Animal, Volador {
    var numeroPatas: Int = 2
    
    func volar() {
    }
}

//En las instancias concretas que estoy creando , si me deja mutar el numero de patas sin que el protocolo me force a que sea mutable osea set

//a diferencia de la class el struct no puede mutar sus atributos si es let , lo debo colocar var
var perro = Perro()
print("El perro tiene \(perro.numeroPatas) patas")
perro.numeroPatas = 6

let paloma = Paloma()
print("La paloma tiene \(paloma.numeroPatas) patas")

//cuando es una class puedo mutar sus atributos , incluso si la instancia es let
let gato = Gato()
print("El gato tiene \(gato.numeroPatas) patas")

gato.numeroPatas = 8
print("El gato tiene \(gato.numeroPatas) patas")

perro.correr()
print("El perro tiene \(perro.numeroPatas) patas")


//get solo lectura ->
//get set lectura y escritura -> forza a quien implemente la propiedad sea mutable, si le coloco un let me va a dar error porque no estoy cumpliendo con los requerimientos del set


//Animal es un tipo de dato abstracto y los tipos de datos que lo implementan como Perro, Paloma y gato son concretos,


//En este caso que se va a modificar el numero de patas de un animal, sin importar cual animal ,el numero de patas debe ser mutable, entonces  necesito que el atributo numeroDePAtas sea set,
func amputarUnaPata(animal: Animal) {
    var amputando =  animal
    amputando.numeroPatas = amputando.numeroPatas - 1
    print("Listo ya amputamos el numero de patas \(amputando.numeroPatas) ")
}
// yo necesito que mi propiedad numeroPatas sea seteable (set) para que me debe modificar el nuemero de patas

amputarUnaPata(animal: perro)
amputarUnaPata(animal: gato)
