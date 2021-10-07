void Pelea15(){
if ( estado.equals("Pelea15")){
    tint(255);
    image(imagenes[7], 0, 0, 800, 600  );
    image(MarcoTexto, 37, 250, 725, 160);
    text( "", width/2, 275);
    text( "", width/2, 295);
    text( "FELICIDADES GLADIADOR, GANASTE TU LIBERTAD", width/2, height/2);
    text( "", width/2, 340);
    text( "VOLVER A JUGAR (BACKSPACE)", width/2, 360);
}

}
