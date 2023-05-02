import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
void setup() {
  //
  loadMusic();
  //
  song0.loop(0);
  soundEffect0.loop(0);
  soundEffect1.loop(0);
  //
}//End setup
//
void draw() {
  //println( millis() );
} //end draw
//
void keyPressed() {
  soundEffect0.loop(0); // Auditory keyboard feedback
  delay(4000);
  soundEffect0.pause();
  soundEffect0.rewind();
  if ( key=='Q' || key=='q' ) {
    soundEffect0.loop(0); // exit sound
    delay(3000);
    exit();
  }
}
//
//end main program
 
