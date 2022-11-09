class Fondo{
  int x, y;
  
  Fondo(int xF, int yF){
    x = xF;
    y = yF;
  }
  
  
  void fondo1(){
  fill(255,0,0);
 // rectMode(CORNER);
  rect(0,0, width*2, height);
  }
  
  void fondo2(){
  fill(0,255,0);
  rect(0,0, width, height);
  }




}
