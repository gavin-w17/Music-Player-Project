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
}
//
//number keys for each song
//end main program
 
