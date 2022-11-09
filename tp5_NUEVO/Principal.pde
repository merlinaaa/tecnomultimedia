class Principal{
Personaje player;
Plantas p1,p2;
Pantallas pp;
Fondo   f;
  String estados;
  
  
  Principal(){
    estados = "inicio"; 
    player = new Personaje(width/2, height/2);
    p1 = new Plantas(color(0,0,215), width/2, height/2);
    p2 = new Plantas(color(255,0,0), 100, 300);
    pp = new Pantallas();
    f  = new Fondo(0,0);   
  }
  
  void cargaImagenes(){
  player.Sprite();
 // player.spritesRegar();
  }

  void dibujarPrincipal(){     
    println(estados);
   if( estados == "inicio"){
   f.fondo1();
   pp.pantallaInicio();
   }
   
   if( estados == "instrucciones"){
  
    }
  
  if( estados == "JUEGO"){
     f.fondo2();
     pp.pantallaJuego();
   //  player.personajeDibujar();
     
    
    // player.Sprite();
   }
    
  } //cierre dibujoPrincipal
  
  
 
  // eventos mouse y teclado
  void interactividadTeclado(){    
    player.eventoTeclas();
   // player.eventoRegar();
 // player.eventoRegar();
//  player.spritesRegar();
  }
  
  
  void interactividadMouse(){
 if(mouseY>460 && mouseY<500 && mouseX>116 && mouseX<477 && estados == "inicio"){
   estados = "JUEGO";
 }
  }
 
  
 
   //interactividad

} //cierre Clase
