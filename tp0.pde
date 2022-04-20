//José Luis Bugiolachi
//COM.1
//Merlina Farías Jomñuk

void setup(){
  size(500,500);
}

void draw(){
  println(mouseX, mouseY);
  noStroke();
  
  // –––––CAJA ROJA–––––
  fill(255,0,0);
  rect(150,134,200,300);
  
  //-----CAJA BLANCO-----
  fill(255,255,255);
      rect(150,270,200,165);
      triangle(150,270,245,204,350,270);
  
  //----caja texto ----
  noFill();
  stroke(0);
  strokeWeight(10);
  rect(155,350,190,90);
  
  fill(0);
  textSize(20);
  text("TECNOLOGÍA",195,380);
  textSize(19);
  text("comisión 1",205,400);
  textSize(15);
  text("Merlina Farías Jomñuk",180 ,430);
  
  //--------Cigarrillo--------
  
  noStroke();
  fill(255,255,255);
  rect(398,134,20,300,5);
  fill(241,241,241);
  rect(398,347,20,100);
  fill(71,56,108);
  circle(408,388,10);
  fill(88,94,46);
  circle(408,420,10);
} 
