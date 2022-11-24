// MERLINA FARIAS JOMUÑK - COMISION 1
//https://youtu.be/0Z2iayxGL0o

import processing.sound.*;


Principal p;
SoundFile musikita;

void setup() {
  size(600, 600);
  p = new Principal();

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
