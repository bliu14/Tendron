class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY, len;
  private float myAngle1, myAngle2;
  public Tendril(int leng, int x, int y)
  {
    myX = x;
    myY = y;
    len = leng;
    myAngle1 = random(-10, 10)+1;
    myAngle2 = random(-10, 10)+1;
  }
  public void show()
  {
    int i = 0;
    stroke(225,len*7.5,len*5);
    if (myAngle1 > 0 && myAngle2 > 0) {
      while (i < len) {
        line(myX, myY, myX+= random(0, myAngle1), myY+= random(0, myAngle2));
        i+=1;
      }
      Cluster c = new Cluster(len/2, myX, myY);
    } else if (myAngle1 < 0 && myAngle2 > 0) {
      while (i < len) {
        line(myX, myY, myX+= random(myAngle1, 0), myY+= random(0, myAngle2));
        i+=1;
      }
      Cluster c = new Cluster(len/2, myX, myY);
    } else if (myAngle1 > 0 && myAngle2 < 0) {
      while (i < len) {
        line(myX, myY, myX+= random(0, myAngle1), myY+= random(myAngle2, 0));
        i+=1;
      }
      Cluster c = new Cluster(len/2, myX, myY);
    } else if (myAngle1 < 0 && myAngle2 < 0) {
      while (i < len) {
        line(myX, myY, myX+= random(myAngle1, 0), myY+= random(myAngle2, 0));
        i+=1;
      }
      Cluster c = new Cluster(len/2, myX, myY);
    }
  }
  public int getX() {
    return myX;
  }
  public int getY() {
    return myY;
  }
}
