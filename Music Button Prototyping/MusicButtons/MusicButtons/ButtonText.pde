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
String string2 = "Fast Forward";
String string3 = "Fast Rewind";
String string4 = "Previous Song";
String string5 = "Next Song";
String string6 = "Mute Song";
//
void textSetup() {
  textPlaypauseX = width*3.6/8;
  textPlaypauseY = height*4.2/8;
  textRectWidth1 = textRectWidth3 = textRectWidth4 = textRectWidth5 = width*2/20;
  textRectHeight1 = textRectHeight3 = textRectHeight4 = textRectHeight5 = height*1/10;
  textFFX = width*4.59/8;
  textFFY = height*4.34/8;
  textRectWidth2 = textRectWidth6 = width*2/20;
  textRectHeight2 = textRectHeight6 = height*1/10;
  textFRX = width*2.67/8;
  textFRY = height*4.34/8;
  textPreviousX = width*1.7/8;
  textPreviousY = height*4.44/8;
  textNextX = width*5.95/8;
  textNextY = height*4.44/8;
  textMuteX = width*4.56/8;
  textMuteY = height*2.3/8;
  //
  rect( textPlaypauseX, textPlaypauseY, textRectWidth1, textRectHeight1 );
  rect( textFFX, textFFY, textRectWidth2, textRectHeight2 );
  rect( textFRX, textFRY, textRectWidth3, textRectHeight3 );
  rect( textPreviousX, textPreviousY, textRectWidth4, textRectHeight4 );
  rect( textNextX, textNextY, textRectWidth5, textRectHeight5 );
  rect( textMuteX, textMuteY, textRectWidth6, textRectHeight6 );
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
  textDraw2();
  textDraw3();
  textDraw4();
  textDraw5();
  textDraw6();
  /*textDraw7();
  textDraw8();
  textDraw9();
  textDraw10();*/
};//end allText
//
void textDraw1() { //play/pause text
  preTextDraw();
  //
  //paste here is text size, will change depending on string
  textSize( 10.28 );
  //printing text on screen
  text( string1, textPlaypauseX, textPlaypauseY, textRectWidth1, textRectHeight1 );
  fill(resetWhiteInk);
}
void textDraw2() { //fastforward text
  preTextDraw();
  //
  //paste here is text size, will change depending on string
  textSize( 10.27 );
  //printing text on screen
  text( string2, textFFX, textFFY, textRectWidth2, textRectHeight2 );
  fill(resetWhiteInk);
}
void textDraw3() {//fast rewind text
  preTextDraw();
  //
  //paste here is text size, will change depending on string
  textSize( 10.9 );
  //printing text on screen
  text( string3, textFRX, textFRY, textRectWidth3, textRectHeight3 );
  fill(resetWhiteInk);
}
void textDraw4() {//previous button text
  preTextDraw();
  //
  textSize( 10.9 );
  text( string4, textPreviousX, textPreviousY, textRectWidth4, textRectHeight4 );
  fill(resetWhiteInk);
}
void textDraw5() {//next button text
  preTextDraw();
  //
  textSize( 14 );
  //printing text on screen
  text( string5, textNextX, textNextY, textRectWidth5, textRectHeight5 );
  fill(resetWhiteInk);
}
void textDraw6() {
  preTextDraw();
  //
  textSize( 14 );
  text( string6, textMuteX, textMuteY, textRectWidth6, textRectHeight6 );
  fill(resetWhiteInk);
}
//end text subprogram
