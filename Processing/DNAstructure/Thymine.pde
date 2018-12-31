class Thymine{
  
  Thymine(){
    
  }
  
  void show(int transX, int transY, int transZ, float rotateDegrees) {
    pushMatrix();
        translate(transX, transY, transZ);
        rotate(radians(rotateDegrees));
      
      //thymine
      stroke(255);
       
      //5C to 6C double bond
      strokeWeight(8);
      line(46, 78, -1, -46, 78, -1);
      line(46, 78, depthOfMolecule+1, -46, 78, depthOfMolecule+1);
      strokeWeight(1);
      
      //5-methyl
      line(50, 87, depthOfMolecule/2, 100, 174, depthOfMolecule/2);
      
      //2C carbonyl
      line(-50, -87, 0, -100, -174, 0);
      line(-50, -87, depthOfMolecule, -100, -174, depthOfMolecule);
      
      //4C carbonyl
      line(100, 0, 0, 200, 0, 0);
      line(100, 0, depthOfMolecule, 200, 0, depthOfMolecule);
      
      pushMatrix();
        fill(255);
        translate(205, -220, 0);
        rotate(radians(90));
        
        //6C amino label,going clockwise
        text(oxygen, 200, 0, depthOfMolecule/2);

        text(hydrogen, 120, 165, depthOfMolecule+1);
        text(nitrogen, 150, 165, depthOfMolecule+1);
        
        text(oxygen, 10, 330, depthOfMolecule+1);
        
        text(nitrogen, 200, 320, depthOfMolecule+1);
        
      popMatrix();
      
      fill(216, 50, 175);
      
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
    
    //thymine
    pushMatrix();
        translate(transX, transY, transZ);
        rotate(radians(rotateDegrees));
        
      //5C to 6C double bond
      stroke(255);
      strokeWeight(8);

      line(46, -78, 1, 93, 0, -1);
      line(46,-78, depthOfMolecule+1,93, 0, depthOfMolecule+1);
      strokeWeight(1);
      
      //5-methyl
      line(100, 0, depthOfMolecule/2, 200, 0, depthOfMolecule/2);
     
      //2C carbonyl
      line(-100, 0, 0, -180, 0, 0);
      line(-100, 0, depthOfMolecule, -180, 0, depthOfMolecule);
      
      
      //4C carbonyl
      line(50, 87, 0, 100, 174, 0);
      line(50, 87, depthOfMolecule, 100, 174, depthOfMolecule);
      
      pushMatrix();
        fill(255);
        translate(205, -220, 0);
        rotate(radians(120));
        
        //6C amino label,going clockwise
        text(oxygen, 380, -120, depthOfMolecule+1);
        text(nitrogen,220, 170, depthOfMolecule+1);
        
        text(nitrogen, 370, 80, depthOfMolecule+1);
             
        text(oxygen, 400, 250, depthOfMolecule+1);
        
        text(hydrogen, 410, 80, depthOfMolecule+1);    
        
      popMatrix();
      
      fill(216, 50, 175);
      
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
