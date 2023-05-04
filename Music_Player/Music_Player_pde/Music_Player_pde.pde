import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
void setup() {
  musicLoadSetup();
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
}//end stopsong
//
void fastForward() 
{
}//end fastforward
//
void fastRewind()
{
}//end fastRewind
//number keys for each song
//end main program
 
