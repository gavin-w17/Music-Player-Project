//Global Variables
float buttonReferentMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
float playX, playY, stopX, stopY, muteX, muteY, loopIX, loopIY;
float ffX, ffY, rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY;
float playX1, playX2, playX3, playY1, playY2, playY3;
float muteX2, muteX3, muteY2, muteY3;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
float rrX1A, rrY1A, rrX3A, rrY3A, rrX2A, rrY2A;
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextWidth;
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevWidth;
float loop1WidthDiameter, loop1HeightDiameter, loopX1, loopY1;
float loop1X1, loop1X2, loop1X3, loop1Y1, loop1Y2, loop1Y3;
//
void setup() {
  //Display
  size(700, 500); //width, height
  //fullscreen(); //displayWidth, displayHeight
  //
  //Population: visual data
  buttonReferentMeasure = width * 1/8;
  buttonSide = buttonReferentMeasure;
  spaceWidth = buttonReferentMeasure * 1/3;
  //
  float centerX = width * 1/2;
  float centerY = height * 1/2;
  int buttonPositionColumn, buttonPositionRow;
  print("Confirming Center X:", centerX);
  println("/t Confirming Center Y:", centerY);
  //
  pauseX1 = centerX - buttonReferentMeasure*1/2;
  pauseY1 = centerY - buttonReferentMeasure*1/2;
  pauseWidth = buttonReferentMeasure * 1/4;
  pauseX2 = centerX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX3 = playX1;
  playY3 = pauseY1 + buttonReferentMeasure;
  //need playY3 before playY2
  playX2 = playX1 + buttonReferentMeasure;
  playY2 = playY1 + (playY3-playY1)*1/2;
  //
  buttonPositionRow = 2;
  muteX = pauseX1;
  muteY = pauseY1 - ( buttonPositionRow * buttonReferentMeasure );
  muteX3 = muteX;
  muteY3 = muteY + buttonReferentMeasure;
  muteX2 = muteX + buttonReferentMeasure * 1/2;
  muteY2 = muteY + (muteY3 - muteY) * 1/2;
  //
  loopIX = pauseX1;
  loopIY = pauseY1 + ( buttonPositionRow + buttonReferentMeasure );
  //
  buttonPositionColumn = 1;
  ffX1A = pauseX1 + ( buttonPositionColumn*buttonReferentMeasure );
  ffY1A = pauseY1;
  ffX3A = ffX1A;
  ffY3A = ffY1A + buttonReferentMeasure;
  ffX2A = ffX1A + buttonReferentMeasure * 1/2;
  ffY2A = ffY1A + (ffY3A-ffY1A) * 1/2;
  ffX1B = ffX2A;
  ffY1B = ffY1A;
  ffX2B = ffX2A + buttonReferentMeasure * 1/2;
  ffY2B = ffY2A;
  ffX3B = ffX2A;
  ffY3B = ffY3A;
  //
  rrX = pauseX1 - ( buttonPositionColumn*buttonReferentMeasure );
  rrY = pauseY1;
  rrX1A = pauseX1;
  rrY1A = pauseY1;
  rrX3A = rrX1A;
  rrY3A = rrY1A + buttonReferentMeasure;
  rrX2A = rrX1A - ( buttonPositionColumn*buttonReferentMeasure )*1/2;
  rrY2A = rrY1A + ( rrY3A - rrY1A )*1/2;
  rrX1B = rrX2A;
  rrY1B = rrY1A;
  rrX2B = rrX2A - ( buttonPositionColumn*buttonReferentMeasure ) *1/2;
  rrY2B = rrY2A;
  rrX3B = rrX2A;
  rrY3B = rrY3A;
  //
  buttonPositionColumn = 3;
  nextX = pauseX1 + ( buttonPositionColumn*buttonReferentMeasure );
  nextY = pauseY1;
  nextWidth = buttonReferentMeasure * 1/4;
  nextX1 = centerY + ( buttonPositionColumn*buttonReferentMeasure );
  nextY1 = pauseY1;
  nextX3 = nextX1;
  nextY3 = nextY1 + buttonReferentMeasure;
  nextX2 = nextX1 + buttonReferentMeasure*1/2;
  nextY2 = nextY1 + (nextY3-nextY1)*1/2;
  //
  prevX = pauseX1 - ( buttonPositionColumn*buttonReferentMeasure )*0.60;
  prevY = pauseY1;
  prevWidth = buttonReferentMeasure * 1/4;
  prevX1 = centerY - ( buttonPositionColumn-buttonReferentMeasure )*-0.43;
  prevY1 = pauseY1;
  prevX3  = prevX1;
  prevY3 = prevY1 + buttonReferentMeasure;
  prevX2 = prevX1 - buttonReferentMeasure*1/2;
  prevY2 = prevY1 + (prevY3-prevY1)*1/2;
  //
  loopX1 = pauseX1 - ( buttonPositionColumn*buttonReferentMeasure );
  loopY1 = pauseY1;
  loop1X = centerX - ( buttonPositionColumn*buttonReferentMeasure );
  loop1Y = centerY;
  loop1WidthDiameter = buttonReferentMeasure * 1;
  loop1HeightDiameter = buttonReferentMeasure * 1;
  loop1X1 = centerY - ( buttonPositionColumn-buttonReferentMeasure )*-1.8;
  loop1Y1 = pauseY1;
  loop1X3 = loop1X1;
  loop1Y3 = loop1Y1 + buttonReferentMeasure;
  loop1X2 = loop1X1 - buttonReferentMeasure*1/2;
  loop1Y2 = loop1Y1 + (loop1Y3 - loop1Y1) * 1/2;
  //
  stopX = pauseX1 - ( buttonPositionColumn*buttonReferentMeasure );
  stopY = pauseY1;
  //
  buttonPositionRow = -1;
  loopPlaylistX = pauseX1;
  loopPlaylistY = pauseY1 + ( buttonPositionRow*buttonReferentMeasure );
  //
} //End setup
//
void draw() {
  //Button Space
  //rect( spaceX, spaceYm spaceWidth, buttonSide );
  //rect( spaceX, spaceY, spaceWidth, buttonSide );
  //
  //Stop Button
  //rect( stopX, stopY, buttonSide, buttonSide );
  //rect( stopX, stopY, buttonSide, buttonSide );
  //
  //Pause Button
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //rect( pauseX1, pauseY2, pauseWidth, buttonSide ); layout
  //
  //Play Button
  //rect( playX, playY, buttonSide, buttonSide ); //layout
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //
  //Mute Button
  //rect( muteX, muteY, buttonSide, buttonSide ); //Layout
triangle( muteX, muteY, muteX2, muteY2, muteX3, muteY3 );
  //students to develop
  //
  //Fast Forward in the song
  //rect( ffX, ffY, buttonSide, buttonSide );
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Reverse in the song 
  //rect( rrX, rrY, buttonSide, buttonSide ); //layout
  triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  //
  //Next button, skip file
  //rect( nextX1, nextY1, buttonSide, buttonSide ); //layout
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  rect( nextX, nextY, nextWidth, buttonSide );
  //
  //Previous Button
  //rect( prevX, prevY, buttonSide, buttonSide ); //layout
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  rect( prevX, prevY, prevWidth, buttonSide );
  //
  //loop the song once
  //students to develop
  //rect( loopX1, loopY1, buttonSide, buttonSide );
  ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the song infinitely
  //students to develop
  rect( loopIX, loopIY, buttonSide, buttonSide ); //layout
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIx1, loopIY1, loopIX2, loopY2, loopIX3, loopIY3 );
  //loop the playlist infinitely
  //Students to Develop
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //layout
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  //
} //end draw
//
void keyPressed() {
} //end keypressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
