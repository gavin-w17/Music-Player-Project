//Global Variables
float textRectX, textRectY, textRectWidth, textRectHeight;
PFont font;
color purpleInk=#2C08FF, resetWhiteInk=#FFFFFF; //not nice for night mode, blue content
String string = "I need off the learning bus! Spring Break is not over.";
//
void setup() {
  size(700, 500); //fullScreen(); // displayWidth and displayHeight
  //
  //population, from display
  textRectX = width*1/8;
  textRectY = height*1/8;
  textRectWidth = width*3/4;
  textRectHeight = height*1/8;
  //
  rect( textRectX, textRectY, textRectWidth, textRectHeight );
  /*
  println("Start of Console");
  String[] fontlist = PFont.list(); //to list all available fonts on system
  printArray(fontlist); //to list all possible fonts to choose, then create said fonts
  */
  // choose your own font //"Calibri" [63] <-- font
  font = createFont ("Calibri", 55); //verify the font exists
  //tools / create font/ find font/ do not press "OK", known bug
  //
  fill(purpleInk); //Ink, hexidecimal copied from color selector
  textAlign (CENTER, CENTER); //align x&y, see processing.org / reference
  //horizontal values (X): [LEFT | CENTER | RIGHT] &
  //vertical values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  int textSize = 24;
  textFont(font, textSize); //change the number until it fits, largest font size
  //
  //printing text on the CANVAS 
  text( string, textRectX, textRectY, textRectWidth, textRectHeight );
  //
  fill(resetWhiteInk); //reset
  //
}//end setup
//
void draw() {
}//end draw
//
void keyPressed() {
}//end keypressed
//
void mousePressed() {
}//end mousepressed
//
//end main program
