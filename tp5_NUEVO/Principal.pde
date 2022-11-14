class Principal {
  Personaje player;
  Plantas p1, p2, p3;
  Fondo   f;
  String estados;


  Principal() {
    estados = "inicio";
    player = new Personaje(width/2, height/2);
    p1 = new Plantas(color(0, 0, 215), width-width/6, height-height/3);
    p2 = new Plantas(color(255, 0, 0), 100, 300);
    p3 = new Plantas(color(215, 215, 0), 100, 100);
    f  = new Fondo(0, 0);
  }

  void cargaImagenes() {
    player.Sprite();
    f.cargaFondos();
  }

  void dibujarPrincipal() {
    println(estados);
    if ( estados == "inicio") {
      f.fondo1();
      textAlign(CENTER, CENTER);
      fill(255);
      textSize(40);
      text("PANTALLA INICIO!", width/2, height/5);
      textSize(20);
      //rectMode(CENTER);
      fill(0);
      rect(width/5-5, height-height/4+10, 70, 40);
      rect(width-width/3-20, height-height/4+10, 140, 40);
      fill(255);
      text("JUGAR", width/4, height-height/5);
      text("COMO JUGAR", width-width/4, height-height/5);
    }

    if ( estados == "instrucciones") {
      f.fondoInstrucciones();
      text("Regar las plantas hasta su punto máximo para poder ganar.\nEl juego termina cuando se acaba el tiempo y las plantas\n no han sido regadas.", width/2, height/2-30);
      fill(0);
      rectMode(CENTER);
      rect(width/2,height-30,90,40);
      fill(255);
      text("JUGAR",width/2, height-30);  
}

    if ( estados == "JUEGO") {
      f.fondo2();
      p1.Dibujar();
      p2.Dibujar();
      p3.Dibujar();
      //falta IF para cordinar acercamiento entre personaje y planta
    }
  } //cierre dibujoPrincipal



  // eventos mouse y teclado
  void interactividadTeclado() {
    player.eventoTeclas();
    p1.Crecimiento();      //falta IF para cordinar acercamiento entre personaje y planta
    p2.Crecimiento();
    p3.Crecimiento();
  }


  void interactividadMouse() {
    if (mouseY>460 && mouseY<500 && mouseX>116 && mouseX<184 && estados == "inicio") {
      estados = "JUEGO";
    }

    if(mouseY>460 && mouseY<498 && mouseX>379 && mouseX<519 && estados == "inicio"){
      estados = "instrucciones";
    }
    
    if(mouseY>550 && mouseY<589 && mouseX>256 && mouseX<345 && estados == "instrucciones"){
      estados = "JUEGO";
    }
  }
} //cierre Clase
