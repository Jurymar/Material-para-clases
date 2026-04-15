////: [Previous](@previous)
//
//import Foundation
//
//
//var pais: String = "Canada"
//print(pais)
//
//pais = "Mexico"
//print(pais)
//
//let edad: Int = 35
//print(edad)
//
//print("Soy de \(pais) y tengo \(edad)")
//
//
//protocol Paises {
//    var idioma: String { get }
//}
//
//class Mexico: Paises {
//    var idioma: String
//    let moneda: String
//    
//    init(idioma: String, moneda: String ) {
//        self.idioma = idioma
//        self.moneda = moneda
//    }
//}
//
//let mexico = Mexico(idioma: "Español", moneda: "Peso")
//print("En México se habla \(mexico.idioma) y su moneda es el \(mexico.moneda)")
//
//
//
//
//// Ejercicio 2 con array
//
////
////  ContentView.swift
////  ConsumirApi
////
////  Created by Jurymar Colmenares on 9/04/26.
////
//
////Solo UI, nada de lógica pesada
//
//
//import SwiftUI
//
//struct ContentView: View {
//    
//    @State var movies: [Movie] = [
//        Movie(id: 1, title: "Casa Blanca"),
//        Movie(id: 2, title: "La Oficina"),
//        Movie(id: 3, title: "El Cementerio"),
//        Movie(id: 4, title: "La Playa")
//    ]
//    
//    @State var mostrarLista = true
//    
//    var body: some View {
//        
//        Toggle("Mostrar lista", isOn: $mostrarLista)
//            .padding()
//        
//        Button("Alternar lista", action: {
//            mostrarLista.toggle()
//        })
//        
//        Button("Eliminar ultimo elemento", action: {
//            movies.removeLast()
//        })
//        
//        Button("Agregar", action: {
//            movies.append(Movie(id: 5, title: "La lampara"))
//        })
//
//        
//        Spacer()
//        
//        if mostrarLista {
//            List(movies) { movie in
//                HStack {
//                    Image(systemName: "person")
//                        .foregroundStyle(.blue)
//                    Text(movie.title)
//                }
//            }
//        }
//    }
//    }
//
//#Preview {
//    ContentView()
//}
//
//
////Ejercicio 2.1 sin array con UUID
//
//import SwiftUI
//
//struct ContentView: View {
//    
//    @State var movies: [Movie] = []
//    
//    @State var mostrarLista = true
//    
//    @State var movieName = ""
//    
//    var body: some View {
//        
//        Toggle("Mostrar Lista", isOn: $mostrarLista)
//            .padding()
//        
//        Button("Eliminar ultimo elemento", action: {
//            if !movies.isEmpty {
//                movies.removeLast()
//            }
//        })
//        
//        Button("Agregar Elemento", action: {
//            if !movieName.isEmpty {
//                movies.append(Movie(id: UUID().hashValue, title: movieName))
//            }
//        })
//        
//        Button("Alternar vista", action: {
//            mostrarLista = !mostrarLista
//        })
//        
//        Divider()
//        
//        TextField("Nombre", text: $movieName)
//            .padding()
//        
//        Spacer()
//        
//        if mostrarLista {
//            List(movies) { movie in
//                HStack {
//                    Image(.foto)
//                        .resizable()
//                        .frame(width: 30, height: 30)
//                        .foregroundStyle(.blue)
//                    Text(movie.title)
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
////ejercicio 2.3
//
//import SwiftUI
//
//struct ContentView: View {
//    
//    @State var movies: [Movie] = []
//    
//    @State var mostrarLista = true
//    
//    @State var movieName = ""
//    
//    
//    var body: some View {
//        NavigationStack {
//            VStack {
//                Toggle("Mostrar", isOn: $mostrarLista)
//                    .padding()
//                
//                Button("Eliminar ultimo elemento", action: {
//                    movies.removeLast()
//                })
//                .disabled(movies.isEmpty)
//                
//                Button("Agregar elemento", action: {
//                    movies.append(Movie(id: UUID().hashValue, title: movieName))
//                })
//                .disabled(movieName.isEmpty) // Desabilitar boton
//                
//                Divider()
//                
//                TextField("Name", text: $movieName)
//                    .padding()
//                
//                Spacer()
//                
//                
//                if mostrarLista {
//                    List(movies) { movie in
//                        NavigationLink(movie.title) {
//                            Text(movie.title)
//                        }
//                            
//                    }
//                }
//            }
//            
//            .navigationTitle("Movies")
//
//        }
//        }
//    }
//
//#Preview {
//    ContentView()
//}
//
//
////Ejercicio 2.3
//
//
//
////
////  ContentView.swift
////  ConsumirApi
////
////  Created by Jurymar Colmenares on 9/04/26.
////
//
////Solo UI, nada de lógica pesada
//
//
//import SwiftUI
//
///*
// •    La aplicación debe permitir al usuario visualizar una lista de películas.
// •    El usuario debe poder mostrar u ocultar la lista en cualquier momento.
// •    Se debe mostrar en pantalla la cantidad total de películas registradas.
// •    El usuario debe poder agregar nuevas peliculas
// •    Si el usuario intenta agregar una película sin escribir un nombre:
// •    Se debe mostrar un mensaje indicando que el campo es obligatorio y no se debe agregar ningún elemento a la lista.
// •    Si el usuario ingresa un nombre válido la película debe agregarse a la lista.
// •    El campo de texto debe limpiarse automáticamente después de agregar.
// •    El usuario debe poder eliminar la ultima pelicula:
// •    Antes de eliminar, se debe solicitar confirmación.
// •    Si el usuario confirma, se elimina el último elemento de la lista.
// •    Si cancela, no debe ocurrir ninguna acción.
// •    La opción de eliminar debe estar deshabilitada cuando no existan elementos en la lista.
// •    Cada elemento debe poder seleccionarse.
// •    Al seleccionar una película:
// •    Se debe navegar a una vista de detalle.
// •    Se debe mostrar la información de la película seleccionada.
// •    Si la lista esta vacia, muestra un texto "Agrega peliculas a tu lista"
// •    Esto debe estar funcionando todo en tiempo real sin crashes.
// •    Si el nombre de la pelicula existe, preguntar si quiere duplicar.
// •    Debe estar comiteado a git local
// */
//
//// Segunda parte:
///*
// •    Cada pelicula de la lista debe mostrar un boton de eliminar para que se pueda eliminar una pelicula en particular en lugar de eliminar la ultima. Pedir confirmacion.
// •    Cada pelicula de la lista debe mostrar un boton para marcarla o desmarcarla como favorita. El boton debe ser una estrella amarilla rellena cuando es favorita o una estrella sin relleno gris cuando no. Tip: (guardar peliculas favoritas en un array para poder consultar si una pelicula es favorita o no)
// */
//
//
//struct ContentView: View {
//    
//    @State var movies: [Movie] = []
//    @State var agregarPelicula = ""
//    @State var mostrarPelicular = true
//    @State var mostrarAlertaDebesAgregarPelicula = false
//    @State var mostrarDialogoParaEliminar = false
//    
//    var body: some View {
//        
//        NavigationStack {
//            VStack {
//                Toggle("Mostrar peliculas", isOn: $mostrarPelicular)
//                
//                Text("Hay: \(movies.count) peliculas.")
//                
//                Divider()
//                TextField("Agregar pelicula", text: $agregarPelicula)
//                Divider()
//                
//                HStack {
//                    Button("Agregar") {
//                        if agregarPelicula.isEmpty {
//                            mostrarAlertaDebesAgregarPelicula = true
//                        } else {
//                            
//                            if !siSeRepiteTitle(title: agregarPelicula) {
//                                movies.append(Movie(id: UUID().hashValue, title: agregarPelicula))
//                                
//                                agregarPelicula = ""
//                            }
//                            
//                        }
//                    }
//                    
//                    .alert("Debes agregar una pelicula", isPresented: $mostrarAlertaDebesAgregarPelicula) {
//                        Button("Bueno") {
//                        }
//                    }
//                    
//                    Button("Eliminar") {
//                        if !movies.isEmpty {
//                            mostrarDialogoParaEliminar = true                    }
//                    }
//                    .disabled(movies.isEmpty)
//                    
//                    .confirmationDialog("Seguro?",
//                                        isPresented: $mostrarDialogoParaEliminar,
//                                        titleVisibility: .visible) {
//                        Button("Si", role: .destructive) {
//                            movies.removeLast()
//                        }
//                        Button("Cancelar") {
//                            
//                        }
//                    }
//                }
//                
//                Spacer()
//                
//                if mostrarPelicular {
//                    List(movies) { movie in
//                        NavigationLink(movie.title) {
//                            Text(movie.title)
//
//                        }
//                    }
//                }
//            }
//            .padding()
//        }
//    }
//    
//    func siSeRepiteTitle(title: String) -> Bool {
//        for movie in movies {
//            if title == movie.title {
//                return true
//            }
//        }
//        return false
//    }
//}
//
//#Preview {
//    ContentView()
//}
