PImage trazo1, trazo2, trazo3, trazo4, trazo5, trazo6;
void setup() {
  size(600, 600);
  trazo1 = loadImage("trazo1.png");
  trazo2 = loadImage("trazo2.png");
  trazo3 = loadImage("trazo3.png");
  trazo4 = loadImage("trazo4.png");
  trazo5 = loadImage("trazo5.png");
  trazo6 = loadImage("trazo6.png");  
}

void draw() {
pantalla1();
println(frameCount);
println(nivel);
}

void mouseClicked(){
click();
}
