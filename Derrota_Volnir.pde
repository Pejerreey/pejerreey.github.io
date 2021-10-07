void Pelea11() {
  if (estado.equals("Pelea11") ) {
    tint(255);
    image(imagenes[8], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 320);
    
    text( "Fuiste herido en combate", width/2, 340);
    text( "aún te puedes levantar... (ENTER)", width/2, 360);
    text( "", width/2, 400);
  }
}
