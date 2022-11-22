// MERLINA FARIAS JOMUÑK - COMISION 1
//


import processing.sound.*;


Principal p;
SoundFile musikita;

void setup() {
  size(600, 600);
  p = new Principal();
  p.cargaImagenes();

  musikita = new SoundFile(this, "musicafondo.mp3");
  musikita.loop();
}

void draw() {

  p.dibujarPrincipal();
}



void keyPressed() {
  p.interactividadTeclado();
}


void mouseClicked() {
  p.interactividadMouse();
}
