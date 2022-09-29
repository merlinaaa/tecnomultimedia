

class Dibujar extends Textos{
 
   
 // PANTALLA INICIO
 void CirculoChoice(){  //circulos opciones 
  
    float distancia1 = dist(mouseX,mouseY, width/6, height/2);
    float distancia2 = dist(mouseX, mouseY, width/6, height/2+30);
    float distancia3 = dist(mouseX, mouseY, width/6, height/2+60);
    
   int radio = 20/2;

   int boton1 = 0;
   int boton2 = 0;
   int boton3 = 0;

 fill(0);
 stroke(255);
    if(distancia1<radio){
    boton1 = 255; 
  }
    if(distancia2<radio){
    boton2 = 255; 
  }
    if(distancia3<radio){
    boton3 = 255; 
  }
  fill(boton1);
 circle(width/6, height/2, 20);    //opcion A
    fill(boton2);
 circle(width/6, height/2+30, 20); //opcion B
    fill(boton3);
 circle(width/6, height/2+60, 20); //opcion C
   t1.Botoncitos();
   t1.Opciones();    
 }
 
 
 void Comenzar(){
   fill(255);
   rectMode(CENTER);
   rect(width/2, height-height/5,200,40);
 }
 
  void DibujoWhitman(){
    float medio = dist(width/2, height/2, mouseX, mouseY);
    int gridSize = 40;
    for (int x = gridSize; x <= width - gridSize; x += gridSize) {
  for (int y = gridSize; y <= height - gridSize; y += gridSize) {
    noStroke();
    fill(255);
    rect(x-1, y-1, 3, 3);
    stroke(255, 100);
    line(x, y, mouseX, mouseY);
  }
     fill(255,255,255,300/medio);
     noStroke();
     rect(mouseX,mouseY, 590,60);
}
    } // cierre cierreDibujoWhitman
 
 
 void Nombre(){
  float punto = dist(width/2,height/2,mouseX,mouseY);
  if(punto<200 && punto>0){
    fill(255);
    textSize(punto);
    textAlign(CENTER);
    text("Idea Villariño", width/2, height-100);
  }
 }
 

 
} // cierre total Dibujar()
