// color needed
//for the hair
color brownHair = color(132,83,43);

//for the glass+eyes

color eyes= color(18,18,18);
color eye_white = color(255,255,255);
//for the skin
color skin = color(255,202,153);
//for the mouth
color lips = color(229,80,41);
color teeth = color(250,250,250);
color tongue = color(92,2,2);


//self portrait
//void setup(){
  //size(1280,960);
  //for (int i = 0; i < 960; i = i+50) {
    //fill(random(225),random(225),random(225));
    //rect(0, i, 1280, i);
  //}}
  
//void draw(){
  //Face(640, 480, 1,skin);
  //glasses(640, 480,  1, skin);
  //glassBridge(640, 480,1,eyes);
  //OutEye(640, 480, 1, eye_white);
  //drawBlackPartsEyes(640, 480,1, eyes);
  //highlightEye(640, 480,1,eye_white);
  //Nose(640, 480,1,skin);
  //mouth(lips);
  //teeth(teeth);
  //tongue(tongue);
  //neck_shirt(skin,eye_white,eyes);
  //hair(brownHair,eyes);

//}
void drawNuoya(int x, int y, color skin, color eyes, color eye_white,color brownHair){
 Face(x, y, 1,skin);
 glasses(x,y,  1, skin);
 glassBridge(x, y,1,eyes);
 OutEye(x, y, 1, eye_white);
 drawBlackPartsEyes(x, y,1, eyes);
 highlightEye(x, y,1,eye_white);
 Nose(x, y,1,skin);
 mouth(x, y, 1,lips);

 
 neck_shirt(x, y, 1,skin,eye_white);
 hair(x, y, 1,brownHair);
}
//////////////////////////////EYES//////////////////////////////////////////////
////////////////////draw white parts eyes//////////////////////////////////////////
//outer eyes
void OutEye(int centerX, int centerY,int side, color eyes){
  //left eye(side =-1), right eye(side = +1)
  // find the starting point of the eye
  strokeWeight(4);
  int[] eye_center = coordinates(centerX, centerY,0.1, 0.00,side);
  beginShape();
  fill(eyes);
  arc(eye_center[0],eye_center[1],60,40,1,75);
  endShape();
  
}
//eye highlight
void highlightEye(int centerX, int centerY, int side, color eye_white){
  //left eye(side =-1), right eye(side = +1)
  // find the starting point of the eye
  int[] eye_center = coordinates(centerX, centerY,0.095, 0.02,side);
  beginShape();
  fill(eye_white);
  ellipse(eye_center[0],eye_center[1],10,10);
  endShape();
  
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////draw black parts///////////////////////////////
void drawBlackPartsEyes(int centerX, int centerY,int side, color eyes){
  InnerEye(centerX,centerY, side, eyes);
}
void InnerEye(int centerX, int centerY, int side, color eyes){
  // find the starting point of the eye
  int[] eye_center = coordinates(centerX, centerY, 0.1, 0.005, side);
  beginShape();
  fill(eyes);
  ellipse(eye_center[0],eye_center[1],32,32);
  endShape();
  
  
}

///////////////////////////////////////Glasses//////////////////////////////////////////////////
void glasses(int centerX, int centerY,int side,color skin){
  //left eye(side =-1), right eye(side = +1)
  // find the starting point of the eye
  strokeWeight(10);
  int[] eye_center = coordinates(centerX, centerY, 0.10, 0.0,side);
  beginShape();
  fill(skin);
  ellipse(eye_center[0],eye_center[1],88,88);
  endShape();
  
}
void glassBridge(int centerX, int centerY, int side, color eyes){
  int[] eye_center = coordinates(centerX, centerY, 0.01, 0.0,side);
  beginShape();
  fill(eyes);
  rect(eye_center[0]-5,eye_center[1],14.5,8);
  endShape();}


///////////////////////////////////////Face//////////////////////////////////////////////////  
void Face(int centerX, int centerY, int side, color skin){
  strokeWeight(4);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  int[] face_center = coordinates(centerX, centerY, 0.0001, 0.0,side);
  beginShape();
  fill(skin);
  vertex(face_center[0]-130*side,face_center[1]-54);
  vertex(face_center[0]-155*side,face_center[1]);
  vertex(face_center[0]-123*side,face_center[1]+49);
  vertex(face_center[0]-102*side,face_center[1]+118);
  vertex(face_center[0]-38*side,face_center[1]+174);
  vertex(face_center[0]-18*side,face_center[1]+183);
  vertex(face_center[0]-10*side,face_center[1]+188);
  vertex(face_center[0],face_center[1]+188);
  vertex(face_center[0],face_center[1]+183);
  vertex(face_center[0],face_center[1]+174);
  vertex(face_center[0],face_center[1]+118);
  vertex(face_center[0],face_center[1]+49);
  vertex(face_center[0],face_center[1]);
  vertex(face_center[0],face_center[1]-54);
  endShape();
}



///////////////////////////////////////Nose//////////////////////////////////////////////////
void Nose(int centerX, int centerY, int side, color skin){
  int[] nose_center =  coordinates(centerX, centerY,0.0001, 0.0,side);
  strokeWeight(4);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  beginShape();
  fill(skin);
  curveVertex(nose_center[0]-26*side, nose_center[1]+49);
  curveVertex(nose_center[0]-26*side, nose_center[1]+49);
  curveVertex(nose_center[0]-29*side, nose_center[1]+60);
  curveVertex(nose_center[0]-25*side, nose_center[1]+63);
  curveVertex(nose_center[0]-13*side, nose_center[1]+55);
  curveVertex(nose_center[0], nose_center[1]+68);
  curveVertex(nose_center[0], nose_center[1]+55);
  curveVertex(nose_center[0], nose_center[1]+63);
  curveVertex(nose_center[0], nose_center[1]+60);
  curveVertex(nose_center[0], nose_center[1]+49);
  curveVertex(nose_center[0], nose_center[1]+49);
  endShape();
}

///////////////////////////////////////mouth//////////////////////////////////////////////////
void mouth(int centerX, int centerY,int side,color lips){
strokeWeight(3);
int[] lip_center = coordinates(centerX, centerY,0.0001, 0.00,side);
beginShape();
fill(lips);
quad(lip_center[0]-63*side,lip_center[1]+97,lip_center[0]-39*side,lip_center[1]+82,lip_center[0],lip_center[1]+79,lip_center[0],lip_center[1]+101);
quad(lip_center[0]-38*side,lip_center[1]+123,lip_center[0]-63*side,lip_center[1]+97,lip_center[0],lip_center[1]+101,lip_center[0],lip_center[1]+123);
endShape(); 


}

///////////////////////////////////////neck+shirt//////////////////////////////////////////////////
void neck_shirt(int centerX, int centerY,int side, color skin,color eye_white){
strokeWeight(3);
int[] neck_center = coordinates(centerX, centerY,0.0001, 0.00,side);
beginShape();
fill(skin);
quad(neck_center[0]-75*side,neck_center[1]+206,neck_center[0]-44*side,neck_center[1]+172,neck_center[0],neck_center[1]+192,neck_center[0],neck_center[1]+220);
endShape();

beginShape();
fill(eye_white);
quad(neck_center[0]-77*side,neck_center[1]+241,neck_center[0]-75*side,neck_center[1]+205,neck_center[0],neck_center[1]+222,neck_center[0],neck_center[1]+246);
endShape()
;}

///////////////////////////////////////hair//////////////////////////////////////////////////
void hair(int centerX, int centerY,int side, color brownHair){
  
noStroke();
int[] hair_center = coordinates(centerX, centerY,0.0001, 0.00,side);
beginShape();
fill(brownHair);
quad(hair_center[0]-181*side,hair_center[1]-55,hair_center[0]-109,hair_center[1]-209,hair_center[0],hair_center[1]-217,hair_center[0],hair_center[1]-55);
quad(hair_center[0]-190*side,hair_center[1]-24,hair_center[0]-185*side,hair_center[1]-75,hair_center[0]-167*side,hair_center[1]-97,hair_center[0]-133*side,hair_center[1]-25);
quad(hair_center[0]-165*side,hair_center[1]+49,hair_center[0]-124*side,hair_center[1]+49,hair_center[0]-164*side,hair_center[1]-66,hair_center[0]-124*side,hair_center[1]-66);
quad(hair_center[0]-236*side,hair_center[1]+238,hair_center[0]-185*side,hair_center[1]-58,hair_center[0]-146*side,hair_center[1]-57,hair_center[0]-78*side,hair_center[1]+238);
endShape(); 
}


//the following is helping to find the coordinates of points
int[] coordinates(int centerX, int centerY, float percentageW,float percentageH,int side){
  // the value of x and y
  int x = round(centerX - centerX * percentageW *side );
  int y = round(centerY - centerY * percentageH);
  //return the values--coordinates
  return new int[] {x, y};
}
