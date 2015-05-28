//import processing.pdf.*;

PImage img1;
PImage img2;
PImage img3;
PImage img4;
int totalImages = 13; //update this with the total number of images in the data folder

void setup(){
 size(400,500);
       
 img1 = loadImage("test"+int(random(totalImages))+".jpg");
 img2 = loadImage("test"+int(random(totalImages))+".jpg");
 img3 = loadImage("test"+int(random(totalImages))+".jpg");
 img4 = loadImage("test"+int(random(totalImages))+".jpg");
}


void draw() {
  noLoop();
  
  float x = random(1);
  if (x < 0.3){
    fullPage();
  } else if (x < 0.6) {
  doubleUpPage();
  } else {
    fourUpPage();
  }
}


void fullPage(){
  img1.resize(width,0);
  image(img1, 0, 0);
  print("Full Page");
}

void doubleUpPage(){
 img1.resize(int(width), 0);
 img2.resize(int(width), 0);
 image(img1, 0, 0);
 image(img2, 0, height/2);
 print("Double Up Page");
}

void fourUpPage(){
 //img1.resize(int(width/2), 0);
 //img2.resize(int(width/2), 0);
 //img3.resize(int(width/2), 0);
// img4.resize(int(width/2), 0);
 image(img1, 0, 0);
 image(img2, width/2, 0);
 image(img3, 0, height/2);
 image(img4, width/2, height/2);
 print("4up Page");
}

