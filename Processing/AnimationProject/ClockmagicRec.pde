void ClockmagicRec(int side, float degree, float percentageX,float percentageY){
  
  strokeWeight(5);
  // move coordinate origin to center of sketch window
  translate(width*percentageX,height*percentageY);
  fill(255, 202, 153);
  ellipse(0, 200, 200, 50);
  line(0, 0, 0, 200);
  point(0, 0);
  // the number of rectangles
  for (int i =0; i<80; i++){
    angleTri += side* degree;
    rotate(angleTri);
    scale(0.95);
    fill(229, 80, 4);
    beginShape();
      rect(0, 0, 270, 80);
    endShape();

  }}
