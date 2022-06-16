import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import oscP5.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class TpObra extends PApplet {


//                                                                     //

Dir_y_Vel miVelocidadYDireccion;

ArrayList <Trazos> misTrazos;
//ArrayList <Trazos3> misTrazos3;// declaro un arraylist de trazos

int cantidadDeTrazos =  54;
float umbralRuido = 30;
float umbralRuidoMax = 97;
float umbralPitch = 48;
float umbralPitchMax = 94;
float f = 0.9f;
float xF = -1440;
//---------------------
float amp = 0.0f;
float pitch = 0.0f;
int j;
float vel = 1;
GestorSenial gestorAmp;
GestorSenial gestorPitch;
OscP5 osc;

int img = 54;
int img2 = 2;
PImage [] imagenes = new PImage [img];
PImage [] imagenes2 = new PImage [img];

float y, x;

float velocidad;


public void setup () {
  
  gestorAmp = new GestorSenial( umbralRuido, umbralRuidoMax, f);
  gestorPitch = new GestorSenial( umbralPitch, umbralPitchMax,f);
  osc = new OscP5(this, 12345);
  
  
  
for (int i=0; i<img2; i++) {
    int pos= i +1;
    imagenes2[i] = loadImage("fondoA"+pos+".png");
  }
  
  
  for (int i=0; i<img; i++) {
    int pos= i +1;
    imagenes[i] = loadImage("trazo"+pos+".png");
  }
  
  // Inicializo el objeto, no necesito pasarle parametros.
  miVelocidadYDireccion = new Dir_y_Vel();


  misTrazos = new ArrayList<Trazos>() ;
  
                            
  
  // --- hago un ciclo for para cargar cada uno de los trazos en el arraylist

  for( int i=0; i<img; i++){
     
    Trazos esteTrazo = new Trazos(imagenes[i],y + 18*i, x-(1440)); // el 25 es el espacio en y entre trazos
    misTrazos.add(esteTrazo);
  }
   
  
  velocidad = 1;
}

public void draw () {
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
 tint(255,255);
  image(imagenes2[0],xF,0,2880,1080);
  if(xF > 0){
  xF = xF - vel;}
  
  tint(amp*3,pitch*3);
  image(imagenes2[1],400,200,539,675);
  
 

/////////////////////////////////////////////


  tint(255,255);
  for(Trazos t : misTrazos){
    
    t.draw_();
    Trazos tAux = new Trazos(t.imagen, 1080-t.y, t.x);
    //tAux.y = 600-j*12;
    tAux.draw_();

  }
  
 
  
  
// FIN --- Función para recorrer y dibujar todos los trazos que están en el arrayList




for( int i=0; i<cantidadDeTrazos; i++){
  
  
  if (amp > 42) {

    
    Trazos t = misTrazos.get(i);
    t.x = t.x - velocidad+(i*random(0.1f,0.5f));

  }
  if (amp > 70) {

    
    Trazos t = misTrazos.get(i);
    t.x = t.x + (velocidad-(i*random(0.5f,1)));

  }
  
    //-----------------------------------//
  
  //-----------------------------------//
  
  
  if (pitch > 50) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos t = misTrazos.get(i);
    t.y = t.y - (velocidad+2);

  }
  if (pitch > 80) {
    //Trazo.x = Trazo.x - velocidad/6;
    
    Trazos t = misTrazos.get(i);
    t.y = t.y - (velocidad-6.5f);

  }
  
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

public void oscEvent( OscMessage m){

  if(m.addrPattern().equals("/amp")){
  amp = m.get(0).floatValue();
  
  
  }
   if(m.addrPattern().equals("/pitch")){
  pitch = m.get(0).floatValue();
  
  
  }
  
}
class Dir_y_Vel {
  float posX;
  float posY;
  float prevPosX;
  float prevPosY;
  float miDireccionX;
  float miDireccionY;
  float vel;
  float miDireccionPolar;

  Dir_y_Vel () {
    this.posX=0;
    this.posY=0;
  }

  public void calcularTodo (float mi_X, float mi_Y) {
    prevPosX=posX;
    prevPosY=posY;
    posX=mi_X;
    posY=mi_Y;

    miDireccionX = posX-prevPosX;
    miDireccionY = posY-prevPosY;
    miDireccionPolar = degrees(atan2( posY-prevPosY, posX-prevPosX ));

    vel = dist (posX, posY, prevPosX, prevPosY);
  }


  //////* ESTOS SON LOS METODOS QUE DEVUELVEN ALGO *///////

  public float velocidad() {
    return vel;
  }

  public float direccionX () {
    return miDireccionX;
  }

  public float direccionY () {
    return miDireccionY;
  }


  public float direccionPolar () {
    return miDireccionPolar;
  }
}  
//--------------------------------------
// Gestor de seniales (con enie)
// Emiliano Causa 2011-2012
//--------------------------------------
/*

 Constructores:
 ==============
 
 - GestorSenial( ) 
 
 - GestorSenial( float minimo_, float maximo_ ) 
 
 - GestorSenial(
 float minimo_, float maximo_, //minimo y maximo del rango de entrada
 int tamanioMuestra_, //tamanio con el que visualiza la senial
 float factorAmortiguacion_, //factor con el que filtra 
 float amplitudMaxDerivada_, //rango en el que toma la derivada

 
 Miembros de devolucion:
 =======================
 - float valorIn 
 - float filtrado
 - float derivada

 
 Funciones de devolucion:
 ========================
 - float filtradoNorm()
 - float derivadaNorm()
 
 Ejecutar en cada ciclo:
 =======================
 void actualizar( float valorIn_ ) 
 
 */
class GestorSenial {

  float valorIn, filtrado;
  float minimo;
  float maximo;

  float derivada;

  int tamanioMuestra;
  float factorAmortiguacion;
  float amplitudMaxDerivada;


  GrafXvsTime grafica, graficaFilt, graficaDeriv;

  //-------------------------------------------

  GestorSenial( ) {
    this( 0, 100, 200, 0.1f, 0.5f);
  }
  //-------------------------------------------
  GestorSenial( float minimo_, float maximo_ ) {
    this( minimo_, maximo_, 200, 0.1f, 0.5f);
  }
  //-------------------------------------------
  GestorSenial( float minimo_, float maximo_, float factorAmortiguacion_  ) {
    this( minimo_, maximo_, 200, factorAmortiguacion_, 0.5f);
  }
  //-------------------------------------------

  GestorSenial( 
  float minimo_, float maximo_, //minimo y maximo del rango de entrada
  int tamanioMuestra_, //tamanio con el que visualiza la senial
  float factorAmortiguacion_, //factor con el que filtra 
  float amplitudMaxDerivada_){//rango en el que toma la derivada


    factorAmortiguacion = factorAmortiguacion_;
    amplitudMaxDerivada = amplitudMaxDerivada_;
    minimo = minimo_;
    maximo = maximo_;
    tamanioMuestra = tamanioMuestra_;

    grafica = new GrafXvsTime( tamanioMuestra, minimo, maximo );
    graficaFilt = new GrafXvsTime( tamanioMuestra, minimo, maximo );
    graficaDeriv = new GrafXvsTime( tamanioMuestra, -amplitudMaxDerivada, amplitudMaxDerivada );
  }
  //-------------------------------------------

  public float filtradoNorm() {
    return constrain( map( filtrado, minimo, maximo, 0, 1 ), 0, 1);
  }  
  //-------------------------------------------

  public float derivadaNorm() {
    return constrain( map( derivada, -amplitudMaxDerivada, amplitudMaxDerivada, -1, 1 ), -1, 1);
  }  

  //-------------------------------------------

  public void actualizar( float valorIn_ ) {

    valorIn = valorIn_;
    float anterior = filtrado;
    
    filtrado = valorIn * (1-factorAmortiguacion) + filtrado * factorAmortiguacion;
    derivada = filtrado-anterior;

    grafica.agregar( valorIn ); 
    graficaFilt.agregar( filtrado ); 
    graficaDeriv.agregar( derivada );

  }
  //-------------------------------------------

  public void imprimir( float left, float top ) {
    imprimir( left, top, 500, 100, true, false );
  }
  //-------------------------------------------

  public void imprimir( float left, float top, float ancho, float alto ) {
    imprimir( left, top, ancho, alto, true, false );
  }
  //-------------------------------------------

  public void imprimir( float left, float top, float ancho, float alto, 
  boolean mostrarFiltrado, boolean mostrarDerivada ) {

    pushStyle();
    fill( 0 );
    stroke( 255, 255, 255 );
    grafica.imprimir( left, top, ancho, alto, true );

    if ( mostrarFiltrado ) {
      stroke( 0, 255, 0 );
      graficaFilt.imprimir( left, top, ancho, alto, false );
    }

    if ( mostrarDerivada ) {
      stroke( 255, 255, 0 );
      graficaDeriv.imprimir( left, top, ancho, alto, false );
    }
    
    popStyle();

  }
}
// ------------------------------------------------------------------------------------------------------
// MARCA: Grafica X versus TIME - Grafica X versus TIME - Grafica X versus TIME - Grafica X versus TIME -
// ------------------------------------------------------------------------------------------------------
// Este objeto permite grafica evoluciones en el tiempo
// Emiliano Causa - Julio 2006
//
// GrafXvsTime(int cantPuntos_, float minimo_, float maximo_) - inicializa el objeto, definiendo la cantidad de puntos
//                                                              a monitorear, y los valores minimo y maximos
// void agregar( float dato ) - agrega puntos a la grÔøΩfica
// void ( float left, float top, float ancho, float alto ) - imprime los datos en pantalla en la posiciÔøΩn y las
//                                                                   dimensiones indicadas
//
class GrafXvsTime {
  float minimo;
  float maximo;

  int cantPuntos;
  int cont;

  float datos[];

  GrafXvsTime(int cantPuntos_, float minimo_, float maximo_) {
    minimo = minimo_;
    maximo = maximo_;
    cantPuntos = cantPuntos_;
    datos = new float[cantPuntos];
    cont = 0;
  }

  public void agregar( float dato ) {
    datos[cont] = dato;
    cont = (cont+1) % cantPuntos;
  }

  public void imprimir( float left, float top, float ancho, float alto, boolean conFondo ) {

    if ( conFondo ) {
      rectMode(CORNER);
      rect(left, top, ancho, alto);
    }
    float paso = ancho/cantPuntos;
    for (int i=1 ; i<cantPuntos ; i++) {
      if (i != cont) {
        float valor1 = map( constrain( datos[i-1], minimo, maximo ), minimo, maximo, top+alto, top );
        float valor2 = map( constrain( datos[i], minimo, maximo ), minimo, maximo, top+alto, top);
        line( left + paso * (i-1), valor1, left + paso * i, valor2 );
      }
    }
  }
}
class Trazos {
  float x, y, ancho, alto;
  PImage imagen;

  public Trazos(PImage imagen, float y, float x) {
    ancho = 2880;
    alto = 36;
    this.x=x;
    this.y = y;
    this.imagen = imagen;
  }

  public void draw_() {

    pushMatrix();
    pushStyle();
    image(imagen, x, y, ancho, alto);


    //////////////////////////////////////////////////

    //x = x + miVelocidadYDireccion.velocidad();
    popStyle();
    popMatrix();
  }
}
  public void settings() {  size (1440, 1080, P2D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "TpObra" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
