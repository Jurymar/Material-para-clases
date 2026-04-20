//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//En las extensiones no se pueden usar Stored Properties, usan Computed Properties


let numeros: [Int] = [2, 6, 9, 1]

for numero in numeros {
    print(numero)
}

let imprimir = numeros.map { $0 }
print(imprimir)
