class DCHeroes {
  String nombrePila = "";
  String nombrePersonaje = "";

  // Constructor protegido
  DCHeroes._({required this.nombrePila, required this.nombrePersonaje});

  // Constructor con nombre para construir una instancia de DCHeroes desde un mapa de datos
  factory DCHeroes.fromDCJson(Map<String, dynamic> json) {
    String nombrePila = json['nombrePila'] ?? "";
    String nombrePersonaje = json['nombrePersonaje'] ?? "";

    // Verificar si algún dato está ausente y mostrar un mensaje en la consola
    if (nombrePila.isEmpty) {
      print("No tiene nombre");
    }
    if (nombrePersonaje.isEmpty) {
      print("No tiene alias");
    }

    // Construir la instancia de DCHeroes solo si ambos campos tienen datos
    if (nombrePila.isNotEmpty && nombrePersonaje.isNotEmpty) {
      return DCHeroes._(nombrePila: nombrePila, nombrePersonaje: nombrePersonaje);
    }

    // En caso contrario, retornar una instancia con valores predeterminados
    return DCHeroes._(nombrePila: "", nombrePersonaje: "");
  }
}

void main() {
  // Crear un mapa de datos con valores de DCHeroes
  Map<String, dynamic> dCJson = {
    'nombrePila': "Bruce Wayne",
    'nombrePersonaje': "Batman", // Comentamos esta línea para simular la ausencia de un dato
  };

  // Construir una instancia de DCHeroes utilizando el método fromDCJson
  DCHeroes heroe = DCHeroes.fromDCJson(dCJson);

  // Imprimir los valores de la instancia creada
  print("Hola mi nombre es " + heroe.nombrePila + " pero me conocen como El caballero de la noche " + heroe.nombrePersonaje);
}
