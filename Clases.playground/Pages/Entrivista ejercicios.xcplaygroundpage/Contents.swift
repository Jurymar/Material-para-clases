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
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// Ejercicio 2 con array -> Lista con datos quemados, Toogle, Button image del sistema//
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
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////Ejercicio 2.1 sin array con UUID, TextField, imagen local
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
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////ejercicio 2.3 - > desaparece button .disable, TextField
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
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////Ejercicio 2.3 ejercicio mas completo con todo lo anterior sin imagen,  con funcion, con  .confirmationDialog .alert
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

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//EJERCICIO PARTE 1 CON API 

//import SwiftUI
//import Foundation
//
//struct Movie: Decodable, Identifiable {
//    let id: Int
//    let title: String
//    let releaseDate: String
//    let adult: Bool
//
//}
//
//struct MoviesApiResponse: Decodable {
//    let page: Int
//    let results: [Movie]
//}
//
//struct ContentView: View {
//
//    @State var movies: [Movie] = []
//    @State var cargando = false
//
//    let moviesApiURL = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=d4849d0d8592036d63a3e615d5439c28&language=es-ES&page=1")!
//
//    var body: some View {
//
//        NavigationStack {
//            VStack {
//                if cargando {
//                    ProgressView()
//                }
//                List(movies) { movie in
//                    NavigationLink(movie.title) {
//                        Text(movie.title)
//                        Text(movie.releaseDate)
//                        //Text(movie.adult ? "Es para adulto" : "Todo publico")
//
//                        if movie.adult == true {
//                            Text("Para adulto")
//                        } else {
//                            Text("Todo publico")
//                        }
//                    }
//                }
//            }
//            .padding()
//
//            .task {
//                cargando = true
//                await fetchMovies(url: moviesApiURL)
//                cargando = false
//            }
//        }
//    }
//
//    func fetchMovies(url: URL) async {
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            let decodificarData = try decoder.decode(MoviesApiResponse.self, from: data)
//            self.movies = decodificarData.results
//
//        }
//        catch {
//            print(error)
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//EJERCICIO PARTE 2 con imagen y  .refreshable
//
//  ContentView.swift
//  Movies
//
//  Created by Jurymar Colmenares on 14/04/26.
//

//import SwiftUI
//import Foundation
//
//struct Movie: Decodable, Identifiable {
//    let id: Int
//    let title: String
//    let poster_path: String
//
//    var posterURL: URL {
//        URL(string: "https://image.tmdb.org/t/p/w300\(poster_path)")!
//    }
//}
//
//struct RespuestaJson: Decodable {
//    let page: Int
//    let results: [Movie]
//}
//
//struct ContentView: View {
//
//    @State var movies: [Movie] = []
//
//    let urlApi = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=d4849d0d8592036d63a3e615d5439c28&language=es-ES&page=1")!
//
//    var body: some View {
//
//        NavigationStack {
//            List(movies) { movie in
//                NavigationLink.init {
//                    VStack {
//                        AsyncImage(url: movie.posterURL)
//                    }
//                    .navigationTitle(movie.title)
//                } label: {
//                    HStack {
//                        AsyncImage(url: movie.posterURL) { result in
//                                    result.image?
//                                        .resizable()
//                                        .scaledToFit()
//                                }
//                                .frame(width: 60)
//
//                        Text(movie.title)
//                    }
//                }
//            }
//
//        }
//        .task {
//            await fetchMovies(url: urlApi)
//
//        }
//        .refreshable {
//            await fetchMovies(url: urlApi)
//        }
//    }
//
//
//    func fetchMovies(url: URL) async {
//
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//
//            let dataDecodificada = try JSONDecoder().decode(RespuestaJson.self, from: data)
//            self.movies = dataDecodificada.results
//
//        } catch {
//            print(error)
//        }
//
//    }
//}
//
//#Preview {
//    ContentView()
//}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//EJERCICIO 3 CON MVVM y sin RespuestaJson osea es solo un array de Movie

//Movie -> modelos
//struct Movie: Decodable, Identifiable {
//    let id: Int
//    let title: String
//}
//
//struct RespuestaJson: Decodable {
//    let page: Int
//    let results: [Movie]
//}


//MoviesViewModel -> llamada a API o logica de negocio
//import Foundation
//
//@Observable
//final class MoviesViewModel {
//    var movies: [Movie] = []
//    var errorMessage: String?
//
//    private let urlApi = URL(string: "https://jsonplaceholder.typicode.com/posts")!
//
//    func fetchMovies() async {
//        do {
//            let (data, _) = try await URLSession.shared.data(from: urlApi)
//
//            let dataDecodificada = try JSONDecoder().decode([Movie].self, from: data)
//            self.movies = dataDecodificada
//
//        } catch {
//            print(error)
//            self.errorMessage = "Error: \(error.localizedDescription)"
//        }
//    }
//}


//ContentView -> vista que se alimenta de MoviesViewModel
//import SwiftUI
//import Foundation
//
//
//struct ContentView: View {
//
//    @State var viewModel = MoviesViewModel()
//
//    var body: some View {
//        NavigationStack {
//
//            if let errorMessageDesempaquetado = viewModel.errorMessage {
//                Text(errorMessageDesempaquetado)
//            }
//
//            List(viewModel.movies) { movie in
//                NavigationLink(movie.title) {
//                    Text(movie.title)
//                }
//            }
//        }
//
//        .task {
//            await viewModel.fetchMovies()
//        }
//
//    }
//
//
//}
//
//#Preview {
//    ContentView()
//}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



// llamada a API con Imagen, enum, computed properti, MVVM, lista con label, piker

//Movie

//import Foundation
//
//struct Movie: Decodable, Identifiable {
//    let id: Int
//    let title: String
//    let poster_path: String
//    let overview: String
//    let adult: Bool
//    let vote_average: Double
//    let vote_count: Int
//    
//    var posterURL: URL {
//        URL(string: "https://image.tmdb.org/t/p/w300\(poster_path)")!
//    }
//}
//
//struct RespuestaJson: Decodable {
//    let page: Int
//    let results: [Movie]
//}


//TextosViewModel

////
//import Foundation
//
//@Observable
//
//final class MovieViewModel {
//    
//    var movies: [Movie] = []
//    
//    var idioma: Idioma = .espanol
//    
//    private var apiLanguage: String {
//        switch idioma {
//        case .espanol:
//            return "es-Es"
//        case .ingles:
//            return "en-Us"
//        }
//    }
//    
//    private var urlApi: URL {
//        return URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=d4849d0d8592036d63a3e615d5439c28&language=\(apiLanguage)&page=1")!
//    }
//    
//    
//    func fetchMovie() async {
//        do {
//            let (data, _) = try await URLSession.shared.data(from: urlApi)
//            let decodificarJson = try JSONDecoder().decode(RespuestaJson.self, from: data)
//            self.movies = decodificarJson.results
//            
//        } catch {
//            print(error)
//        }
//    }
//}
//
//
//
//
//  ContentView.swift

//  Movies
//
//  Created by Jurymar Colmenares on 14/04/26.
//

//import SwiftUI
//import Foundation
//
//struct ContentView: View {
//    
//    @State var viewModel = MovieViewModel()
//    
//    var body: some View {
//        
//        NavigationStack {
//            
//            VStack {
//                Picker("Idioma", selection: $viewModel.idioma) {
//                    Text("Español")
//                        .tag(Idioma.espanol)
//                    
//                    Text("Ingles")
//                        .tag(Idioma.ingles)
//                }
//                .pickerStyle(.segmented)
//                .onChange(of: viewModel.idioma) {
//                    Task {
//                        await viewModel.fetchMovie()
//                    }
//                }
//                
//                List(viewModel.movies) { movie in
//                    
//                    NavigationLink {
//                        ScrollView {
//                            VStack {
//                                AsyncImage(url: movie.posterURL)
//                                Text(movie.overview)
//                            }
//                        }
//                        .navigationTitle(movie.title)
//                    } label: {
//                        HStack {
//                            AsyncImage(url: movie.posterURL) { result in
//                                result.image?
//                                    .resizable()
//                                    .scaledToFit()
//                            }
//                            .frame(width: 60)
//                            
//                            VStack(alignment: .leading) {
//                                Text(movie.title)
//                                
//                                Text("Puntuacion: \(Int(movie.vote_average))")
//                                
//                                if movie.adult {
//                                    Text("Contenido adulto")
//                                } else {
//                                    Text("Contenido Familiar")
//                                }
//                            }
//                            
//                            
//                        }
//                    }
//                }
//            }
//            .padding()
//            .task {
//                await viewModel.fetchMovie()
//            }
//
//        }
//    }
//    
//       
//    
//}
//        
//#Preview {
//    ContentView()
//}
//
//
//
//Idioma.swift

//enum Idioma: String, CaseIterable, Identifiable {
//    case espanol
//    case ingles
//    
//    var id: Self { self }
//}
//
