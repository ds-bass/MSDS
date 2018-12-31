void painting(){
//image(starryNight, 0, 0);
  for (int i = 0; i < 500; i++) {
    float x = random(width);
    float y = random(height);
    //int loc = x + y*starryNight.width;
    color c = starryNight.get(int(x), int(y));
      // illuminate stars some
      if (x > 741 && x < 802 && y > 60 && y < 119){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 260 && x < 345 && y > 134 && y < 210){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 615 && x < 626 && y > 861 && y < 877){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 113 && x < 155 && y > 24 && y < 68){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 285 && x < 306 && y > 26 && y < 46){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 502 && x < 550 && y > 45 && y < 91){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 405 && x < 483 && y > 3 && y < 79){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 435 && x < 477 && y > 515 && y < 554){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 398 && x < 440 && y > 314 && y < 353){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            } else if(x > 871 && x < 940 && y > 197 && y < 271){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 15, 15);
            
            // moon, circles a little bigger than the stars
            } else if(x > 1037 && x < width && y > 117 && y < 250){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 20, 20);
            } else if(x > 1090 && x < 1242 && y > 62 && y < 118){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 20, 20);
            } else if(x > 1085 && x < 1235 && y > 251 && y < 290){
              fill(c, 25);
              noStroke();
              ellipse(x, y, 20, 20);
              
            // wind over the top of mountain made up of lines instead of circles
            } else if(x > 1178 && x < 1275 && y > 404 && y < 506){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 1078 && x < 1176 && y > 438 && y < 537){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 964 && x < 1116 && y > 543 && y < 594){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 789 && x < 962 && y > 560 && y < 631){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 601 && x < 790 && y > 587 && y < 657){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 592 && x < 698 && y > 658 && y < 691){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 509 && x < 601 && y > 595 && y < 696){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 992 && x < 1078 && y > 450 && y < 550){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 446 && x < 511 && y > 623 && y < 719){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 975 && x < 1087 && y > 617 && y < 622){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 970 && x < 1091 && y > 594 && y < 629){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+20, y-5);
            } else if(x > 409 && x < 448 && y > 632 && y < 673){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            } else if(x > 421 && x < 446 && y > 673 && y < 693){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-15);
            
            // wind up in middle of sky made up of lines instead of circles
            } else if(x > 283 && x < 354 && y > 250 && y < 353){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-20);
            } else if(x > 355 && x < 393 && y > 214 && y < 320){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-20);
            } else if(x > 394 && x < 445 && y > 205 && y < 294){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-10);
            } else if(x > 446 && x < 490 && y > 153 && y < 265){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y-5);
            } else if(x > 491 && x < 557 && y > 146 && y < 255){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y+2);
            } else if(x > 558 && x < 625 && y > 153 && y < 276){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y+2);
            } else if(x > 626 && x < 679 && y > 166 && y < 276){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y+5);
            } else if(x > 680 && x < 757 && y > 179 && y < 276){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y+10);
            } else if(x > 758 && x < 809 && y > 213 && y < 276){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+15, y+20);
            } else if(x > 660 && x < 822 && y > 277 && y < 377){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+4, y+20);
            } else if(x > 637 && x < 662 && y > 277 && y < 377){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x+2, y+20);
            } else if(x > 606 && x < 769 && y > 378 && y < 422){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x-20, y-4);
            } else if(x > 564 && x < 639 && y > 272 && y < 377){
              stroke(c, 25);
              strokeWeight(6);
              line(x, y, x-8, y-16);

            // rest of sketch fill with circles
            } else {         
              fill(c, 100);
              noStroke();
              ellipse(x, y, 5, 5);
            }}}
