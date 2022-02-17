class Espada {
  float x, y, ancho, alto;
  PImage img;
  float mx;
  float my;
  
  

  Espada() {
    x = mx;
    y = my;
    ancho = 70;
    alto = 70;
    img = loadImage("sword.png");
  }

  void draw_() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    
    fill(200);
    
    image(img,mouseX,mouseY,ancho,alto);
    fill(0);
    popStyle();
    popMatrix();
    mx = mouseX;
    my = mouseY;
    

    
  }
}
