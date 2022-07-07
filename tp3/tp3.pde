//https://youtu.be/EgVFobAdrh4


PFont fontFutura;
int tiempo,minutos,okay,opacidad, tres;
int g1,g2,g3 = 0;
int b1,b2,b3 = 255;
boolean titilando,tres3;
PImage magoInicio,magoInstru,magoPerder;
int[][] sumando = new int[1][3];                //ARRAY
int circuloArriba,circuloIzq, circuloDer,radio;
int valorArriba, valorIzq, valorDer;
float distancia1, distancia2, distancia3;


void setup(){
size(600,600);
background(0);
 fontFutura = createFont("Futura Extra Black font.ttf", 32);
 okay = 0;  //condicion para pasar entre pantalla y pantalla
// G1,G2,G3 = 0;     //variable para poder cambiar de color los botones 
 //B1,B2,B3 = 255;
 opacidad=50;
 tres3 = false;
 tres = 90;
 
    
 magoInicio = loadImage("wizard.png");
 magoInstru = loadImage("instru.png");
 magoPerder = loadImage("perder.png");

sumando[0][0]     = valorArriba;
sumando[0][1]     = valorIzq;
sumando[0][2]     = valorDer;
}


void draw(){
 // background(0);
  tiempo = frameCount/60;
     distancia1 = dist(mouseX,mouseY, width/2,height/4);    
    distancia2 = dist(mouseX,mouseY, width/5, height/2+120);
    distancia3 = dist(mouseX,mouseY, width-width/5, height/2+120);
    radio = 90/2;
  println(minutos+":"+tiempo%60+"s");
  println("X: "+mouseX, "Y: "+mouseY);
  //println(sumando.length);
 
 if(okay==0){ // si okay es igual a 0 
  fill(0);
  rect(0,0, width, height);        //actúa como background
  tint(255,50);
   imageMode(CENTER); 
  image(magoInicio, width/2, height/2,600,600);
  noTint();
  fill(78,113,23);                 //fill para los BOTONES
  rect(148, height-185, 100, 80);  //botón de JUGAR
  rect(348, height-185, 100, 80); // botón CÓMO JUGAR
   textosF();                      //función con los textos de la primera pantalla
   } 
   
   
   //JUGAR
 
   if(okay==20){
   juegoBase();
   
 }

   //COMO JUGAR PANTALLA
   if(okay==10){
     rectMode(CORNER);
   fill(43,25,100);           // background violeta
   rect(0,0,width,height);    //background violeta
      imageMode(CENTER);
   image(magoInstru,480,440,250,250);
   fill(255);
   textSize(20);
   text("Clickear los círculos grises para aumentar su valor\n y lograr que la suma de sus cifras\nden como resultado el número del\ncirculo azul adyacente.",width/2,100);
   text("OBJETIVO: Resolver las tres incógnitas\nantes de que acabe el tiempo.",width/2,height/2);
   fill(78,113,23);
   rectMode(CENTER);
   rect(width/2, height-125, 100, 70);    //botón JUGAR desde instrucciones
   fill(255,255,255,opacidad);
   text("JUGAR", width/2, height-120);    //JUGAR pero titila
   if(titilando){
     opacidad++;} else {
       opacidad--;
     }
    if(opacidad<=10){
     titilando = !titilando;}
     if(opacidad>=80){
       titilando = !titilando;}
         
  } //cierre if grande
  
 
 
  //CONDICIONES WIN
 if(valorArriba + valorIzq == 6 ){   //si el resltado es correcto, el circulo cambia a verde 
    g1 = 255;
    b1 = 0; } else {
      g1 = 0;
      b1 = 255;
 }         
 
  if(valorArriba + valorDer == 5){
   g2 = 255;
   b2 = 0; } else {
     g2 = 0;
     b2 = 255;
   }
   
 if(valorIzq + valorDer == 3){
   g3  = 255;
   b3  =  0; } else {
     g3 = 0;
     b3 = 255;}
     
     println("TRES: "+tres);
     
     
     //GANAR
     if( g1 == 255 && g2 == 255 && g3 ==255){
       frameCount = 0;
      tres3 = true;
     if(tres3==true){
       tres--;
     }
        if(tres<=0){
     okay  = 21;
     rectMode(CENTER);
    fill(78,113,23);
     rect(width/5,height-height/10,120,40);        //caja Volver a jugar
     rect(width-width/5, height-height/10,120,40); //caja creditos
    fill(0);
     rect(width/2, height-height/8,120,40);
   fill(255);
      textSize(15);
    text("¡GANASTE!", width/2, height-height/8);
    text("Créditos", width-width/5, height-height/10);
    text("Volver a jugar", width/5, height-height/10);
    textSize(40);
    rectMode(CORNER);
     }
   }
      
   
    
    
    if(okay==30){
    okay = 0;
    tres = 90;
    g1 = 0;
    g2 = 0;
    g3 = 0;
    b1 = 255;
    b2 = 255;
    b3 = 255;
    rectMode(CORNER);
    frameCount= 0;
  }
      
      if(tiempo>=40){
     rectMode(CORNER);
   fill(0);
   rect(0,0, width, height);
   image(magoPerder,width/2, height/2);
   textAlign(CENTER,CENTER);
  fill(255);  
     for (int l= 0; l<height; l++) {

   float tono = dist(width/5, height-height/10, mouseX, mouseY);
   stroke(0, 0, 0,tono);
   line(0, l, width, l); // lineas degradado
   }
     fill(255);
   text("PERDISTE", width/2, height/2);
   rectMode(CENTER);
     rect(width/5,height-height/10,120,40); 
   fill(0);
   textSize(15);
   text("Volver a jugar", width/5, height-height/10);
   
 }
     
     
     
} // cierre draw

void mousePressed(){
  
  //botón JUGAR
 if(mouseX>148 && mouseX<248 && mouseY<500 && mouseY>420 && okay==0){
   
   fill(0);
   rectMode(CORNER);
   rect(0,0, width, height);
   frameCount = 0;
   textSize(15);
    okay = 20;
 }
 
 //botón CÓMO JUGAR
 if(mouseX>348 && mouseX<450 && mouseY>height-185 && mouseY<500 && okay==0){
 noStroke();
 imageMode(CENTER);
  image(magoInstru,20,20);
 fill(43,25,100);
 rectMode(CORNER);
 rect(0,0,width,height);
 okay=10;
 }
 
 //botón JUGAR desde instrucciones 
 if(mouseX>width/2-50 && mouseX<width/2+50 && mouseY>height-157 && mouseY<height-86 && okay==10){
   fill(0);
   rectMode(CORNER);
   rect(0,0, width, height);
   textSize(15);
    okay = 20;
    frameCount= 0;
 }
 
 
    
   
   //BOTON ARRIBA GRIS
 if(distancia1<radio && tiempo<=40){  //boton circulo grises ARRIBA
     valorArriba++;
   if(valorArriba>10){
     valorArriba = 0;
   }
  }
  
  //BOTÓN IZQ GRIS
  if(distancia2<radio && tiempo<=40){
    valorIzq++;
  if(valorIzq>10){
    valorIzq = 0;
  }
}
  
  //BOTÓN DERECHA GRIS
  if(distancia3<radio && tiempo<=40){
  valorDer++;
  if(valorDer>10){
  valorDer = 0;
    }
  }
 
 
 //BOTÓN VOLVER A JUGAR
 if(mouseX>60 && mouseX<181 && mouseY>524 && mouseY<563 && g1 == 255 && g2 == 255 && g3 ==255 && okay==21){
    frameCount=0;
    okay = 0;
    tres3 = false;
    tres = 90;
    g1 = 0;
    g2 = 0;
    g3 = 0;
    b1 = 255;
    b2 = 255;
    b3 = 255;
    valorArriba = 0;
    valorIzq    = 0;
    valorDer    = 0;
    rectMode(CORNER);
    noStroke();
 }
 
    //rect(width-width/5, height-height/10,120,40) 
   if(mouseX>420 && mouseX<540 && mouseY>524 && mouseY<564 && g1 == 255 && g2 == 255 && g3 ==255 && okay==21){
     frameCount=0;
     fill(0);
     rectMode(CENTER);
     rect(width/2,height/2, width,height);
     fill(255);
     text("Merlina Farías Jomñuk\nComisión 1\nTecno I 2022", width/2, height/2);
   }
 
 
 
 //BOTÓN VOLVER A JUGAR (PERDER)
 if(mouseX>60 && mouseX<181 && mouseY>524 && mouseY<563 && tiempo>40){
   frameCount = 0;
    okay = 0;
    tres3 = false;
    tres = 90;
    g1 = 0;
    g2 = 0;
    g3 = 0;
    b1 = 255;
    b2 = 255;
    b3 = 255;
    valorArriba = 0;
    valorIzq    = 0;
    valorDer    = 0;
    rectMode(CORNER);
    frameCount= 0;
 }
 
 
 
} //cierre void pressed
