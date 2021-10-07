void Pelea6() {
  if (estado.equals("Pelea6") ) {
    tint(255);
    image(imagenes[0], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra Ulises", width/2, 280);
    text( "Rey de Itaca", width/2, 320);
    text( "es un contrincante paciente y preciso", width/2, 340);
    text( "Z) Cargar, no hay que dar tiempo", width/2-200, 390);
    text( "A) Esperarlo... es un juego mental", width/2+150, 390);
  }
}
