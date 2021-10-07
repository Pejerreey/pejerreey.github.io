void Pelea21() {
  if ( estado.equals("Pelea21")){
  tint(255);
    image(imagenes[20], 0, 0, 800, 600  );
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "¡GANASTE 4 COMBATES SEGUIDOS!", width/2, height/2);
    text( "", width/2, 360);
    text( "Tu siguiente oponente es... (G)", width/2, 380);
    
}
}
