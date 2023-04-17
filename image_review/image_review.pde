/* Background image example
*/
//Global Variables
//
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightMode=false;
float picX_Adjusted=0.0, picY_Adjusted=0.0, picHeightAdjusted=0.0, picWidthAdjusted=0.0;
float whiteSpace=0.0;
Boolean imageCenter=false, imageRightBottom=false;
//
size(700, 450); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//pathway and files
String upFolder = "..";
String openFolder = "/";
String folder1 = "Images Used";
String folder2 = "Images Used x2";
pathway = upFolder + openFolder + upFolder + openFolder + folder1 + openFolder + folder2 + openFolder;
fileName = "car-image.jpg";
pic = loadImage( pathway + fileName);
int picWidth = 800;
int picHeight = 600;
//larger dimension algorithim, aspect ratio
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth >= picHeight ) { //true if landscape or square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float (smallerDimension) / float (largerDimension); //ratio is <1, fixed by casting
  picWidthAdjusted = backgroundImageWidth; //compression into rect()
  picHeightAdjusted = picWidthAdjusted*imageHeightRatio; //calculated variable
  // if image fits in rect: format or justify image
  whiteSpace = backgroundImageHeight - picHeightAdjusted;
  //if image left justified, then no change to X&Y Variables
  picX_Adjusted = backgroundImageX;
  picY_Adjusted = backgroundImageY;
  if ( imageCenter==true ) picX_Adjusted = backgroundImageX + whiteSpace*1/2;
  if ( imageRightBottom==true ) picX_Adjusted = backgroundImageX + whiteSpace;
 }
//} else
//
//Rectangle Layout and image drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode==false ) tint(255, 128); //day mode, grey scale, using half white (128/255=1/2)
if ( nightMode ==true ) tint(64, 64, 40); //night mode, less blue
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//end main program
