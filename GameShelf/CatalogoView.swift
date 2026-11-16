import SwiftUI

// pantalla con la lista de todos los juegos
struct CatalogoView: View {

    // juegos que se muestran, por defecto los de datos ejemplo
    // asi en la preview podemos probar con menos juegos o con ninguno
    var videojuegos: [Videojuego] = DatosEjemplo.videojuegos

    var body: some View {
        // list: lista que se puede desplazar
        List {
            // section: agrupa la lista y le pone una cabecera
            Section {
                // si no hay juegos mostramos un mensaje
                if videojuegos.isEmpty {
                    Text("No hay videojuegos en el catálogo")
                        .foregroundStyle(.secondary)
                } else {
                    // foreach: crea una fila por cada juego
                    // usa el id de cada juego gracias a identifiable
                    ForEach(videojuegos) { videojuego in
                        VideojuegoRowView(videojuego: videojuego)
                    }
                }
            } header: {
                // cabecera con el total de juegos
                Text("Mi biblioteca · \(videojuegos.count) videojuegos")
            }
        }
    }
}

// preview con todos los juegos
#Preview("Todos") {
    CatalogoView()
}

// preview con solo 3 juegos
#Preview("Pocos") {
    CatalogoView(videojuegos: Array(DatosEjemplo.videojuegos.prefix(3)))
}

// preview con la lista vacia
#Preview("Vacío") {
    CatalogoView(videojuegos: [])
}
