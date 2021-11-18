class Background {
  float x;
  int numFondo;
  int cant = 4;
  PImage [] backgrounds = new PImage[cant];

  Background() {
   for (int i=0; i<cant; i++) {
      backgrounds[i] = loadImage("coliseo"+i+".jpg");
    }
    x = 0;
  }

  void draw_(int numFondo_) {
    numFondo = numFondo_;
  image(backgrounds[numFondo],x,0,width,height);
  }

   
  }
