public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  translate(250,250);
  background(0);
  //Cluster c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
  Cluster c = new Cluster(30, 0,0);
}
public void mousePressed()
{
  redraw();
}
