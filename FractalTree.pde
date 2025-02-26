private double fractionLength = .7; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);
  line(419,480,419,400);
  line(221,480,221,400);
  
  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2);
  
  line(120,480,120,380); 
  drawBranches(120,380,100,3*Math.PI/2);
  
  line(520,480,520,380); 
  drawBranches(520,380,100,3*Math.PI/2);
  
  stroke(255,0,0);
  drawSmallBranches(220,400,100,3*Math.PI/2);
  drawSmallBranches(420,400,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double len, double angle) 
{   
  double angle1 = angle+branchAngle;
  double angle2 = angle-branchAngle;
  int endX1 = (int)(len * Math.cos(angle1) + x);
  int endY1 = (int)(len * Math.sin(angle1) + y);
  int endX2 = (int)(len * Math.cos(angle2) + x);
  int endY2 = (int)(len * Math.sin(angle2) + y);
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  line(x,y, endX1, endY1);
  line(x,y, endX2, endY2);
   
   if(len > smallestBranch){
     drawBranches(endX1, endY1, len*fractionLength, angle1);
     drawBranches(endX2, endY2, len*fractionLength, angle2);
   }
} 

public void drawSmallBranches(int x,int y, double len, double angle) 
{   
  double angle1 = angle+branchAngle;
  double angle2 = angle-branchAngle;
  int endX1 = (int)(len * Math.cos(angle1) + x);
  int endY1 = (int)(len * Math.sin(angle1) + y);
  int endX2 = (int)(len * Math.cos(angle2) + x);
  int endY2 = (int)(len * Math.sin(angle2) + y);
  line(x,y, endX1, endY1);
  line(x,y, endX2, endY2);
   
   if(len > smallestBranch){
     drawSmallBranches(endX1, endY1, len*.5, angle1);
     drawSmallBranches(endX2, endY2, len*.5, angle2);
   }
} 
