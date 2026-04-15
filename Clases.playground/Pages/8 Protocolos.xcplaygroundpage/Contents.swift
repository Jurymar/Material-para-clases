//: [Previous](@previous)

import SwiftUI
import Foundation

//Protocolos
//Un protocolo se implementa, se conforma o se adopta

/*
 ✅Un protocolo es como un contrato o lista de reglas que dice:

 “Cualquier clase, estructura o enum que quiera usarme, debe implementar estas propiedades y métodos.”
 
 ✅NOTA: otros protocolos pueden conformar protocolos

 ✅No contienen la lógica, solo definen qué debe existir.

 Ejemplo mental para tus estudiantes:
 👉 “Un protocolo es como un formulario de requisitos que una clase debe cumplir.”
 */

/*En SwiftUI, los protocolos son reglas que le dicen a una estructura:

“Si quieres ser una vista, debes cumplir con esto.”

Por ejemplo, todas las vistas en SwiftUI deben cumplir el protocolo View.*/

//Ejemplo

//si el struct quiere comportanse como una vista debe conformar View, este protocolo como todos los protocolos que se declaren, tienen requerimientos que conformar y View en particular  pide que se declare y se implemente una propiedad body
//🧩Ejemplo

struct ContentView: View {
    //body es una propiedad requerida por el protocolo View.
    //some View es el tipo
    var body: some View {
        Text("Hola, SwiftUI!")
    }
}
//“Esta estructura cumple el protocolo View”. Y el protocolo View exige que exista una propiedad llamada body.

//✅los protocolos siempre son var , pero no significa que se pueden mutar , depende de los requerimientos ya que pueden ser
//get -> que significa solo lestura
//get set -> que significa que se puede mutar


//Toda vista en SwiftUI debe tener un body que describa su contenido.
//View exige una propiedad body que devuelve “algo que es View” (some View).
//Es de solo lectura (normalmente se implementa como una computed property).

/*
 ✅ ¿Cuándo usar protocolos en SwiftUI?

 Úsalos cuando:

 ✅ Quieres que muchas vistas sigan la misma estructura
 ✅ Estás trabajando con MVVM (ViewModel)
 ✅ Quieres hacer vistas reutilizables

 ⸻

 ✅ Ejemplo fácil de la vida real para explicar

 Puedes decirles:

 “El protocolo View es como una plantilla.
 Si no defines body, SwiftUI no sabe qué mostrar.”

 */

//🧩Ejercicio 1: Protocolo para una vista con título

protocol PantallaConTitulo: View {
    var titulo: String { get }
}

//Crear una vista y conformar al protocolo

struct VistaPerfil: View, PantallaConTitulo {
    
    var titulo: String = "Perfil de Usuario"
    
    var body: some View {
        Text(titulo)
            .font(.title)
    }
}
//Los protocolos obligan a definir sus propiedades y cumplir reglas.


//🧩Ejercicio 2: Protocolo para botones personalizados

protocol BotonBase {
    var texto: String { get }
}

struct BotonAzul: View, BotonBase {
    
    var texto: String = "Aceptar"
    
    var body: some View {
        Button(texto) {
            print("Botón presionado ✅")
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}
