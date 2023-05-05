int nivel = 0;  //logica de estados
color violeta = color(128, 82, 209);
float random1, random2, random3, random4;

void pantalla1() {
  if (nivel == 0) {    //inicio de la interacción, las figuras se pintan aleatoriamente
    fill(255);        //y el color cambia con mouseX;mouseY. -->esto pasa a ser por voz
    noStroke();
    square(0, 0, width);
    if (frameCount>70) {
      estado1();
      violeta = color(mouseX, mouseY, 255);
      if (frameCount>70 & frameCount<130) {
        random1  = random(-10, 300);      //rangos para que los trazos se dibujen aleatoriamente
        random2  = random(300, 590);      //dentro de ciertos limites
        random3 = random(-100, 500);
        random4 = random(-200, 200);
      }
    }
  }

  if (nivel == 1) {              //segundo nivel de la interacción, se dibujan las lineas.
    stroke(255);
    strokeWeight(10);
    for (int y = 30; y < height; y += 30) {
      line(y, height, y, 0);
      float d = dist(mouseX, mouseY, y, width/2);
      if (d < 30) { 
        stroke(255, 215, 0); // Pinta la línea de dorado
      } 
    }
  }
}// cierre pantalla1







void click() {        //cambiar de nivel. despues de definir los colores se clickea para armar las lineas
  if (mouseX>0 && mouseY>0) {
    nivel = +1;
  }
}
