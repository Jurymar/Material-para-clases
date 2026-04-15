import Foundation
import SwiftUI


//“Uso un protocolo para asegurarme de que todos los productos tengan marca. Luego uso un closure para recorrerlos y obtener solo las marcas, sin importar si es rubor, polvo o labial.”


protocol Maquillaje {
    var marca: String { get }
}

struct Rubor: Maquillaje {
    var marca = "Trendy"
}

struct Polvo: Maquillaje {
    var marca = "Purpura"
}

struct Labial: Maquillaje {
    var marca = "Rosa"
}

let rubor = Rubor()
print("El rubor es marca \(rubor.marca).")

let polvo = Polvo()
print("El polvo es marca \(polvo.marca).")

let labial = Labial()
print("El labial es marca \(labial.marca).")


//Quiero saber que marcas tengo

let queMarcasTengo: ([Maquillaje]) -> [String] = { productos in
    
    var marcas: [String] = []
    
    for producto in productos {
        marcas.append(producto.marca)
    }
    
    return marcas
}

let marcaDisponible = queMarcasTengo([labial, polvo, rubor])
print("Las marcas de maquillaje que tengo son: \(marcaDisponible)")


//otra forma

let marcasQueTengo: ([Maquillaje]) -> String = { productos in
    
    var marcas1 = ""
    
    for producto in productos {
        marcas1 += producto.marca + " "
    }
    
    return marcas1
}

let marcasDisponibles = marcasQueTengo([labial, polvo, rubor])
print("Las marcas de maquillaje que tengo son: \(marcasDisponibles)")

// "RosaPurpuraTrendy"
// "Rosa Purpura Trendy"



//Crear protocol ropa, que tenga varias prendas de diferentes marcas, pero no asigno valores en los struct , usare init, luego crear varias instancias, y por medio de un closure indicar que prendas tengo del mismo color


//Protocolo
protocol Ropa {
    var color: String { get }
}

//Struct
struct Camisa:Ropa {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

struct Pantalon:Ropa  {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

struct Falda:Ropa  {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

//Instancias

let camisa = Camisa.init(color: "Rosa")
let camisa1 = Camisa.init(color: "Morado")
let pantalon = Pantalon.init(color: "Azul")
let pantalon1 = Pantalon.init(color: "Rosa")
let falda = Falda.init(color: "Rojo")
let falda1 = Falda.init(color: "Amarillo")

//Closure que muestra los colores que hay

let colores: ([Ropa]) -> String = { prendas in
    
    var color1 = ""
    
    for prenda in prendas {
        color1 += prenda.color + " "
    }
    
    return color1
}

let colorDisponible = colores([camisa, camisa1, pantalon, pantalon1, falda, falda1])
print("Los colores que tengo son: \(colorDisponible)")

//Closure que muestra que color se repite

let colorRepetido: ([Ropa]) -> String = { articulos in
    
    var contadorColores: [String: Int] = [:]
    
    // 1. Recorremos las prendas
    for articulo in articulos {
        
        let color = articulo.color
        
        // 2. Si el color ya existe, sumamos 1
        if let cantidad = contadorColores[color] {
            contadorColores[color] = cantidad + 1
        } else {
            // 3. Si no existe, lo agregamos con valor 1
            contadorColores[color] = 1
        }
    }
    
    // 4. Buscamos el color que más se repite
    var colorMasRepetido = ""
    var maxCantidad = 0
    
    for (color, cantidad) in contadorColores {
        if cantidad > maxCantidad {
            maxCantidad = cantidad
            colorMasRepetido = color
        }
    }
    
    return "El color que más se repite es \(colorMasRepetido) con \(maxCantidad) prendas"
}

// Llamada al closure
let resultadoFinal = colorRepetido([camisa, camisa1, pantalon, pantalon1, falda, falda1])
print(resultadoFinal)



// Ejemplo entreviusta


struct Contact: Identifiable {
    let name: String
}

protocol ContactsRepository {
    func fetchContacts() throws -> [Contact]
}

struct ContactsRepositoryImpl: ContactsRepository {
    func fetchContacts() throws -> [Contact] {
        [] // fetch from database
    }
}

class ViewModel: ObservableObject {
    
    let repository: ContactsRepository
    
    init(repository: ContactsRepository) {
        self.repository = repository
    }
    
    var contacts: [String] = []
    
    func viewDidAppear() {
        do {
            contacts = try repository.fetchContacts().map { $0.name }
        } catch {
            // show error to view
            
        }
    }
    
}

struct MyView: View {
    
    @StateObject var viewModel: ViewModel = ViewModel(repository: ContactsRepositoryImpl())
    @State var errorMessage = ""
    
    var body: some View {
        Text(errorMessage)
        List {
            ForEach(viewModel.contacts) { contact in
                Text(contact)
            }
        }
    }
}
