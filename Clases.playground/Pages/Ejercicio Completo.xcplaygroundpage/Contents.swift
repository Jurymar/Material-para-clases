//: [Previous](@previous)

import Foundation

protocol Reproducible {
    var duracion: Int {get}
    
    func reproducir()
}

struct Pelicula: Reproducible {
    var formatoVideo: String
    var duracion: Int
    
    func reproducir() {
        print("Reproduciendo Pelicula \(formatoVideo)")
    }
}

struct Cancion: Reproducible {
    var formatoAudio: String
    var duracion: Int
    
    func reproducir() {
        print("Reproduciendo Cancion \(formatoAudio)")
    }
}
    
    let arrayPeliculas: [Pelicula] = [
        Pelicula(formatoVideo: "La casa", duracion: 100),
        Pelicula(formatoVideo: "La ola", duracion: 120),
        Pelicula(formatoVideo: "La tela", duracion: 90)
    ]
    
    let arrayCanciones: [Cancion] = [
        Cancion(formatoAudio: "El duelo", duracion: 3),
        Cancion(formatoAudio: "Retorno", duracion: 4),
        Cancion(formatoAudio: "Blanco", duracion: 5)
    ]


    let reproducibles: [Reproducible] = arrayPeliculas + arrayCanciones



let filtrarArrayReproducible = reproducibles.filter {
    $0.duracion > 10
}

// Tupla


let tupla: (String, Int) = ("MP4", 50)


let arrayTupla: [(String, Int)] = [
    ("MP3", 50),
    ("MP4", 34),
    ("MP5", 54)
]

tupla.0

//Mapeo
let cancion = Cancion(formatoAudio: tupla.0, duracion: tupla.1)

//Casteo
let repsoducible: Reproducible = cancion


// array de tupla a cancion

let arrayEntero = [1, 4]

var arrayString: [String] = []

for entero in arrayEntero {
    arrayString.append("\(entero)")
}


let numero = 0

let string = "\(numero)"
