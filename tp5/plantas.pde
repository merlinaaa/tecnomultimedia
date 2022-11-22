class Plantas {
  Fondo f;
  color c;
  int posx;
  int posy;
  int crecer;

  Plantas(color _c, int _posx, int _posy, int _crecer) {
    crecer = _crecer;
    c = _c;
    posx = _posx;
    posy = _posy;
    f  = new Fondo(0, 0,frameCount%60);
  }


  void Dibujar() {

    noStroke();
    fill(0, 215, 0);
    rectMode(CENTER);
    rect(posx, posy, 5, 70+crecer);  //el tallo avanza hacia arriba para que no sobresalga por debajo de la maceta
    //flores
    fill(c);
    ellipse(posx-10, posy-20-crecer, 20, 20);   // petalo izquierda
    ellipse(posx+10, posy-20-crecer, 20, 20); // petalo derecha
    ellipse(posx, posy-30-crecer, 20, 20); //petalo arriba
    ellipse(posx, posy-10-crecer, 20, 20); //petalo abajo
    fill(255);
    ellipse(posx, posy-20-crecer, 8, 8);
    fill(20, 100, 30);
    ellipse(posx-10, posy+20-crecer, 15, 5);
    ellipse(posx+10, posy+10-crecer, 15, 5);
    //maceta
    fill(50, 50, 50);
    rect(posx, posy+50, 30, 30);
    rect(posx, posy+35, 40, 5);
    rectMode(CORNER);
  } //cierre Dibujar

  void Crecimiento() {
      if (key == 'b' || key == 'B') {
        crecer++ ;
        fill(0);
        textSize(28);
        text(crecer/6, posx-40, posy-crecer);
      }
      if (crecer>61) {
        crecer--;
      }
  } //cierre void Crecimiento


} // cierre class PLANTAS
