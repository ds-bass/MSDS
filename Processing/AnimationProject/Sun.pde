class Sun {
  float x, y;
  
  Sun() {
    strokeWeight(4);
    x = 0;
    y = 0;
  }
  
  void slideRight (float speedX) {
    x += speedX;
    if(x >= 2*width){
      x = -100;
    }
  }

  void display(int sunRadius, int glowRadiusMin, int glowRadiusMax) {
    
    //glow of the sun
    float glowRadius;
    glowRadius = random(glowRadiusMin, glowRadiusMax);
    stroke(252, 249, 184, random(100));
    fill(252, 249, 184, random(100));
    ellipse(x, y, glowRadius, glowRadius);
    
    //actual sun
    stroke(250, 243, 98);
    fill(250, 243, 98);
    ellipse(x, y, sunRadius, sunRadius);
  } 
  
  void sunrays() {
    fill(250, 243, 98, 127);
    stroke(250, 243, 98, 55);
    strokeWeight(2);
    pushMatrix();
      translate(x, y);
      rotate(angle*-3);
      rectMode(CENTER);
      rect(0, 0, 8, random(180, 1000));
    popMatrix();
    
    pushMatrix();
      translate(x, y);
      rotate(angle*-3 + 22.5);
      rectMode(CENTER);
      rect(0, 0, 8, random(180, 1000));
    popMatrix();
    
    pushMatrix();
      translate(x, y);
      rotate(angle*-3 + 45);
      rectMode(CENTER);
      rect(0, 0, 8, random(180, 1000));
    popMatrix();

    pushMatrix();
      translate(x, y);
      rotate(angle*-3 + 67.5);
      rectMode(CENTER);
      rect(0, 0, 8, random(180, 1000));
    popMatrix();

    pushMatrix();
      translate(x, y);
      rotate(angle*-3 + 90);
      rectMode(CENTER);
      rect(0, 0, 8, random(180, 1000));
    popMatrix();
    
    pushMatrix();
      translate(x, y);
      rotate(angle*-3 + 112.5);
      rectMode(CENTER);
      rect(0, 0, 8, random(180, 1000));
    popMatrix();

  }
  
}
