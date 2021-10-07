void teclas() {

  /*INTRODUCCION*/
  if (estado.equals("Pelea1")) {
    if (key == ENTER) {
      estado = "Pelea2";
    }
  }
  
  //////////////////////////////////////////
  
  /*MENU DEL COLISEO*/
  if (estado.equals("Pelea2")) {
    if (key == 'Q' || key == 'q') {
      estado = "Pelea6";
    } else if (key == 'W' || key == 'w') {
      estado = "Pelea4";
    } else  if (key == 'E'|| key == 'e') {
      estado = "Pelea3";
    }
    else if (key == 'R' || key == 'r') {
      estado = "Pelea5";
  }
  }
 ///////////////////////////////////////////

/*PELEAS*/

/* Volnir (X) */
  if (estado.equals("Pelea3")) {
    if ( key == 'D' || key == 'd' ) {
      estado = "Pelea7";
    } else if ( keyCode == 'C' || key == 'c') {
      estado = "Pelea11";
    }
  }
  
  /* Agamenon (X) */
  if (estado.equals("Pelea4")) {
    if ( key == 'S' || key == 's' ) {
      estado = "Pelea8";
    } else if ( keyCode == 'X' || key == 'x') {
      estado = "Pelea12";
    }

  }
  
  /* Hecate (X) */
   if (estado.equals("Pelea5")) {
    if ( key == 'F' || key == 'f' ) {
      estado = "Pelea9";
    } else if ( keyCode == 'V' || key == 'v') {
      estado = "Pelea13";
    }
  }
  
  /* Ulises  (X) */
  if ( estado.equals("Pelea6")) {
  if ( key == 'A' || key == 'a' ) {
      estado = "Pelea10";
    } else if ( keyCode == 'Z' || key == 'z') {
      estado = "Pelea14";
    }
    }
    
   /*Hercules (X) */
   if (estado.equals("Pelea16")){
    if ( key == 'J' || key == 'j' ) {
      estado = "Pelea17";
    } else if ( keyCode == 'K' || key == 'k') {
      estado = "Pelea19";
    }
    else if ( keyCode == 'H' || key == 'h') {
      estado = "Pelea18";
    }
  }
  
  
/////////////////////////////////////
  
 /* VICTORIAS */
 
 /*Victoria vs. Volnir*/
  if (estado.equals("Pelea7")) {
   
    if (key == ENTER) {
      estado = "Pelea2";
    }
}
 /*Victoria vs. Agamenon*/

if (estado.equals("Pelea8")) {
    if (key == ENTER) {
      estado = "Pelea2";
    }
  }
  
  /* Victoria vs. Hecate*/ 
  
   if (estado.equals("Pelea9")) {
   if (key == ENTER) {
      estado = "Pelea2";
    }
  }
  
  
  /*Victoria vs. Ulises*/
  
  if ( estado.equals("Pelea10")) {
    if (key == ENTER) {
      estado = "Pelea2";
    }

  }
  
/////////////////////////////////////
  

/*DERROTAS*/
 
  
/*Derrota vs. Volnir*/

  if (estado.equals("Pelea11")) {
    if (key == ENTER) {
      estado = "Pelea2";
    }  
  }
  
  /*Derrota vs. Agamenon*/

  if (estado.equals("Pelea12")) {
    if (key == ENTER) {
      estado = "Pelea2";
    }
    
  }
  
  /*Derrota vs. Hecate*/
  
  
  if (estado.equals("Pelea13")){
    if (key == ENTER) {
      estado = "Pelea2";
    }

  }
  
  /*Derrota vs. Ulises*/
  
  if (estado.equals("Pelea14")){
    if (key == ENTER) {
      estado = "Pelea2";
    }

  }
  
  
  /*VICTORIA VERDADERA*/
  
   if (estado.equals("Pelea15")){
    if(key == BACKSPACE){
  estado = "Pelea1";
}
  }
  
  /////////////////////////////////////////////
  /*HERCULES DERROTA*/
  
  if (estado.equals("Pelea17")){
    if (key == BACKSPACE) {
      estado = "Pelea1";
    }

  }
  
  
  if (estado.equals("Pelea18")){
    if (key == BACKSPACE) {
      estado = "Pelea1";
    }

  }
  
  
  
  /*HERCULES VICTORIA*/
if (estado.equals("Pelea19")){
    if (key == TAB) {
      estado = "Pelea15";
    }

  }
  
  /*DERROTA TOTAL*/
  
  if (estado.equals("Pelea20")){
    if(key == BACKSPACE){
  estado = "Pelea1";
}
  }
  
  /*Combate secreto pantalla*/
  
  if (estado.equals("Pelea21")){
    if(key == 'G' || key == 'g'){
  estado = "Pelea16";
}
  }
  
 
  
  if(key == 'D' || key == 'd'){
    contador++;}
    if(key == 'F' || key == 'f'){
    contador++;}
    if(key == 'S' || key == 's'){
    contador++;}
    if(key == 'A' || key == 'a'){
    contador++;}
    if(key == 'C' || key == 'c'){
    contador2--;}
    if(key == 'V' || key == 'v'){
    contador2--;}
    if(key == 'x' || key == 'X'){
    contador2--;}
    if(key == 'Z' || key == 'z'){
    contador2--;}
    if (contador == 4) {
    estado = "Pelea21";
  contador = 0;}
    if (contador2 == -4){
      estado = "Pelea20";
    contador2 = 0;}
  
  //Reset contadores
 if(key == '0'){
   contador = 0;
   contador2 = 0;
 }
      
}
