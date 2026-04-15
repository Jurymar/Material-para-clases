import SwiftUI

// =====================================================
// 1️⃣ ¿QUÉ ES UN CLOSURE?
// Un closure es un bloque de código que puedes guardar
// en una variable y ejecutar cuando quieras.
// Es como una función sin nombre.
// =====================================================

let closure: (() -> Void)?

// =====================================================
// 2️⃣ CLOSURE SIMPLE (SIN PARÁMETROS)
// =====================================================

// Creamos un closure que no recibe ni retorna nada
let saludo = {
    print("Hola desde un closure")
}



// Ejecutamos el closure
saludo()


// =====================================================
// 3️⃣ CLOSURE CON PARÁMETROS Y RETORNO
// =====================================================

// Creamos un closure que recibe dos números y retorna un resultado
let sumar: (Int, Int) -> Int = { (a, b) in
    return a + b
}

// Usamos el closure
let resultadoSuma = sumar(5, 3)
print("Resultado suma: \(resultadoSuma)") // 8


// =====================================================
// 4️⃣ CLOSURE CON SINTAXIS CORTA ($0, $1)
// =====================================================

// $0 = primer parámetro
// $1 = segundo parámetro
let multiplicar: (Int, Int) -> Int = { $0 * $1 }

let resultadoMultiplicar = multiplicar(4, 6)
print("Resultado multiplicar: \(resultadoMultiplicar)") // 24


// =====================================================
// 5️⃣ CLOSURES EN ARRAYS (map, filter, sorted, reduce)
// =====================================================

let numeros = [1, 2, 3, 4, 5]

// map → transforma cada elemento del array
let numerosDobles = numeros.map { $0 * 2 }
// Resultado: [2, 4, 6, 8, 10]

// filter → filtra elementos según una condición
let numerosPares = numeros.filter { $0 % 2 == 0 }
// Resultado: [2, 4]

// sorted → ordena usando una comparación
let numerosOrdenados = numeros.sorted { $0 > $1 }
// Resultado: [5, 4, 3, 2, 1]

// reduce → acumula valores
let sumaTotal = numeros.reduce(0) { $0 + $1 }
// Resultado: 15


// =====================================================
// 6️⃣ CLOSURE COMO PARÁMETRO (CALLBACK)
// =====================================================

// Función que recibe un closure como parámetro
func descargarDatos(completion: (String) -> Void) {
    print("Descargando datos...")
    completion("Datos descargados correctamente")
}

// Uso de la función con closure
descargarDatos { mensaje in
    print("Callback ejecutado: \(mensaje)")
}


// =====================================================
// 7️⃣ CALLBACK ASÍNCRONO (@escaping)
// =====================================================

func obtenerInformacion(completion: @escaping (String) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        completion("Información lista")
    }
}

// Uso
obtenerInformacion { resultado in
    print("Resultado asíncrono: \(resultado)")
}


// =====================================================
// 8️⃣ CAPTURA DE VALORES (Closures recuerdan datos)
// =====================================================

func crearContador() -> () -> Int {
    var contador = 0
    
    return {
        contador += 1
        return contador
    }
}

let contador = crearContador()

print(contador()) // 1
print(contador()) // 2
print(contador()) // 3


// =====================================================
// 9️⃣ CLOSURES EN SWIFTUI (Botones y acciones)
// =====================================================

struct ContentView: View {
    
    @State private var numero = 0
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Número: \(numero)")
                .font(.largeTitle)
            
            Button("Sumar") {
                // Este bloque es un closure
                numero += 1
            }
            
            Button("Restar") {
                numero -= 1
            }
        }
        .padding()
    }
}


// =====================================================
// 🔟 CLOSURES Y RETAIN CYCLES (uso de weak self)
// =====================================================

// Ejemplo conceptual (más común en UIKit)

class MiClase {
    func cargarDatos() {
        obtenerInformacion { [weak self] resultado in
            guard let self = self else { return }
            print("Datos recibidos: \(resultado)")
        }
    }
}


// =====================================================
// 🧾 RESUMEN RÁPIDO
// - Un closure es código reutilizable
// - Puede recibir y retornar valores
// - Se usa para callbacks, asincronía y transformación de datos
// =====================================================


// =====================================================
// VARIOS EJERCICIOS DE CLOSURE
// =====================================================

// crear closure sin parametros






