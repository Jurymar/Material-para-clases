// Ejemplos de uso de los dos puntos (:) en Swift

//✅ 1) Anotación de tipo en variables/constantes/propiedades
//Indica el tipo de dato
let nombre: String = "Ana"
var edad: Int = 30

struct Usuario {
    var id: Int
    var nombre: String
}

// ✅2) Conformidad a protocolos y herencia de clases
protocol Saludable {
    func saludar()
}

struct Persona: Saludable { // Conforma a protocolo
    func saludar() {
        print("Hola 👋")
    }
}

class Animal { }
class Perro: Animal { } // Hereda de Animal


// ✅3) Diccionarios y tuplas
let edades: [String: Int] = ["Ana": 30, "Luis": 25] //En diccionarios, separa clave y valor.
let punto: (x: Int, y: Int) = (x: 10, y: 20) //En tuplas nombradas, separa nombre y tipo.


// ✅4) Firmas de funciones y closures (parámetros y retorno)
func sumar(a: Int, b: Int) -> Int { a + b } //En funciones, separa el nombre del parámetro de su tipo.
let duplicar: (Int) -> Int = { (valor: Int) -> Int in valor * 2 } //En closures, indica tipos de parámetros y retorno.


// ✅5) Genéricos y restricciones con ':' y where
func imprimirIDs<T: Sequence>(de secuencia: T) where T.Element: Identifiable {
    for e in secuencia { print(e.id) }
}


struct Item: Identifiable { let id: Int }
let items: [Item] = [Item(id: 1), Item(id: 2)]
imprimirIDs(de: items)

// ✅6) Enums con valores asociados nombrados
enum Resultado {
    case exito(datos: String) //Al definir valores asociados, puedes nombrar los componentes con “: tipo”.
    case error(codigo: Int, mensaje: String)
}
let r1: Resultado = .exito(datos: "OK")
let r2: Resultado = .error(codigo: 404, mensaje: "No encontrado")


// ✅7) Extensiones con conformidad
extension String: @retroactive Identifiable { //Para declarar que un tipo existente ahora conforma a un protocolo.
    public var id: String { self }
}
print("Swift".id)


// ✅8) SwiftUI: conformidad a View y anotación de tipo opaco
import SwiftUI
struct MiniVista: View {
    var body: some View { Text("Hola, SwiftUI!") }
}
