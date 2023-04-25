//libraries and dependencies 
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//global variables
Minim minim;
int numberOfSongs = 1;
AudioPlayer song0;
int numberOfSoundEffects = 2;
AudioPlayer soundEffect0, soundEffect1;
//
void setup() {
  char fslash = '/';
  String upFolder = "..";
  String openFolder = "OpenFolder";
  String MusicDownload = "MusicDownload";
  String SoundEffect = "SoundEffect";
  String groove = "groove";
  String DoorClosing = "DoorClosing";
  String The_Simplest_Sting = "The_Simplest_Sting";
  char dereferencer = '.';
  String fileExtension = "mp3";
  //
  String soundPathway = upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + upFolder + fslash + openFolder;
  String musicPathway = soundPathway + fslash + MusicDownload;
  String soundEffectPathway = soundPathway + fslash + SoundEffect;
  //inspect variable
  println (musicPathway);
  println (soundEffectPathway);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //building global variables from local variables, some information does not need to be remembered
  song0 = minim.loadFile( musicPathway + fslash + DoorClosing + dereferencer + fileExtension );
  soundEffect0 = minim.loadFile( soundEffectPathway + fslash + DoorClosing + dereferencer + fileExtension );
  soundEffect1 = minim.loadFile( soundEffectPathway + fslash + The_Simplest_Sting + dereferencer + fileExtension );
  //
  //.loop(0) // simple play code, includes ability to rewind
  //if not commented, will play all at once
  song0.loop(0);
  soundEffect0.loop(0);
  soundEffect1.loop(0);
} //end setup
//
void draw() {} //end draw
//
void keyPressed() {} //end keypressed
//
void mousePressed() {} //end mousePressed
//
//end main program
