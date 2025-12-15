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

//Función que amputa una pata
func amputarUnaPata(animal: Animal) {

    // 1️⃣ Los parámetros de una función son constantes (let) por defecto
    //    Por eso NO podemos modificar directamente "animal"

    // 2️⃣ Creamos una copia mutable del animal recibido
    var amputando = animal

    // 3️⃣ Swift primero lee el valor actual de numeroPatas
    //    Luego le resta 1
    //    Finalmente asigna el nuevo valor a la propiedad
    //Aqui abajo estoy accediendo con mi variable amputando a numero de patas para mutarla
    amputando.numeroPatas = amputando.numeroPatas - 1

    // 4️⃣ Imprimimos el resultado final
    print("Listo, ya amputamos el número de patas: \(amputando.numeroPatas)")
    
    
    // yo necesito que mi propiedad numeroPatas sea seteable (set) para que me debe modificar el nuemero de patas
}


amputarUnaPata(animal: perro)
amputarUnaPata(animal: gato)


//--------------------------------
//CLOSURE
//--------------------------------

var saludo = ""

func sumar(a: Int, b: Int) -> Int {
    return a + b
    
}

//declaracion del closure

var suma: (Int, Int) -> Int = { (a, b) in
    return a + b
    
}

//el signo = separa una declaracion de una asignacion
//despues del signo de apertura { ,estoy asignando una implementacion o valos del closure, osea lo que le estoy asignando a suma


//CONTINUACION DEL EJERCICIO CON CLOSURE USANDO PROTOCOLO

//Esta es una variable de tipo closure
var amputar: (Animal, Int) -> Void = { (animal, numPatas) in
    
    var copia = animal
    
    copia.numeroPatas = copia.numeroPatas - numPatas
    
    print("Ahora el animal tiene \(copia.numeroPatas) patas.")
}

amputar(perro, 4)



// Varios ejercicios de closure
