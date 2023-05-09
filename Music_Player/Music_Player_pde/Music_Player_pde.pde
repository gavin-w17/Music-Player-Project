import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//global variables
//
void setup() {
  size( 512, 256, P2D );
  //
  //Unique text code
  textFont(createFont("Serif", 12));
  //
  musicLoadSetup();
  //
  //verifying meta deta, 18 different println's
  println( "File Name: ", song0MetaData.fileName() );
}//End setup
//
void draw() {
  //println( millis() );
} //end draw
//
void keyPressed() {
  soundEffects[0].loop(0); // Auditory keyboard feedback
  delay(4000);
  soundEffects[0].pause();
  soundEffects[0].rewind();
  //
  musicFeaturesKeyPressed();
  //
  //single song features
  if ( key == 'P' || key == 'p' ) playPause();
  if ( key == 'M' || key == 'm' ) mute();
  if ( key == 'S' || key == 's' ) stopSong();
  if ( key == 'F' || key == 'f' ) fastForward();
  if ( key == 'R' || key == 'r' ) fastRewind();
} //end keyPressed
void mousePressed() {}
//
void playPause() 
{
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*9/10 ) { //90% of the song
  songs[currentSong].rewind();
  songs[currentSong].play();
 } else {
   songs[currentSong].play();
 }
}//end playpause
// 
void mute() 
{
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else {
    songs[currentSong].mute();
  }
}//end mute
//
void stopSong()
{
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else { 
    songs[currentSong].rewind();
  } 
}//end stopsong
//
void fastForward() 
{
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(1000);
}//end fastforward
//
void fastRewind()
{
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-1000);
}//end fastRewind
//number keys for each song
//end main program
 
