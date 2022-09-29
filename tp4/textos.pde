class Textos{
  
   void MarcoASCII(){
    fill(255);
   textFont(mono);
   textSize(20);
   textAlign(LEFT);
 //IZQ ARRIBA
   text("$$$$$$$$$$$$$$$$$$$$\n$$$$$$$$$$\n$$$$$$$\n$$$$\n$$$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$", 0,20);
   text("mmmmmmmmmmmmmmmmmmmm\nmmmmmmmmmm\nmmmmmmm\nmmmm\nmmm\nm", 0,20);
 //IZQ ABAJO
   text("$\n$$$\n$$$$\n$$$$$$$\n$$$$$$$$$$\n$$$$$$$$$$$$$$$$$$$$", 0,height-110);
   text("m\nmmm\nmmmm\nmmmmmmm\nmmmmmmmmmm\nmmmmmmmmmmmmmmmmmmmm", 0,height-110);
   textAlign(RIGHT);
 //DER ABAJO
   text("$\n$$$\n$$$$\n$$$$$$$\n$$$$$$$$$$\n$$$$$$$$$$$$$$$$$$$$", width-1,height-110);
   text("m\nmmm\nmmmm\nmmmmmmm\nmmmmmmmmmm\nmmmmmmmmmmmmmmmmmmmm", width-1,height-110);
 //DER ARRIBA
   text("$$$$$$$$$$$$$$$$$$$$\n$$$$$$$$$$\n$$$$$$$\n$$$$\n$$$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$\n$", width,20);
    text("mmmmmmmmmmmmmmmmmmmm\nmmmmmmmmmm\nmmmmmmm\nmmmm\nmmm\nm", width,20);
   } //cierre void MarcoASCII
  
  void textoInicial(){
  textFont(makina);
  fill(255);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("Poemario",width/2,height/4);
  textSize(18);
  text("Elija una opción de la columna.\nReinicio con tecla R en cualquier momento.", width/2, height/2-80); 
  }
  
  void Botoncitos(){
    fill(255);
    text("a", width/6-30, height/2-5);
    text("b", width/6-30, height/2+28);
    text("c", width/6-30, height/2+58);
  }
  
 void Opciones(){
   fill(255);
   textAlign(RIGHT,CENTER);
  text("Idea Villariño", width/2-40, height/2-5);
  text("Alejandra Pizarnik", width/2+9, height/2+28);
  text("Walt Withman", width/2-50, height/2+58);

 }
 
   void textoComenzar(){
     textAlign(CENTER,CENTER);
     fill(0);
     text("COMENZAR", width/2,  height-height/5);
   }
   
 
   
   void PoemaWhitman(){
     d1.DibujoWhitman();
     fill(0);
     String whitman =  "Do I contradict myself? Very well then I contradict myself,\n(I am large, I contain multitudes)";
     text(whitman, mouseX, mouseY);
   } //cierre Pizarnik
   
 void PoemaPizarnik(){
   String linea1= "Mata su luz un fuego abandonado.\nSube su canto un pájaro enamorado.\nTantas criaturas ávidas en mi silencio";
   String linea2= "y esta pequeña lluvia que me acompaña";
   float x, y;
   float hr, vr;
   imageMode(CORNER);
    image(picFONDO,0,0,width,height);
    textAlign(LEFT,LEFT);
    hr = textWidth(linea2) ;
    vr = (textAscent() + textDescent()) / 2;
    noStroke();
    x = 30;
    y = height/1.22;
  
 if (abs(mouseX - x) < hr &&
      abs(mouseY - y) < vr) {
    x += random(-5, 5);
    y += random(-5, 5);
  }

  fill(255);
  text(linea1,30,height/1.5);
  text(linea2,x,y);
  textAlign(RIGHT);
  text("Alejandra Pizarnik", width-width/9, height/1.15);
 }  // cierre PoemaPizarnik

  
 void PoemaVillariño(){
   String villariño = "Ya no será,\nya no viviremos juntos, no criaré a tu hijo\nno coseré tu ropa,no te tendré de noche\nno te besaré al irme, nunca sabrás quién fui\npor qué me amaron otros.\n\nNo llegaré a saber por qué ni cómo, nunca\nni si era de verdad lo que dijiste que era\nni quién fuiste, ni qué fui para ti\nni cómo hubiera sido vivir juntos,\nquerernos, esperarnos, estar.\n\nYa no soy más que yo para siempre y tú\nya\nno serás para mí más que tú.\nYa no estás en un día futuro\nno sabré dónde vives, con quién\nni si te acuerdas.\n\nNo me abrazarás nunca como esa noche, nunca.\nNo volveré a tocarte.\nNo te veré morir.";
   int inverseX = width-mouseX;
   int inverseY = height-mouseY; 
     if(mouseX>width/2){
      textAlign(LEFT);
        } else {
      textAlign(RIGHT);
       }
    noStroke();
    fill(255, 204, mouseX, mouseY);
    tint(mouseY*0.5);
    imageMode(CENTER);
    image(picIV, mouseX, height/2, mouseY/2, mouseY/3);
    fill(255, 204);
    textSize(30-mouseY*0.05);
    text(villariño,inverseX, 50,(inverseY/2)+10);
       } //cierre Villariño
  
}
