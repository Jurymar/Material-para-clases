import PlaygroundSupport //para ver la view
import SwiftUI

//@State le dice a SwiftUI: “esta variable puede cambiar y, cuando lo haga, actualiza la UI”.
//private significa que solo es accesible dentro de ContentView (buena práctica para encapsular el estado).
//count es un entero que comienza en 0 y se usa para mostrar el contador en la interfaz.

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 16) {
            Text("¡Hola, Playground!")
            Text("Contador: \(count)")
                .font(.headline)
            Button("Incrementar") {
                count += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

//para ver la view
PlaygroundPage.current.setLiveView(ContentView())

