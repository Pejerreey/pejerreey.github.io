void Pelea2() {
  if (estado.equals("Pelea2") ) {
    tint(255);
    image(imagenes[17], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    //90 en X
    fill(0);
    text( "¿Con  que arma pelearas?", width/2, 280);
    text( "Q) Una lanza", width/2-200, 340);
    text( "W) Un espadon", width/2+200, 340);
    text( "E) Un arco", width/2+200, 380);
    text( "R) Espada y escudo", width/2-200, 380);
 
}
}
