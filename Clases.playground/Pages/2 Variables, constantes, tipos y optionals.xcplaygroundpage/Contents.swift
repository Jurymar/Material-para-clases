//: [Previous](@previous)

import Foundation

//⭐VARIABLES

//las variables tambien son conocidas como atributos o propiedades
//son espacios de almacenemiento, podemos decir que son como una caja de herramienta, se dividen en 2

//✅ 1. Variables (var): pueden cambiar su valor mientras la app está funcionando, osea son mutables

var saludo: String = "Hello"
saludo = "Hi"
print(saludo)

//Con inferencia de tipo
var saludo1 = "Hello"

/*
 ¿Cuándo se usan?
 Cuando un valor va a cambiar:
 nombre, contador, texto, estados de botones, etc.
 */


//✅ 2. Constantes (let): no pueden cambiar su valor mientras la app está funcionando, osea son no mutables

let pi: Double = 3.14159

/*
 ¿Cuándo se usan?
 Cuando sabes que el valor será siempre el mismo durante toda la ejecución.
 */


//⭐ TIPOS DE DATOS

//Los tipos de datos definen que tipo de valor puede almacenar una variable o constante, cada dato que se almacena tiene un tipo: texto, número, verdadero/falso, etc.

//Los tipos de datos inician con mayuscula


//Cambiar de tipo
