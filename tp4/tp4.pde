
//https://youtu.be/mbeyUEvycQU

Pantallas p1;
Dibujar   d1;
Textos    t1;

PFont mono;
PFont makina;
PImage picWW,picAP,picIV,picFONDO;
String estado = "inicio";

   boolean click1 = true;
   boolean click2 = true;
   boolean click3 = true;


void setup(){
  size(600,600);
  p1 = new Pantallas();
  d1 = new Dibujar();
  t1 = new Textos();
  
  mono = createFont("dogica.ttf",20);
  makina = createFont("JMH Typewriter.ttf",20);
  picWW = loadImage("whitman.jpg");
  picAP = loadImage("pizarnik2-e1647019305425.jpg");
  picIV = loadImage("idea_vilarino_2.png");
  picFONDO = loadImage("ventana.jpg");
}
 
  
  void draw(){
    println(estado);
    println(mouseX,mouseY);
      println(click1);
      println(click2);
      println(click3);
    
    background(0);
    if(estado.equals("inicio")){
    p1.Inicio();
  }
  
  if(estado.equals("comienzo")){
  p1.Comienzo();
 } 
 
   if(estado.equals("segunda pantalla") && click1==false){
    p1.SegundaClick1();
   }
    if(estado.equals("segunda pantalla") && click2==false){
      p1.SegundaClick2();
     
   }
    if(estado.equals("segunda pantalla") && click3==false){
      p1.SegundaClick3();
   }
   
 
 
 
  
  
  
  
} // cierre void draw
  
  
 void mouseClicked(){
  
  ComenzarCaja();    //botón Comenzar
  
  float distancia1 = dist(mouseX,mouseY, width/6, height/2);
  float distancia2 = dist(mouseX, mouseY, width/6, height/2+30);
  float distancia3 = dist(mouseX, mouseY, width/6, height/2+60);
  int radio = 20/2;
       
       
    if(distancia1<radio){
      estado = "comienzo";   
      click1 = false;
    }
  
    
    if(distancia2<radio){   
      estado = "comienzo";
      click2 = false;
  }
  
   if(distancia3<radio){     
      estado = "comienzo";
      click3 = false;
  }
  
  
 }  //cierre mouseClicked
 
 
 void keyPressed(){
     cajaReinicio();  
   }
