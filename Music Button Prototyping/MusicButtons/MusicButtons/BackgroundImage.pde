//global variables
int appWidth, appHeight;
float carImageX, carImageY, carImageWidth, carImageHeight;
PImage pic;
String pathway, fileName;
//
void imageSetup() {
  size( 700, 500 );
  appWidth = width;
  appHeight = height;
  //
  //population
  carImageX = appWidth*0;
  carImageY = appHeight*0;
  carImageWidth = appWidth-1;
  carImageHeight = appHeight-1;
  //
  //pathway and files
String upFolder = "..";
String openFolder = "/";
String folder1 = "Images Used";
String folder2 = "Images Used x2";
pathway = upFolder + openFolder + folder1 + openFolder + folder2 + openFolder;
fileName = "car-image.jpg";
pic = loadImage(pathway + fileName);
image( pic, carImageX, carImageY, carImageWidth, carImageHeight );
};
