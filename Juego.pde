

class Juego {
  Background Background;

  Projectil[] projectil;
  Projectil2[] projectil2;
  Projectil3[] projectil3;
  Enemigo[] enemigo;
  int sx = 400;
  int sy = 500;
  int ys = 100;
  int xs = 200;
  int VictoriaT = 0;
  int DerrotaT = 0;
  int puntos = 0;
  int cantEnemigo;
  int cantProjectil3;
  int cantProjectil2;
  int cantProjectil; //Los proyectiles, tu principal enemigo.
  Personaje personaje;
  Personaje2 personaje2;
  Espada espada;
  int cant; //Cantidad de pantallas que se van a cargar en el juego.
  String estado; //Funcion para llamar a las pantallas y determinar en que momento del juego estas. Menu, Juego, Ganaste, Perdiste.
  int pantalla; //Gestor de que pantalla es colocada en el programa.
  int vidas=10; //Los puntos se restan cuando te golpean las lanzas, más valor, más vidas.
  int timer=0; //Aumetar el valor, va a reducir la cantidad de tiempo necesario para ganar, reducir su valor a negativos va a hacer lo contrario.
  PFont font;
  PImage img;
  

  Juego(int cant_) {
    cant = cant_;
    
    estado = "menu";
    cantProjectil = 15;
    cantProjectil2 = 5;
    cantProjectil3 = 5;
    cantEnemigo = 1;
    Background = new Background();
    personaje = new Personaje();
    personaje2 = new Personaje2();
    espada = new Espada();
    projectil = new Projectil[cantProjectil];
    projectil2 = new Projectil2[cantProjectil2];
    projectil3 = new Projectil3[cantProjectil3];
    enemigo = new Enemigo[cantEnemigo];
    
   /////////////////////////////////////////////////////////////
    
    for (int i=0; i<cantProjectil; i++ ) {
      projectil[i] = new Projectil();
      
    }
    for (int i=0; i<cantProjectil2; i++ ) {
      projectil2[i] = new Projectil2();
      
    }
    
    for (int i=0; i<cantProjectil3; i++ ) {
      projectil3[i] = new Projectil3();
      
    }
     for (int i=0; i<cantEnemigo; i++ ) {
      enemigo[i] = new Enemigo();
      
    }
  }

  /////////////////////////////////////////////////////////////////
  
  void draw_() {
    if(DerrotaT == 4){
    estado = "DerrotaTotal";}
    if(VictoriaT == 4){
    estado = "Hercules";}
    
    Background.draw_(pantalla);
    
    //True menu
    if ( estado.equals("menu") ) {
    
    tint(255);
    pantalla = 19;
    image(MarcoTexto, 37, 15, 725, 470);
    textAlign(CENTER);
    //60,60 parametros correctos de donde empieza el texto
    textSize(16);
    text( "Presione ENTER para continuar", width/2, 75);
    text( "Sos un gladiador en busqueda de libertad.", width/2, 105);
    textSize(14);
    text( "Te capturaron como esclavo, y te obligaron a luchar", width/2, 135);
    text( "La experticia en las armas siempre fue tu fuerte", width/2, 155);
    text( "la tribuna enloquece, esperando tu llegada", width/2, 175);
    text( "solo 5 combates, y se te otorgara la libertad.", width/2, 195);
    text( "Elige cuidadosamente cual sera tu arma", width/2, 215);
    text( "de una selección de 4...", width/2, 235);
    text( "La tribuna se impacienta y se oye a un presentador", width/2, 275);
    text( "Aclaman tu nombre, quieren verte pelear", width/2, 315);
    text( "Presione las teclas del teclado", width/2, 335);
    text( "que figura como en el ejemplo 'A)'.", width/2, 355);

    text( "Ejemplo:", width/2, 390);
    text( "A) El espadon, es un arma de gran alcance, letal.", width/2, 410);
    
    text( "Gana 4 combates para enfrentarte al campeón", width/2, 440);
    text( "Pierde 4 combates y moriras en la arena", width/2, 460);
    
    if(key == ENTER){
    estado = "eleccion";}
  }
  
  if (estado.equals("eleccion") ) {
    pantalla = 18;
    
    tint(255);
    
    image(MarcoTexto, 37, 250, 725, 160);
    //90 en X
    fill(0);
    textSize(16);
    text( "¿Con  que arma pelearas?", width/2, 280);
    text( "Q) Una lanza", width/2-200, 340);
    text( "W) Un espadon", width/2+200, 340);
    text( "E) Un arco", width/2+200, 380);
    text( "R) Espada y escudo", width/2-200, 380);
    
    if(key == 'W' || key == 'w'){
      estado = "menuJuegoW";
    }
    if(key == 'Q' || key == 'q'){
      estado = "menuJuegoQ";
    }
    if(key == 'E' || key == 'e'){
      estado = "menuJuegoE";
    }
    if(key == 'R' || key == 'r'){
      estado = "menuJuegoR";
    }
 
}
  
    /////////////////// AGAMENON /////////////////////////////////
    
    if(estado.equals("menuJuegoW")){
      pantalla = 2;
        tint(255);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Agamenon", width/2, 280);
    text( "Rey de Micenas, y un gran ego", width/2, 320);
    text( "pero como guerrero no es ningun enclenque", width/2, 340);
    text( "X) Esquivarlo, se cansara.", width/2-200, 390);
    text( "S) Contratacar, esta muy creído.", width/2+150, 390);
      
      
      
    if(key == 'S' || key == 's'){ 
    estado = "juego3menu";}
    if(key == 'X' || key == 'x'){ 
    estado = "perdiste";
  DerrotaT = DerrotaT +1;}
    }
    if (estado.equals("juego3menu") ) {
    tint(255);
    pantalla = 22;
    image(MarcoTexto, 37, 250, 725, 160);
    textSize(16);
    text( "Presiona A, S, D, para reducir el escudo asi derrotarlo", width/2, 275);
    text( "", width/2, 295);
    text( "tienes un limite de tiempo", width/2, height/2);
    text( "", width/2, 360);
    text( "ENTER para continuar", width/2, 380);
    if(key == ENTER){
    estado = "juego3";
     timer = 0;}
  }
    
    if (estado.equals("VictoriaAgamenon") ) {
    tint(255);
    pantalla = 7;
    image(MarcoTexto, 37, 250, 725, 160);
    textSize(16);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "Lograste vencer", width/2, height/2);
    text( "", width/2, 360);
    text( "pero aún no eres el campeón... (ENTER)", width/2, 380);
    if(key == ENTER){
    estado = "eleccion";}
  }
  
  if ( estado.equals("DerrotaAgamenon")){
  tint(255);
    pantalla = 10;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 320);
    
    text( "Fuiste herido en combate", width/2, 340);
    text( "aún te puedes levantar... (ENTER)", width/2, 360);
    text( "", width/2, 400);
    if(key == ENTER){
    estado = "eleccion";}
   
}
  /////////////////// FIN AGAMENON /////////////////////////////////
  
  /////////////////// ULISES /////////////////////////////////
    
    if(estado.equals("menuJuegoQ")){
      pantalla = 1;
      tint(255);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Ulises", width/2, 280);
    text( "Rey de Itaca", width/2, 320);
    text( "es un contrincante paciente y preciso", width/2, 340);
    text( "Z) Cargar, no hay que dar tiempo", width/2-200, 390);
    text( "A) Esperarlo... es un juego mental", width/2+150, 390);
      pushStyle();
      fill(0);
      
      popStyle();
    if(key == 'Z' || key == 'z'){
    estado = "juego4menu";}
     if(key == 'A' || key == 'a'){
     estado = "perdiste";
   DerrotaT = DerrotaT +1;}
    }
    if (estado.equals("juego4menu") ) {
    tint(255);
    pantalla = 22;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Mueve el cursor para golpear a Ulises", width/2, 275);
    text( "", width/2, 295);
    text( "tienes un limite de tiempo", width/2, height/2);
    text( "", width/2, 360);
    text( "ENTER para continuar", width/2, 380);
    if(key == ENTER){
    estado = "juego4";
     timer = 0;}
  }
    
   if (estado.equals("VictoriaUlises")) {
    tint(255);
    pantalla = 7;
    puntos = 0;
    timer = 0;
    vidas = 10;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "Lograste vencer", width/2, height/2);
    text( "", width/2, 360);
    text( "pero aún no eres el campeón... (ENTER)", width/2, 380);
    if(key == ENTER){
    estado = "eleccion";}
  }
  
  /*if ( estado.equals("DerrotaUlises")){
  tint(255);
    pantalla = 12;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 320);
    
    text( "Fuiste herido en combate", width/2, 340);
    text( "aún te puedes levantar... (ENTER)", width/2, 360);
    text( "", width/2, 400);
    if(key == ENTER){
    estado = "eleccion";}*/
    


//////////////////// FIN ULISES //////////////////////////////////
  
  
    
/////////////////// HECATE ///////////////////////////////// 
    
     if (estado.equals("menuJuegoR") ) {
    tint(255);
    pantalla = 4;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Hecate", width/2, 280);
    text( "La unica figura femenina en la arena", width/2, 320);
    text( "no se sabé nada de ella... ni de su origen", width/2, 340);
    text( "F) Abandonar la defensiva, y atacar.", width/2-200, 390);
    text( "V) Aguantar sus golpes hasta cansancio.", width/2+150, 390);
    if(key == 'F' || key == 'f'){
      estado = "juego2menu";
    timer = 0;}
    if(key == 'v' || key == 'V'){
    estado = "perdiste";
  DerrotaT = DerrotaT +1;}
  
}
if (estado.equals("juego2menu") ) {
    tint(255);
    pantalla = 22;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Esquiva con las flechas de arriba y abajo las dagas.", width/2, 275);
    text( "", width/2, 295);
    text( "tienes vidas, si llegas al final, ganas.", width/2, height/2);
    text( "", width/2, 360);
    text( "ENTER para continuar", width/2, 380);
    if(key == ENTER){
    estado = "juego2";
     timer = 0;}
  }
if (estado.equals("VictoriaHecate") ) {
      tint(255);
    pantalla = 20;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "Lograste vencer", width/2, height/2);
    text( "", width/2, 360);
    text( "pero aún no eres el campeón... (ENTER)", width/2, 380);
    if(key == ENTER){
    estado = "eleccion";}
    
  }
  if ( estado.equals("DerrotaHecate")){
   tint(255);
    pantalla = 11;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 320);
    
    text( "Fuiste herido en combate", width/2, 340);
    text( "aún te puedes levantar... (ENTER)", width/2, 360);
    text( "", width/2, 400);
    if(key == ENTER){
    estado = "eleccion";}
   }
  
  
/////////////////// FIN HECATE /////////////////////////////////

/////////////////// VOLNIR ///////////////////////////////// 

if (estado.equals("menuJuegoE")){
    tint(255);
    pantalla = 3;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Volnir", width/2, 280);
    text( "Un nordico obsesionado con la historia de Aquiles,", width/2, 320);
    text( "tiene una feroz carga, muy impulsivo.", width/2, 340);
    text( "D) Esperar a un disparo unico.", width/2-200, 390);
    text( "C) Disparar tus flechas sin descanso.", width/2+150, 390);
    if(key == 'D' || key == 'd'){ 
    estado = "juego1menu";}
    if(key == 'C' || key == 'c'){ 
    estado = "perdiste";
  DerrotaT = DerrotaT +1;}
    
  }
  if (estado.equals("juego1menu") ) {
    tint(255);
    pantalla = 22;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Esquiva las lanzas de Volnir para dar un golpe certero", width/2, 275);
    text( "", width/2, 295);
    text( "solo es cuestion de tiempo, tienes vidas.", width/2, height/2);
    text( "", width/2, 360);
    text( "ENTER para continuar", width/2, 380);
    if(key == ENTER){
    estado = "juego";
     timer = 0;}
  }
  if (estado.equals("VictoriaVolnir") ) {
    tint(255);
    pantalla = 6;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "Lograste vencer", width/2, height/2);
    text( "", width/2, 360);
    text( "pero aún no eres el campeón... (ENTER)", width/2, 380);
    if(key == ENTER){
    estado = "eleccion";}
  }
  if (estado.equals("DerrotaVolnir") ) {
    tint(255);
    pantalla = 9;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 320);
    
    text( "Fuiste herido en combate", width/2, 340);
    text( "aún te puedes levantar... (ENTER)", width/2, 360);
    text( "", width/2, 400);
    if(key == ENTER){
    estado = "eleccion";}
  }
  
  
  /////////////////// FIN VOLNIR ///////////////////////////////// 
  
  
/////////////////// HERCULES ///////////////////////////////// 
if ( estado.equals("Hercules")){
    tint(255);
    pantalla = 14;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra ¡Hercules!", width/2, 280);
    text( "Campeón actual de la arena", width/2, 320);
    text( "reconocido por su gran fuerza y proezas", width/2, 340);
    text( "J) Huir, no quiero morir!", width/2-200, 370);
    text( "K) Esquivar sus ataques, y contratacar", width/2+150, 370);
    text( "H) Atacar primero y agresivamente", width/2, 390);
    if(key == 'J' || key == 'j'){ 
    estado = "DerrotaHercules2";}
    if(key == 'K' || key == 'k'){ 
    estado = "VictoriaHercules";}
    if(key == 'H' || key == 'h'){ 
    estado = "DerrotaHercules1";}
}

if ( estado.equals("DerrotaHercules1")){
  tint(255);
    pantalla = 16;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "Te molieron a golpes", width/2, height/2);
    text( "", width/2, 360);
    text( "volver a empezar... (BACKSPACE)", width/2, 380);
    if(key == ENTER){
    estado = "Hercules";}
    
}

if ( estado.equals("DerrotaHercules2")){
  tint(255);
    pantalla = 17;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "Huiste como un cobarde", width/2, height/2);
    text( "", width/2, 360);
    text( "volver a empezar... (BACKSPACE)", width/2, 380);
    if(key == ENTER){
    estado = "Hercules";}
    
}

if (estado.equals("VictoriaHercules") ) {
    tint(255);
    pantalla = 13;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "LOGRASTE VENCER A HERCULES", width/2, height/2);
    text( "", width/2, 360);
    text( "CAMINA HACÍA LA GLORIA Y LA LIBERTAD, GLADIADOR.", width/2, 360);
    
    text( "CONTINUAR (TAB)", width/2, 390);
    if(key == TAB){
    estado = "VictoriaTotal";}
  }

/////////////////// FIN HERCULES /////////////////////////////////

/////////////////// FINALES /////////////////////////////////
if ( estado.equals("MenuSecreto")){
  tint(255);
    pantalla = 5;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "¡GANASTE 4 COMBATES SEGUIDOS!", width/2, height/2);
    text( "", width/2, 360);
    text( "Tu siguiente oponente es... (G)", width/2, 380);
    
}

/////////////////// VICTORIA TOTAL /////////////////////////////////

if ( estado.equals("VictoriaTotal")){
    tint(255);
    pantalla = 15;
    VictoriaT = 0;
    DerrotaT = 0;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "FELICIDADES GLADIADOR, GANASTE TU LIBERTAD", width/2, height/2);
    text( "", width/2, 340);
    text( "VOLVER A JUGAR (BACKSPACE)", width/2, 360);
    if(key == BACKSPACE){
    estado = "menu";}
}


////////////////////////////////////////////////////////////////////////////

/////////////////// DERROTA TOTAL /////////////////////////////////


if ( estado.equals("DerrotaTotal")){
   tint(255);
    pantalla = 8;
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 320);
    
    text( "MORISTE EN COMBATE", width/2, 340);
    text( "RETRY (BACKSPACE)", width/2, 380);
    text( "", width/2, 400);
    if(key == BACKSPACE){
    estado = "menu";
  DerrotaT = 0;
VictoriaT = 0;}
   }
   
////////////////////////////////////////////////////////////////////////////








///////////////////////////// JUEGOS    ////////////////////////////////


/// 1
      
    if(estado.equals("juego")){
      
      pantalla = 24;
      timer++;
      colision();
      personaje.draw_();
      
      
      textSize(25);
      fill(0);
      text("Vidas", width-100, height-550);
      text(vidas, width-150, height-550);
      text(timer, width-50, height-30);
      
      //se puede cambiar los valores de las condiciones de victoria derrota con ambos valores
      
      if(timer>2300){  // Condicion victoria
      estado = "VictoriaVolnir";
    VictoriaT = VictoriaT +1;}
      if(vidas<=0){  //Condicion derrota
      estado = "DerrotaVolnir";
    DerrotaT = DerrotaT +1;}
      }
      
///////////////////////////////////////////////////////////////////////////////
      
/// 2


if(estado.equals("juego2")){
      
      pantalla = 24;
      colision2();
      colision3();
      personaje2.draw_();
      
      
      textSize(25);
      fill(0);
      text("Vidas", width-100, height-550);
      text(vidas, width-150, height-550);

      
      //se puede cambiar los valores de las condiciones de victoria derrota con ambos valores
      
      if(personaje2.mx>825){  // Condicion victoria
      estado = "VictoriaHecate";
    VictoriaT = VictoriaT +1;}
      if(vidas<=0){  //Condicion derrota
      estado = "DerrotaHecate";
    DerrotaT = DerrotaT +1;}
      }
      
      
 ///////////////////////////////////////
 
 
 
 /// 3
 
 if(estado.equals("juego3")){
      
      pantalla = 24;
      img = loadImage("shield.png");
      image(img,xs,ys,sx+75,sy);
      textSize(25);
      fill(0);
      text(timer, width-50, height-30);
      timer++;
      
      
    //  if(key == 'a' || key == 'A' || key == 'S' || key == 's' || key == 'd' || key == 'D'){
    //    sx = sx - 5;
    //    sy = sy - 5;    
    //    xs = xs + 2;
    //    ys = ys + 2;
      
    //}
        
    
        
        if(sx<100){
        estado = "VictoriaAgamenon";
        VictoriaT = VictoriaT +1;
      sx = 200;
      sy = 300;}
      if(timer>200){  // Condicion victoria
      estado = "DerrotaAgamenon";
    DerrotaT = DerrotaT +1;}

   
     
      }
 
 //////////////////////////////////////////////////////////////////
 
 /// 4
 
 if(estado.equals("juego4")){
      
      pantalla = 24;
      timer++;
      colision4();
      espada.draw_();
      
      
      
      textSize(25);
      fill(0);
      text(puntos, width-50, height-30);
      
      //se puede cambiar los valores de las condiciones de victoria derrota con ambos valores
      
      if(puntos>20){  // Condicion victoria
      estado = "VictoriaUlises";
    puntos = 0;
  VictoriaT = VictoriaT +1;}
      if(timer>1000){  //Condicion derrota
      estado = "perdiste";
    puntos = 0;
  timer = 0;
DerrotaT = DerrotaT +1;}
      }
 
 
 
 
 
 ///////////////////////////////////////////////////////////////
      
    if(estado.equals("perdiste")){
      pantalla = 12;
     image(MarcoTexto, 150, 150, width-300, height-300);
     pushStyle();
     textSize(40);
     fill(255);
     text("PERDISTE", width/2,height/2);
     popStyle();
    
     pushStyle();
      fill(0);
      textSize (20);
      text ("Presiona BACKSPACE para continuar",width/2,height/2+100);
      
      popStyle();
      vidas = 10;
      timer = 0;
      if(key == BACKSPACE){
      estado = "eleccion";}
    }
    if(estado.equals("ganaste")){
    pantalla = 6;
   
    image(MarcoTexto, 150, 150, width-300, height-300);
    pushStyle();
    textSize(40);
    fill(255);
     text("GANASTE", width/2,height/2);
     popStyle();
    
    pushStyle();
      fill(0);
      textSize (20);
      text ("Presiona BACKSPACE para continuar",width/2,height/2+100);
      
      popStyle();
    vidas = 10;
    timer = 0;
  if(key == BACKSPACE){
  estado = "eleccion";}
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
  
  //// Personaje2 Colision
  void colision2(){
    for (int i=0; i<cantProjectil2; i++ ) {
      projectil2[i].draw_();

      if ( projectil2[i].colision2(personaje2.mx, personaje2.my, personaje2.ancho, personaje2.alto) ) {
        vidas--;
        personaje2.mx = personaje2.mx - 100;
      }
     
    }
  }
  void colision3(){
    for (int i=0; i<cantProjectil2; i++ ) {
      projectil3[i].draw_();

      if ( projectil3[i].colision3(personaje2.mx, personaje2.my, personaje2.ancho, personaje2.alto) ) {
        vidas--;
        personaje2.mx = personaje2.mx - 100;
      }
     
    }
  }
  void colision4(){
    for (int i=0; i<cantEnemigo; i++ ) {
      enemigo[i].draw_();

      if ( enemigo[i].colision4(mouseX, mouseY, espada.ancho, espada.alto) ) {
        puntos++;
       println(puntos);
      }
     
    }
  }

///////////////////////////////////////////////////////////////////
  

  void keyPressed_() {
    if(key == 'a' || key == 'A' || key == 'S' || key == 's' || key == 'd' || key == 'D'){
        sx = sx - 5;
        sy = sy - 5;    
        xs = xs + 2;
        ys = ys + 2;
      
    }
  }
}
