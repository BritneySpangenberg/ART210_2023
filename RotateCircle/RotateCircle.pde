int _nPlanets = 100;

float[] _speed = new float[_nPlanets];
float[] _angle = new float[_nPlanets];
float[] _dist = new float[_nPlanets];


void setup()
{
  
  size(1200,800);
   for(int i = 0; i < _nPlanets; i = i + 1)
   {
     _speed[i]=random(-1.8,1.8);
     _angle[i]=0.0;
     _dist[i]=random(100,400);
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
  
  
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
     drawPlanet(_angle[i], _dist[i]);
     _angle[i] = _angle[i] + _speed[i];
  }
 
 /*
  drawPlanet(_angle[1], _dist[1]);

  _angle[i] = _angle[i] + _speed[i];
  _angle[i] = _angle[i] + _speed[i];
  */
}


void drawPlanet (float angle,float distance)
{ 
  pushMatrix();
    rotate(radians(angle));
    translate(0,distance);
    fill(255);
    circle(0,0,40);  //drawing the circle
  popMatrix();
}
