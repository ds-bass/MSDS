class PhosphoRiboseBackbone{

  PhosphoRiboseBackbone(){
    
  }
  
  void upright(int transX, int transY, int transZ, float rotateDegrees){
    
    pushMatrix();
      translate(transX, transY, transZ);
      rotate(radians(rotateDegrees));
    
     //5 oxygen label
     stroke(255);
     fill(255);
     text(oxygen, -10, -230.884, depthOfMolecule+1);
     
     //1C connects to nucleotide
     line(80.902, -182.106, depthOfMolecule, 135, -250, depthOfMolecule);
     
     //4C to CH2
     line(-80.902, -182.106, depthOfMolecule, -135, -250, depthOfMolecule);
     //line from that CH2 to the phosphate
     line(-135, -250, depthOfMolecule, -125, -360, depthOfMolecule);
     //oxygen
     text(oxygen, -135, -350, depthOfMolecule);
     //line from that oxygen to the phosphorus
     line(-125, -360, depthOfMolecule, -195, -430, depthOfMolecule);
     //phosphorus
     text(phosphorus, -205, -420, depthOfMolecule);
     //lower left oxygen
     line(-255, -360, depthOfMolecule, -195, -430, depthOfMolecule);
     text(oxygen, -265, -350, depthOfMolecule);
     //upper right oxygen
     line(-200, -425, depthOfMolecule, -135, -510, depthOfMolecule);
     text(oxygen, -140, -510, depthOfMolecule);
     //upper left oxygen double bond
     line(-195, -430, -1, -260, -460, -1);
     line(-195, -430, depthOfMolecule+1, -260, -460, depthOfMolecule+1);
     text(oxygen, -285, -455, depthOfMolecule);
     //bond from 3C to next phosphate
     line(-50, -87, 0, 5, 20, 0);
     
     fill(247, 179, 75);
     //top face of pentagon
      beginShape();
        vertex(-50, -87, 0);          //3C
        vertex(50, -87, 0);           //2C
        vertex(80.902, -182.106, 0);  //1C
        vertex(0, -240.884, 0);       //5O
        vertex(-80.902, -182.106, 0); //4C
        vertex(-50, -87, 0);
      endShape();
      
      //bottom face of pentagon
      beginShape();
        vertex(-50, -87, depthOfMolecule);          //3C
        vertex(50, -87, depthOfMolecule);           //2C
        vertex(80.902, -182.106, depthOfMolecule);  //1C
        vertex(0, -240.884, depthOfMolecule);       //5O
        vertex(-80.902, -182.106, depthOfMolecule); //4C
        vertex(-50, -87, depthOfMolecule);
      endShape();
      
      //side faces to make it an enclosed pentagon
      beginShape();
        vertex(50, -87, 0);
        vertex(80.902, -182.106, 0);
        vertex(80.902, -182.106, depthOfMolecule);
        vertex(50, -87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(80.902, -182.106, 0);  
        vertex(0, -240.884, 0);
        vertex(0, -240.884, depthOfMolecule);  
        vertex(80.902, -182.106, depthOfMolecule);  
      endShape();
      
      beginShape();
        vertex(0, -240.884, 0);       
        vertex(-80.902, -182.106, 0); 
        vertex(-80.902, -182.106, depthOfMolecule); 
        vertex(0, -240.884, depthOfMolecule);       
      endShape();
      
      beginShape();
        vertex(-80.902, -182.106, 0); 
        vertex(-50, -87, 0);          
        vertex(-50, -87, depthOfMolecule);          
        vertex(-80.902, -182.106, depthOfMolecule); 
      endShape();
        
    popMatrix();
    
  }
 
  
    void upsidedown(int transX, int transY, int transZ, float rotateDegrees){
    
    pushMatrix();
      translate(transX, transY, transZ);
      rotate(radians(rotateDegrees));
    
     //5 oxygen label
     stroke(255);
     fill(255);
     text(oxygen, -10, -230.884, depthOfMolecule+1);
     
     //1C connects to nucleotide
     line(80.902, -182.106, depthOfMolecule, 150, -130, depthOfMolecule);
     
     //4C to CH2
     line(-80.902, -182.106, depthOfMolecule, -135, -250, depthOfMolecule);
     //line from that CH2 to the phosphate
     line(-135, -250, depthOfMolecule, -125, -360, depthOfMolecule);
     //oxygen
     text(oxygen, -135, -350, depthOfMolecule);
     //line from that oxygen to the phosphorus
     line(-125, -360, depthOfMolecule, -195, -430, depthOfMolecule);
     //phosphorus
     text(phosphorus, -205, -420, depthOfMolecule);
     //lower left oxygen
     line(-255, -360, depthOfMolecule, -195, -430, depthOfMolecule);
     text(oxygen, -265, -350, depthOfMolecule);
     //upper right oxygen
     line(-200, -425, depthOfMolecule, -135, -510, depthOfMolecule);
     text(oxygen, -140, -510, depthOfMolecule);
     //upper left oxygen double bond
     line(-195, -430, -1, -260, -460, -1);
     line(-195, -430, depthOfMolecule+1, -260, -460, depthOfMolecule+1);
     text(oxygen, -285, -455, depthOfMolecule);
     //bond from 3C to next phosphate
     line(-50, -87, 0, 0, 0, 0);
     
     fill(247, 179, 75);
     //top face of pentagon
      beginShape();
        vertex(-50, -87, 0);          //3C
        vertex(50, -87, 0);           //2C
        vertex(80.902, -182.106, 0);  //1C
        vertex(0, -240.884, 0);       //5O
        vertex(-80.902, -182.106, 0); //4C
        vertex(-50, -87, 0);
      endShape();
      
      //bottom face of pentagon
      beginShape();
        vertex(-50, -87, depthOfMolecule);          //3C
        vertex(50, -87, depthOfMolecule);           //2C
        vertex(80.902, -182.106, depthOfMolecule);  //1C
        vertex(0, -240.884, depthOfMolecule);       //5O
        vertex(-80.902, -182.106, depthOfMolecule); //4C
        vertex(-50, -87, depthOfMolecule);
      endShape();
      
      //side faces to make it an enclosed pentagon
      beginShape();
        vertex(50, -87, 0);
        vertex(80.902, -182.106, 0);
        vertex(80.902, -182.106, depthOfMolecule);
        vertex(50, -87, depthOfMolecule);
      endShape();
      
      beginShape();
        vertex(80.902, -182.106, 0);  
        vertex(0, -240.884, 0);
        vertex(0, -240.884, depthOfMolecule);  
        vertex(80.902, -182.106, depthOfMolecule);  
      endShape();
      
      beginShape();
        vertex(0, -240.884, 0);       
        vertex(-80.902, -182.106, 0); 
        vertex(-80.902, -182.106, depthOfMolecule); 
        vertex(0, -240.884, depthOfMolecule);       
      endShape();
      
      beginShape();
        vertex(-80.902, -182.106, 0); 
        vertex(-50, -87, 0);          
        vertex(-50, -87, depthOfMolecule);          
        vertex(-80.902, -182.106, depthOfMolecule); 
      endShape();
        
    popMatrix();
    
  }
  
}
