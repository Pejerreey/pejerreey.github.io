void Pelea4() {
  if (estado.equals("Pelea4") ) {
    tint(255);
    image(imagenes[1], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Agamenon", width/2, 280);
    text( "Rey de Micenas, y un gran ego", width/2, 320);
    text( "pero como guerrero no es ningun enclenque", width/2, 340);
    text( "X) Esquivarlo, se cansara.", width/2-200, 390);
    text( "S) Contratacar, esta muy creído.", width/2+150, 390);

  }
}
