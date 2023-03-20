void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButtons();
  //
}//Key Board Short Cuts for Music, use numbers (End KeyPressed)
//
void musicShortCuts() {
  if ( key=='1' ) song0.loop(0); //.rewind() is included in .loop()
  if ( key=='2' ) song1.loop(0);
  if ( key=='3' ) song2.loop(0);
  if ( key=='4' ) song3.loop(0);
  if ( key=='5' ) song4.loop(0);
  if ( key=='6' ) song5.loop(0);
  if ( key=='7' ) song6.loop(0);
  if ( key=='8' ) song7.loop(0);
  //
  if ( key == 'U' || key == 'u' ) autoPlay();
  if ( key == 'P' || key == 'p' ) playPause();
  if ( key == 'M' || key == 'm' ) mute();
  if ( key == 'S' || key == 's' ) stopSong();
  if ( key == 'F' || key == 'f' ) fastForward();
  if ( key == 'R' || key == 'r' ) fastRewind(); 
  if ( key == 'N' || key == 'n' ) nextSong();
  if ( key == 'B' || key == 'b' ) previousSong();
  if ( key == 'L' || key == 'l' ) loopSong();
  if ( key == 'O' || key == 'o' ) loopPlaylist(); //entire playlist 
  if ( key == 'W' || key == 'w' ) shufflePlaylist(); //shuffle
  if ( key == 'E' || key == 'e' ) loopAndShuffle(); //Loop and Shuffle
}//End musicShortCuts
//
void quitButtons() {
  //Quit Button Key Board Shortcut
  if ( key== 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
soundEffect1.loop(0); //only need partial file, use .play(int millis)
    //Visual Image or Text of Goodbye
    delay(3000); //alternate way of playing sound once
    exit();
}//End quitButtonCode
//
void autoPlay() {}//End AutoPlay
//
void playPause() {
}//end playpause
//
void mute() 
{
  //MUTE, not PAUSE, only affects the speakers
  //ERROR: this MUTE button only works when the song is playing
  //ERROR: user will spam mmute if song is at end of file
  if ( song0.isMuted() ) {
    song0.unmute();
  } else if ( song0.isMuted() && song0.position() >= song0.length()*4/5 ) {
    song0.rewind(); //one solution
    song0.unmute();
  }  else {
    song0.mute();
  }
}//end mutesong
//
void stopSong() {}//end stop song
//
void fastForward() {}//end fast forward
//
void fastRewind() {}//end fast rewind
//
void nextSong() {}//end next song
//
void previousSong() {}//end previous song
//
void loopSong() {}// end loop song
//
void loopPlaylist() {}// end loopPlaylist
//
void shufflePlaylist() {}// end shuffle playlist
//
void loopAndShuffle() {}//end loop & shuffle
//End Key Board Short Cuts Sub Program
