import SwiftUI

// fila compacta de un videojuego para la lista
struct VideojuegoRowView: View {

    // el juego que muestra la fila
    let videojuego: Videojuego

    var body: some View {
        // hstack: portada, datos y puntuacion en fila
        HStack(spacing: 10) {

            // portada pequeña sacada de assets
            Image(videojuego.nombreImagen)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 50)
                .background(Color.gray.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 5))

            // vstack: titulo arriba, plataforma y genero abajo
            VStack(alignment: .leading, spacing: 3) {

                // titulo en una linea, si es largo pone "..."
                Text(videojuego.titulo)
                    .font(.headline)
                    .lineLimit(1)

                // plataforma y genero
                Text("\(videojuego.plataforma.nombre) · \(videojuego.genero.nombre)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
            }

            // empuja la puntuacion a la derecha
            Spacer()

            // puntuacion con estrella
            Label("\(videojuego.puntuacion)", systemImage: "star.fill")
                .font(.caption)
                .foregroundStyle(.orange)
        }
    }
}

// preview con el primer juego
#Preview {
    VideojuegoRowView(videojuego: DatosEjemplo.videojuegos[0])
        .padding()
}
