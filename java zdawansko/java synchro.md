```java
import java.util.Random;
import java.lang.Math;
import java.util.*;     
public class zad11{
	public static  class buffer
	{
		public int dane;
		public boolean  exist;
		public synchronized void send(int danein)
		{
			while(exist)
			{
				try
				{
					wait();
				}
				catch (InterruptedException e) {}
			}		
			this.exist=true;
			this.dane=danein;
			notifyAll();		
		}
		public synchronized int rec()
		{
			while(!exist)
			{
				try
				{
					wait();
				}
				catch (InterruptedException e) {}
			}
			this.exist=false;
			notifyAll();
			return dane;
			
		}
			
		
	}
	public static class prod  extends Thread
	{
		private buffer dane;
		private int danein;
		Random rand = new Random();
		public prod(buffer kekma)
		{
			dane = kekma;


		}
		public  synchronized void run()
		{
			for (int i = 0; i < 10; i++)
					{
						danein = rand.nextInt(10);
						dane.send(danein);
						System.out.println(danein);
					}
		}
	}

	public static class cumsument  extends Thread
	{
		private buffer dane;
		private int daneout;
		Random rand = new Random();
		
		public cumsument(buffer kekma)
		{
			dane = kekma;


		}
		public synchronized void run()
		{
			for (int i = 0; i < 10; i++)
					{
						try
						{
							wait(rand.nextInt(2000));
						}
						catch (InterruptedException e) {}
						daneout = dane.rec();
						System.out.println(daneout);
					}
		}

	}
	public static synchronized  void main(String args[])
	{
		buffer kekma = new buffer();
		prod a= new prod(kekma);
		cumsument b= new cumsument(kekma);
		a.start();
		b.start();
	}
}

```