import Foundation

// lista de juegos de prueba
struct DatosEjemplo {

    // static: se usa como DatosEjemplo.videojuegos sin crear objeto
    // let: no se puede cambiar
    static let videojuegos: [Videojuego] = [
        Videojuego(titulo: "Zelda: Breath of the Wild", desarrolladora: "Nintendo", anioLanzamiento: 2017, precio: 59.99, plataforma: .nintendoSwitch, genero: .aventura, completado: true, favorito: true, puntuacion: 10, nombreImagen: "zelda"),
        Videojuego(titulo: "Super Mario Odyssey", desarrolladora: "Nintendo", anioLanzamiento: 2017, precio: 49.99, plataforma: .nintendoSwitch, genero: .aventura, completado: true, favorito: false, puntuacion: 9, nombreImagen: "mario"),
        Videojuego(titulo: "Hades", desarrolladora: "Supergiant Games", anioLanzamiento: 2020, precio: 24.99, plataforma: .nintendoSwitch, genero: .accion, completado: true, favorito: true, puntuacion: 9, nombreImagen: "hades"),
        Videojuego(titulo: "Animal Crossing", desarrolladora: "Nintendo", anioLanzamiento: 2020, precio: 59.99, plataforma: .nintendoSwitch, genero: .simulacion, completado: false, favorito: false, puntuacion: 8, nombreImagen: "animalcrossing"),
        Videojuego(titulo: "Mario Kart 8", desarrolladora: "Nintendo", anioLanzamiento: 2017, precio: 59.99, plataforma: .nintendoSwitch, genero: .deportes, completado: true, favorito: false, puntuacion: 9, nombreImagen: "mariokart"),
        Videojuego(titulo: "Pokémon Escarlata", desarrolladora: "Game Freak", anioLanzamiento: 2022, precio: 59.99, plataforma: .nintendoSwitch, genero: .rol, completado: false, favorito: false, puntuacion: 6, nombreImagen: "pokemon"),
        Videojuego(titulo: "Fire Emblem: Three Houses", desarrolladora: "Intelligent Systems", anioLanzamiento: 2019, precio: 59.99, plataforma: .nintendoSwitch, genero: .estrategia, completado: true, favorito: false, puntuacion: 8, nombreImagen: "fireemblem"),
        Videojuego(titulo: "Elden Ring", desarrolladora: "FromSoftware", anioLanzamiento: 2022, precio: 59.99, plataforma: .playStation, genero: .rol, completado: false, favorito: true, puntuacion: 10, nombreImagen: "eldenring"),
        Videojuego(titulo: "God of War Ragnarök", desarrolladora: "Santa Monica Studio", anioLanzamiento: 2022, precio: 69.99, plataforma: .playStation, genero: .accion, completado: true, favorito: true, puntuacion: 9, nombreImagen: "godofwar"),
        Videojuego(titulo: "The Last of Us Part II", desarrolladora: "Naughty Dog", anioLanzamiento: 2020, precio: 39.99, plataforma: .playStation, genero: .aventura, completado: true, favorito: false, puntuacion: 9, nombreImagen: "tlou2"),
        Videojuego(titulo: "EA Sports FC 24", desarrolladora: "EA Vancouver", anioLanzamiento: 2023, precio: 69.99, plataforma: .playStation, genero: .deportes, completado: false, favorito: false, puntuacion: 5, nombreImagen: "fc24"),
        Videojuego(titulo: "Gran Turismo 7", desarrolladora: "Polyphony Digital", anioLanzamiento: 2022, precio: 69.99, plataforma: .playStation, genero: .simulacion, completado: false, favorito: false, puntuacion: 8, nombreImagen: "granturismo"),
        Videojuego(titulo: "Spider-Man 2", desarrolladora: "Insomniac Games", anioLanzamiento: 2023, precio: 79.99, plataforma: .playStation, genero: .accion, completado: true, favorito: true, puntuacion: 9, nombreImagen: "spiderman"),
        Videojuego(titulo: "Forza Horizon 5", desarrolladora: "Playground Games", anioLanzamiento: 2021, precio: 59.99, plataforma: .xbox, genero: .deportes, completado: false, favorito: false, puntuacion: 8, nombreImagen: "forza"),
        Videojuego(titulo: "Halo Infinite", desarrolladora: "343 Industries", anioLanzamiento: 2021, precio: 59.99, plataforma: .xbox, genero: .accion, completado: false, favorito: false, puntuacion: 7, nombreImagen: "halo"),
        Videojuego(titulo: "Gears 5", desarrolladora: "The Coalition", anioLanzamiento: 2019, precio: 29.99, plataforma: .xbox, genero: .accion, completado: true, favorito: false, puntuacion: 7, nombreImagen: "gears5"),
        Videojuego(titulo: "Starfield", desarrolladora: "Bethesda", anioLanzamiento: 2023, precio: 69.99, plataforma: .xbox, genero: .rol, completado: false, favorito: false, puntuacion: 6, nombreImagen: "starfield"),
        Videojuego(titulo: "NBA 2K24", desarrolladora: "Visual Concepts", anioLanzamiento: 2023, precio: 69.99, plataforma: .xbox, genero: .deportes, completado: false, favorito: false, puntuacion: 4, nombreImagen: "nba2k24"),
        Videojuego(titulo: "The Witcher 3", desarrolladora: "CD Projekt Red", anioLanzamiento: 2015, precio: 29.99, plataforma: .pc, genero: .rol, completado: true, favorito: true, puntuacion: 10, nombreImagen: "witcher3"),
        Videojuego(titulo: "Cyberpunk 2077", desarrolladora: "CD Projekt Red", anioLanzamiento: 2020, precio: 59.99, plataforma: .pc, genero: .rol, completado: false, favorito: false, puntuacion: 8, nombreImagen: "cyberpunk"),
        Videojuego(titulo: "Counter-Strike 2", desarrolladora: "Valve", anioLanzamiento: 2023, precio: 0.0, plataforma: .pc, genero: .accion, completado: false, favorito: false, puntuacion: 7, nombreImagen: "cs2"),
        Videojuego(titulo: "Age of Empires IV", desarrolladora: "Relic", anioLanzamiento: 2021, precio: 39.99, plataforma: .pc, genero: .estrategia, completado: false, favorito: false, puntuacion: 7, nombreImagen: "aoe4"),
        Videojuego(titulo: "Civilization VI", desarrolladora: "Firaxis", anioLanzamiento: 2016, precio: 59.99, plataforma: .pc, genero: .estrategia, completado: false, favorito: true, puntuacion: 8, nombreImagen: "civ6"),
        Videojuego(titulo: "Flight Simulator", desarrolladora: "Asobo Studio", anioLanzamiento: 2020, precio: 69.99, plataforma: .pc, genero: .simulacion, completado: false, favorito: false, puntuacion: 8, nombreImagen: "flightsim"),
        Videojuego(titulo: "Los Sims 4", desarrolladora: "Maxis", anioLanzamiento: 2014, precio: 0.0, plataforma: .pc, genero: .simulacion, completado: false, favorito: false, puntuacion: 6, nombreImagen: "sims4"),
        Videojuego(titulo: "Stardew Valley", desarrolladora: "ConcernedApe", anioLanzamiento: 2016, precio: 13.99, plataforma: .pc, genero: .simulacion, completado: true, favorito: true, puntuacion: 9, nombreImagen: "stardew"),
        Videojuego(titulo: "Genshin Impact", desarrolladora: "HoYoverse", anioLanzamiento: 2020, precio: 0.0, plataforma: .ios, genero: .rol, completado: false, favorito: false, puntuacion: 7, nombreImagen: "genshin"),
        Videojuego(titulo: "Monument Valley", desarrolladora: "ustwo games", anioLanzamiento: 2014, precio: 3.99, plataforma: .ios, genero: .aventura, completado: true, favorito: true, puntuacion: 9, nombreImagen: "monumentvalley"),
        Videojuego(titulo: "Clash Royale", desarrolladora: "Supercell", anioLanzamiento: 2016, precio: 0.0, plataforma: .ios, genero: .estrategia, completado: false, favorito: false, puntuacion: 6, nombreImagen: "clashroyale"),
        Videojuego(titulo: "Alto's Odyssey", desarrolladora: "Snowman", anioLanzamiento: 2018, precio: 4.99, plataforma: .ios, genero: .deportes, completado: true, favorito: false, puntuacion: 8, nombreImagen: "altos")
    ]
}
