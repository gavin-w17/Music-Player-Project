//Global Variables
float textPlaypauseX, textPlaypauseY, textRectWidth1, textRectHeight1;
float textFFX, textFFY, textRectWidth2, textRectHeight2;
float textFRX, textFRY, textRectWidth3, textRectHeight3;
float textPreviousX, textPreviousY, textRectWidth4, textRectHeight4;
float textNextX, textNextY, textRectWidth5, textRectHeight5;
float textMuteX, textMuteY, textRectWidth6, textRectHeight6;
float textloopPlaylistX, textloopPlaylistY, textRectWidth7, textRectHeight7;
float textloop1X, textloop1Y, textRectWidth8, textRectHeight8;
float textloopinfX, textloopinfY, textRectWidth9, textRectHeight9;
float textcurrentsongX, textcurrentsongY, textRectWidth10, textRectHeight10;
color blackInk=#000000, resetWhiteInk=#FFFFFF;
PFont font;
String string1 = "Play/Pause";
//
void textSetup() {
  textPlaypauseX = width*3.6/8;
  textPlaypauseY = height*4.2/8;
  textRectWidth1 = width*2/20;
  textRectHeight1 = height*1/10;
  //
  rect( textPlaypauseX, textPlaypauseY, textRectWidth1, textRectHeight1 );
  //
  font = createFont ("Calibri", 55);
};
//end textSetup()
void preTextDraw() {
  fill(blackInk);
  textAlign (CENTER, CENTER);
  int textSize = 24;
  textFont(font, height); //change number until the text fits in box and is readable.
}
//
void allText() {
  textDraw1();
  /*textDraw2();
  textDraw3();
  textDraw4();
  textDraw5();
  textDraw6();
  textDraw7();
  textDraw8();
  textDraw9();
  textDraw10();*/
};//end allText
//
void textDraw1() { //play/pause text
  preTextDraw();
  //
  //paste here is text size, will change depending on string
  textSize( 10.2 );
  //printing text on screen
  text( string1, textPlaypauseX, textPlaypauseY, textRectWidth1, textRectHeight1 );
  fill(resetWhiteInk);
}
//end text subprogram
