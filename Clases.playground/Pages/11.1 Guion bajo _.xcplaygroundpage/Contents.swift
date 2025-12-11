//: [Previous](@previous)

import SwiftUI
import Foundation

/*
 GUION BAJO (_) EN SWIFT - EXPLICACIÓN PARA ESTUDIANTES
 ------------------------------------------------------
 El guion bajo (_) significa:

 👉 "Este valor existe, pero no lo necesito"
 👉 "No quiero usar el nombre de esto"

 ÚSALO CUANDO:
 1) No necesitas el nombre del parámetro
 2) Quieres ignorar un valor
 3) No vas a usar el resultado de algo
*/

//✅ 1) Quitar el nombre del parámetro (función sin etiqueta externa)
func convertirNumero(_ texto: String) -> Int? {
    return Int(texto)
}

let a = convertirNumero("123") // más fácil de escribir


func convertirNumeroConEtiqueta(texto: String) -> Int? {
    return Int(texto)
}
// con etiqueta externa
let b = convertirNumeroConEtiqueta(texto: "456")


//✅ 2) Ignorar valores que no necesitas
let punto: (Int, Int) = (10, 20)

let (x, _) = punto // ignoramos el segundo valor
print("x =", x)

func obtenerUsuario() -> (id: Int, nombre: String) {
    return (1, "Ana")
}

let (_, nombre) = obtenerUsuario() // ignoramos el id
print("nombre =", nombre)


//✅ 3) En closures (cuando no quieres nombrar parámetros)
// $0 representa el primer valor que recibe el closure

let numeros = [1, 2, 3]
let cuadrados = numeros.map { $0 * $0 }

print(cuadrados)


//✅ 4) Ignorar el resultado de una función
@discardableResult
func accionQueNoMeImportaElRetorno() -> Int {
    return 42
}

_ = accionQueNoMeImportaElRetorno() // ejecuta la función, ignora el resultado


//✅ 5) Ignorar partes en un switch (pattern matching)
let coordenada = (x: 3, y: -2)

switch coordenada {
case (let x, _):
    print("x es", x)
}


//✅ 6) Ejemplo real en SwiftUI
struct ContadorView: View {
    @State private var valor = 0

    var body: some View {
        VStack(spacing: 16) {
            Text("Valor: \(valor)")
                .font(.title)

            Button("Sumar") {
                valor += 1
            }
            .buttonStyle(.borderedProminent)

            Button("Iniciar temporizador") {
                _ = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { _ in
                    valor += 10 // ignoramos el parámetro del timer
                }
            }
        }
        .padding()
    }
}


//✅ 7) Inicializador sin etiqueta externa
struct SaludoView: View {
    let nombre: String

    init(_ nombre: String) {
        self.nombre = nombre
    }

    var body: some View {
        Text("Hola, \(nombre)!")
    }
}


//✅ 8) Funciones con parámetros ignorados visualmente
func registrarEvento(_ mensaje: String, _ codigo: Int) {
    print("[\(codigo)] \(mensaje)")
}

registrarEvento("Inició la app", 100)


//✅ 9) Ignorar valor en un cambio de estado (SwiftUI)
struct ToggleDemo: View {
    @State private var activo = false

    var body: some View {
        VStack {
            Toggle("Activo", isOn: $activo)
                .onChange(of: activo) { _ in
                    print("Cambió 'activo'")
                }
        }
        .padding()
    }
}


//✅ 10) Ignorar errores con try?
enum Errorcito: Error {
    case fallo
}

func puedeFallar(_ ok: Bool) throws {
    if !ok {
        throw Errorcito.fallo
    }
}

try? puedeFallar(true)


//✅ Previews
#Preview("Contador") { ContadorView() }
#Preview("Saludo") { SaludoView("Mundo") }
#Preview("Toggle") { ToggleDemo() }
