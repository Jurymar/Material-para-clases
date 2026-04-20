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

//🔹 OPCIONALES EJERCICIOS
//1- Dado un String?, imprime su valor solo si no es nil usando if let.

let nombre: String? = "Carla"

if let nombreDesempaquetado = nombre {
    print(nombreDesempaquetado)
}

//2- Crea una función que reciba un Int? y use guard let para validar que no sea nil.



//3- Dado dos opcionales (nombre y edad), imprime ambos valores solo si los dos existen.



let name = "Ana" // Palindromo

let numeros = [2, 4, 1, 7]

var pares = numeros.filter { $0 % 2 == 0 }
print(pares)


