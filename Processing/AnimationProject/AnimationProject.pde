float angle=0;
float angleTri;
Sun s;
Moon m;
Stickman Stanley;
int grnd;

PImage bg;


void setup() {
  size(1200, 800);
  bg = loadImage("back.png"); //city background
  frameRate(30);
  smooth();
  Stanley = new Stickman(30); //constructor for the stickman
  s = new Sun(); //constructor for the sun
  m = new Moon(); // constructor for the moon
  
}

void draw() {
  background(bg);
  
  // sun
  s.slideRight(10);
  s.display(100, 120, 200);
  s.sunrays();
  
  // moon
  m.slideRight(10);
  m.display(100, 120, 150);
  
  stroke(0, 0, 0);
  strokeWeight(4);
  
  // left connection line
  line(width*0.25, height*0.65, width*0.438, height*0.265);
  
  // the right connection line
 line(width*0.75, height*0.65, width*0.562, height*0.265);
 
 // line connecting fans
 line(width*0.25, height*0.65, width*0.75, height*0.65);
  
  // the left flower
  pushMatrix();
    magicFlower(1, 0.00005, 0.25, 0.65);
  popMatrix();
  
  // stickman stanley
  pushMatrix();
    translate (width*0.5, height*0.24);
    Stanley.stickman();
  popMatrix();
  
  // reset strokeWeight since stickman changed it
  strokeWeight(4);
  
  //middle rotation cicle
  fill(2, 134, 120);
  ellipse(width*0.5, height*0.35, 200, 200);
  
  //first bar inside the circle
  pushMatrix();
    fill(255, 202, 153);
    translate(width*0.5 ,height*0.35);
    rotate(angle*-5);
    rectMode(CENTER);
    rect(0, 0, 20, 200);    
  popMatrix();
  
  //second bar inside the circle
  pushMatrix();
    translate(width*0.5, height*0.35);
    rotate(angle*-5 + 45);
    rectMode(CENTER);
    rect(0, 0, 20, 200);
  popMatrix();
  
  //third bar inside the circle
  pushMatrix();
    translate(width*0.5, height*0.35);
    rotate(angle*-5 + 90);
    rectMode(CENTER);
    rect(0, 0, 20, 200);
  popMatrix();
   
  // the middle point for the middle spinning wheel
  rectMode(CENTER);
  rect(width*0.5, height*0.35, 20, 20);
  point(width*0.5, height*0.35);
  
  pushMatrix();
    ClockmagicRec(1, 0.00005, 0.75, 0.65);
  popMatrix();
  
}
  
