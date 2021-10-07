void Pelea1() {
  if ( estado.equals("Pelea1") ) {
    
    tint(255);
    image(imagenes[18], 0, 0, 800, 600);
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
  }
}
