float _cx = 0.0;  //this is a place for the circle's position
float _cd = 10;

void setup()
{
  size(800,600);
  _cx = 100;
}

void draw()
{
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  circle(_cx,height/2,40);  //drawing the circle
     _cx = _cx + _cd;
     
     
  if(_cx > width || _cx < 0) 
  
  {
    _cd = _cd * (-1);
  }
}
