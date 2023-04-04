//Global Variables
float textRectX1, textRectY1, textRectWidth1, textRectHeight1;
float textRectX2, textRectY2, textRectWidth2, textRectHeight2;
float textRectX3, textRectY3, textRectWidth3, textRectHeight3;
PFont font;
color purpleInk=#2C08FF, resetWhiteInk=#FFFFFF; //not nice for night mode, blue content
String string1 = "I need off the learning bus! Spring Break is not over.";
String string3 = "Bottom of the Page.";
String string2 = "Middle.";
//
void allText() {
  textDraw1();
  textDraw2();
  textDraw3();
}//end all text
//
void textSetup() { //executed once
  //population, from display
  //must have case study
  textRectX1 = textRectX2 = textRectX3 = width*1/8;
  textRectY1 = height*1/8;
  textRectWidth1 = textRectWidth2 = textRectWidth3 = width*3/4;
  textRectHeight1 = textRectHeight2 = textRectHeight3 = height*1/8;
  textRectX2 = textRectX1;
  textRectY2 = height*3.5/8;
  textRectWidth2 = textRectWidth1;
  textRectHeight2 = textRectHeight1;
  textRectX3 = textRectX1;
  textRectY3 = height*6/8;
  textRectWidth3 = textRectWidth1;
  textRectHeight3 = textRectHeight1;
  //
  rect( textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  rect( textRectX2, textRectY2, textRectWidth2, textRectHeight2 );
  rect( textRectX3, textRectY3, textRectWidth3, textRectHeight3 );
  /*
  println("Start of Console");
  String[] fontlist = PFont.list(); //to list all available fonts on system
  printArray(fontlist); //to list all possible fonts to choose, then create said fonts
  */
  // choose your own font //"Calibri" [63] <-- font
  font = createFont ("Calibri", 55); //verify the font exists
  //tools / create font/ find font/ do not press "OK", known bug
  //
}//end text setup()
//
void preTextDraw() {
  fill(purpleInk); //Ink, hexidecimal copied from color selector
  textAlign (CENTER, CENTER); //align x&y, see processing.org / reference
  //horizontal values (X): [LEFT | CENTER | RIGHT] &
  //vertical values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  int textSize = 24;
  textFont(font, height); //change the number until it fits, largest font size
}
//
void textDraw1() {
  preTextDraw();
  //
  //paste here is text size will change depending on string
  textSize( 24 );
  //printing text on the CANVAS 
  text( string1, textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  fill(resetWhiteInk); //reset
  //
}//end text draw #1
//
void textDraw2() {
  preTextDraw();
  //paste here is text size will change depending on string
  textSize( 60 );
  //printing text on the CANVAS 
  text( string2, textRectX2, textRectY2, textRectWidth2, textRectHeight2 );
  fill(resetWhiteInk); //reset
  //
}//end text draw #2
//
void textDraw3() {
  preTextDraw();
  //paste here is text size will change depending on string
  textSize( 48 );
  //printing text on the CANVAS 
  text( string3, textRectX3, textRectY3, textRectWidth3, textRectHeight3 );
  fill(resetWhiteInk); //reset
  //
}//end text draw #3
//End text subprogram
