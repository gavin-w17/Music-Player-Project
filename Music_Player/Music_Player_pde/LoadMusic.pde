void loadMusic() {
  //
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
 String musicPathway = "../Music/"; //From Sketch to Music Folder
 String soundEffectPathway = "../Sound Effects/"; //From Sketch to Sound Effects Folder
 String grooveFileName = "groove.mp3"; //File Name
 String thesimplestFileName = "The_Simplest.mp3";
 String startyourenginesFileName = "Start_Your_Engines.mp3";
 String newsroomFileName = "Newsroom.mp3";
 String ghostwalkFileName = "Ghost_Walk.mp3";
 String eurekaFileName = "Eureka.mp3";
 String cyclesFileName = "Cycles.mp3";
 String beatyourcompetitionFileName = "Beat_Your_Competition.mp3";
 String thesimpleststingFileName = "The_Simplest_Sting.mp3";
 String doorFileName = "Wood_Door_Open_and_Close_Series.mp3";
  songs[0] = minim.loadFile( musicPathway + grooveFileName );
  songs[1] = minim.loadFile( musicPathway + thesimplestFileName );
  songs[2] = minim.loadFile( musicPathway + startyourenginesFileName );
  songs[3] = minim.loadFile( musicPathway + newsroomFileName );
  songs[4] = minim.loadFile( musicPathway + ghostwalkFileName );
  songs[5] = minim.loadFile( musicPathway + eurekaFileName );
  songs[6] = minim.loadFile( musicPathway + cyclesFileName );
  songs[7] = minim.loadFile( musicPathway + beatyourcompetitionFileName );
  soundEffects[0] = minim.loadFile( soundEffectPathway + doorFileName );
  soundEffects[1] = minim.loadFile( soundEffectPathway + thesimpleststingFileName );
  //
  //printIn("Music Pathway is", musicPathway);
}//End loadMusic
