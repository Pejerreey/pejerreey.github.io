void Pelea3() {
  if (estado.equals("Pelea3") ) {
    tint(255);
    image(imagenes[2], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Volnir", width/2, 280);
    text( "Un nordico obsesionado con la historia de Aquiles,", width/2, 320);
    text( "tiene una feroz carga, muy impulsivo.", width/2, 340);
    text( "D) Esperar a un disparo unico.", width/2-200, 390);
    text( "C) Disparar tus flechas sin descanso.", width/2+150, 390);
  }
}
