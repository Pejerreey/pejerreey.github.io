void Pelea5() {
  if (estado.equals("Pelea5") ) {
    tint(255);
    image(imagenes[3], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Hecate", width/2, 280);
    text( "La unica figura femenina en la arena", width/2, 320);
    text( "no se sabé nada de ella... ni de su origen", width/2, 340);
    text( "F) Abandonar la defensiva, y atacar.", width/2-200, 390);
    text( "V) Aguantar sus golpes hasta cansancio.", width/2+150, 390);
  
}
}
