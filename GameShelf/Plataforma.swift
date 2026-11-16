import Foundation

// opciones de plataforma
enum Plataforma {
    case playStation
    case xbox
    case nintendoSwitch
    case pc
    case ios

    // nombre para mostrar en pantalla
    var nombre: String {
        switch self {
        case .playStation: return "PlayStation"
        case .xbox: return "Xbox"
        case .nintendoSwitch: return "Nintendo Switch"
        case .pc: return "PC"
        case .ios: return "iOS"
        }
    }

    // icono de apple para cada plataforma
    var icono: String {
        switch self {
        case .playStation: return "playstation.logo"
        case .xbox: return "xbox.logo"
        case .nintendoSwitch: return "gamecontroller"
        case .pc: return "desktopcomputer"
        case .ios: return "iphone"
        }
    }
}
