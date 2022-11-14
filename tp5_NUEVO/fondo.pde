class Fondo {
  int x, y;
  PImage Inicio, fondoJuego,instrucciones;
  Fondo(int xF, int yF) {
    x = xF;
    y = yF;
  }

  void cargaFondos() {
    Inicio = loadImage("fondoInicio.jpg");
    fondoJuego = loadImage("granjafondo.png");
    instrucciones = loadImage("instruc.jpg");
  }

  void fondo1() {
    fill(0, 0, 0, 200);
    // rectMode(CORNER);
    image(Inicio, -40, 0, 900, 600);
    rect(0, 0, width, height);
  }

  void fondo2() {
    fill(0,0,0,80);
    image(fondoJuego, -150,0, 900,600);
  rect(0,0,width,height);
  }
  
  void fondoInstrucciones(){
   image(instrucciones,0,0);
  }
}
