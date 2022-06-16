Dir_y_Vel miVelocidadYDireccion;

ArrayList <Trazos> misTrazos;
//ArrayList <Trazos2> misTrazos2;
//ArrayList <Trazos3> misTrazos3;// declaro un arraylist de trazos
import oscP5.*;
int cantidadDeTrazos =  54;
float umbralRuido = 30;
float umbralRuidoMax = 97;
float umbralPitch = 48;
float umbralPitchMax = 94;
float f = 0.9;
float xF = -1440;
//---------------------
float amp = 0.0;
float pitch = 0.0;
int j;
float vel = 1;
GestorSenial gestorAmp;
GestorSenial gestorPitch;
OscP5 osc;

int img = 54;
int img2 = 4;
PImage [] imagenes = new PImage [img];
PImage [] imagenes2 = new PImage [img];

float y, x;

float velocidad;


void setup () {
  size (1440, 1080, P2D);
  gestorAmp = new GestorSenial( umbralRuido, umbralRuidoMax, f);
  gestorPitch = new GestorSenial( umbralPitch, umbralPitchMax,f);
  osc = new OscP5(this, 12345);
  
  
  
for (int i=0; i<img2; i++) {
    int pos= i +1;
    imagenes2[i] = loadImage("fondoA"+pos+".png");
  }
  
  /*
  for (int i=0; i<img; i++) {
    int pos= i +1;
    
   
    imagenes3[i] = loadImage("trazoB"+pos+".png");
  } */
  
  for (int i=0; i<img; i++) {
    int pos= i +1;
    imagenes[i] = loadImage("trazo"+pos+".png");
  }
  
  // Inicializo el objeto, no necesito pasarle parametros.
  miVelocidadYDireccion = new Dir_y_Vel();


  misTrazos = new ArrayList<Trazos>() ;
  
  /*
  misTrazos2 = new ArrayList<Trazos2>() ;
  misTrazos3 = new ArrayList<Trazos3>() ;// inicializo en arraylist
  */
                            
  
  // --- hago un ciclo for para cargar cada uno de los trazos en el arraylist

  for( int i=0; i<img; i++){
     
    Trazos esteTrazo = new Trazos(imagenes[i],y + 20*i, x-(1440)); // el 25 es el espacio en y entre trazos
    misTrazos.add(esteTrazo);
  }
  
  /*
  for( int i=0; i<img; i++){
     
    Trazos2 esteTrazo2 = new Trazos2(imagenes[i],y+350+20*i, x-960); // el 25 es el espacio en y entre trazos
    misTrazos2.add(esteTrazo2);
  }
  
  for( int i=0; i<img; i++){
    
    Trazos3 esteTrazo3 = new Trazos3(imagenes[i],y + 700+20*i, x); // el 25 es el espacio en y entre trazos
    misTrazos3.add(esteTrazo3);
  }
  */
  
  
  
  
  velocidad = 1;
}

void draw () {
gestorAmp.actualizar(amp);
  gestorPitch.actualizar(pitch);
  if(amp < 42){
  amp = 42;}
  miVelocidadYDireccion.miDireccionX = amp;
  miVelocidadYDireccion.miDireccionY = pitch;
  println(miVelocidadYDireccion.miDireccionY);
  miVelocidadYDireccion.calcularTodo (amp, pitch);
  background(0);
  
  /////////////////////////
 xF = xF + vel;
  image(imagenes2[0],xF,0,2880,1080);
  if(xF > 0){
  xF = xF - vel;}
  
  tint(amp*3,pitch*3);
  image(imagenes2[1],350,500,139,175);
  
   image(imagenes2[1],750,200,139,175);
   
    image(imagenes2[1],150,700,139,175);
    
    image(imagenes2[2],550,300,150,305);
    
    image(imagenes2[3],width/2,height/2,160,220);
    
    image(imagenes2[3],900,800,160,220);
    
    image(imagenes2[1],150,200,139,175);
    
    image(imagenes2[2],1050,200,150,305);
    
    image(imagenes2[3],400,100,160,220);
    
    image(imagenes2[2],0,0,150,305);
    
    image(imagenes2[2],60,900,150,305);
    
    
   image(imagenes2[3],600,800,160,220);
   
   image(imagenes2[1],1200,30,139,175);
   
   image(imagenes2[3],1000,600,160,220);

/////////////////////////////////////////////


 

 


// --- Función para recorrer y dibujar todos los trazos que están en el arrayList
 

  
  /*
  for(Trazos2 t2 : misTrazos2){
  
    t2.draw_();
    j = j+1;
  }
  
  
 
  for(Trazos3 t3 : misTrazos3){
  
    t3.draw_();

    j = j+1;
  }
  */
  tint(255,255);
  for(Trazos t : misTrazos){
    
    t.draw_();
    Trazos tAux = new Trazos(t.imagen, 1080-t.y, t.x);
    //tAux.y = 600-j*12;
    tAux.draw_();

  }
  
 
  
  
// FIN --- Función para recorrer y dibujar todos los trazos que están en el arrayList

 // Trazo.draw_();


for( int i=0; i<cantidadDeTrazos; i++){
  
  
  if (amp > 42) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos t = misTrazos.get(i);
    t.x = t.x - velocidad+(i*random(0.1,0.5));

  }
  if (amp > 70) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos t = misTrazos.get(i);
    t.x = t.x + (velocidad-(i*random(0.5,1)));

  }
  
    //-----------------------------------//
    
    /* if (miVelocidadYDireccion.direccionX() > 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos2 t2 = misTrazos2.get(i);
    t2.x = t2.x + (velocidad+2) / +(i*0.2);

  }
  if (miVelocidadYDireccion.direccionX() < 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos2 t2 = misTrazos2.get(i);
    t2.x = t2.x - (velocidad+2)/ -(i*0.2);

  }/*
  //-----------------------------------//
  /*
  if (miVelocidadYDireccion.direccionX() > 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos3 t3 = misTrazos3.get(i);
    t3.x = t3.x + velocidad+i/2;

  }
  if (miVelocidadYDireccion.direccionX() < 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos3 t3 = misTrazos3.get(i);
    t3.x = t3.x - velocidad+i/2;

  }
  */
  //-----------------------------------//
  
  
  if (pitch > 50) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos t = misTrazos.get(i);
    t.y = t.y - (velocidad+2);

  }
  if (pitch > 80) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos t = misTrazos.get(i);
    t.y = t.y - (velocidad-6.5);

  }
  
  //-----------------------------------//
  /*
  if (miVelocidadYDireccion.direccionY() < 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos2 t2 = misTrazos2.get(i);
    t2.y = t2.y - (velocidad+1);

  }
  if (miVelocidadYDireccion.direccionY() > 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos2 t2 = misTrazos2.get(i);
    t2.y = t2.y + velocidad+1;

  }
  */
  //-----------------------------------//
  /*
  if (miVelocidadYDireccion.direccionY() < 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos3 t3 = misTrazos3.get(i);
    t3.y = t3.y + velocidad-(i/3);

  }
  if (miVelocidadYDireccion.direccionY() > 0) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos3 t3 = misTrazos3.get(i);
    t3.y = t3.y - velocidad+(i/3);

  }*/
  //-----------------------------------//
  //-----------------------------------//
  
  
  Trazos t = misTrazos.get(i);
  
  if(t.x > 0){
  t.x = -1440;
  }
  if(t.x < -1441){
  t.x = -1;
  }
  if(t.y > 1106){
  t.y = -36;
  }
  if(t.y < -37){
  t.y = 1106;
  }
}
}

void oscEvent( OscMessage m){

  if(m.addrPattern().equals("/amp")){
  amp = m.get(0).floatValue();
  
  
  }
   if(m.addrPattern().equals("/pitch")){
  pitch = m.get(0).floatValue();
  
  
  }
  
}
