class Principal {
  Personaje player;
  Fondo   f;
  Plantas plant;
  String estados;
  PFont fuente;
  boolean tiempo;
  int countdown = frameCount%60;
  Plantas[] plantines= new Plantas[3];

  Principal() {
    estados = "inicio";
    player = new Personaje(535, 258);
    f  = new Fondo();
    cargaImagenes();
    for (int i = 0; i < plantines.length; i++) {
      plantines[i] = new Plantas(color(random(0, 215), random(0, 100), random(215)), 100+i*width/4, random(60, 444), 0);
    }
  }

  void cuentaRegresiva() {
    fill(95, 46, 17);
    text(20-countdown, width/2, 30);
    if (frameCount%60 == 0 && tiempo == false) {
      countdown++;
    }
  }

  void cargaImagenes() {
    f.cargaFondos();
    fuente = createFont("Stardew_Valley.ttf", 18);
    textFont(fuente);
  }

  void dibujarPrincipal() {
    println("estados: "+estados);
    if ( estados == "inicio") {
      f.fondo1();
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(80);
      text("Plantas\n    y Flores", width/2-25, height/3);
      fill(255);
      textSize(82);
      text("Plantas\n    y Flores", width/2-20, height/3);
      textSize(20);
      image(f.caja, width/5-5, height-height/4+10, 70, 40);
      image(f.caja, width-width/3-20, height-height/4+10, 140, 40);
      fill(95, 46, 17);
      text("JUGAR", width/4, height-height/5);
      text("COMO JUGAR", width-width/4, height-height/5);
    }

    if ( estados == "instrucciones") {
      f.fondoInstrucciones();
    }

    if ( estados == "JUEGO") {
      println("tiempo de juego: "+countdown);
      f.fondo2();
      player.personajeDibujo();
      for (int i = 0; i < plantines.length; i++) {
        plantines[i].Dibujar();         // se dibujan las plantas
      }

      if (countdown > 12 && countdown < 14) {
        fill(255);
        text("se acaba el tiempo!!", player.posx-3, player.posy-8);
      }
      if (countdown == 20) {
        estados = "game over";
      }
      if (plantines[0].crecer == 61 && plantines[1].crecer == 61 && plantines[2].crecer == 61) {  // condicion para perder
        tiempo = true;    // la cuenta regresiva se detiene
        image(f.trofeo, 20, 450, 80, 80);
        fill(255);
        text("Ganaste!", 80, 420);
      }
      if (plantines[0].crecer == 61 && plantines[1].crecer == 61 && plantines[2].crecer == 61 && player.posx>20 && player.posx<82 && player.posy<531 && player.posy>411) {
        estados = "ganaste";      // las tres plantas regadas = ganaste!
      }
      cuentaRegresiva();         //el reloj con la cuenta regresiva se dibuja ultimo porque existe la posibilidad de que una planta se genere
    }                            // a la misma altura en el eje X, y al crecer tapa el reloj con los petalos.

    if ( estados == "game over") {
      f.perdisteFondo();
    }

    if ( estados == "ganaste") {
      f.fondoGanaste();
    }
  } //cierre dibujoPrincipal()  -> estados



  // eventos mouse y teclado
  void interactividadTeclado() {
    if (estados == "JUEGO") {
      player.eventoTeclas();
      if (dist(player.posx, player.posy, plantines[0].posx, plantines[0].posy) < 80) {
        plantines[0].Crecimiento();
      }
      if (dist(player.posx, player.posy, plantines[1].posx, plantines[1].posy) < 80) {
        plantines[1].Crecimiento();
      }
      if (dist(player.posx, player.posy, plantines[2].posx, plantines[2].posy) < 80) {
        plantines[2].Crecimiento();
      }
    }
  }


  void interactividadMouse() {
    if (mouseY>460 && mouseY<500 && mouseX>116 && mouseX<184 && estados == "inicio") {
      estados = "JUEGO";
    }

    if (mouseY>460 && mouseY<498 && mouseX>379 && mouseX<519 && estados == "inicio") {
      estados = "instrucciones";
    }

    if (mouseY>550 && mouseY<589 && mouseX>256 && mouseX<345 && estados == "instrucciones") {
      estados = "JUEGO";
    }

    if (estados == "game over" && mouseX>210 && mouseX<388 && mouseY>484 && mouseY<522) {
      estados = "inicio";
      plantines[0].crecer = 0;
      plantines[1].crecer = 0;
      plantines[2].crecer = 0;
      player.posx = 535;
      player.posy = 258;
      tiempo = false;
      frameCount = 0;
      f.opacidad = 50;
      f.textoY1 = 1;
      f.textoY2 = 1;
      f.textoY3 = 1;
      countdown = frameCount%60;
      player.direccion = "frente";
      player.tranki = false;
      player.regar = "abajo";
    }
    if (estados == "ganaste" && mouseX>210 && mouseX<388 && mouseY>484 && mouseY<522) {
      estados = "inicio";
      plantines[0].crecer = 0;
      plantines[1].crecer = 0;
      plantines[2].crecer = 0;
      player.posx = 535;
      player.posy = 258;
      tiempo = false;
      frameCount = 0;
      f.opacidad = 50;
      f.textoY1 = 1;
      f.textoY2 = 1;
      f.textoY3 = 1;
      countdown = frameCount%60;
      player.direccion = "frente";
      player.tranki = false;
      player.regar = "abajo";
    }
  }
} //cierre Clase
