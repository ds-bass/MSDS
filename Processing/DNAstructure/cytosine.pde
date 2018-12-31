class Cytosine{
  
  Cytosine(){
    
  }
  
  void show(int transX, int transY, int transZ, float rotateDegrees){
    
    pushMatrix();
      translate(transX, transY, transZ);
      rotate(radians(rotateDegrees));

      //5C to 6C double bond
      stroke(255);
      //5C to 6C double bond
      strokeWeight(8);
  
      //5C to 6C double bond
      strokeWeight(8);
      line(46, 78, -1, -46, 78, -1);
      line(46, 78, depthOfMolecule+1, -46, 78, depthOfMolecule+1);
      
      //3C to 4C double bond    
      line(43, -82, -1, 93, 5, -1);
      line(43, -82, depthOfMolecule+1, 93, 5, depthOfMolecule+1);
      strokeWeight(1);

      //2C carbonyl
      line(-50, -87, 0, -100, -174, 0);
      line(-50, -87, depthOfMolecule, -100, -174, depthOfMolecule);
      
      //4C amino
      line(100, 0, depthOfMolecule/2, 200, 0, depthOfMolecule/2);
      
      pushMatrix();
        fill(255);
        translate(205, -220, 0);
        rotate(radians(120));
        //6C amino label,going clockwise
        text(hydrogen, 180, -120, depthOfMolecule+1);
        text(two, 210, -120, depthOfMolecule+1);
        text(nitrogen, 240, -120, depthOfMolecule+1);
        
        text(nitrogen,180, 100, depthOfMolecule+1);
        
        text(oxygen, 175, 250, depthOfMolecule+1);
        
        text(nitrogen, 330, 170, depthOfMolecule+1);     
        
      popMatrix();
      
      fill(226, 171, 165);

      //top face of hexagon
      beginShape();
        vertex(-100, 0, 0);    //1C
        vertex(-50, -87, 0);   //2C
        vertex(50, -87, 0);    //3C
        vertex(100, 0, 0);     //4C
        vertex(50, 87, 0);     //5C
        vertex(-50, 87, 0);    //6C
        vertex(-100, 0, 0);
      endShape();
      
      //bottom face of hexagon
      beginShape();  
        vertex(-100, 0, depthOfMolecule);  //1C
        vertex(-50, -87, depthOfMolecule); //2C
        vertex(50, -87, depthOfMolecule);  //3C
        vertex(100, 0, depthOfMolecule);   //4C
        vertex(50, 87, depthOfMolecule);   //5C
        vertex(-50, 87, depthOfMolecule);  //6C
        vertex(-100, 0, depthOfMolecule);
      endShape();
      
      //side faces to make it an enclosed polygon
      beginShape();
        vertex(-100, 0, 0);
        vertex(-50, -87, 0);
        vertex(-50, -87, depthOfMolecule);
        vertex(-100, 0, depthOfMolecule);    
      endShape();
      
      beginShape();
        vertex(-50, -87, 0);
        vertex(50, -87, 0);
        vertex(50, -87, depthOfMolecule);
        vertex(-50, -87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(50, -87, 0);
        vertex(100, 0, 0);
        vertex(100, 0, depthOfMolecule);
        vertex(50, -87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(100, 0, 0);
        vertex(50, 87, 0);
        vertex(50, 87, depthOfMolecule);
        vertex(100, 0, depthOfMolecule);   
      endShape();
      
      beginShape();
        vertex(50, 87, 0);
        vertex(-50, 87, 0);
        vertex(-50, 87, depthOfMolecule);
        vertex(50, 87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(-50, 87, 0);
        vertex(-100, 0, 0);
        vertex(-100, 0, depthOfMolecule);
        vertex(-50, 87, depthOfMolecule);
      endShape();
      
    popMatrix();

  }
   void flip(int transX, int transY, int transZ, float rotateDegrees) {
     //cytosine 5' strand
     
  pushMatrix();
      translate(transX, transY, transZ);
      rotate(radians(rotateDegrees));

      //5C to 6C double bond
      stroke(255);
      //5C to 6C double bond
      strokeWeight(8);
      line(-46, -78, -1, -92, 0, -1);
      line(-46, -78, depthOfMolecule+1, -92, 0, depthOfMolecule+1);
      
      //3C to 4C double bond    
      line(43, -82, -1, 93, 5, -1);
      line(43, -82, depthOfMolecule+1, 93, 5, depthOfMolecule+1);
      strokeWeight(1);

      //2C carbonyl
      line(50, 87, 0, 100, 174, 0);
      line(50, 87, depthOfMolecule, 100, 174, depthOfMolecule);
      
      //4C amino
      line(50, -87, depthOfMolecule/2,100, -200, depthOfMolecule/2);
      
      pushMatrix();
        fill(255);
        translate(205, -220, 0);
        rotate(radians(30));
        
        //6C amino label,going clockwise
        text(nitrogen, -150, 80, depthOfMolecule+1);  
        text(hydrogen, -120, 80, depthOfMolecule+1);
        text(two, -90, 80, depthOfMolecule+1);
        
        text(nitrogen, 0, 270, depthOfMolecule+1);
        
        text(oxygen, 100, 410, depthOfMolecule+1);
        
        text(nitrogen, -100, 400, depthOfMolecule+1);
   
    popMatrix();

      fill(226, 171, 165);
      
      //top face of hexagon
      beginShape();
        vertex(-100, 0, 0);    //1C
        vertex(-50, -87, 0);   //2C
        vertex(50, -87, 0);    //3C
        vertex(100, 0, 0);     //4C
        vertex(50, 87, 0);     //5C
        vertex(-50, 87, 0);    //6C
        vertex(-100, 0, 0);
      endShape();
      
      //bottom face of hexagon
      beginShape();  
        vertex(-100, 0, depthOfMolecule);  //1C
        vertex(-50, -87, depthOfMolecule); //2C
        vertex(50, -87, depthOfMolecule);  //3C
        vertex(100, 0, depthOfMolecule);   //4C
        vertex(50, 87, depthOfMolecule);   //5C
        vertex(-50, 87, depthOfMolecule);  //6C
        vertex(-100, 0, depthOfMolecule);
      endShape();
      
      //side faces to make it an enclosed polygon
      beginShape();
        vertex(-100, 0, 0);
        vertex(-50, -87, 0);
        vertex(-50, -87, depthOfMolecule);
        vertex(-100, 0, depthOfMolecule);    
      endShape();
      
      beginShape();
        vertex(-50, -87, 0);
        vertex(50, -87, 0);
        vertex(50, -87, depthOfMolecule);
        vertex(-50, -87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(50, -87, 0);
        vertex(100, 0, 0);
        vertex(100, 0, depthOfMolecule);
        vertex(50, -87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(100, 0, 0);
        vertex(50, 87, 0);
        vertex(50, 87, depthOfMolecule);
        vertex(100, 0, depthOfMolecule);   
      endShape();
      
      beginShape();
        vertex(50, 87, 0);
        vertex(-50, 87, 0);
        vertex(-50, 87, depthOfMolecule);
        vertex(50, 87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(-50, 87, 0);
        vertex(-100, 0, 0);
        vertex(-100, 0, depthOfMolecule);
        vertex(-50, 87, depthOfMolecule);
      endShape();
  popMatrix();
 }
 }
