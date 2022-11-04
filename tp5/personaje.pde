class Personaje{      // FALTA: sprite REGAR con tecla B.
int maxImages = 3;
PImage[] derecha   = new PImage[maxImages];
PImage[] izquierda = new PImage[maxImages];
PImage[] arriba    = new PImage[maxImages];
PImage[] abajo     = new PImage[maxImages];
PImage frente;
int imageIndex = 0;
int posx, posy;
boolean tranki = false;


 Personaje(int _posx, int _posy){
  posx = _posx;
  posy = _posy;   
 }
   
   void personajeQuieto(){
     if(tranki == false){
  image(frente, posx,posy);
  }
  if(keyPressed){
    tranki = true;
  } else {
   tranki = false; 
  }
  
  /*
  if(keyCode == 'b'){   //<-- intento de lograr que el personaje
  tranki = false;      // no desaparezca al apretar B !!
   }*/
   
   }//cierre quieto
   
  void Sprite(){      //FALTA SPRITE REGAR DIST. DIRECCIONES (U,D,L,R)
   for(int i = 0; i < derecha.length; i++){
    derecha[i] = loadImage("derecha"+i+".png");
    } //for derecha
  
   for(int i2 = 0; i2 < izquierda.length; i2++){
    izquierda[i2] = loadImage("left"+i2+".png");
   } //for Izquierda 
 
   for(int i3 = 0; i3 < arriba.length; i3++){
    arriba[i3] = loadImage("up"+i3+".png");
   }
 
   for(int i4 = 0; i4 < abajo.length; i4++){
    abajo[i4] = loadImage("front"+i4+".png");
   }
  
  frente = loadImage("front0.png");
} //cierre void SPRITE


void personajeMover(){      //FALTA arreglar velocidad del pasaje de frames(destello??)
 
 if(key == CODED){
    if(keyCode == RIGHT){
      image(derecha[imageIndex],posx,posy);
   imageIndex = (imageIndex+1)%derecha.length;
   posx = posx+4;

    }//cierre RIGHT
    
    if(keyCode== LEFT){
      posx = posx-4;
      image(izquierda[imageIndex],posx, posy);
      imageIndex = (imageIndex+1)%izquierda.length;    
     
    }//cierre IZQUIERDA
    
    if(keyCode == DOWN){
      image(abajo[imageIndex], posx, posy);
      imageIndex = (imageIndex+1)%abajo.length;
      posy = posy+4;
    
    } //cierre abajo
    
    
    if(keyCode == UP){
      image(arriba[imageIndex], posx, posy);
      imageIndex = (imageIndex+1)%arriba.length;
      posy = posy-4;    
 
  }     //cierre arriba
    
  }//cierre CODED

} // cierre void personajeMover

   } //cierre PERSONAJES CLASS
