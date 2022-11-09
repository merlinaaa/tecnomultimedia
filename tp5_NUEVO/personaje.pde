class Personaje {      // FALTA: sprite REGAR con tecla B.
  int maxImages = 3;
  //Fondo f = new Fondo(0, 0);
  PImage[] derecha   = new PImage[maxImages];
  PImage[] izquierda = new PImage[maxImages];
  PImage[] arriba    = new PImage[maxImages];
  PImage[] abajo     = new PImage[maxImages];
  PImage regarFrente, regarIZQ, regarDER, regarUP;
  PImage frente;
  int imageIndex = 0;    //estados para sprites
  int posx, posy;
  boolean tranki = false;
  String  estado = "mover";
  String   regar = "abajo";
  String  direccion = "frente";
  //  boolean activo = false;



  Personaje(int _posx, int _posy) {
    posx = _posx;
    posy = _posy;
  }

  // void personajeMover(){
  //   image(frente, posx,posy);

  // }

  void Sprite() {        //caminar en distintas direcciones y regar
    frente = loadImage("front0.png");
    regarFrente = loadImage("rAbajo.png");
    regarIZQ =    loadImage("rLeft.png");
    regarDER =    loadImage("rDerecha.png");
    regarUP  =    loadImage("rArriba.png");

    for (int i = 0; i < derecha.length; i++) {
      derecha[i] = loadImage("derecha"+i+".png");
    } //for derecha

    for (int i2 = 0; i2 < izquierda.length; i2++) {
      izquierda[i2] = loadImage("left"+i2+".png");
    } //for Izquierda

    for (int i3 = 0; i3 < arriba.length; i3++) {
      arriba[i3] = loadImage("up"+i3+".png");
    }

    for (int i4 = 0; i4 < abajo.length; i4++) {
      abajo[i4] = loadImage("front"+i4+".png");
    }
  } //cierre void SPRITE


    void dibujarPersonaje(){        // ??????
    eventoTeclas();
    Sprite();
  }



  void eventoTeclas() {
    println(estado);
    println(keyCode);
    println(regar);
    // Sprite();
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
        image(arriba[imageIndex], posx, posy);
        imageIndex = (imageIndex+1)%arriba.length;
        posy = posy-4;
        // estado = "noMover";
        regar = "regarArriba";
      }     //cierre arriba
    }//cierre CODED
 

    if (direccion == "derecha") {
      image(derecha[imageIndex], posx, posy);
    }

    if (direccion == "izquierda") {
      image(izquierda[imageIndex], posx, posy);
    }

    if (direccion == "arriba") {
      image(arriba[imageIndex], posx, posy);
    }

    if (direccion == "abajo") {
      image(abajo[imageIndex], posx, posy);
    }
    if (regar.equals("regarAbajo") && key == 'b' || key =='B') {
      image(regarFrente, posx, posy);
    }

    //regar IZQUIERDA
    if ( regar.equals("regarIzquierda") && key == 'b' || key == 'B' ) {
      image(regarIZQ, posx-80, posy-20);
    }
    //regar ARRIBA
    if (regar.equals("regarArriba") && (key == 'b' || key == 'B')) {
      image(regarUP, posx-75, posy-10);
    }
    //regar a la DERECHA
    if (regar.equals("regarDerecha") && (key == 'b' || key == 'B' )) {
      image(regarDER, posx-30, posy-20);
    }
  }


}//cierre PERSONAJES CLASS
