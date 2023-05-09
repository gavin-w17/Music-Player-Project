  //Global variables
  Minim minim;
  int numberOfSongs = 8;
  AudioPlayer[] songs = new AudioPlayer[numberOfSongs];
  int numberOfSoundEffects = 2;
  AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
  AudioMetaData song0MetaData; // soundeffect0, soundeffect1;
  //
  int currentSong = 0;
  //Concatenation of Pathway + File Name
 void musicLoadSetup() {
 //
 char fslash = '/';
 String Sound = "Sound";
 String Music = "Music";
 String SoundEffects = "Sound Effects";
 String upFolder = "..";
 String soundPathway = upFolder + fslash + Sound;
 String musicPathway = soundPathway + fslash + Music + fslash; //From Sketch to Music Folder
 String soundEffectPathway = soundPathway + fslash + SoundEffects + fslash; //From Sketch to Sound Effects Folder
 String groove = "groove"; //File Name
 char derefencer = '.';
 String fileExtension = "mp3";
 String thesimplest = "The_Simplest";
 String startyourengines = "Start_Your_Engines";
 String newsroom = "Newsroom";
 String ghostwalk = "Ghost_Walk";
 String eureka = "Eureka";
 String cycles = "Cycles";
 String beatyourcompetition = "Beat_Your_Competition";
 String The_Simplest_Sting = "The_Simplest_Sting";
 String DoorClose = "Wood_Door_Open_and_Close_Series";
 //
 minim = new Minim(this);
 //
  songs[0] = minim.loadFile( musicPathway + groove + derefencer + fileExtension );
  song0MetaData = songs[0].getMetaData();
  songs[1] = minim.loadFile( musicPathway + thesimplest + derefencer + fileExtension );
  songs[2] = minim.loadFile( musicPathway + startyourengines + derefencer + fileExtension );
  songs[3] = minim.loadFile( musicPathway + newsroom + derefencer + fileExtension);
  songs[4] = minim.loadFile( musicPathway + ghostwalk + derefencer + fileExtension );
  songs[5] = minim.loadFile( musicPathway + eureka + derefencer + fileExtension );
  songs[6] = minim.loadFile( musicPathway + cycles + derefencer + fileExtension );
  songs[7] = minim.loadFile( musicPathway + beatyourcompetition + derefencer + fileExtension );
  soundEffects[0] = minim.loadFile( soundEffectPathway + The_Simplest_Sting + derefencer + fileExtension);
  soundEffects[1] = minim.loadFile( soundEffectPathway + DoorClose + derefencer + fileExtension );
  //
  //printIn("Music Pathway is", musicPathway);
}//End loadMusic
void musicFeaturesKeyPressed() {
  //
  testingMusic();
  //
  if ( key=='Q' || key=='q' ) exitProgram();
  if ( key==CODED || keyCode==ESC ) exitProgram();
}//end musicfeatureskeypressed
//
void musicFeaturesMousePressed() {}//end mousefeaturesmousepressed(){}
//
void exitProgram() {
  soundEffects[0].loop(0);
  delay(900);
  exit();
}//end exit program
//
void testingMusic() {
  if ( key == '1' ) songs[0].loop(0);
  if ( key == '2' ) songs[1].loop(0);
  if ( key == '3' ) songs[2].loop(0);
  if ( key == '4' ) songs[3].loop(0);
  if ( key == '5' ) songs[4].loop(0);
  if ( key == '6' ) songs[5].loop(0);
  if ( key == '7' ) songs[6].loop(0);
  if ( key == '8' ) songs[7].loop(0);
}//end testingMusic
//
//end music subprogram
