class MarvelHeroes {
  String nombrePila;
  String nombrePersonaje;
  MarvelHeroes({required this.nombrePila,required this.nombrePersonaje});
}
  

void main () {
  MarvelHeroes heroe1 = MarvelHeroes (nombrePila:"Peter Parker", nombrePersonaje: "Spiderman");
  print("Hola mi nombre es " + heroe1.nombrePila + " pero me conocen como tu amigable vecino " + heroe1.nombrePersonaje);
}