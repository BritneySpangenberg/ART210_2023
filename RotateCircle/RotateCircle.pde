int _nPlanets = 100;

float[] _speed = new float[_nPlanets];
float[] _angle = new float[_nPlanets];
float[] _dist = new float[_nPlanets];
float[] _size = new float[_nPlanets];
color[] _color = new color[_nPlanets];
boolean[] _isMoon = new boolean[_nPlanets];


void setup()
{
  
  /*size(1200,800);*/
  fullScreen();
   for(int i = 0; i < _nPlanets; i = i + 1)
   {
     _speed[i]=random(-0.3,0.3);
     _angle[i]=0.0;
     _dist[i]=random(100,400);
     _size[i]=random(1,50);
     _color[i]=color(random(255),random(255),random(255));
     _isMoon[i]=random(-1,1) > 0;
   }
   /*
  _speed[0]=1;
  _speed[1]=-1.5;
  _angle[0]=0.0;
  _angle[1]=0.0;
  _dist[0]=100.0;
  _dist[1]=130.0;*/
}

void draw()
{
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  
  translate(width/2,height/2);
  scale(0.5);
  
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
     drawPlanet(_angle[i], _dist[i], _size[i], _color[i], _isMoon[i]);
     _angle[i] = _angle[i] + _speed[i];
  }
 
 /*
  drawPlanet(_angle[1], _dist[1]);

  _angle[i] = _angle[i] + _speed[i];
  _angle[i] = _angle[i] + _speed[i];
  */
}


void drawPlanet (float angle,float distance, float size, color c, boolean isMoon)
{ 
  if(!isMoon) pushMatrix();
    rotate(radians(angle));
    translate(0,distance);
    fill(c);
    circle(0,0,size);  //drawing the circle
  if(!isMoon) popMatrix();
}
