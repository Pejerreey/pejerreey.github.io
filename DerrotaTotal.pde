void Pelea20(){
   if ( estado.equals("Pelea20")){
   tint(255);
    image(imagenes[19], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 320);
    
    text( "MORISTE EN COMBATE", width/2, 340);
    text( "RETRY (BACKSPACE)", width/2, 380);
    text( "", width/2, 400);
   }

}
