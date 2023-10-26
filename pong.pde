int p1X;
int p1Y;
int wide;
int tall;
int p2X;
int p2Y;
int x = width/2;
int y = height/2;
int d;
color p1Color;
color p2Color; 
int xStart = width/2;
int yStart = height/2;
int xSpeed = 5;
int ySpeed = 5;
int pSpeed;
boolean isP1Up;
boolean isP2Up;
boolean isP1Down;
boolean isP2Down;
int boundTop;
int boundBottom;
int boundLeft;
int boundRight;
int p1Score = 0;
int p2Score = 0;
void setup(){
  rectMode(CENTER);
  ellipseMode(CENTER);
  size(600,600);
  p1X=width-10;
  p2X=width-590;
  p1Y=height/2;
  p2Y=height/2;
  wide = 10;
  tall=50;
  pSpeed = 8;
  boundBottom=height-20;
  boundTop= 20;
  boundRight=width;
  boundLeft=10;
  x = xStart;
  y = yStart;
  d = 10;
}
void draw(){
      background(0);
      fill(0,0,255);
   rect(p1X, p1Y, wide, tall); 
   fill(255,0,0);
    rect(p2X, p2Y, wide, tall); 
    
    //key controls
if(keyPressed){
  if (key==CODED){
    if (keyCode==DOWN){
        p2Y=p2Y+pSpeed;
        
    }
  }
}
if(keyPressed){
  if (key==CODED){
    if (keyCode==UP){
        p2Y=p2Y-pSpeed;
        
    }
  }
}
if(keyPressed){
  if (key=='r'){
        p1Y=p1Y+pSpeed;
        
    
  }
}
if(keyPressed){
  if (key=='s'){
        p1Y=p1Y-pSpeed;
        
    
  }
  //paddle boundries
}
if (p1Y <= boundTop) {
  p1Y = boundTop;
}
  if (p1Y >= boundBottom) {
  p1Y = boundBottom;
  }
  if (p2Y <= boundTop) {
  p2Y = boundTop;
}
  if (p2Y >= boundBottom) {
  p2Y = boundBottom;
  }
  //ball
  fill(255);
  circle(x,y,d);
  y = y + ySpeed;
  x = x + xSpeed;
if (y <= boundTop){
  ySpeed=5;
}
if (x <= boundLeft){
p2Score = p2Score + 1;
x = width/2;
y = height/2;
}
if (y >= boundBottom){
ySpeed = -5;
}
if (x >= boundRight){
p1Score = p1Score + 1;
x = width/2;
y = height/2;
}
//colission stuff
if (x >= p1X && y >= p1X && x <= p1Y && y <= p1Y){
  xSpeed = 5;
  ySpeed = 6;
}
if (x >= p2X && y >= p2X && x <= p2Y && y <= p2Y){
  xSpeed = -5;
  ySpeed = -6;
}

}
