void Botones(){
    float distancia1 = dist(mouseX,mouseY, width/6, height/2);
    float distancia2 = dist(mouseX, mouseY, width/6, height/2+30);
    float distancia3 = dist(mouseX, mouseY, width/6, height/2+60);
       int radio = 20/2;
   int boton1 = 0;
   int boton2 = 0;
   int boton3 = 0;
   
   boolean click1 = true;
   boolean click2 = true;
   boolean click3 = true;

   
 fill(0);
 stroke(255);

  if(distancia1<radio){          //pinta el circulito con solo tener el mouse encima
      boton1 = 255; 
    }
  
  if(distancia2<radio){      //lo mismo de arriba
    boton2 = 255; 
  }
  
if(distancia3<radio){     //lo mismo de arriba uwu
    boton3 = 255; 
  }
} //cierre botones

  void ComenzarCaja(){      //boton caja Comenzar
    if(mouseX>width/3 && mouseX<width/1.5 && mouseY>height/1.30 && mouseY<height/1.2){
   estado = "segunda pantalla";
    }
  }


  void cajaReinicio(){
    if(key == 'R' || key =='r'){
      estado = "inicio";
      click1 = true;
      click2 = true;
      click3 = true;
  }
}
