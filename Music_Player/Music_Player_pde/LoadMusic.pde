  //Global variables
  //
  Minim minim;
  int numberOfSongs = 1;
  AudioPlayer song0;
  int numberOfSoundEffects = 2;
  AudioPlayer soundEffect0, soundEffect1;
  //Concatenation of Pathway + File Name
 void loadMusic() {
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
 /*String thesimplestFileName = "The_Simplest.mp3";
 String startyourenginesFileName = "Start_Your_Engines.mp3";
 String newsroomFileName = "Newsroom.mp3";
 String ghostwalkFileName = "Ghost_Walk.mp3";
 String eurekaFileName = "Eureka.mp3";
 String cyclesFileName = "Cycles.mp3";
 String beatyourcompetitionFileName = "Beat_Your_Competition.mp3";*/
 String The_Simplest_Sting = "The_Simplest_Sting";
 String DoorClose = "Wood_Door_Open_and_Close_Series";
 //
 minim = new Minim(this);
 //
  song0 = minim.loadFile( musicPathway + groove + derefencer + fileExtension );
  /*songs[1] = minim.loadFile( musicPathway + thesimplestFileName );
  songs[2] = minim.loadFile( musicPathway + startyourenginesFileName );
  songs[3] = minim.loadFile( musicPathway + newsroomFileName );
  songs[4] = minim.loadFile( musicPathway + ghostwalkFileName );
  songs[5] = minim.loadFile( musicPathway + eurekaFileName );
  songs[6] = minim.loadFile( musicPathway + cyclesFileName );
  songs[7] = minim.loadFile( musicPathway + beatyourcompetitionFileName );*/
  soundEffect0 = minim.loadFile( soundEffectPathway + The_Simplest_Sting + derefencer + fileExtension);
  soundEffect1 = minim.loadFile( soundEffectPathway + DoorClose + derefencer + fileExtension );
  //
  //printIn("Music Pathway is", musicPathway);
}//End loadMusic
