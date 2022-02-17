class Projectil3{

  float x;
  float y;
  float x1, y2;
  float ancho, alto;
  float tam;
  float ang, vel=7;
  int timer = 0;
  color relleno;
  PImage img2;
  
  Projectil3(){
    
    
    ancho = 80;
    alto = 40;
    Ubicacion();
    Destino();
    img2 = loadImage("projectil2.png");
    }
  
  void draw_(){
    timer++;
   pushMatrix();
    pushStyle();
    translate(x, y);
    rectMode(CENTER);
    fill(240, 10, 120);
    image(img2,0,0,ancho+40,alto+100);

    popStyle();
    popMatrix();

    if (dist(x,y,x1,y2)<5) {
      Destino();
    }

    mover();
    if(x < -149){
    x = random(1000,2000);}
  }
    
  
  void Ubicacion() {
    x = random(1000, 3000); //Donde spawnean los proyectiles
    y = 300;
  }
   void Destino() {
    x1 = -150;
  }
  
  boolean colision3(float x_, float y_, float ancho_, float alto_ ) {
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
