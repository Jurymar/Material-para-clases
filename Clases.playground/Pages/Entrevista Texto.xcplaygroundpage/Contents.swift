////: [Previous](@previous)
//
//import Foundation
//
//var greeting = "Hello, playground"
//
////: [Next](@next)
//
//🔹 1. SWIFT FUNDAMENTOS
//1. ¿Qué es Swift y por qué Apple lo recomienda?
//Swift es  un lenguaje de programación creado por Apple en 2014 para sustituir a Objetive-C , fue creado para desarrollar apps en iOS, macOS, watchOS y tvOS.
//Apple lo recomienda porque es seguro, rápido, moderno y evita muchos errores comunes.
//
//2. Variables (atributos o propiedades)
//son espacios de almacenamiento en memoria, son como una caja donde guardamos datos.
//
//Se dividen en:
//var: variable, es mutable, puede cambiar su valor.
//let: constante, es inmutable, no puede cambiar su valor.
//
// 👉 Se recomienda usar let siempre que sea posible
//
//3. ¿Qué es un Optional?
//Es un tipo que puede tener un valor o no tenerlo (nil), se declara usando ?
//Sirve para evitar errores cuando un valor puede no existir.
//Se usa cuando una variable puede no tener valor en algún momento.
//
//4. ¿Qué significa nil?
//Significa ausencia de valor. No es cero ni vacío, es que no hay nada.
//
//5. Desempaquetar un opcional
//antes de usar el valor almacenado en un opcional, es necesario desempaquetarlo para verificar si contiene un valor o es nil
//Binding (if let):  se usa cuando quiero ejecutar código sólo si hay valor.
//.
//
//
//guard let: se usa para salir temprano de una función si algo falla (más limpio).
//
//Unwrapping significa desempaquetar un Opcional para obtener su valor real
//Porque recuerda:
//Un optional no guarda directamente el valor, guarda algo que puede ser:
//    •    Un valor ("Hola")
//    •    nil
//Entonces, para usar ese valor, debemos desempaquetar (unwrap).
//
//
//Función
//
//Una función es un bloque de código que realiza una tarea específica, Puede recibir parámetros, Puede retornar un valor.
//
//Sirve para:
//- Reutilizar código
//- Organizar mejor el programa
//- Evitar repetir la misma lógica muchas veces
//- Hacer el código más claro y mantenible
//
//No es portable
//
//
//6. ¿Qué es una struct?
//Un struct es un tipo de dato por valor (value type).
//No permite herencia
//Significa que cuando lo copias, se crea una copia nueva independiente, cualquier cambio sobre la copia, afecta solo a la copia.
//No permite herencia
//No se inicializan
//
//7. ¿Qué es una class?
//Una clase es un tipo de dato por referencia (reference type)
//Significa que cuando la copias, no se crea una copia nueva, sino que ambas variables apuntan al mismo objeto en memoria.
//permite herencia
//Se inicializan
//Diferencia entre Struct y class:
//En Swift, un struct es un tipo por valor, lo que significa que cuando se asigna o se pasa como parámetro, se crea una copia independiente. En cambio, una class es un tipo por referencia, lo que significa que múltiples variables pueden apuntar al mismo objeto en memoria. Además, las clases permiten herencia y los structs no. Apple recomienda usar struct por defecto y usar class solo cuando se necesite herencia
//
//Properties
//
//Una property es una variable que vive dentro de una clase,estruct, enuns y almacena o calcula información sobre algo. se dividen en 2 tipos
//
//1-Stored Properties (Propiedades almacenadas): son variables que guardan datos reales dentro de un objeto. Son como una caja donde se almacena información que puedes leer o cambiar.” no se usa en enuns
//
//2-Computed Properties (Propiedades calculadas): no guardan datos, sino que calculan un valor, se comporta como una función.
//
//
//POO
//
//Es un paradigma donde organizamos el código en objetos que tienen propiedades y métodos.
//
//
// POP
//
//Es un paradigma donde el código se organiza usando protocolos como contratos que definen comportamiento.
//
//
//9. ¿Qué es un enum?
//Es un tipo de dato que permite definir un conjunto limitado de valores relacionados.
//Es decir, cuando sabes que una variable solo puede tener ciertos valores específicos.
//Una variable de tipo DiaSemana solo puede tener 5 valores.
//se recorren con switch
//
//10. ¿Qué es un protocolo?
//Un protocolo es como un contrato o lista de reglas que dice:
// “Cualquier clase, estructura, enum o protocolo que quiera usarme, debe implementar estas propiedades y métodos.”
//No contienen la lógica, sólo definen qué debe existir.
//los protocolos siempre son var , pero no significa que se pueden mutar , depende de los requerimientos ya que pueden ser
//get -> que significa solo lectura
//get set -> que significa que se puede mutar
//
//11. ¿Qué es una extensión?
//Permite agregar funcionalidad a una clase, struct,  enum, protocolo,  sin modificar su código original.
//En las extensiones no se pueden usar Stored Properties(propiedades almacenadas), usan Computed Properties(propiedades calculadas).
//Permite:
//Agregar métodos
//Agregar propiedades calculadas
//
//12. ¿Qué es un closure?
//Es una función portable sin nombre que se puede pasar como parámetro en una función  o guardar en una variable.
//Muy usada en callbacks y async.
//closure sin parámetros
//closure con parámetros y retorno
//closure como parámetro en una función
//
//13. ¿Qué son colecciones?
//Son estructuras de datos que conforman al protocolo colleccion
//Array: son colecciones ordenadas del mismo tipo.
//Agregar elementos = frutas.append("Uva")
//
//Insertar elementos en una posición específica = frutas.insert("Fresa", at: 1)
//Eliminar elementos = frutas.remove(at: 0)
//Cambiar un valor = frutas[0] = "Mango"
//print(frutas)
//
//print(frutas.count)     // cantidad de elementos
//print(frutas.isEmpty)  // true si está vacío
//Recorrer un array
//for fruta in frutas {
//    print("Fruta: \(fruta)")
//}
//
//
//Dictionary: son colecciones no ordenadas de pares clave–valor.
//
//
//Set: es una colección no ordenada de elementos únicos.
//
//14. ¿Qué es control de flujo?
//Son estructuras que controlan el orden del código:
//if, switch, for, while
//
//Manejo de Errores
//
//Permite detectar, controlar y responder a fallos sin que la app se rompa, es una forma segura de decirle al programa:
//“Si algo sale mal, no te rompas, maneja la situación y continúa funcionando.”
//
//Es como usar un cinturón de seguridad en un carro: no evita que haya problemas, pero protege al usuario cuando algo sale mal.
//
//Se usa con:
//    •    throw
//    •    try
//    •    do catch
//
//Genéricos
//
//Un genérico permite escribir código reutilizable que funciona con diferentes tipos de datos manteniendo seguridad de tipos. En Swift se define usando <T> y es muy usado en estructuras como Array, Optional y en funciones de networking.
//
//
//
//15. ¿Qué es Codable? = Leer y crear JSON
//Permite convertir datos JSON a modelos Swift y viceversa de forma automática.
//
//¿Qué es Decodable? = Solo leer JSON
//Permite convertir datos JSON a modelos Swift
//
//🔹 UIKIT / SWIFTUI
//16. ¿Qué es UIKit?
//Framework tradicional para crear interfaces gráficas en iOS usando ViewControllers.
//
//17. ¿Qué es SwiftUI?
//Framework moderno declarativo para crear interfaces con menos código.
//
//18. UIKit vs SwiftUI
//UIKit: imperativo, más antiguo
//
//
//SwiftUI: declarativo, más moderno
//
//
//
//19. ¿Qué es un ViewController?
//Es quien controla una pantalla en UIKit.
//
//20. ¿Qué es una View en SwiftUI?
//Es una estructura que define cómo se ve la UI.
//
//21. Ciclo de vida de ViewController
//Métodos que indican cuándo la vista aparece, desaparece o se carga (viewDidLoad, etc).
//
//Ciclo de vida de una aplicación
//
//
//22. ¿Qué es @State? SwiftUI
//Propiedad que permite que la UI se actualice cuando el valor cambia.
//
//23. ¿Qué es @Binding? SwiftUI
//Permite compartir un estado entre vistas.
//
//24. ¿Qué es @ObservedObject? SwiftUI
//Escucha cambios en un objeto externo.
//
//25. ¿Qué es @Published? SwiftUI
//Marca una propiedad para notificar cambios automáticamente.
//
//26. ¿Qué es ObservableObject? SwiftUI
//Protocolo que permite que SwiftUI observe cambios en una clase.
//
//27. ¿Qué es NavigationStack?
//Permite navegar entre pantallas en SwiftUI.
//
//28. ¿Qué es List? SwiftUI
//Componente para mostrar listas de datos.
//
//29. ¿Qué es Auto Layout? UIKit
//Sistema de UIKit para definir tamaños y posiciones de vistas.
//
//30. ¿Qué son Stacks? SwiftUI
//VStack: vertical
//
//
//HStack: horizontal
//
//
//ZStack: superposición
//
//🔹 ARQUITECTURA Y BUENAS PRÁCTICAS
//
//La arquitectura es la forma en que se va a organizar la aplicación para que sea escalable, sostenible, mantenible en el tiempo
//31. ¿Qué es MVC?
//Modelo–Vista–Controlador.
//Arquitectura clásica de Apple.
//
//32. ¿Qué es MVVM?
//Es una arquitectura que organiza tu app para que sea más limpia, escalable y fácil de mantener.
//Modelo–Vista–ViewModel.
//MVVM = Model - View - ViewModel
//Separa lógica y UI, muy usada con SwiftUI.
//Se usa para separar responsabilidades:
//    •    La vista no debe tener lógica
//    •    El ViewModel maneja datos
//    •    El modelo solo representa información
//
//33. MVC vs MVVM
//MVVM es más limpio y testeable.
//
//34. ¿Qué es un ViewModel? cualquier framework
//Clase que contiene la lógica y los datos para la vista.
//
//35. ¿Por qué separar lógica de UI?
//Para facilitar mantenimiento, pruebas y escalabilidad.
//
//36. ¿Qué es Clean Code?
//Código legible, simple y fácil de mantener. utilizando nombres claros para variables, tipos de datos, funciones etc
//
//37. ¿Qué es SOLID?
//Son principios que buscan escribir código más mantenible, escalable, comprensible y flexible
//son 5 principios:
//
//S - Single Responsibility Principle (Principio de Responsabilidad Única): Una clase debe tener una única razón para cambiar, lo que significa que debe realizar una sola funcionalidad o tarea.
//O - Open/Closed Principle (Principio de Abierto/Cerrado): Las entidades de software (clases, módulos, funciones) deben estar abiertas para su extensión, pero cerradas para su modificación.
//L - Liskov Substitution Principle (Principio de Sustitución de Liskov): Las subclases deben ser sustituibles por sus clases base sin afectar el funcionamiento del programa, garantizando que el comportamiento esperado se mantenga.
//I - Interface Segregation Principle (Principio de Segregación de Interfaz): Es mejor tener muchas interfaces específicas que una sola de propósito general, evitando obligar a las clases a implementar métodos que no utilizan.
//D - Dependency Inversion Principle (Principio de Inversión de Dependencia): Los módulos de alto nivel no deben depender de los de bajo nivel; ambos deben depender de abstracciones. Las dependencias deben ser interfaces o clases abstractas, no implementaciones concretas.
//
//38. ¿Qué es inyección de dependencias?
//Pasar dependencias desde fuera, no crearlas dentro.
//
//39. ¿Qué es un Repository?
//Capa que maneja la obtención de datos (API, BD, etc).
//
//40. ¿Qué es un Data Manager?
//Clase que administra datos y su almacenamiento.
//
//🔹 NETWORKING Y CONCURRENCY
//
//¿Qué es una API?
//es una interfaz de un programa, osea como un intermediario entre yo y un sistema mas complejo, Ej Cajero automatico, interactúando de manera sencilla y segura sin preocuparme de lo que esta haciendo por detras
//
//41. ¿Qué es una API REST?
//Servicio que permite intercambiar datos usando HTTP.
//HTTP (Protocolo de Transferencia de Hipertexto) es el protocolo que define cómo el cliente y el servidor se comunican, permitiendo intercambiar datos mediante solicitudes (requests) y respuestas (responses) usando verbos (métodos como GET, POST, PUT, DELETE)
//
//42. ¿Qué es JSON?
//Formato de texto para enviar datos.
//
//43. ¿Cómo consumes una API en iOS?
//Usando URLSession.
//
//44. ¿Qué es URLSession?
//Clase que permite hacer peticiones de red.
//
//45. GET vs POST
//GET: obtener datos
//
//
//POST: enviar datos
//
//
//
//46. ¿Qué es un error de red?
//Cuando falla la conexión o la respuesta.
//
//47. ¿Qué es async/await?
//Forma moderna de manejar tareas asíncronas.
//
//48. ¿Qué es Concurrency en iOS?
//Ejecución de tareas en paralelo sin bloquear la UI.
//
//49. ¿Por qué no usar el hilo principal?
//Porque congela la interfaz.
//
//50. ¿Qué es el Main Thread?
//Hilo donde se actualiza la UI.
//
//🔹 TESTING Y HERRAMIENTAS
//51. ¿Qué son pruebas unitarias?
//Pruebas que validan pequeñas partes del código.
//
//52. ¿Qué es XCTest?
//Framework para testing en iOS.
//
//53. ¿Qué es un test unitario?
//Prueba una función o clase específica.
//
//54. ¿Qué es un test de UI?
//Prueba la interacción del usuario con la app.
//
//55. ¿Qué es un Mock?
//Objeto falso para pruebas.
//
//56. ¿Qué es Git?
//Sistema de control de versiones.
//
//57. ¿Qué es un commit?
//Guardar cambios en Git.
//
//58. ¿Qué es una branch?
//Rama de desarrollo.
//
//59. ¿Qué es un Pull Request?
//Solicitud para unir cambios.
//Code review: es la revisión del código antes de hacer pull request y unir el código
//
//60. ¿Qué es accesibilidad en iOS?
//Funciones para que personas con discapacidades usen la app (VoiceOver, textos grandes, etc).
//
//🔹FIREBASE
//
//
//🔹 SWIFT
//
//1. Explica cómo funcionan los Optionals con un ejemplo.
//
//Un Optional es una variable que puede tener un valor o puede ser nil.
//Se usa cuando existe la posibilidad de que no haya dato.
//Por ejemplo, si tengo un usuario que puede o no tener segundo nombre, esa propiedad debería ser Optional.
//Antes de usarlo, debo desempaquetarlo con if let o guard let para evitar errores.
//
//⸻
//
//2. Diferencia entre struct y class con un caso real.
//
//Un struct es tipo por valor: cuando lo copio, se crea una copia nueva independiente.
//Una class es tipo por referencia: varias variables pueden apuntar al mismo objeto.
//
//Ejemplo:
//Un modelo User puede ser struct porque solo almacena datos.
//Un NetworkManager suele ser class porque quiero compartir la misma instancia.
//
//⸻
//
//3. ¿Qué pasa si fuerzas un optional con ! y viene nil?
//
//La aplicación crashea en tiempo de ejecución.
//Por eso no es recomendable usar ! a menos que estés completamente seguro.
//
//⸻
//
//4. Explica un enum con un caso real.
//
//Un enum define valores limitados.
//Por ejemplo, el estado de una petición:
//.loading, .success, .error.
//Eso evita usar strings sueltos y hace el código más seguro.
//
//⸻
//
//5. ¿Qué es un protocolo y cuándo lo usarías?
//
//Es un contrato que define qué métodos o propiedades debe implementar algo.
//Lo usaría cuando quiero desacoplar código.
//Por ejemplo, un LoginServiceProtocol para poder usar mocks en pruebas.
//
//⸻
//
//6. Explica qué es un closure sin términos técnicos.
//
//Es como una función que puedo guardar en una variable o enviar como parámetro para que se ejecute después.
//
//⸻
//
//7. ¿Qué hace Codable paso a paso?
//
//Convierte datos JSON en modelos Swift automáticamente y viceversa.
//Primero recibo JSON, luego lo decodifico usando JSONDecoder a mi struct que cumple Codable.
//
//⸻
//
//8. ¿Qué es mutating en una struct?
//
//Permite modificar propiedades dentro de una función de una struct.
//Sin mutating, no puedo cambiar valores internos.
//
//⸻
//
//9. ¿Por qué Swift es seguro?
//
//Porque usa Optionals, tipado fuerte y evita acceder a memoria inválida.
//Reduce muchos errores comunes.
//
//⸻
//
//10. ¿Qué es un error y cómo se maneja en Swift?
//
//Es una situación inesperada.
//Se maneja con throw, try y catch.
//
//⸻
//
//🔹 SWIFTUI / UIKIT
//
//11. ¿Cómo crearías un formulario simple?
//
//Usaría Form en SwiftUI con TextField, SecureField y un Button.
//El estado lo manejaría con @State.
//
//⸻
//
//12. ¿Cómo mostrarías una lista de datos?
//
//Con List en SwiftUI o UITableView en UIKit.
//La lista se alimenta de un array.
//
//⸻
//
//13. ¿Cómo navegas entre pantallas?
//
//Con NavigationStack y NavigationLink en SwiftUI.
//
//⸻
//
//14. ¿Qué es @State con ejemplo mental?
//
//Es una variable que cuando cambia, actualiza la interfaz automáticamente.
//
//⸻
//
//15. ¿Qué hace @Binding?
//
//Permite que una vista hija modifique un estado que pertenece a la vista padre.
//
//⸻
//
//16. ¿Cómo se actualiza la UI en SwiftUI?
//
//Cuando cambia una propiedad marcada con @State, @Published u observada.
//
//⸻
//
//17. Explica el ciclo de vida de una vista.
//
//En UIKit comienza con viewDidLoad.
//En SwiftUI la vista se reconstruye cada vez que el estado cambia.
//
//⸻
//
//18. ¿Qué pasa cuando presionas un botón?
//
//Se ejecuta el closure que está dentro del botón.
//
//⸻
//
//19. ¿Cómo pasar datos entre pantallas?
//
//En SwiftUI pasando parámetros en el NavigationLink.
//
//⸻
//
//20. Diferencia entre List y ScrollView.
//
//List está optimizada para datos dinámicos.
//ScrollView es más flexible pero no maneja celdas reutilizables automáticamente.
//
//⸻
//
//🔹 ARQUITECTURA
//
//21. Explica MVVM con tus palabras.
//
//Es un patrón donde la vista muestra datos, el ViewModel contiene la lógica y el modelo representa los datos.
//
//⸻
//
//22. ¿Qué hace el Model?
//
//Representa los datos.
//
//⸻
//
//23. ¿Qué hace el ViewModel?
//
//Prepara los datos y maneja la lógica para la vista.
//
//⸻
//
//24. ¿Qué hace la View?
//
//Muestra la información al usuario.
//
//⸻
//
//25. ¿Por qué no poner lógica en la vista?
//
//Porque dificulta mantenimiento y pruebas.
//
//⸻
//
//26. ¿Qué es desacoplar código?
//
//Separar responsabilidades para que las partes no dependan directamente unas de otras.
//
//⸻
//
//27. ¿Qué es una dependencia?
//
//Algo que una clase necesita para funcionar.
//
//⸻
//
//28. ¿Qué es un Repository?
//
//Intermediario entre la lógica y la fuente de datos.
//
//⸻
//
//29. ¿Qué es Clean Architecture?
//
//Organizar el código en capas separadas.
//
//⸻
//
//30. ¿Por qué usar patrones?
//
//Para mantener orden, escalabilidad y facilidad de pruebas.
//
//⸻
//
//🔹 NETWORKING Y CONCURRENCY
//
//31. ¿Cómo llamarías una API?
//
//Con URLSession usando async/await.
//
//⸻
//
//32. ¿Qué es async/await?
//
//Forma clara de ejecutar tareas asíncronas.
//
//⸻
//
//33. ¿Qué es una tarea asíncrona?
//
//Una tarea que se ejecuta sin bloquear la interfaz.
//
//⸻
//
//34. ¿Por qué usar background threads?
//
//Para no congelar la UI.
//
//⸻
//
//35. ¿Qué es un error 404?
//
//Recurso no encontrado.
//
//⸻
//
//36. ¿Qué es un error 500?
//
//Error interno del servidor.
//
//⸻
//
//37. ¿Qué pasa si la API falla?
//
//Debo manejar el error y mostrar mensaje al usuario.
//
//⸻
//
//38. ¿Cómo mostrarías un loading?
//
//Con un ProgressView.
//
//⸻
//
//39. ¿Cómo manejar errores de red?
//
//Con do-catch y mostrando mensajes adecuados.
//
//⸻
//
//40. ¿Cómo mostrar datos de una API en pantalla?
//
//Decodifico el JSON y lo asigno a una propiedad observada.
//
//⸻
//
//🔹 TESTING Y EXTRAS
//
//41. ¿Qué es un test unitario?
//
//Prueba una parte pequeña del código.
//
//⸻
//
//42. ¿Por qué hacer pruebas?
//
//Para detectar errores antes de producción.
//
//⸻
//
//43. ¿Qué es un Mock?
//
//Objeto simulado para pruebas.
//
//⸻
//
//44. ¿Cómo probarías un ViewModel?
//
//Inyectando un repository falso y verificando resultados.
//
//⸻
//
//45. ¿Qué es Git con ejemplo?
//
//Sistema que guarda versiones del código.
//
//⸻
//
//46. ¿Qué es un conflicto en Git?
//
//Cuando dos personas modifican la misma parte del código.
//
//⸻
//
//47. ¿Qué es accesibilidad?
//
//Hacer la app usable para personas con discapacidad.
//
//⸻
//
//48. ¿Por qué es importante VoiceOver?
//
//Permite que personas con discapacidad visual usen la app.
//
//⸻
//
//49. ¿Cómo harías una app accesible?
//
//Usando labels descriptivos y soportando Dynamic Type.
//
//⸻
//
//50. ¿Cómo sigues aprendiendo iOS?
//
//Practicando proyectos, leyendo documentación y resolviendo retos.
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
