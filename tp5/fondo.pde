class Fondo {
  PImage Inicio, fondoJuego, instrucciones, ganasteFondo,
    perdisteFondo, caja, reloj, trofeo;
  int opacidad, textoY1, textoY2, textoY3, aparecer;
  String creditoslinea1, creditoslinea2, creditoslinea3;

  Fondo() {
    opacidad = 50;
    textoY1 = 1;
    textoY2 = 1;
    textoY3 = 1;
    aparecer = 1;
    creditoslinea1 = "Merlina Farias";
    creditoslinea2 = "tecnologia multimedial 1 - comision 1";
    creditoslinea3 = "2022";
  }

  void cargaFondos() {
    Inicio = loadImage("fondoInicio.jpg");
    fondoJuego = loadImage("granjafondo.png");
    instrucciones = loadImage("instruc.jpg");
    ganasteFondo = loadImage("fondoganaste.jpg");
    perdisteFondo = loadImage("perdiste.jpg");
    caja = loadImage("template.png");
    reloj = loadImage("hourglass.png");
    trofeo = loadImage("trophy.png");
  }

  void fondo1() {
    image(Inicio, -40, 0, 900, 600);
    fill(0, 0, 0, 80);    // oscurece la imagen para sacarle saturacion
    rect(0, 0, width, height); 
  }

  void fondo2() {
    image(fondoJuego, -150, 0, 900, 600);
    fill(0, 0, 0, 80);      // oscurece la imagen de fondo para que no se pierdan las plantas (los verdes del tallo y el pasto de la imagen son parecidos)
    rect(0, 0, width, height);
    image(caja, 270, 10, 60, 40);    //box del segundero
    fill(95, 46, 17);
    textSize(28);
  }

  void fondoGanaste() {
    opacidad--;
    textoY1++;
    textoY2++;
    textoY3++;
    aparecer++;
    image(ganasteFondo, 0, 0);
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
    if (aparecer>300) {
      image(caja, 139, 171, 300, 47);
      text("Tu tiempo: "+p.countdown+" segundos", width/2, height/4+40);
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
    text("Riega las tres plantas hasta su punto maximo antes\nde que termine el tiempo. Solo tenes 20s!\n Acercate al trofeo para terminar.", width/2, height/2-30);

    image(caja, 255, 553, 90, 40);
    fill(95, 46, 17);
    text("JUGAR", width/2, height-30);
  }
}
