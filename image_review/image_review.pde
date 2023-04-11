/* Background image example
*/
//Global Variables
//
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightMode=true;
//
size(500, 100); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
String upFolder = "..";
String openFolder = "/";
String folder1 = "Images Used";
String folder2 = "Images Used x2";
pathway = upFolder + openFolder + upFolder + openFolder + folder1 + openFolder + folder2 + openFolder;
fileName = "car-image.jpg";
pic = loadImage( pathway + fileName);
//
//Rectangle Layout and image drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode==false ) tint(255, 128); //day mode, grey scale, using half white (128/255=1/2)
if ( nightMode ==true ) tint(64, 64, 40); //night mode, less blue
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//end main program
