import java.util.Random;

Random generator;
int numberOfSplatters;
int standardDeviation;

  void setup(){
    size(640, 640);
    background(255);
    generator = new Random();
    numberOfSplatters = 20;
    standardDeviation = 10;
  }
  
  void draw(){
    if(mousePressed == true){
     drawPaintSplatter(mouseX, mouseY); 
    }
    
  }
  
  void drawPaintSplatter(int x, int y){
    
    for(int i = 0; i < numberOfSplatters; i++){
      
      float randX = (float)generator.nextGaussian() * standardDeviation + x;
      
      float randY = (float)generator.nextGaussian() * standardDeviation + y;
      
      noStroke();
      fill(0, 10);
      ellipse(randX, randY, 10, 10);     
      
    }

    
  }