class Moon {
  float x, y;
  
    Moon(){
      strokeWeight(4);
    x = -width;
    y = 0;
  }
  
  void slideRight (float speedX) {
    x += speedX;
    if(x >= 2*width){
      x = -100;
    }
  }
  
  void display(int moonRadius, int glowRadiusMin, int glowRadiusMax) {
    
    //glow of the moon
    float glowRadius;
    glowRadius = random(glowRadiusMin, glowRadiusMax);
    stroke(240, 239, 235, random(100));
    fill(240, 239, 235, 100);
    ellipse(x, y, glowRadius, glowRadius);
    
    //actual moon
    stroke(227, 226, 208);
    fill(227, 226, 208);
    ellipse(x, y, moonRadius, moonRadius);
    
    //craters on the moon
    stroke(0,0,0,50);
    ellipse(x+10, y+10, moonRadius/10, moonRadius/10);
    ellipse(x-10, y+30, moonRadius/14.2857143, moonRadius/14.2857143);

  }
}
