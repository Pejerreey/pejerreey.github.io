void Pelea7() {
  if (estado.equals("Pelea7") ) {
    tint(255);
    image(imagenes[4], 0, 0, 800, 600  );
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "Lograste vencer", width/2, height/2);
    text( "", width/2, 360);
    text( "pero aún no eres el campeón... (ENTER)", width/2, 380);
  }
}
