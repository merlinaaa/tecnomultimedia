// https://youtu.be/aXUpc7r90eU


PImage primera, segunda, tercera;
float ancho, esp;  // 
float primeraPos = 20;
float segundaPos = 620;
float terceraPos = 620;
int posText = 620;

void setup() {  
  //background(255);
  
  size(620, 470);
  primera = loadImage("fondo.jpeg");   //primera imagen
  segunda = loadImage("b2Ffg4f.jpeg"); //segunda imagen
  tercera = loadImage("MXJchLj.jpeg"); //tercera imagen
  
  ancho = 3.8;   //ancho ORIGINAL barrotes
  esp = 4;      //espacio ORIGINAL entre barrotes
 
}


void draw() {
 // println("Ancho: " + ancho + "\nEspacio: " + esp);
  
  
  noStroke();
  fill(255); 
  rect(0,0, width, height); 
  
  fill(255,0,0);          //boton
  ellipse(40,420,40,40);
  
  
 
 // IMAGENES 
  imageMode(CORNER);
  image(primera, mouseX, primeraPos, 220, 170); 
  image(segunda, mouseX, segundaPos, 220, 170);
  image(tercera, mouseX, terceraPos, 220, 170);
      
  
     for (int linea= width/2; linea<width; linea+=esp) {
      stroke(0);
    strokeWeight(ancho);
    line(linea, 0, linea, height);    
    } 
    
    
    fill(0);
    // textSize(15);
     text("Mover el mouse lentamente\nhacia la derecha para ver el efecto.", 10, 220);
text("-Flecha Derecha para ver ejemplo2,\n-Flecha arriba para ejemplo3,\n-Flecha izquierda para volver al primer ejemplo.\n-Reinicio con flechita abajo.", 10, 270);
    text("Merlina Farías Jomñuk\n Comisión 1   :)", 140, posText);

} //cierre void draw

void mouseClicked(){
  float d1;
  int radio; 
  d1    = dist(mouseX, mouseY, 40, 420);    // ellipse(40,420,40,40); BOTÓN ROJO
  radio = 40/2;
  
  if(d1<radio){
    posText = 420;
  }
}

void keyPressed(){
   
   if(key == CODED){   
  if(keyCode == RIGHT){    
  ancho = 3;
  esp   = 4;
  primeraPos = 620;
  segundaPos = 20;
  terceraPos = 620;
   }  // cierre flechita der
  } //cierre coded
   
   if(key == CODED){
    if(keyCode == LEFT) {
    ancho = 3.8;
    esp   = 4;
    segundaPos = 620;
    primeraPos = 20;
    terceraPos = 620;
      
    } // cierre flechita izq
   } //cierre coded
   
   if(key == CODED){
     if( keyCode == UP){
       ancho = 3;
       esp   = 4;
       primeraPos = 620;
       terceraPos = 20;
       segundaPos= 620;
     }
   }
   
   if(key == CODED){
     if(keyCode == DOWN){
      primeraPos = 20;
      segundaPos = 620;
      terceraPos = 620; 
      posText    = 620 ;
     }
   }
}
