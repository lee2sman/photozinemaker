import processing.pdf.*;

PFont nameFont, titleFont;
String titleName = "Name of Zine";
String artistName = "Artist Name";
int maxImages = 13; // total num of images
int imageIndex = 0; //initial image is 0
PImage[] images = new PImage[maxImages];
//loading images into an array

void setup() {
  size(400, 400, PDF, "filename.pdf");
  nameFont = createFont("Futura", 24); //load hipster font
  titleFont = createFont("Futura", 18);
  
  for (int i = 0; i < images.length; i++){
  images[i] = loadImage("test" + i + ".jpg");
}
}

void draw() {
  
  if (frameCount == 1){
   textFont(titleFont,24);
   fill(0);
   text(titleName,width/2,350);
   textFont(nameFont,18);
   fill(0);
   text(artistName,width/2,375);
 
  }
    

  if (frameCount % 2 == 0){ //if it's even, start image halfway down page
    images[frameCount].resize(width, 0); //resize image to page
  
    image(images[frameCount],0,height/2);}
  else { //if it's odd, start image top left of page
    images[frameCount].resize(width, 0); //resize image to page

    image(images[frameCount],0,0);
    PGraphicsPDF pdf = (PGraphicsPDF) g;  // Render the page 
    pdf.nextPage();  // Go to the next page
  
  }
 

  // When finished drawing, quit and save the file
  if (frameCount == maxImages - 1) {
    println("Print that zine");
    exit();
  }
}

