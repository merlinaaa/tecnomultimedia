//Merlina Farías Jomñuk
//COM. 1


//Variables//
PImage logo, fondo, vivre;
PFont textosCreditos;
int tiempo;
float tam1, tam2, tam3, tam4, ancho, tono, tamLogo;
boolean aumenta;

void setup() {
  size(400, 400);
  background(0);
  
    textosCreditos = createFont("Futura Extra Black font.ttf", width/10);
    textFont(textosCreditos);
    
    logo = loadImage("climax.png");
    fondo = loadImage("fondo.jpg");
    vivre = loadImage("vivre.jpg");
    
    
}


void draw() {
  //background(0);
  //text("X: " + mouseX + "Y: " + mouseY , mouseX, mouseY);
  println("X: " + mouseX + " Y: " + mouseY);
  noStroke();
          // ----------LOGO ---------
 // tiempo++;
  aumenta = false;
  tiempo = frameCount/60;      // contador de segundos, para medir la duración
  println("tiempo: "+ tiempo);  // de las pantallas.

  if (tiempo>=0 && tiempo <= 2) {
     fill(0);
 rect(0,0,width*2, height*2);
    
    imageMode(CENTER);                            
    image(logo, width/2, height/2, tiempo+tamLogo, tiempo+tamLogo/2 );
    
    if(aumenta){
    tamLogo++; } else {
      tamLogo--;
    }
  }
  if(aumenta){
    tamLogo++; } else {
    tamLogo--;
  } 
  if (tamLogo>height || tamLogo<0) {
  aumenta = !aumenta ;
  }
 
 
 if(tiempo >= 7 && tiempo <=8){
   fill(0);                  // manto negro
 rect(0,0,width*2, height*2); 
 }
 
          //------FIN LOGO-------
 
 
 
 
           /////SEGUNDA PANTALLA //////

  if(tiempo >= 10 && tiempo<=14){
  
  fill(255);
  textSize(width/10);
  text("GASPAR NOÉ", 10 , 40+height/2+tam2);  // texto base
   if(tiempo>=12 && tiempo<=14){
    tam2++;}                         //estela 
  }
 
     if(tiempo>13 && tiempo<=14){  // fin de la pantalla
        fill(0);                  // manto negro
 rect(0,0,width*2, height*2); 
    }
    
    // -------- FIN SEGUNDA PANTALLA -------
    
    
    
    
        ///////TERCERA PANTALLA///////
    
    if(tiempo>14 && tiempo<50){
     fill(255,255,255,tono/50);  
  rectMode(CENTER);
  noStroke();
  rect(width/2,height/2,width+tam2, height+tam2);
  if(aumenta){
        tono++;
      tam2++; } else {
        tono--;
      }
    }
      
  
  // bandera Francia con textos  
   if(tiempo>=17 && tiempo<= 26){
     textSize (width/20-5);
      fill(0,0,255,tono);
      textAlign(LEFT);
     text("Gaspar Noé", width/width+10,20+tam3);
        fill(255,255,255,tono);
          textAlign(CENTER);
     text("Denis Bedlow", width/2-5, 20+tam3);
        fill(255,0,0,tono);
        textAlign(RIGHT);
     text("Ken Yasumoto", width-10, 20+tam3);

    }
    
     if(tiempo>=19 && tiempo<=24.5){
         tam3++; }
         

   //------------FIN TERCERA PANTALLA ----------////
   
   
   
   /////// CUARTA PANTALLA //////
   if(tiempo>=30){
     fill(0,0,0,tono);  
  rectMode(CENTER);
  noStroke();
  rect(width/2,height/2,width, height);
   }
   
  ///////////// CREDITOS FINALES /////
  
  if(tiempo>= 32 && tiempo<=68){
  
  
  imageMode(CORNER);
  image(fondo,0,0,564,height);  
  
  //producción//
    textAlign(CENTER);
    fill(255);
    text("Produit par", width/2, height+tam3);
    textAlign(LEFT);
    text("Serge Catoire\nBrahim Chioua\nDanny Gabai\nRichard Grandpierre\nVincent Maraval\nMichel Merkt\nEddy Moretti\nGaspar Noé\nOlivier Pére\nEdouard Weil",
    10, 40+height+tam3);  // <-- X,Y del texto
    
    
    textAlign(RIGHT);
    text("Producteur délégué\nProducteur\nProducteur exécutif\nProducteur\nProducteur\nProducteur associé\nProducteur exécutif\nCoproducteur\nCoproducteur\nProducteur",
    width-10, 40+height+tam3);
    
     if(tiempo>=32){
      tam3--;
    }
  }
  
  if(tiempo>= 45 && tiempo<=63){
   
   
 //ACTORES ////
   fill(255);
   textAlign(CENTER);
   text("Cast", width/2, height+tam4);
  
  
   textAlign(RIGHT);
  text("Sofia Boutella\nRomain Guillermic\nSouheila Yacoub\nKiddy Smile\nClaude Gaian-Maull\nGiselle Palmer\nTaylor Kastle\nThea Carla Schott\nSharleen Temple\nLea Vlamos\nAlaia Alsafir\nKendall Mugler\nLakdhar Dridi\nAdrien Sissoko\nMamadou Bathily\nAlou Sidibé\n Ashley Biscette\nMounia Nassangar\nTiphanie Au\nSarah Belala\nAlexandre Moreau\nNaab\nStrauss Serpent\nVince Galliot Cumant", 
  10+ width/2, 40+height+tam4);
  
  
//PERSONAJES//
  textAlign(LEFT);
  text("  Selva\n  David\n  Lou\n  Daddy\n  Emmanuelle\n  Gazelle\n  Taylor\n  Pysche\n  Ivana\n  Lea\n  Alaia\n  Rocket\n  Riley\n  Omar\n  Bats\n  Alou\n  Ashley\n  Mounia\n  Sila\n  Sara\n  Cyborg\n  Naab\n  Strauss\n  Tito",
  10+width/2, 40+height+tam4); 
 
 if(tiempo>=40){
   tam4--;
 }
 
  }
  
  if(tiempo>=63 && tiempo<=70){
    fill(0);
    rectMode(CORNER);
    rect(0,0,width, height);
  }
  
  if(tiempo>=64 && tiempo<=67){
   imageMode(CENTER);
    image(vivre,width/2, height/2, 480, 200 );
  }
  
  
   
   if(tiempo>=72){
     
     
     /// BANDERA FRANCIA 
      noStroke();
    fill(0,0,255);                       //FRANJA AZUL
     rect(0, 0, width/4*2.5,height*2);  //FRANJA AZUL
     textAlign(LEFT);

     
     fill(255,255,255);      
     rectMode(CENTER);                        //FRANJA BLANCA
     rect(width/2, 0, width/4*1.5, height*2);  //FRANJA BLANCA

     
     rectMode(CORNER);
     fill(255,0,0);                        // FRANJA ROJA
     rect(width-width/4*1.3, 0, width, height*2); //FRANJA ROJA
    }
    
    if(tiempo>=72){
      fill(0);
      textAlign(CENTER);
      textSize(40);
      text("Reset", width/2, 100);
      fill(36,40,43);
   rect(150,170, 100, 50);
   fill(22,22,22);
   quad(150,220,   250,220,   260,240,   162,240);
   quad(250,170,   260,190,  260, 240, 250, 220);
 
   //BOTÓN
  
   fill(214,43,45);            //sombra del botón
   ellipse(205,195,25,25);
 
   fill(228,70,70);
   ellipse(203,192,25,25);
   
   
    }
   


}//cierre void draw

void mouseClicked(){
  float d1;
  int radio;
  
  d1 = dist(mouseX, mouseY, 203, 192);
  radio = 25/2;
  
  // ellipse(203,192,25,25);
  
  //REINICIO/////////////
  
  if(d1<radio){     
  fill(0);
  rect(0,0, width*2, height*2);
  frameCount = 0;
  tamLogo = 0;
  tam2 = 0;
  tam1 = 0;
  tam3 = 0;
  tam4 = 0;
  tono = 0;
  imageMode(CORNER);
  textAlign(LEFT);
  ancho = 0;   
}
  

  
}


// fin :)
