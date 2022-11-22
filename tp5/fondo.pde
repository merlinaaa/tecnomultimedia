class Fondo {
  int x, y;
  PImage Inicio, fondoJuego, instrucciones, ganasteFondo, perdisteFondo, caja, reloj;
  boolean tiempo = false;
  int countdown = frameCount%60;
  int opacidad = 50;
  int textoY1 = 1;
  int textoY2 = 1;
  int textoY3 = 1;
  int aparecer = 1;
  String creditoslinea1 = "Merlina Farias";
  String creditoslinea2 = "tecnologia multimedial 1 - comision 1";
  String creditoslinea3 = "2022";
  Fondo(int xF, int yF, int _countdown) {
    x = xF;
    y = yF;
    countdown = _countdown;
  }

  void cargaFondos() {
    Inicio = loadImage("fondoInicio.jpg");
    fondoJuego = loadImage("granjafondo.png");
    instrucciones = loadImage("instruc.jpg");
    ganasteFondo = loadImage("fondoganaste.jpg");
    perdisteFondo = loadImage("perdiste.jpg");
    caja = loadImage("template.png");
    reloj = loadImage("hourglass.png");
  }

  void fondo1() {
    fill(0, 0, 0, 200);
    // rectMode(CORNER);
    image(Inicio, -40, 0, 900, 600);
    rect(0, 0, width, height);
  }

  void fondo2() {
    fill(0, 0, 0, 80);      // oscurece la imagen de fondo para que no se pierdan las plantas (los verdes del tallo y el pasto son parecidos)
    image(fondoJuego, -150, 0, 900, 600);
    rect(0, 0, width, height);
    fill(0);
    image(caja, 270, 10, 60, 40);    //segundero
    fill(95, 46, 17);
    textSize(28);
    text(20-countdown, width/2, 30);
    if (frameCount%60 == 0 && tiempo == false) {
      countdown++;
    }
  }

  void fondoGanaste() {
    image(ganasteFondo, 0, 0);
    opacidad--;
    textoY1++;
    textoY2++;
    textoY3++;
    aparecer++;
    
    fill(255, 255, 255, 0-opacidad);
    textSize(62);
    text("Ganaste!", width/2+1, height/4-15);    //texto duplicado para generar   
    textSize(60);
    fill(0, 0, 0, 0-opacidad);
    text("Ganaste!", width/2, height/4-15);      //ilusion de tridimensionalidad
   
    textSize(28);
    fill(255);
    if (textoY1<450) {
      text(creditoslinea1, width/2, 800-textoY1);
    }
    if (textoY2<550) {
      text(creditoslinea2, width/2, 900-textoY2);
    }

    if (textoY3<625) {
      text(creditoslinea3, width/2, 980-textoY3);
    }
    if (aparecer>350) {
      image(caja, 139, 171, 300, 47);
      text("Tu tiempo: "+countdown+" segundos", width/2, height/4+40);
      image(reloj, 150, height/4+30, 20, 30);
    }


    fill(95, 46, 17, 0-opacidad);
    textSize(25);
    image(caja, 210, height-117, 180, 40);
    text("volver a jugar", width/2, height-100);

    fill(0, 0, 0, 255+opacidad);    // pantalla negra que desvanece
    rect(0, 0, width, height);      //apenas se gana
  }

  void perdisteFondo() {
    println("opacidad: "+opacidad);
    image(perdisteFondo, 0, 0);
    opacidad--;
    fill(0, 0, 0, 255+opacidad);
    rect(0, 0, width, height);
    fill(255, 255, 255, 0-opacidad);
    fill(0);

    rect(210, height-117, 180, 40);
    fill(255, 255, 255, 0-opacidad);
    textSize(80);
    textAlign(CENTER, CENTER);
    text("GAME OVER", width/2, height/2-20);
    textSize(25);
    text("Se te acabo el tiempo!", width/2, 370);
    text("volver a jugar", width/2, height-100);
  }

  void fondoInstrucciones() {
    image(instrucciones, 0, 0);
    textSize(60);
    fill(255);
    text("COMO JUGAR", width/2, height/5);
    textSize(28);
    image(caja, 15, 200, 570, 150);
    fill(95, 46, 17);
    text("Riega las tres plantas hasta su punto maximo antes\nde que termine el tiempo. Solo tienes 20s!\nLuego dirigete al cuadrado amarillo para terminar.", width/2, height/2-30);
 
    image(caja, 255, 553, 90, 40);
    fill(95, 46, 17);
    text("JUGAR", width/2, height-30);
  }
}
