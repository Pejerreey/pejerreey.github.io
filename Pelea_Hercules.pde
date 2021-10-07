void Pelea16(){
if ( estado.equals("Pelea16")){
    tint(255);
    image(imagenes[13], 0, 0, 800, 600);
    image(MarcoTexto, 37, 250, 725, 160);
    text( "Te enfrentas contra ¡Hercules!", width/2, 280);
    text( "Campeón actual de la arena", width/2, 320);
    text( "reconocido por su gran fuerza y proezas", width/2, 340);
    text( "J) Huir, no quiero morir!", width/2-200, 370);
    text( "K) Esquivar sus ataques, y contratacar", width/2+150, 370);
    text( "H) Atacar primero y agresivamente", width/2, 390);
}

}
