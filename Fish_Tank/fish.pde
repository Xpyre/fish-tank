public class Fish {
  private float x, y;
  private float speedx, speedy;
  private boolean fishf;
  private boolean fishr;
  private int fishType;
  private float angle1;
  private float angle2;
  private float movex, movey;
  private PImage fishy;
  
  public Fish(int x, int y, int f, float a1, float a2, int mx, int my) {
    this.x = x;
    this.y = y;
    this.angle1 = a1;
    this.angle2 = a2;
    this.fishType = f;
    this.fishf = true;
    this.movex = mx;
    this.movey = my;
  }
  
  public void move() {
    if(fishType == 0){
    this.speedx =  cos(radians(angle1));
    this.speedy = 4 * sin(radians(angle2));  
    }
    if(fishType == 1){
    //this.speedx =  (radians(angle1));
    this.speedy = 2*tan(radians(angle2)); 
    }
    if(fishType == 2){
    this.speedx = (10* cos(radians(angle1)));
       
    }
    if(fishType == 3){
      
    }
    
    
    this.x += speedx;
    this.y += speedy;
    this.x += movex;
    this.y += movey;
     
    
    if (this.y +250 >= height && fishType == 0) {
      
      this.movey =  this.movey * -1 ;
      y = height - 250;
      
    } 
    else if (this.y +250 >= height && fishType == 1) {
      
      this.movey =  this.movey * -1 ;
      y = height - 250;
      
    } 
    else if (this.y +250 >= height) {
      this.movey = movey * -1;
      y = height - 250;
    } 

    
    if (this.x + 255  == width && fishType == 2) {            
      fishf = true;      
      this.movey =  this.movey * -1 ;
      this.movex =  this.movex * -1 ;  
    }
    else if (this.x + 225 >= width) {
      fishr = true;
      this.movey =  this.movey * -1;
      this.movex =  this.movex * -1;
    }  
    
    if (this.y <= -120 && fishType == 1) {
      //this.y = 0;
      //this.movey =  this.movey * -1 ; 
      //if(this.y <= -1){
        //this.movey =  this.movey * -1 ;
      this.y = height - 250;       
      //}
    } 
    else if (this.y  == 0 ) {
      this.movey = this.movey * -1;
    } 
    
    if (this.x  == 0 && fishType == 2) {
      fishf = true;      
      this.movey =  this.movey * -1 ;
      this.movex =  this.movex * -1 ;                 
      this.speedx = (10* cos(radians(angle1)));      
    }
    else if (this.x  <= 0) {
      fishf = true;
      this.movey =  this.movey * -1 ;
      this.movex =  this.movex * -1 ;
    }
    
    angle1 += 4;
    angle2 += 2;
    
  }
  public void pressed(){
  if(mouseX >= x && mouseX <= x + 250 && mouseY >= y && mouseY <= y + 250){
    this.movey =  this.movey * -1 ;
      this.movex =  this.movex * -1 ;
      if (fishr) {
      this.fishy = images[fishType];
      fishr = false;
    }
    if (fishf) {
      this.fishy = flipImages[fishType];
      fishf = false;
    }
  }
  }
  void draw() {
    if (fishr) {
      this.fishy = images[fishType];
      fishr = false;
    }
    if (fishf) {
      this.fishy = flipImages[fishType];
      fishf = false;
    }
    image(this.fishy, this.x, this.y);
  }
}
