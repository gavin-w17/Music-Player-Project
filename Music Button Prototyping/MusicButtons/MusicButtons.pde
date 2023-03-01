//Global Variables
float buttonReferentMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
//
void setup() {
  //Display
  size(700, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  //
  //Population: visual data
  buttonReferentMeasure = width * 1/8;
  buttonSide = buttonReferentMeasure;
  spaceWidth = buttonReferentMeasure * 1/4;
  spaceHeight = buttonReferentMeasure * 1/4;
  //
  float centerX = width * 1/2;
  float centerY = height * 1/2;
  print("Confirming Center X:", centerX);
  println("/t Confirming Center Y:", centerY);
  //
  pauseX1 = centerX - buttonReferentMeasure*1/2;
  pauseY1 = centerY - buttonReferentMeasure*1/2;
  pausewidth =
  pauseX2 =
  pauseY2 = pauseY1
} //End setup
//
void draw() {
  //
  /*Note: draw pause button first in the middle
  All other buttons are drawn around it
  */
  //
  //Button Space
  //Rect( X, Y, Width, Height );
  //
  //Stop Button
  //rect( X, Y, Width, Height ); //Layout?
  //rect( X, Y, Side, side ); //Square shape
  //
  //Pause Button
  //rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //
  //Play Button
  rect( X, Y, Width, Height ); //Layout
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //MUTE Button
  //rect( X, Y, Width, Height ); //Layout
  //Students to develop
  //
  //Fast Forward in the Song
  rect( X, Y, Width, Height ); //Layout
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Reverse in the song
  rect( X, Y, Width, Height ); //Layout
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //NextButton, skip file
  rect( X, Y, Width, Height ); //Layout
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  rect( X, Y, Width, Height );
  //
  //Previous Button
  rect( X, Y, Width, Height ); //Layout
  rect( X, Y, Width, Height );
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the Song Once
  //Students to Develop
  rect( X, Y, Width, Height ); //Layout
  ellipse( X, Y, WidthDiameter, HeightDiameter );
  ellipse( X, Y, WidthDiameter, HeightDiameter );
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  rect( X, Y, Width, Height ); //Layout
  ellipse( X, Y, WidthDiameter, HeightDiameter );
  ellipse( X, Y, WidthDiameter, HeightDiameter );
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the Playlist (Infinitely)
  //Students to develop
  rect( X, Y, Width, Height ); //Layout
  ellipse( X, Y, WidthDiameter, HeightDiameter );
  ellipse( X, Y, WidthDiameter, HeightDiameter );
  triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
