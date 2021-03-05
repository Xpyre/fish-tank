Fish[] fish = new Fish[7];
PImage[] images = new PImage[5];
PImage[] flipImages = new PImage[5];
int[] speeds = new int[5];

PImage water ;
int fishType;

void setup(){
size(1000,1000);
water = loadImage("wtaer background.jpg");
background(water);

for ( int i = 0; i < 7; i++){
  fish[i] = new Fish(int(random(width-250)), int(random(height-250)), int(random(0,4)),random(0,4),random(0,4),int(random(1,5)),int(random(1,5)));
}

images[0] = loadImage("fish 0f.png");
images[1] = loadImage("fish 1.png");
images[2] = loadImage("fish 2.png");
images[3] = loadImage("fish 3.png");
images[4] = loadImage("fish 4.png");

flipImages[0] = loadImage("fish 0.png");
flipImages[1] = loadImage("fish 1f.png");
flipImages[2] = loadImage("fish 2f.png");
flipImages[3] = loadImage("fish 3f.png");
flipImages[4] = loadImage("fish 4f.png");

}

void draw(){
  background(water);
  for(Fish f: fish){ 
    f.draw();
    f.move();
  }

}
void mousePressed(){
for ( int i = 0; i < 7; i++){
  fish[i].pressed();
}
}
