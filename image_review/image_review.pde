/* Background image example
*/
//Global Variables
//
int appWidth, appHeight;
float pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
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
pic = loadImage(car-image.jpg);
//
//Rectangle Layout and image drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//end main program
