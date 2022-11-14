Principal p;

void setup(){
size(600,600);
//background(0);
p = new Principal();
p.cargaImagenes();
}

void draw(){
  println(mouseX, mouseY);
p.dibujarPrincipal();


}



void keyPressed(){
  p.interactividadTeclado();
}


void mouseClicked(){
//  p.click();
 p.interactividadMouse();

}
