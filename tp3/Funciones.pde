
void textosF(){
  fill(255);
      fontFutura = createFont("Futura Extra Black font.ttf", 32);
 textFont(fontFutura);
  textAlign(CENTER);
  textSize(60);
  textLeading(58);   //interlineado
  text("TRIANGULO\n MAGICO ", width/2, height/2-30);    //TITULO
  textSize(20);
  text("JUGAR", width/3, height-140);
  text("CÓMO\nJUGAR", width-width/3, height-150);
  textSize(12);
  text("Tecnología Multimedial I – Comisión 1 – 2022", width/2, height-20);
}


void juegoBase(){  //estructura base del juego
  stroke(255);
  strokeWeight(10);
  fill(0);
  triangle(/*IZQ*/ width/5, height/2+120, /*arriba*/width/2, height/4, width-width/5, height/2+120);
  strokeWeight(2);
  stroke(255);
  fill(100);
  //CIRCULOS GRISES
   circle(width/2, height/4, 90);           //ARRIBA
    circle(width/5, height/2+120, 90);       //IZQ
    circle(width-width/5, height/2+120, 90); //DER
  fill(255);
   textSize(40);
   text(valorArriba, width/2, height/4);
   text(valorIzq, width/5, height/2+120);
   text(valorDer, width-width/5, height/2+120);
   
  //circulos fijios, valores no modificables – AZULES
   fill(0,g1,b1);
  circle(width/3, height/2 , 90);        //IZQ
  fill(0,g2,b2);
  circle(width-width/3, height/2,90);   //DER
  fill(0,g3,b3);
  circle(width/2, height/2+120, 90);   //ABAJO
  textSize(40);
  fill(255);  
  textAlign(CENTER,CENTER);
  text("6", width/3, height/2);
  text("5", width-width/3, height/2);
  text("3",width/2, height/2+120);
  
  // cuenta regresiva
   noStroke();
   loadFont("ACaslonPro-Bold-48.vlw");
   fill(0);
   rect(0,0,70,70);
   fill(255);
   textSize(40);
   text(40-tiempo,35,30);
  } //cierre juego base
  

 
