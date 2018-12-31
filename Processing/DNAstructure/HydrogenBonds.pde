class HydrogenBonds{
  float radius;
  float angle;
  float dis;
  float speed; 
  PVector vector;
  PShape sphere;
  
  HydrogenBonds(){
  speed = 0.005;
  angle=PI;
    
  }
  
  void drawsphere(float radius){
    //to draw one sphere
    
    noStroke();  
    pushMatrix();    
      rotateY(angle);
      
      translate(-80, 20, 0);
      //translate(transX, transY, transZ);
      fill(255);      
      sphere(radius);
    
    popMatrix();
    
  }
    
void moveAround(){
    angle = angle + speed;
    
}
}
