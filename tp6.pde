/*    -------------------------- PRECAUCION ------------------------------
                  CUIDADO CON EL VOLUMEN SETEADO EN PROCESSING
                  EL VOLUMEN ES EXTREMADAMENTE ALTO POR DEFAULT
                    (Tuve que aprender por experiencia...)
                    
               
               Comision 3
                    
               LUCIANO SALAZAR (82857/5)                                 */
                    
import processing.sound.*;
PImage MarcoTexto;
PFont font;
SoundFile file;
SoundFile hit;

Juego juego;


void setup(){
  size (800,600);
  font = createFont("font.ttf",17);
  PFont.list();
  textFont(font);
  file = new SoundFile (this, "roman1.mp3");
  hit = new SoundFile(this, "hit.mp3");
  MarcoTexto = loadImage("MarcoTexto.jpg");
  
  file.play();
  juego = new Juego (25);
}

void draw (){
  juego.draw_();

}

void keyPressed(){
  juego.keyPressed_();

}
