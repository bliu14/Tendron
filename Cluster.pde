public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, int x, int y)
  {
    if(len < 5) {
      return;
    }
    for (int i = 0; i < NUM_STEMS; i++) {
      Tendril t = new Tendril(len, x, y);
      t.show();
    }
  }
}
