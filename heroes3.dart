class MarvelHeroes {
  String nombrePila;
  String nombrePersonaje;

  MarvelHeroes({required this.nombrePila, required this.nombrePersonaje});

  MarvelHeroes.fromParameters(String nombrePila, String nombrePersonaje)
      : nombrePila = nombrePila,
        nombrePersonaje = nombrePersonaje;
}

class DCHeroes {
  String nombrePila;
  String nombrePersonaje;

  DCHeroes({required this.nombrePila, required this.nombrePersonaje});

  DCHeroes.fromParameters(String nombrePila, String nombrePersonaje)
      : nombrePila = nombrePila,
        nombrePersonaje = nombrePersonaje;
}

void main() {
  MarvelHeroes heroeMarvel =
      MarvelHeroes(nombrePila: "Peter Parker", nombrePersonaje: "Spiderman");

  MarvelHeroes heroeMarvelConParametros =
      MarvelHeroes.fromParameters("Tony Stark", "Ironman");

  DCHeroes heroeDC =
      DCHeroes(nombrePila: "Bruce Wayne", nombrePersonaje: "Batman");

  DCHeroes heroeDCConParametros =
      DCHeroes.fromParameters("Clark Kent", "Superman");

//Print valores de los objetos creados
  print("Marvel Heroe: ");
  print(heroeMarvel.nombrePila);
  print(heroeMarvel.nombrePersonaje);

  print("\nMarvel Heroe con parámetros");
  print(heroeMarvelConParametros.nombrePila);
  print(heroeMarvelConParametros.nombrePersonaje);

  print("\nDC Herore");
  print(heroeDC.nombrePila);
  print(heroeDC.nombrePersonaje);

  print("\nDC Heroe con parámetros");
  print(heroeDCConParametros.nombrePila);
  print(heroeDCConParametros.nombrePersonaje);
}
