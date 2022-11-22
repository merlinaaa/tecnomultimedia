class Principal {
  Personaje player;
  Plantas p1, p2, p3;
  Fondo   f;
  String estados;
  PFont fuente;

  Principal() {
    estados = "inicio";
    player = new Personaje(width/2, height/2);
    p1 = new Plantas(color(0, 0, 215), width-width/6, height-height/3, 0);
    p2 = new Plantas(color(255, 0, 0), 100, 300, 0);
    p3 = new Plantas(color(215, 215, 0), 100, 100, 0);
    f  = new Fondo(0, 0, frameCount%60);
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
      println("tiempo de juego: "+f.countdown);
      f.fondo2();
      player.personajeDibujo();
      p1.Dibujar();
      p2.Dibujar();
      p3.Dibujar();
      if (f.countdown > 12 && f.countdown < 14) {
        fill(255);
        text("se acaba el tiempo!!", player.posx-3, player.posy-8);
      }
      if (f.countdown == 20) {
        estados = "game over";
      }
      if (p1.crecer == 61 && p2.crecer == 61 && p3.crecer == 61) {
        f.tiempo = true;
        fill(255, 255, 0);
        rect(20, 450, 80, 80);
        fill(255);
        text("META", 40, 425);
      }
      if (p1.crecer == 61 && p2.crecer == 61 && p3.crecer == 61 && player.posx>20 && player.posx<82 && player.posy<531 && player.posy>411) {
        estados = "ganaste";
      }
    }
    
    if ( estados == "game over") {
      f.perdisteFondo();
    }
    
    if ( estados == "ganaste") {
      f.fondoGanaste();
    }
  } //cierre dibujoPrincipal



  // eventos mouse y teclado
  void interactividadTeclado() {
    if (estados == "JUEGO") {
      player.eventoTeclas();
      if (player.posx > 19 && player.posx < 130 && player.posy > 239 && player.posy < 323) {
        p2.Crecimiento();
      }
      if (player.posx > 19 && player.posx < 130 && player.posy > 30 && player.posy < 126) {
        p3.Crecimiento();
      }
      if (player.posx > 410 && player.posx < 556 && player.posy > 334 && player.posy < 448) {
        p1.Crecimiento();
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
      p1.crecer = 0;
      p2.crecer = 0;
      p3.crecer = 0;
      player.posx = width/2;
      player.posy = height/2;
      f.tiempo = false;
      frameCount = 0;
      f.opacidad = 50;
      f.textoY1 = 1;
      f.textoY2 = 1;
      f.textoY3 = 1;
      f.countdown = frameCount%60;
      player.direccion = "frente";
      player.tranki = false;
      player.regar = "abajo";
    }
    if (estados == "ganaste" && mouseX>210 && mouseX<388 && mouseY>484 && mouseY<522) {
      estados = "inicio";
      p1.crecer = 0;
      p2.crecer = 0;
      p3.crecer = 0;
      player.posx = width/2;
      player.posy = height/2;
      f.tiempo = false;
      frameCount = 0;
      f.opacidad = 50;
      f.textoY1 = 1;
      f.textoY2 = 1;
      f.textoY3 = 1;
      f.countdown = frameCount%60;
      player.direccion = "frente";
      player.tranki = false;
      player.regar = "abajo";
    }
  }
} //cierre Clase
