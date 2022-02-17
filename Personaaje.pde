class Personaje {
  float x, y, ancho, alto;
  float desp = 5;
  PImage img;
  float mx;
  float my;
  float velocidad = 2.05;
  
  

  Personaje() {
    x = mx;
    y = my;
    ancho = 60;
    alto = 90;
    img = loadImage("gladiador.png");
  }

  void draw_() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    rectMode(CENTER);
    fill(50, 230, 0);
    image(img,mx,my+10,ancho+10,alto+15);
    fill(0);
    popStyle();
    popMatrix();
    
      if (keyCode == UP) {
    my = my - 4 * velocidad;
  }
  if (keyCode == DOWN) {
    my = my + 4 * velocidad;
  }
  
  mx = constrain(mx, 50, 160);
  my = constrain(my, 20, height-175);

    
  }
}
