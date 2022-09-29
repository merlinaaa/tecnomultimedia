class Pantallas{
 
  void Inicio(){
    background(0);
    t1.MarcoASCII();
    t1.textoInicial();
    d1.CirculoChoice();
    }
    
    void Comienzo(){
    t1.MarcoASCII();
    t1.textoInicial();
    d1.CirculoChoice();
     d1.Comenzar();
     t1.textoComenzar();
 }
 
   void SegundaClick1(){
     click2 = true;
     click3 = true;
     
     t1.PoemaVillariño();
     d1.Nombre();
    
   }
    
   void SegundaClick2(){
      click1 = true;
      click3 = true;
      t1.PoemaPizarnik();
   }
   
   void SegundaClick3(){
    click1 = true;
    click2 = true;
    t1.PoemaWhitman();
 }
    

  } //cierre class pantallas
