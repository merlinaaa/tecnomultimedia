class Personaje {
  int maxImages = 3;
  PImage[] derecha   = new PImage[maxImages];
  PImage[] izquierda = new PImage[maxImages];
  PImage[] arriba    = new PImage[maxImages];
  PImage[] abajo     = new PImage[maxImages];
  PImage regarFrente, regarIZQ, regarDER, regarUP,frente;
  int imageIndex, posx, posy;
  boolean tranki, borrar = false;
  String   regar, direccion;

  Personaje(int _posx, int _posy) {
    posx = _posx;
    posy = _posy;
    regar = "abajo";
    direccion = "frente";
    frente = loadImage("front0.png");
    regarFrente = loadImage("rAbajo.png");
    regarIZQ =    loadImage("rLeft.png");
    regarDER =    loadImage("rDerecha.png");
    regarUP  =    loadImage("rArriba.png");

    for (int i = 0; i < derecha.length; i++) {
      derecha[i] = loadImage("derecha"+i+".png");
      izquierda[i] = loadImage("left"+i+".png");
      arriba[i] = loadImage("up"+i+".png");
      abajo[i] = loadImage("front"+i+".png");
    }
  }

  void eventoTeclas() {

    println(keyCode);
    println(regar);

    if (key == CODED) {
      if (keyCode == RIGHT) {
        direccion = "derecha";
        imageIndex = (imageIndex+1)%derecha.length;
        posx = posx+4;
        regar = "regarDerecha";
      }//cierre RIGHT
      if (keyCode == LEFT) {
        direccion = "izquierda";
        imageIndex = (imageIndex+1)%derecha.length;
        posx = posx-4;
        regar = "regarIzquierda";
      }//cierre LEFT
      if (keyCode == DOWN) {
        direccion = "abajo";
        imageIndex = (imageIndex+1)%derecha.length;
        posy = posy+4;
        regar = "regarAbajo";
      }
      if (keyCode == UP) {
        direccion = "arriba";
        imageIndex = (imageIndex+1)%arriba.length;
        posy = posy-4;
        regar = "regarArriba";
      } 
    }
  } // cierre metodo eventoTeclas()


  void personajeDibujo() {
    if (tranki == false) {      //al correr el programa se muestra al personaje
      image(frente, 535, 258);  // de frente, deja de estarlo al accionar el movimiento con las flechitas
    }                         
    if (direccion == "derecha" && borrar == false) {
      image(derecha[imageIndex], posx, posy);
      tranki = true;  
    }

    if (direccion == "izquierda" && borrar == false) {
      image(izquierda[imageIndex], posx, posy);
      tranki = true;
    }

    if (direccion == "arriba" && borrar == false) {
      image(arriba[imageIndex], posx, posy);
      tranki = true;
    }

    if (direccion == "abajo" && borrar == false) {
      image(abajo[imageIndex], posx, posy);
      tranki = true;
    }

    //REGAR ABAJO
    if (regar.equals("regarAbajo") && key == 'b' || key =='B') {
      image(regarFrente, posx, posy);
      borrar = true; // deja de dibujar el sprite del personaje caminando para dejar solo el del personaje regando
    } else {
      borrar = false; // si no se esta regando, vuelve el sprite de la caminata
    }

    //regar IZQUIERDA
    if ( regar.equals("regarIzquierda") && key == 'b' || key == 'B' ) {
      image(regarIZQ, posx-80, posy-20);
      borrar = true;
    }
    //regar ARRIBA
    if (regar.equals("regarArriba") && (key == 'b' || key == 'B')) {
      image(regarUP, posx-75, posy-10);
      borrar = true;
    }
    //regar a la DERECHA
    if (regar.equals("regarDerecha") && (key == 'b' || key == 'B' )) {
      image(regarDER, posx-30, posy-20);
      borrar = true;
    }
  }
}//cierre PERSONAJES CLASS
