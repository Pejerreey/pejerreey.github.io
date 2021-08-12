//Luciano Salazar (82857/5)

// https://vimeo.com/586438743/53b63f0411

int pulsaciones=0;
//Agregar más ondas puede afectar el rendimiento
int ondas = 6;
//El valor de Col por debajo de 150 crea otros matices azulaceos.

//COLOR (necesitaba llamar una modificacion directa al numero)
int col = 250;
//El area de la ellipse
int radio = 200;

void setup()
{
  size(800, 600);
  background(255);
  //Cambiarle el valor hace que cambie las lineas exteriores de las ellipses.
  stroke(10);
  
}

void draw()
{
  for ( int i=0; i<ondas; i++) {
    for ( int j=0; j<ondas; j++) {
      //Con este for,  ejecuto el area donde el color va a cambiar dependiendo donde este el mouse.
  fill( i*random(col-0)/6 , j*random(col-0)/6 , mouseX*255/width );
  if(mousePressed)
    {
      ellipse(mouseX, mouseY, pulsaciones, pulsaciones);
     }
     pulsaciones++;
  if(pulsaciones<radio) {pulsaciones=pulsaciones*+1;} else {
  if(pulsaciones>radio) {pulsaciones=pulsaciones*-1;}
  }
}
}
}
