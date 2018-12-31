// Co-authored by Ryan Bass and Nuoya Rezsonya
// source for DNA structure: https://upload.wikimedia.org/wikipedia/commons/e/e4/DNA_chemical_structure.svg

import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
PeasyCam peasycam;

Thymine thymine;
Cytosine cytosine;
Guanine guanine;
Adenine adenine;
PhosphoRiboseBackbone prb;
HydrogenBonds hb;

String nitrogen = "N";
String hydrogen = "H";
String phosphorus = "P";
String oxygen = "O";
String two = "2";
int depthOfMolecule = 20;

void setup() {

  size(800, 1000, P3D);
  textMode(SHAPE);
  textMode(CENTER);
  textSize(30);

  thymine = new Thymine();
  cytosine = new Cytosine();
  guanine = new Guanine();
  adenine = new Adenine();
  prb = new PhosphoRiboseBackbone();
  hb = new HydrogenBonds();
  peasycam = new PeasyCam(this, 0,300,0,3000);


}

void draw(){

   background(0);

   fill(255);
   text("Thymine", -300, -780);
   text("Adenine", -650, -780);
   text("Cytosine", 500, 1650);
   text("Guanine", 0, 1650);
   lights();

   //int transX, int transY, int transZ, float rotateDegrees
   //translate X, Y, Z, and rotate in degrees of whole molecule
   thymine.show(-100, -500, 0, 223);    //pair1
   adenine.show(-470, -430, 0, 282);
   prb.upright(-800, -140, 0, 0);
   prb.upsidedown(120, -550, 0, 180);

   guanine.flip(-93, 95, 0, 65);      //pair2
   cytosine.flip(-453, 95, 0, 0);
   prb.upright(-655, 413, 0, 0);
   prb.upsidedown(260, -20, 0, 180);

   adenine.flip(35, 625, 0, 67);       //pair3
   thymine.flip(-310, 625, 0, 242);
   prb.upright(-510, 966, 0, 0);
   prb.upsidedown(390, 510, 0, 180);

   cytosine.show(320, 1120, 0, 223);    //pair4
   guanine.show(-35, 1210, 0, 280);
   prb.upright(-365, 1519, 0, 0);
   prb.upsidedown(520, 1050, 0, 180);

   //the moving bonds between NH2-O  and NH-N
   //first
   translate(-350,-700,0);
   hb.drawsphere(20);
   hb.moveAround();
   //second
   translate(70,200,0);
   hb.drawsphere(20);
   hb.moveAround();

   //third
   translate(0,400,0);
   hb.drawsphere(20);
   hb.moveAround();
   //fourth
   translate(10,200,0);
   hb.drawsphere(20);
   hb.moveAround();
   //fifth
   translate(-20,200,0);
   hb.drawsphere(20);
   hb.moveAround();

   //sixth
   translate(130,100,0);
   hb.drawsphere(20);
   hb.moveAround();
   //7th
   translate(10,200,0);
   hb.drawsphere(20);
   hb.moveAround();


   //8th
   translate(250,400,0);
   hb.drawsphere(20);
   hb.moveAround();
   //9th
   translate(60,150,0);
   hb.drawsphere(20);
   hb.moveAround();
   //10th
   translate(40,170,0);
   hb.drawsphere(20);
   hb.moveAround();

}
