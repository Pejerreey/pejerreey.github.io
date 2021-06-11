//Activar/Desactivar Audio
//*
import processing.sound.*;
SoundFile file;
//*
String estado = "Diablo1", Diablo2, Diablo3, Diablo4, Diablo5, Diablo6, Diablo7, Diablo8;
PFont  font;

/* Esto es principalmente para ayudarme a ordenar las pantallas
y poder trabajar individualmente en cada una de ellas*/

int Primera = 1800;
int Segunda = 1500;
int Tercera = 1200;
int Cuarta = 900;
int Quinta = 600;
int Sexta = 400;
int Septima = 200;
int Octava = 0;
///////////////////////////////////////////
int pos;
int posY = 600;
//X's Pantalla 1
int posX = 800;
int posX2 = 0;
//X's Pantalla 2
int X = 800;
int X2 = 0;
//X e Y's Pantalla 3
int Y3 = 600;
int X3 = 800;
int X4 = 0;
//X e Y's Pantalla 4
int Y4 = 600;
int X5 = 800;
int X6 = 0;
//X e Y's Pantalla 5
int Y5 = 600;
int X7 = 800;
int X8 = 0;
//X e Y's Pantalla 6
int Y6 = 600;
int X9 = 800;
int X10 = 0;
//X e Y's Pantalla 7
int Y7 = 600;
int X11 = 800;
int X12 = 0;
/////////////////////////////////////////

/*Con este valor modifico la  velocidad de como se mueven los titulos, creditos.*/

int velocidad = 5;

/*Utilice una funcion de timing para cambiar las pantallas, pensando en una secuencia de creditos
considere la opcion de KeyPressed, pero me parecio más sencillo con un timer*/
int timer = 1801;
int num = 1;
int img = 8;
PImage Pentagrama;
PImage MarcoTexto;
PImage [] imagenes = new PImage [img];

void setup(){
  
 size( 800, 600 );
 frameRate(60);
 
 //Audio
 file = new SoundFile (this, "Diablo.mp3");
 file.play();
 font = createFont("Exocet2.ttf", 16);
 PFont.list();
 textFont(font);
 Pentagrama = loadImage("Pentagrama.png");
 MarcoTexto = loadImage("DiabloBox.jpg");
 
 for (int i=0; i<img; i++) {
   int pos= i +1;
   imagenes[i] = loadImage("Diablo"+pos+".jpg");
 }

}

void draw(){
   
  timer--;
  if (timer < 0){
    timer = 0;}
    
/*En esta seccion, cambiar la categorizacion de Primera, Segunda, etc. Va a indicar
el orden de las pantallas*/

  if  ( timer == Primera){
    estado = "Diablo1";
    
    } else {
      if (timer == Segunda){
        estado = "Diablo2";
      } else {
        if (timer == Tercera){
        estado = "Diablo3";}
        else {  if (timer == Cuarta){
        estado = "Diablo4";}
        else { if (timer == Quinta){
        estado = "Diablo5";}
        else { if (timer == Sexta){
          estado = "Diablo6";}
          else { if (timer == Septima){
            estado = "Diablo7";}
            else { if(timer == Octava){
              estado ="Diablo8";}
            }
        
        
        }
      }
    }
  }
 }
}

/*Separe las pantallas, y las nombre para su facil acceso*/

//Pantalla 1
if (estado.equals("Diablo1")){
  image(imagenes[0], 0,  0, 800,600);
  
   /*textSize(18);
  text( timer, 750, 20);*/
  textSize(60);
  fill(125);
  text("DIABLO II", width/3 -22, height/2);
  textSize(30);
  fill(255);
  text("Creado por Blizzard Entertainment", posX+300, height/2+100);
  posX = posX - (velocidad + 2);
  if (posX < -225){
    posX = -225;
    posX2 = posX2 + velocidad;
  }
  textSize(25);
  text("Trabajo Practico 2, Luciano Salazar", posX2 -600, height/2 +150);
  if (posX2 > 700){
    posX2 = 700;}

}else {  
  
  //Pantalla 2
  if (estado.equals("Diablo2")){
    image(imagenes[1],0,0,800,600);
    image(MarcoTexto,100,80,600,140);
    image(MarcoTexto,40,250,720,80);
     /*textSize(18);
  text( timer, 750, 20);*/
  textSize(40);
  fill(150);
  text("CONCEPTO Y DISEÑO", 150, height/2-170);
  textSize(24);
  fill(230,190,138);
  text("Diseñado por", X +100, height/2-100);
  X = X - (velocidad + 2);
  if (X < 200){
    X = 200;
    posY = posY - velocidad;
  }
  textSize(30); 
  text("DAVID BREVIK", 80, posY+50);
  text("ERICH SCHAEFER",450, posY+50);
  if(posY < 250){
    posY = 250;}
 
  }
  else {
  //Pantalla 3
    if (estado.equals("Diablo3")){
      image(imagenes[2],0,0,800,600);
      image(MarcoTexto,210,80,400,80);
       /*textSize(18);
  /*text( timer, 750, 20);*/
  textSize(36);
  fill(150);
  text("PRODUCIDO POR",width/2-150, 120);
  fill(230,190,138);
  textSize(30);
  text("BILL ROPER", X3+200, 350);
  textSize(26);
  text("MATTHEW HOUSEHOLDER", X4-350, 500);
  X3 = X3 - (velocidad + 4);
  X4 = X4 + (velocidad + 2);
  
  if(X3 < -90){
    X3 = -90;}
    if(X4 > 700){
      X4 = 700;}
  

    
} else {
  
//Pantalla 4
  
  if (estado.equals("Diablo4")){
  image(imagenes[3],0,0,800,600);
  image(MarcoTexto,230,70,470,80);
   /*textSize(18);
  text( timer, 750, 20);*/
  textSize(36);
  fill(150);
  text("UN PROYECTO DE ...", width/2-130, 120);
  textSize(35);
  fill(230,190,138);
  text("MAX SCHAEFER", width/2, Y4+150);
   Y4 = Y4 - (velocidad + 2);
 if(Y4 < 150){
 Y4 = 150;}
}
  else {
    
//Pantalla 5
   
  if (estado.equals("Diablo5")){
  image(imagenes[4],0,0,800,600);
  image(MarcoTexto,180,80,440,140);
   /*textSize(18);
  text( timer, 750, 20);*/
  textSize(36);
  fill(155);
text("COMPUESTO POR", width/2-160,120);
  textSize(30);
  fill(255,155,0);
text("MATT UELMEN", X7, 190);
X7 = X7 - (velocidad +2);
if (X7 < 275){
X7 = 275;}
textSize(22);
fill(500,0,0);

text("SCOTT PETERSEN", 500, Y5+600);
text("BERNIE WILKENS", 100, Y5+600);
text("ROGER WEISMEYER", 150, Y5+400);
text("RYAN BOYCE", 450, Y5+400);
text("MUSTAFA WAIZ",  300, Y5+700);
Y5 = Y5 - (velocidad+2);
if(Y5 < -150){
  Y5 = -150;
  image(Pentagrama,180,220,425,350);
  text("SCOTT PETERSEN", 500, Y5+600);
text("BERNIE WILKENS", 100, Y5+600);
text("ROGER WEISMEYER", 150, Y5+400);
text("RYAN BOYCE", 450, Y5+400);
text("MUSTAFA WAIZ",  300, Y5+700);
}
}
  else { 
    
//Pantalla 6
    
    if(estado.equals("Diablo6")){
    image(imagenes[5],0,0,800,600);
    image(MarcoTexto,170,70,480,80);
    image(MarcoTexto,195,250,420,80);
     /*textSize(18);
  text( timer, 750, 20);*/
textSize(40);
fill(150);
text("DESARROLLADO POR", width/2-210,120);
fill(180,0,0);
text("BLIZZARD NORTH", width/2-180, Y6+50);
Y6 = Y6 - (velocidad +2);
if (Y6 <250){
Y6 = 250;}
}
    else { 
      
//Pantalla 7
      
      if(estado.equals("Diablo7")){
      image(imagenes[6],0,0,800,600);
      image(MarcoTexto,180,70,450,80);
      image(MarcoTexto,140,200,530,500);
       /*textSize(18);
  text( timer, 750, 20);*/
  fill(150);
  textSize(36);
text("Y DISTRIBUIDO POR", width/2-190,120);
textSize(34);
fill(65,105,225);
text("BLIZZARD ENTERTAINMENT", X11+250, Y7-350);
fill(135,206,250);
text("SIERRA ENTERTAINMENT", X12-490, Y7-260);
X11 = X11 - (velocidad +6);
X12 = X12 + (velocidad +4);
if(X11 < -100){
  X11 = -100;
  Y7 = Y7 + (velocidad +2);}
 if(X12 > 666){
 X12 = 666;}
}
else {
if(estado.equals("Diablo8")){
image(imagenes[7],0,0,800,600);}
}
      
}
  }
}
}
  }
}

}
