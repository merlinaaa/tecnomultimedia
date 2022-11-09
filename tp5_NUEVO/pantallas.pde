class Pantallas {
  Personaje player;
  Plantas p1, p2;
  Fondo f;
  Pantallas() {
    player = new Personaje(width/2, height/4);
    p1 = new Plantas(color(0, 0, 215), width/2, height/2);
    p2 = new Plantas(color(255, 0, 0), 100, 300);
    f  = new Fondo(0, 0);
  }


  void pantallaInicio() {
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



  void pantallaInstrucciones() {
    text("Como jugar", width/2, height/2);
  }


  void pantallaJuego() {
    //  f.fondo2();
    //  player.personajeDibujar();
    p1.Dibujar();
    p2.Dibujar();
    p1.Crecimiento();
    p2.Crecimiento();
    // player.eventoRegar();
    //player.eventoTeclas();
    player.dibujarPersonaje();

   // player.Sprite();

    //   player.eventoRegar();
    //  player.personajeMover();
  }
}
