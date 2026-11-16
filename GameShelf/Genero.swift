import Foundation

// opciones de genero
enum Genero {
    case accion
    case aventura
    case rol
    case deportes
    case estrategia
    case simulacion

    // nombre para mostrar en pantalla
    var nombre: String {
        switch self {
        case .accion: return "Acción"
        case .aventura: return "Aventura"
        case .rol: return "Rol"
        case .deportes: return "Deportes"
        case .estrategia: return "Estrategia"
        case .simulacion: return "Simulación"
        }
    }

    // icono de apple para cada genero
    var icono: String {
        switch self {
        case .accion: return "flame"
        case .aventura: return "map"
        case .rol: return "shield"
        case .deportes: return "sportscourt"
        case .estrategia: return "brain"
        case .simulacion: return "airplane"
        }
    }
}
