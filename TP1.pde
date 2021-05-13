/* Luciano Salazar 

Legajo: 82857/5

13/05/2021

Me encontre con un diseño en wikipedia de un circulo cromatico hecho con triangulos,
replique en codigo como estaría construido. */

int MAX;
int MED;
MAX = 255;
MED = 160;

//Setup
size(630,700);
background(255);
noStroke();

/*Colores terciarios*/

//Verde amarillo
fill(MED,MAX,0);
triangle(205,190,350,250,189,356);

//Naranja
fill(MAX,MED,0);
triangle(380,190,243,250,408,356);

//Fucsia
fill(MAX,0,MED);
triangle(350,250,346,450,480,350);

//Violeta
fill(MED,0,MAX);
triangle(408,356,247,450,380,520);

//Azul cerúleo
fill(0,MED,MAX);
triangle(346,450,189,356,208,520);

//Verde cian
fill(0,MAX,MED);
triangle(243,250,247,450,110,350);

//Base
fill(255);
triangle(140,450,460,450,295,150);
triangle(125,250,475,250,295,530);



/*Colores secundarios*/

//Cian
fill(0,MAX,MAX);
triangle(140,450,247,450,189,355);

//Magenta
fill(MAX,0,MAX);
triangle(346,450,460,450,408,356);

//Amarillo
fill(MAX,MAX,0);
triangle(295,150,350,250,243,250);

/*Colores primarios*/

//Verde
fill(0,MAX,0);
triangle(125,250,243,250,189,356);
//Rojo
fill(MAX,0,0);
triangle(478,250,350,250,408,356);
//Azul
fill(0,0,MAX);
triangle(295,530,247,450,346,450);


/* Utilice rect(x,y,1,1); con un fill(); para marcar donde estaba el punto y así ubicar donde
colocar los puntos X e Y. Luego, utilice las coordenadas ya escritas*/
