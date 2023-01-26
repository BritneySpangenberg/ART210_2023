float _cx = 0.01;  //this is a place for the circle's position

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
  
  if(_cx > width) 
  {
    _cx = 0.01;
  }
  else
  {
    _cx = _cx * 1.1;
  }
}
