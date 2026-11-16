import Foundation

// modelo de un videojuego
struct Videojuego: Identifiable {
let id = UUID()            // id unico, se crea solo y no cambia
    var titulo: String
    var desarrolladora: String
    var anioLanzamiento: Int
    var precio: Double
    var plataforma: Plataforma
    var genero: Genero
    var completado: Bool
    var favorito: Bool
    var puntuacion: Int        // de 0 a 10
    var nombreImagen: String
}
