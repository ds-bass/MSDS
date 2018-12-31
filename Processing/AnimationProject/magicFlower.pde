void magicFlower(int side, float degree, float percentageX,float percentageY){
  strokeWeight(5);
  // move coordinate origin to center
  translate(width*percentageX, height*percentageY);
  //the base ellipse
  fill(255, 202, 153);
  ellipse(0, 200, 200, 50);
  //the stem
  line(0, 0, 0, 200);
  //middle point of the flower
  point(0, 0);
  
  // the number of ellipse
  for (int i =0; i<80; i++){
    angle += side* degree;
    rotate(angle);
    scale(0.95);
    fill(229, 80, 4);
    ellipse(0, 0, 270, 80);
  }}
