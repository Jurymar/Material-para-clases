import Foundation

//==================================================
// ⭐ COLECCIONES EN SWIFT
//==================================================

//Son estructuras de dados que conforman al protocolo coleccion

// Las colecciones permiten almacenar MUCHOS valores dentro de una sola variable o constante.

// Son como una caja que guarda varios datos del mismo tipo.

// En Swift usamos principalmente:
// 1) Arrays
// 2) Sets
// 3) Diccionarios


//--------------------------------------------------
// ⭐ 1. ARRAYS
//--------------------------------------------------

// Un Array es una colección ORDENADA de elementos del mismo tipo.
// Cada elemento tiene una posición (índice).
// Los elementos se pueden repetir
//
// ⚠️ Los índices comienzan en 0.

//--------------------------------------------------
// ✅ CREAR ARRAYS
//--------------------------------------------------

// Forma explícita
var numeros: [Int] = [1, 2, 3, 4]

// Con inferencia de tipo, el tipo esta implicitamente
var frutas = ["Manzana", "Banana", "Pera"]

// Array vacío
var nombres: [String] = []

//--------------------------------------------------
// ✅ ACCEDER A ELEMENTOS
//--------------------------------------------------

print(frutas[0]) // Manzana
print(frutas[2]) // Pera

//--------------------------------------------------
// ✅ MODIFICAR ARRAYS
//--------------------------------------------------

// Agregar elementos
frutas.append("Uva")

// Insertar en una posición específica
frutas.insert("Fresa", at: 1)

// Eliminar elementos
frutas.remove(at: 0)

// Eliminar ultimo elementos
frutas.removeLast()

// Cambiar un valor
frutas[0] = "Mango"

print(frutas)


//--------------------------------------------------
// ✅ PROPIEDADES ÚTILES
//--------------------------------------------------

print(frutas.count)     // cantidad de elementos
print(frutas.isEmpty)  // true si está vacío


//--------------------------------------------------
// ✅ RECORRER UN ARRAY
//--------------------------------------------------

for fruta in frutas {
    print("Fruta: \(fruta)")
}

//--------------------------------------------------
// ⭐ 2. SETS
//--------------------------------------------------

// Un Set es una colección NO ORDENADA
// y NO permite valores duplicados.
//
// Se usa cuando NO importa el orden
// y NO se quieren repetir valores.


//--------------------------------------------------
// ✅ CREAR SETS
//--------------------------------------------------

// Forma explícita
var numerosSet: Set<Int> = [1, 2, 3]

// Inferencia de tipo, el tipo esta implicitamente
var colores: Set = ["Rojo", "Verde", "Azul"]


//--------------------------------------------------
// ✅ OPERACIONES CON SETS
//--------------------------------------------------

// Agregar elementos
colores.insert("Amarillo")

// Intentar agregar duplicado (no se agrega)
colores.insert("Rojo")

// Eliminar elementos
colores.remove("Verde")

print(colores)


//--------------------------------------------------
// ✅ VERIFICAR EXISTENCIA
//--------------------------------------------------

print(colores.contains("Azul"))


//--------------------------------------------------
// ⭐ 3. DICCIONARIOS
//--------------------------------------------------

// Un Diccionario almacena datos en pares:
// CLAVE : VALOR
//
// Cada clave es única y se usa para acceder al valor.


//--------------------------------------------------
// ✅ CREAR DICCIONARIOS
//--------------------------------------------------

// Forma explícita
var edades: [String: Int] = [
    "Ana": 30,
    "Luis": 25
]

if let valor = edades["Ana"] {
    let newValor = valor + 1
    edades["Ana"] = newValor
} else {
    edades["Ana"] = 1
}

// Inferencia de tipo
var capitales = [
    "Colombia": "Bogotá",
    "México": "CDMX"
]

// Diccionario vacío
var precios: [String: Double] = [:]


//--------------------------------------------------
// ✅ ACCEDER A VALORES
//--------------------------------------------------

// Retorna un opcional
let edadAna = edades["Ana"]
print(edadAna ?? 0)


//--------------------------------------------------
// ✅ MODIFICAR DICCIONARIOS
//--------------------------------------------------

// Agregar o actualizar
edades["Pedro"] = 40
edades["Ana"] = 31

// Eliminar
edades["Luis"] = nil

print(edades)


//--------------------------------------------------
// ✅ RECORRER DICCIONARIOS
//--------------------------------------------------

for (nombre, edad) in edades {
    print("\(nombre) tiene \(edad) años")
}


//--------------------------------------------------
// ⭐ COMPARACIÓN RÁPIDA
//--------------------------------------------------

/*
 Array:
 - Ordenado
 - Permite duplicados
 - Acceso por índice

 Set:
 - No ordenado
 - No permite duplicados
 - Acceso rápido

 Diccionario:
 - Clave → Valor
 - Claves únicas
 - Valores opcionales al acceder
 */


//--------------------------------------------------
// ⭐ EJEMPLOS PRÁCTICOS PARA ESTUDIANTES
//--------------------------------------------------

// Array
let tareas = ["Estudiar Swift", "Practicar SwiftUI", "Hacer ejercicios"]

// Set
let numerosUnicos: Set = [1, 2, 2, 3, 3, 4]

// Diccionario
let notas = [
    "Matemáticas": 90,
    "Programación": 95
]

print(tareas)
print(numerosUnicos)
print(notas)


//==================================================
// ⭐ RESUMEN PARA ESTUDIANTES
//==================================================

/*
 COLECCIONES:
 - Array → lista ordenada
 - Set → valores únicos sin orden
 - Diccionario → clave : valor

 MÉTODOS CLAVE:
 - append(), insert(), remove()
 - count, isEmpty
 - contains()
 */



//EJERCICIOS

//🧩Ejercicios de array

//1-Crea un array de nombres de frutas y recórrelo para imprimir cada fruta.

var nombreFrutas = ["Fresa", "Pera", "Mango", "Banana"]

//Recorrer o iterar
for fruta in nombreFrutas {
    print(fruta)
}

//Agregar un elemento

nombreFrutas.append("Manzana")
print(nombreFrutas)


//usar array dentro de un diccionario




//🧩Ejercicios de diccionario

var edades1 = ["Ana": 25, "Luis": 23 ]

//Recorrer o iterar
for (nombre, edad) in edades1 {
    print("Mi nombre es \(nombre) y tengo: \(edad) años.")
}


//🧩Ejercicios varios

//array vacio
var vacio: [String] = []

//tipo de dato
var numero: [Int] = [1, 2, 3, 4, 5]

//🧩
var fruta = ["Pera", "Manzana", "Melon"] //Con inferencia de tipo

//acceder a un elemento
print(fruta[2])

//agregar un elemento
fruta.append("Uva")
print(fruta)

//insertar elemento en posicion espesifica
fruta.insert("Fresa", at: 2)
print(fruta)

//elimino un elemento
fruta.remove(at: 2)
print(fruta)

//cambiar un elemento por otro
fruta[2] = "Mango"
print(fruta)

//cantidad de elementos que tiene un array
print(fruta.count)

//recorrer un array

for recorrerFruta in fruta {
    print(recorrerFruta)
}


//🧩
var name1: [String] = ["Cara", "Perla"]

//accedo a una posicion
print(name1[1])

//agrego elemento
name1.append("Estrella")
print(fruta)


//insertar un elemento en una posicion
name1.insert("Clara", at: 3)
print(name1)


//eliminar
name1.remove(at: 0)
print(name1)


//sustituir elemento
name1[2] = "Jury"
print(name1)

//recorrer array

for recorrerName in name1 {
    print(recorrerName)
}


//🧩 Filtrar en un array
var animales: [String] = ["Perro", "Gato", "Perro", "Gato"]

animales[2]

animales.append("Loro")

animales.first

animales.last

let animalesFiltrados = animales.filter { animal in
    return animal.first == "P"
}

for animal in animales {
    print(animal)
}

//🧩
var diccionario: [String: String] = [:]

diccionario["perro"] = "volador"
diccionario["perro"] = "hnggvy"


let valor = diccionario["perro"]

//🧩
var pais: Set<String> = .init(animales)



//🧩 Crear una funcion para sumar un array de enteros

// Creamos una función llamada "sumar"
// Recibe un parámetro llamado "numeros"
// Este parámetro es un array de enteros [Int]
// La función devuelve un Int (la suma total)

func sumar(numeros: [Int]) -> Int {
    
    // Creamos una variable llamada "total"
    // La inicializamos en 0 porque vamos a acumular la suma
    var total = 0
    
    // Recorremos cada elemento del array "numeros"
    // En cada vuelta del ciclo, "num" toma el valor de un elemento
    for num in numeros {
        
        // Sumamos el valor actual (num) a la variable total
        // Esto es igual a escribir: total = total + num
        total += num
    }
    
    // Cuando termina el ciclo,
    // retornamos el valor acumulado en total
    return total
}


// 🔹 Declaración del array
// Creamos un array llamado numeros1
let numeros1 = [2, 4, 5]

// 🔹 Llamamos a la función
// Le pasamos el array como argumento
let suma = sumar(numeros: numeros1)

// 🔹 Imprimimos el resultado
print(suma)

//🧩Funcion que recibe un array de Int, y retorna el numero mayor del array

func numeroMayor(numero: [Int]) -> Int? {
    
    guard numero.count > 0 else {
        return nil
    }
    
    var numMayor = 0
    
    for nun1 in numero {
        
        if nun1 > numMayor {
            numMayor = nun1
        }
    }
    
    return numMayor
}

let numeros3: [Int] = [2, 4, 6, 10, 5]

let numMayor = numeroMayor(numero: numeros3)

//otra forma



// 🧩Retorna cuantos numeros son mayores a zero y cuantos son menores
func cuantosNumerosMayoresYMenores(_ numeros: [Int]) -> (Int, Int) {
    
    var cantidadNumerosMayores = 0
    var cantidadNumerosMenores = 0
    
    for numero in numeros {
        if numero > 0 {
            cantidadNumerosMayores += 1
        }else if numero < 0 {
            cantidadNumerosMenores += 1
        }
    }
    
  return (cantidadNumerosMayores, cantidadNumerosMenores)
}

cuantosNumerosMayoresYMenores([0, 1, 2, 3, 4, 5]) // (5, 0)
cuantosNumerosMayoresYMenores([-4, -2]) // (0, 2)
cuantosNumerosMayoresYMenores([0, 1, -1]) // (1, 1)
cuantosNumerosMayoresYMenores([-100000]) // (0, 1)



// 🧩
func cuantasVecesApareceElNumero(_ numero: Int, en numeros: [Int]) -> Int {
    var cuantasVecesSeRepiteElNumero = 0
    
    for num in numeros {
        if num == numero {
            cuantasVecesSeRepiteElNumero += 1
        }
    }
    
    return cuantasVecesSeRepiteElNumero
}

cuantasVecesApareceElNumero(8, en: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2,]) // 1
cuantasVecesApareceElNumero(2, en: [1, 2, 3, 4, 5, 6, 2, 2, 4, 5, 2]) // 4
cuantasVecesApareceElNumero(1, en: [1, 2, 8, 9, 0, 5, 6, 7, 8, 9, 0, 1]) // 2
cuantasVecesApareceElNumero(7, en: [5, 6, 7, 8, 9, 0, 1]) // 1
cuantasVecesApareceElNumero(0, en: [5, 6, 7, 8, 9, 1]) // 0



//🧩 Retorna true si la suma de los numeros del array (numeros) es mayor que el numero "numero"
func sumaDenumerosEsMayorQue(_ numero: Int, en numeros: [Int]) -> Bool {
    var sumaDenumeros = 0
    
    for num in numeros {
        sumaDenumeros += num
    }
    return sumaDenumeros > numero
}
sumaDenumerosEsMayorQue(19, en: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2,]) // false
sumaDenumerosEsMayorQue(57, en: [1, 2, 3, 4, 5, 6, 2, 2, 4, 5, 2]) // false
sumaDenumerosEsMayorQue(5, en: [1, 2, 8, 9, 0, 5, 6, 7, 8, 9, 0, 1]) // false
sumaDenumerosEsMayorQue(34, en: [5, 6, 7, 8, 9, 0, 1]) // false
sumaDenumerosEsMayorQue(45, en: [5, 6, 7, 8, 9, 1]) // false
sumaDenumerosEsMayorQue(30, en: [6, 2, 8, 9, 1, 4]) // false


//🧩Imprimir solo nombres con más de 4 letras

let names = ["Esperanza", "Ara", "Leo"]

for name in names {
    if name.count > 4 {
        print(name)
    }
}


//// Si quiero que los nombres se muestren en una sola linea, se acumulan primero
let names5 = ["Carla", "Perla", "Aro", "Lia"]
var nombresLargos = [String]()

for name in names5 {
    if name.count > 4 {
        nombresLargos.append(name)
    }
}

print("Los nombres con más de 4 letras son: \(nombresLargos.joined(separator: ", "))")
//joined es un método que se usa con arrays de String para unir todos sus elementos en un solo String, usando un separador




//🧩Contar cuántos nombres empiezan por “A”
let nombres6 = ["Ana", "Camila", "Gabriel", "Angel", "Apolo"]
var contador = 0

for nombre in nombres6 {
    if nombre.first == "A" {
        contador = contador + 1
    }
}


//🧩Encontrar el nombre más largo

func nombreMasLargo(nombres: [String]) -> String{
    var guardaNombre = ""
    
    for nombre in nombres {
        if nombre.count > guardaNombre.count {
            guardaNombre = nombre
        }
    }
    
    return guardaNombre
}

let array = ["Ana", "Sebastián", "Luis", "María"]
let llamarFuncion = nombreMasLargo(nombres: array)
print(llamarFuncion)


//Cual nombre es mas largo
let names3 = ["Ana", "Sebastián", "Luis", "María", "Artemisares"]

var guardaname = ""

for name in names3 {
    if name.count > guardaname.count {
        guardaname = name
    }
}
print("El nombre mas largo es \(guardaname)")



//🧩Mostrar un nuevo array pero con los nombres convertidos a mayuscula

func letrasMayusculas(nombres: [String]) -> [String] {
    var stringMayuscula: [String] = []
    
    for nombre in nombres {
        stringMayuscula += [nombre.uppercased()]
    }
    return stringMayuscula
}


let names1: [String] = ["ana", "luis", "maria"]
let nuevosNombres = letrasMayusculas(nombres: names1)

print(nuevosNombres)



//🧩Verificar si el String es palindrono
let palabra = "ana"

func palindromo(palabra2: String) -> Bool {
    let palabra1 = palabra2.lowercased()
    
    return palabra1 == String(palabra1.reversed())
}

if palindromo(palabra2: palabra) {
    print("\(palabra) es palindromo")
} else {
    print ("\(palabra) no es palindromo")
}
