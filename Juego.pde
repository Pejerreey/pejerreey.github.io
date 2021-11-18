

class Juego {
  Background Background;

  Projectil[] projectil;
  int cantProjectil; //Los proyectiles, tu principal enemigo.
  Personaje personaje;
  int cant; //Cantidad de pantallas que se van a cargar en el juego.
  String estado; //Funcion para llamar a las pantallas y determinar en que momento del juego estas. Menu, Juego, Ganaste, Perdiste.
  int pantalla; //Gestor de que pantalla es colocada en el programa.
  int vidas=10; //Los puntos se restan cuando te golpean las lanzas, más valor, más vidas.
  int timer=0; //Aumetar el valor, va a reducir la cantidad de tiempo necesario para ganar, reducir su valor a negativos va a hacer lo contrario.
  PFont font;
  

  Juego(int cant_) {
    cant = cant_;
    
    estado = "menu";
    cantProjectil = 15;
    Background = new Background();
    personaje = new Personaje();
    projectil = new Projectil[cantProjectil];
    for (int i=0; i<cantProjectil; i++ ) {
      projectil[i] = new Projectil();
      
    }
    //personaje = new Personaje();
  }

  //
  void draw_() {
    
    Background.draw_(pantalla);
    
    
    if(estado.equals("menu")){
      pantalla = 0;
      image(MarcoTexto, 100, 100, width-200, height-200);
      textSize(20);
      text ("Aquiles te esta arrojando lanzas",width/2-165,height/2-100);
      text ("no dejes que te impacten! tienes 10 vidas",width/2-190,height/2-75);
      text ("Esquiva las lanzas hasta que se canse",width/2-185,height/2-30);
      text ("Puedes esquivar verticalmente",width/2-155,height/2+50);
      text ("usando las flechas ARRIBA y ABAJO del teclado",width/2-230,height/2+75);
      pushStyle();
      fill(0);
      textSize (25);
      text ("Presiona ENTER para continuar",width/2-185,height/2+150);
      
      popStyle();
      if(key == ENTER){
      estado = "juego";
    timer = 0;}
    }
      
    if(estado.equals("juego")){
      
      pantalla = 1;
      timer++;
      colision();
      personaje.draw_();
      
      textSize(25);
      fill(0);
      text("Vidas", width-100, height-550);
      text(vidas, width-150, height-550);
      text(timer, width-50, height-30);
      
      //se puede cambiar los valores de las condiciones de victoria derrota con ambos valores
      
      if(timer>2500){  // Condicion victoria
      estado = "ganaste";}
      if(vidas<=0){  //Condicion derrota
      estado = "perdiste";}
      }
      
    if(estado.equals("perdiste")){
      pantalla = 2;
     image(MarcoTexto, 150, 150, width-300, height-300);
     pushStyle();
     textSize(40);
     fill(255);
     text("PERDISTE", width/2-85,height/2);
     popStyle();
    
     pushStyle();
      fill(0);
      textSize (25);
      text ("Presiona BACKSPACE para continuar",width/2-215,height/2+100);
      
      popStyle();
      vidas = 10;
      timer = 0;
      if(key == BACKSPACE){
      estado = "menu";}
    }
    if(estado.equals("ganaste")){
    pantalla = 3;
   
    image(MarcoTexto, 150, 150, width-300, height-300);
    pushStyle();
    textSize(40);
    fill(255);
     text("GANASTE", width/2-85,height/2);
     popStyle();
    
    pushStyle();
      fill(0);
      textSize (25);
      text ("Presiona BACKSPACE para continuar",width/2-215,height/2+100);
      
      popStyle();
    vidas = 10;
    timer = 0;
  if(key == BACKSPACE){
  estado = "menu";}
}
    
 
    
      
  }
  void colision(){
    for (int i=0; i<cantProjectil; i++ ) {
      projectil[i].draw_();

      if ( projectil[i].colision(personaje.mx, personaje.my, personaje.ancho, personaje.alto) ) {
        vidas--;
      }
     
    }
  }
  


  

  void keyPressed_() {
  }
}
