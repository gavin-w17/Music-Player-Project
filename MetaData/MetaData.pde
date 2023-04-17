import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim;
AudioPlayer song1; //"Song One"
AudioMetaData songMetaData1; //"Song Meta One"

void setup();
  size(512,256,P2D);
  
  minim = new Minim(this); //load from data directory, load file should also load from project folder
  song1 = minim.loadFile("../
