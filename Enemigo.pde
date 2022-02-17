class Enemigo{

  float x;
  float y;
  float x1, y2;
  float ancho, alto;
  float tam;
  float ang, vel=7;
  int timer = 0;
  color relleno;
  PImage img2;
  
  Enemigo(){
    
    
    ancho = 80;
    alto = 80;
    Ubicacion();
    Destino();
    img2 = loadImage("enemigo.png");
    }
  
  void draw_(){
    timer++;
   pushMatrix();
    pushStyle();
    translate(x, y);
    rectMode(CENTER);
    fill(240, 10, 120);
    image(img2,0,0,ancho,alto);

    popStyle();
    popMatrix();

    if (dist(x,y,x1,y2)<5) {
      Destino();
    }

    mover();
    if(x < -149 || x > 849){
    x = random(750,1550);
     if(y <-149 || y > 649){
     y = random(-50,700);}}
  }
    
  
  void Ubicacion() {
    x = random(20, 700); 
    y = random(20, 450);
  }
   void Destino() {
    x1 = random(-150,850);
    y2 = random(-49, 650);
  }
  
  boolean colision4(float x_, float y_, float ancho_, float alto_ ) {
    if ( 
      x-ancho/2 < x_+ancho_/2
      && x+ancho/2 > x_-ancho_/2
      && y-alto/2 < y_+alto_/2
      && y+alto/2 > y_-alto_/2
      ) {
      Ubicacion();
      Destino();
      
      hit.play();
      
      return true;
    } else {
      return false;
    }
  }
  
  void mover(){
    ang = atan2(y2-y, x1-x); 
    float despX = cos(ang)*vel;
    x+=despX;
    if(timer>1000){
    vel = 14;}
    if(timer>2000){
    vel = 18;}

  }
}
