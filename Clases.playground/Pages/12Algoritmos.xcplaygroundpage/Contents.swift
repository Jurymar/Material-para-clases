// tienes un array de String, crear una funcion que me diga si la palabra hola existe dentro del array

struct Palabra {
    var title: String
}

let palabras: [Palabra] = [
    Palabra(title: "casa"),
    Palabra(title: "letra")
]

func palabraExisteEnArray(palabraExiste: String) -> Bool {
    return palabras.contains { movie in
        return movie.title == palabraExiste
    }
}

palabraExisteEnArray(palabraExiste: "casa")


//let palabras = ["casa", "hola"]
//
//func palabraExisteEnArray(palabraVerificar: String) -> Bool {
//    
//    for palabra in palabras {
//        
//        if palabraVerificar == palabra {
//            return true
//        }
//    }
//    return false
//}
//
//palabraExisteEnArray(palabraVerificar: "hola")
//palabraExisteEnArray(palabraVerificar: "perro")

//1
class Saludo {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func saludar() {
        print("Hola \(nombre)")
    }
}

let saludo = Saludo(nombre: "Lara")
saludo.saludar()


//2
let numeros = [1, 2, 3, 4]

for numero in numeros.reversed() {
    print(numero)
    
}


//3
func sumar(a: Int, b: Int) -> Int {
    return a + b
}

print(sumar(a: 10, b: 3))


//4
var nombre: String? = "Jury"

if let nombreDesempaquetado = nombre {
    print(nombreDesempaquetado)
}


//5
struct Usuario {
    var nombre: String
    var edad: Int
}

var usuario = Usuario(nombre: "Clara", edad: 31)
usuario.nombre = "Pablo"

//6

var nombres = ["Lara", "Carla", "Lira"]

nombres.append("Kori")
nombres.remove(at: 1)

for nombre in nombres {
    print(nombre)
}


var edades = ["Ana": 20, "Pedro": 60]


func sumar(numeros: [Int]) -> Int {
    var suma = 0
    
    for numero in numeros {
        
        suma = suma + numero
    }
    
    return suma
}

let array = [2, 4, 5]
let llamafunc = sumar(numeros: array)

print(llamafunc)
