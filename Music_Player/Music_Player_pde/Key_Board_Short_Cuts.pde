void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButtons();
  //
}//Key Board Short Cuts for Music, use numbers (End KeyPressed)
//
void musicShortCuts() {
  if ( key=='1' ) songs[0].loop(0); //.rewind() is included in .loop()
  if ( key=='2' ) songs[1].loop(0);
  if ( key=='3' ) songs[2].loop(0);
  if ( key=='4' ) songs[3].loop(0);
  if ( key=='5' ) songs[4].loop(0);
  if ( key=='6' ) songs[5].loop(0);
  if ( key=='7' ) songs[6].loop(0);
  if ( key=='8' ) songs[7].loop(0);
  //
  //Students to make these smarter
  if ( key == 'U' || key == 'u' ) autoPlay(); //pseudo code only
  if ( key == 'P' || key == 'p' ) playPause(); //teacher started
  if ( key == 'M' || key == 'm' ) mute(); //teacher started
  if ( key == 'S' || key == 's' ) stopSong(); //teacher started
  if ( key == 'F' || key == 'f' ) fastForward(); //teacher started
  if ( key == 'R' || key == 'r' ) fastRewind(); //teacher started
  if ( key == 'N' || key == 'n' ) nextSong(); //psuedo code only
  if ( key == 'B' || key == 'b' ) previousSong(); //psuedo code only
  if ( key == 'L' || key == 'l' ) loopSong(); //loops current song infinitely
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
soundEffects[1].loop(0); //only need partial file, use .play(int millis)
    //Visual Image or Text of Goodbye
    delay(3000); //alternate way of playing sound once
    exit();
}//End quitButtonCode
//
void autoPlay() {
  //Note: plays one song, then the next automatically
  //asks the computer if a song is playing, continually
  //when current song finishes, it rewinds current song and plays the next song
  if ( autoPlay==true ) {
    autoPlay=true;
  } else {
    autoPlay=false;
    songs[currentSong].pause(); 
  }
}//end autoplay
//
void autoPlayMusic() 
{
   if ( songs[currentSong].isPlaying()==false ) {
    currentSong++;
    songs[currentSong].play(); }
}
//
void playPause() {
  //Ask computer if the song is playing
  //Note: remember to use Auto Play
  //ERROR: song will not play if at the end
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) { //80% of the song duration
   songs[currentSong].rewind();  
   songs[currentSong].play();
   //auto play is better because it plays the next song
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim Solution
  }
}//end playpause
//
void mute() {
  //MUTE, not PAUSE, only affects the speakers
  //ERROR: this MUTE button only works when the song is playing
  //ERROR: user will spam mute if song is at end of file
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSong].length()*9/10 ) {
    songs[currentSong].rewind(); //one solution
    songs[currentSong].unmute();
  }  else {
    songs[currentSong].mute();
  }
}//end mutesong
//
void stopSong() {
  //Based on  question: is the song playing?
  //Hint: would this fix ERROR of the MUTE button? //if() {} else {}
  //NOTE: STOP is actually a fancy rewind button, no ERRORS
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//end stop song
//
void fastForward() {
  //Asks computer if the song is playing 
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(500); //Parameter in milliseconds
}//end fast forward
//
void fastRewind() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-500);
}//end fast rewind
//
void nextSong() {
  //ERROR: ArrayListOutOfBounds
  //ERROR: currentSong++ plays two songs or more at once
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    //students to finish
    //current song: .pause(), .rewind()
    //next: currentSong++
    //now: Delay-1-Second, .play()
  } else if ( currentSong >= songs.length-1 ) {
    currentSong = 0;
    songs[currentSong].play();
  } else {
    songs[currentSong].rewind();
    currentSong++;
  }
}//end next song
//
void previousSong() {
  //ERROR: ArrayListOutOfBounds
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].skip(500);
  } else if ( currentSong >= songs.length+1 ) {
    currentSong = 0;
  } else {
    songs[currentSong].rewind();
  currentSong--;
  }
}//end previous song
//
void loopSong() {}// end loop song
//
void loopPlaylist() {}// end loopPlaylist
//
void shufflePlaylist() {}// end shuffle playlist
//
void loopAndShuffle() {}//end loop & shuffle
//End Key Board Short Cuts Sub Program
