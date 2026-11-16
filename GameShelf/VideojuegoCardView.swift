import SwiftUI

// tarjeta reutilizable que muestra un videojuego con todos sus datos
struct VideojuegoCardView: View {

    // el juego que recibe la tarjeta (puede ser cualquiera)
    let videojuego: Videojuego

    var body: some View {
        // hstack: portada a la izquierda y datos a la derecha
        HStack(spacing: 12) {

            // portada: busca en assets la imagen con el nombre del modelo
            Image(videojuego.nombreImagen)
                .resizable()                         // deja cambiar el tamaño
                .scaledToFill()                      // rellena sin deformar
                .frame(width: 80, height: 100)       // tamaño de la portada
                .background(Color.gray.opacity(0.3)) // gris si no hay imagen
                .clipShape(RoundedRectangle(cornerRadius: 8)) // esquinas redondas

            // vstack: datos uno debajo del otro
            VStack(alignment: .leading, spacing: 6) {

                // titulo, maximo 2 lineas para que no rompa el diseño
                Text(videojuego.titulo)
                    .font(.headline)
                    .lineLimit(2)

                // plataforma con su icono
                Label(videojuego.plataforma.nombre, systemImage: videojuego.plataforma.icono)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                // genero con su icono
                Label(videojuego.genero.nombre, systemImage: videojuego.genero.icono)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                // precio y puntuacion en la misma linea
                HStack {
                    // precio en euros
                    Text(videojuego.precio, format: .currency(code: "EUR"))
                        .font(.subheadline)
                        .bold()

                    // empuja la puntuacion a la derecha
                    Spacer()

                    // puntuacion con estrella
                    Label("\(videojuego.puntuacion)/10", systemImage: "star.fill")
                        .font(.subheadline)
                        .foregroundStyle(.orange)
                }
            }
        }
        .padding()                                       // margen interior
        .frame(maxWidth: .infinity, alignment: .leading) // ocupa todo el ancho
        .background(Color.gray.opacity(0.1))             // fondo gris clarito
        .clipShape(RoundedRectangle(cornerRadius: 12))   // esquinas redondas
    }
}

// preview con el primer juego de la lista
// cambia el [0] por otro numero para probar otros juegos
#Preview {
    VideojuegoCardView(
        videojuego: DatosEjemplo.videojuegos[0]
    )
}
