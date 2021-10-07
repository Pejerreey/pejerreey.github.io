// https://youtu.be/T8qed0FKTxo

// LUCIANO SALAZAR 82857/5

// TP4 (RECUPERATORIO)



String estado= "Pelea1", Pelea2, Pelea3, Pelea4, Pelea5, Pelea6, Pelea7, Pelea8, Pelea9, Pelea10, Pelea11, Pelea12,Pelea13,Pelea14,Pelea15,Pelea16,Pelea17,Pelea18,Pelea19,Pelea20,Pelea21;
int img = 21;
PFont font;
int pos;
int contador = 0;
int contador2 = 0;
PImage MarcoTexto;
PImage [] imagenes = new PImage [img];


void setup() {
  size( 800, 600 );
  font = createFont("eightbitdragon.otf", 16);
  PFont.list();
  textFont(font);
  MarcoTexto = loadImage("MarcoTexto.jpg");

  for (int i=0; i<img; i++) {
    int pos= i + 1;
    imagenes[i] = loadImage("Pelea"+pos+".jpg");
  }
}
void draw() {
  Pelea1();
  Pelea2();
  Pelea3();
  Pelea4();
  Pelea5();
  Pelea6();
  Pelea7();
  Pelea8();
  Pelea9();
  Pelea10();
  Pelea11();
  Pelea12();
  Pelea13();
  Pelea14();
  Pelea15();
  Pelea16();
  Pelea17();
  Pelea18();
  Pelea19();
  Pelea20();
  Pelea21();


}
void keyPressed() {
  teclas();
} 
