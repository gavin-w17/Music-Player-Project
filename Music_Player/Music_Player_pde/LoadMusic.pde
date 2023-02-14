void loadMusic() {
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
  song0 = minim.loadFile( musicPathway + grooveFileName );
  song1 = minim.loadFile( musicPathway + thesimplestFileName );
  song2 = minim.loadFile( musicPathway + startyourenginesFileName );
  song3 = minim.loadFile( musicPathway + newsroomFileName );
  song4 = minim.loadFile( musicPathway + ghostwalkFileName );
  song5 = minim.loadFile( musicPathway + eurekaFileName );
  song6 = minim.loadFile( musicPathway + cyclesFileName );
  song7 = minim.loadFile( musicPathway + beatyourcompetitionFileName );
  soundEffect0 = minim.loadFile( soundEffectPathway + doorFileName );
  soundEffect1 = minim.loadFile( soundEffectPathway + thesimpleststingFileName );
}//End loadMusic
  
