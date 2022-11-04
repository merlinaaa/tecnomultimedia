/*IDEA
Juego REGAR PLANTAS ANTES DE LOS 20 SEGUNDOS    ->  tiempo?? no sé aún, quizas obstaculos (+ tiempo?)
MUCHAS PLANTAS DE DISTINTAS ALTURAS - REGARLAS HASTA LLEGAR A 10
SI TODAS LAS PLANTAS ESTAN REGADAS SE GANA EL JUEGO !!
 SI NO SE ALCANZAN A REGAR TODAS A TIEMPO, SE PIERDE.
 Al regar el tallo crece (cambia la posicion en Y). Para poder regarla
 el personaje debe estar al lado de la maceta y accionar el boton de regar.

 MOVIMIENTO: FLECHITAS
 REGAR: TECLA B

https://github.com/merlinaaa/tecnomultimedia/tree/tp5
 
*/

Plantas p1,p2;
Personaje player;
Fondo  f;
//Personaje player;
void setup(){
size(600,600);
p1 = new Plantas(color(0,0,215), width/2, height/2);
p2 = new Plantas(color(255,0,0), 100, 300);
player = new Personaje(width/2, height/2);
f      = new Fondo(0,0);
} //setup

void draw(){
//background(255);
f.fondoBackground();
p1.Crecimiento();  // movilidad del tallo planta AZUL
p1.Dibujar();      // dibujo de PLANTA AZUL
p2.Dibujar();      // lo mismo de arriba pero VERDE
p2.Crecimiento();  //lo mismo !


player.Sprite();              // imagenes cargadas (sprites de direcciones)
player.personajeQuieto();   //condicion para la imagen estatica de frente

} // draw

void keyPressed(){
player.personajeMover();



}
