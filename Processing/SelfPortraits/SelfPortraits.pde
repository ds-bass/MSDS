void setup() {
    // initial dimensions = size(1280, 960);
    size(1280,960);
    background(205,202,151);
    
    noStroke();
    fill(random(255),random(255),random(255),random(255));
    ellipse(random(width),random(height),30, 30);
    
}

// ryan's notes:
// original image was semi traced, must translate shifted coordinates to be centered and scalable
// center coordinates of original image is x = 640, y = 480
// center of glasses (bridge of nose) in selfie image is x = 714, y = 345
// so all x's must be shifted -74, and y's shifted +135
// used translate function to do this translate(-74, 135);
// since my face would only be on right side of screen added -640+width/2 to -74 so it will be centered always on x
// for scalable y's if smaller than 345 add (height/-480), add if greater than 345 add (-480+height/2)


int centerX = width/2;
int centerY = height/2;
color haircolor = color(134, 105, 51);
color hazel = color(146, 196, 136);
color eyewhite = color(234, 230, 230);
color pupil = color(27, 28, 27);
int defaultWidth = 800;
int defaultHeight = 800;



void draw() {
    //background random color bubbles
    noStroke();
    fill(random(255),random(255),random(255),random(255));
    ellipse(random(width),random(height),30, 30);

    
    // ryan's face, nouya's face/code is mostly in the other tab, and called at the bottom of this tab
    //since original selfie was not centered and semi-traced
    //had to translate coordinates to be centered for this project
    //as well as make it centered for whatever sketch size is chosen
    translate(-74-640+width/2, 135);
    
    //scale(width/defaultWidth, height/defaultHeight);
    strokeWeight(3);
    stroke(134, 105, 51);
    noFill(); 
    
    // hair upward
    for(int i = 0; i < 18; i++){
      beginShape();
        curveVertex(738+6*i, height/2-480+143+i);
        curveVertex(694+6*i, height/2-480+124+i);
        curveVertex(769+6*i, height/2-480+66+3*i);
        curveVertex(821+6*i, height/2-480+124+3*i);
      endShape();
    }
    
    // hair towards screen
        for(int i = 0; i < 18; i++){
      beginShape();
        curveVertex(679+6*i, height/2-480+115+i);
        curveVertex(713+6*i, height/2-480+100+i);
        curveVertex(734+6*i, height/2-480+109+i);
        curveVertex(703+6*i, height/2-480+171+i);
      endShape();
    }
    
    // hair downward
    for(int i = 0; i < 20; i++){
      beginShape();
        curveVertex(748+6*i, height/2-480+94-i);
        curveVertex(700+6*i, height/2-480+125);
        curveVertex(735+6*i, height/2-480+175+i);
        curveVertex(754+6*i, height/2-480+156-i);
      endShape();
    }
    
    // hair on upper right side of head
    for(int i = 0; i < 9; i++){
      beginShape();
        curveVertex(743+3*i, height/2-480+119-3*i);
        curveVertex(795+3*i, height/2-480+133-3*i);
        curveVertex(882+4*i, height/2-480+226-2*i);
        curveVertex(888+4*i, height/2-480+257-2*i);
      endShape();
    } 
   
    // hair on right side of head
    for(int i = 0; i < 5; i++){
      beginShape();
        curveVertex(862+3*i, height/2-480+216-3*i);
        curveVertex(883+3*i, height/2-480+239-3*i);
        curveVertex(889+5*i, height/2-480+308-5*i);
        curveVertex(887+5*i, height/2-480+328-5*i);
      endShape();
    } 
    
    // eyebrow, comes in several loops
    for(int i = 0; i < 6; i++){
      beginShape();
        curveVertex(730-i, 352-480+height/2-4*i);
        curveVertex(746-i, height/2-480+332-4*i);
        curveVertex(776-i, height/2-480+324-4*i);
        curveVertex(815-i, height/2-480+324-4*i);
      endShape();
    }
    for(int i = 0; i < 6; i++){
      beginShape();
        curveVertex(753, height/2-480+339-4*i);
        curveVertex(776, height/2-480+320-4*i);
        curveVertex(805, height/2-480+317-4*i);
        curveVertex(839, height/2-480+333-4*i);
      endShape();
    }
    for(int i = 0; i < 6; i++){
      beginShape();
        curveVertex(773, height/2-480+326-4*i);
        curveVertex(810, height/2-480+316-4*i);
        curveVertex(834, height/2-480+320-4*i);
        curveVertex(862, height/2-480+340-4*i);
      endShape();
    }
    for(int i = 0; i < 4; i++){
      beginShape();
        curveVertex(799, height/2-480+310-4*i);
        curveVertex(837, height/2-480+317-4*i);
        curveVertex(856, height/2-480+327-4*i);
        curveVertex(880, 349-480+height/2-4*i);
      endShape();
    }
    
    // moostache
    for(int i = 0; i < 14; i++){
      beginShape();
        curveVertex(709+6*i, 454-480+height/2+1.4*i);
        curveVertex(718+6*i, 467-480+height/2+1.4*i);
        curveVertex(726+6*i, 496-480+height/2+0.5*i);
        curveVertex(722+6*i, 519-480+height/2+0.5*i);
      endShape();
    }

    // nose
    stroke(0, 0, 0);
    beginShape();
      curveVertex(733, height/2-480+344);
      curveVertex(745, 397-480+height/2);
      curveVertex(765, 424-480+height/2);
      curveVertex(765, 447-480+height/2);
      curveVertex(742, 458-480+height/2);
      curveVertex(745, 446-480+height/2);
      curveVertex(760, 444-480+height/2);
      curveVertex(774, 446-480+height/2);
    endShape();
    
    // hair below lip
    stroke(134, 105, 51);
    for(int i = 0; i < 10; i++){
      line(715+5*i, 547-480+height/2-i, 716+5*i, 571-480+height/2-2*i);
    }
    
    // outline of lips
    stroke(0, 0, 0);
    beginShape();
      curveVertex(705, 498-480+height/2);
      curveVertex(714, 501-480+height/2);
      curveVertex(723, 499-480+height/2);
      curveVertex(782, 503-480+height/2);
      curveVertex(770, 523-480+height/2);
      curveVertex(721, 543-480+height/2);
      curveVertex(712, 544-480+height/2);
      curveVertex(676, 537-480+height/2);
    endShape();
    
    // crack between lips
    strokeWeight(5);
    beginShape();
      curveVertex(695, 518-480+height/2);
      curveVertex(718, 519-480+height/2);
      curveVertex(745, 516-480+height/2);
      curveVertex(784, 505-480+height/2);
      curveVertex(816, 496-480+height/2);
    endShape();
    
    // reset stroke weight for outline of features on face
    strokeWeight(3);
    
    // right edge of forhead
    stroke(0, 0, 0);
    beginShape();
      curveVertex(875, height/2-480+226);
      curveVertex(877, height/2-480+228);
      curveVertex(879, height/2-480+275);
      curveVertex(877, height/2-480+308);
      curveVertex(878, height/2-480+320);
      curveVertex(874, height/2-480+340);
    endShape();    
    
    // right ear
    stroke(0, 0, 0);
    beginShape();
      curveVertex(849, 444-480+height/2);
      curveVertex(877, 447-480+height/2);
      curveVertex(897, 431-480+height/2);
      curveVertex(905, 385-480+height/2);
      curveVertex(904, height/2-480+338);
      curveVertex(897, height/2-480+316);
    endShape();
    
    // right jaw line
    beginShape();
      curveVertex(880, height/2-480+314);
      curveVertex(881, 378-480+height/2);
      curveVertex(871, 461-480+height/2);
      curveVertex(863, 501-480+height/2);
    endShape();
    
    // beard, make loop
    stroke(134, 105, 51);
    for(int i = 0; i < 32; i++){
      beginShape();
        curveVertex(716+4.5*i, 619-480+height/2-0.17*i*i);
        curveVertex(728+4.5*i, 622-480+height/2-0.17*i*i);
        curveVertex(730+4.5*i, 666-480+height/2-0.16*i*i);
        curveVertex(728+4.5*i, 675-480+height/2-0.16*i*i);
      endShape();
    }
    
    // white of eye
    fill(234, 230, 230);
    stroke(0, 0, 0);
    beginShape();
      curveVertex(755, 367-480+height/2);
      curveVertex(769, 354-480+height/2);
      curveVertex(794, height/2-480+334);
      curveVertex(831, 346-480+height/2);
      curveVertex(817, 363-480+height/2);
      curveVertex(769, 354-480+height/2);
      curveVertex(760, height/2-480+342);
    endShape();
    
    // iris need to make hazel/green'ish
    fill(146, 196, 136);
    stroke(146, 196, 136);
    ellipse(801, 349-480+height/2, 23, 23);
    
    // black of eye
    fill(27, 28, 27);
    stroke(27, 28, 27);
    ellipse(801, 349-480+height/2, 7, 7);
    
    // set heavy stroke weight for glasses
    strokeWeight(10);
    noFill();
    
    // center of glasses between eyes
    stroke(0, 0, 0);
    beginShape();
      curveVertex(688, 347-480+height/2);
      curveVertex(719, height/2-480+345);
      curveVertex(740, 346-480+height/2);
      curveVertex(756, 350-480+height/2);
    endShape();
    
    // right glass frame
    beginShape();
      curveVertex(723, 356-480+height/2);
      curveVertex(742, height/2-480+345);
      curveVertex(813, height/2-480+326);
      curveVertex(881, height/2-480+336);
      curveVertex(872, 397-480+height/2);
      curveVertex(852, 416-480+height/2);
      curveVertex(778, 422-480+height/2);
      curveVertex(759, 409-480+height/2);
      curveVertex(742, height/2-480+345);
      curveVertex(753, height/2-480+305);
    endShape();
    
    beginShape();
      curveVertex(871, height/2-480+326);
      curveVertex(874, height/2-480+326);
      curveVertex(897, height/2-480+325);
      curveVertex(899, height/2-480+336);
      curveVertex(891, height/2-480+342);
      curveVertex(894, height/2-480+326);
      curveVertex(886, height/2-480+310);
      curveVertex(878, height/2-480+287);
    endShape();

  // nuoya half + background fill, untranslate first
    //translate(74, -135);
    translate(74+640-width/2, -135);
    drawNuoya(width/2,height/2,  skin,  eyes,  eye_white, brownHair );

}


void mousePressed() {
  println(mouseX +", "+mouseY);
}
