class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);
}

void main(List<String> args) {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'HBO': [
      Pelicula('peli1', 2000),
      Pelicula('peli2', 2015),
      Pelicula('peli3', 2008),
    ],
    'netflix': [
      Pelicula('peli1', 2011),
      Pelicula('peli2', 2025),
      Pelicula('peli3', 2009),
    ],
    'disney+': [
      Pelicula('peli1', 2010),
      Pelicula('peli2', 2005),
      Pelicula('peli3', 2024),
    ],
  };

  for (var peli in catalogoStreaming['netflix']!) {
  print({peli.titulo} );
}

  catalogoStreaming['Disney+'] = [
    Pelicula('peli1', 2010),
    Pelicula('peli2', 2005),
    Pelicula('peli3', 2024),
  ];

  for (var pelicula in catalogoStreaming['HBO']!) {
    if (pelicula.titulo == 'peli2') {
      pelicula.anioEstreno = 2022;
    }
  }

  catalogoStreaming['netflix']!.removeWhere((peli) => peli.titulo == 'peli2');
  
  catalogoStreaming.forEach((plataforma, peliculas) {
  print('Plataforma: $plataforma');
  for (var peli in peliculas) {
    print(' - ${peli.titulo} (${peli.anioEstreno})');
  }
});
}
