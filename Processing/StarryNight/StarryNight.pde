// Co-Authored by Ryan Bass and Nuoya Rezsonya
// Painting is The Starry Night by Vincent van Gogh
PImage starryNight;
int RandColor;

void setup() {
  size(1280, 1014);
  starryNight = loadImage("starryNight.jpg");
  background(0);
}

void draw() {
  painting();
}


void mousePressed(){
  println(mouseX +", "+mouseY);
  RandColor = mouseX;
  color_change();
}

void color_change(){         
              loadPixels();
  starryNight.loadPixels();

  // We must also call loadPixels() on the PImage since we are going to read its pixels.  img.loadPixels(); 
  for (int x = 0; x < starryNight.width; x++ ) {
    for (int y = 0; y < starryNight.height; y++ ) {

      // Calculate the 1D pixel location
      int loc = x + y*starryNight.width;

      // Get the R,G,B values from image
      float r = red  (starryNight.pixels[loc]);
      float g = green(starryNight.pixels[loc]);
      float b = blue (starryNight.pixels[loc]);

      // Make a negative of starryNight and set pixels in the window
      color c1 = color(255-r, 255-g, 255-b);
      pixels[loc] = c1+RandColor;
    }
  }

  updatePixels();
}
