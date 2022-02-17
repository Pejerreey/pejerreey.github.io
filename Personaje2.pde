class Personaje2 {
  float x, y, ancho, alto;
  float desp = 5;
  PImage img;
  float mx;
  float my;
  float velocidad = 2.05;
  
  

  Personaje2() {
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
    mx = mx + 4;
    
      if (keyCode == UP) {
    my = my - 100;
  }
  if (keyCode == DOWN) {
    my = my + 100;
  }
  
  my = constrain(my, 350, 450);

    
  }
}
