```java
class lab10_zad1{
	public static double tab[] = new double[1000000];
	public static double srednia = 0;
	public static double sumaWatek = 0;

	public static void obliczSrednia(){
		double suma = 0;
		for (int i=0; i<tab.length; i++){
			suma += tab[i];
		}
		srednia = suma/tab.length;
	}

	public static synchronized void zsumuj(double value){
		sumaWatek += value;
	}


	public static class watekClass implements Runnable {
		int id;

		watekClass(int index){
			id = index;
		}

		public void run(){
			try{

				for (int i=0+((tab.length/4)*id); i<(((tab.length/4)*id)+tab.length/4); i++){
					sumaWatek += tab[i];
				}
				Thread.sleep(100);
			}
			catch(InterruptedException e){}
		}
	}

	public static class watekClass2 implements Runnable {
		int id;

		watekClass2(int index){
			id = index;
		}

		public void run(){
			try{
				for (int i=0+((tab.length/4)*id); i<(((tab.length/4)*id)+tab.length/4); i++){
					zsumuj(tab[i]);
				}
				Thread.sleep(100);
			}
			catch(InterruptedException e){}
		}
	}

	public static class watekClass3 implements Runnable {
		int id;

		watekClass3(int index){
			id = index;
		}

		public void run(){
			try{
				double suma = 0;
				for (int i=0+((tab.length/4)*id); i<(((tab.length/4)*id)+tab.length/4); i++){
					suma+=tab[i];
				}
				zsumuj(suma);
				Thread.sleep(100);
			}
			catch(InterruptedException e){}
		}
	}

	public static void main(String args[]){
		for (int i=0; i<tab.length; i++){
			tab[i] = i+1;
		}

		double sumaMain = 0;

		//sekwencyjnie
		watekClass objektA = new watekClass(0);  
		watekClass objektB = new watekClass(1); 
		watekClass objektC = new watekClass(2); 
		watekClass objektD = new watekClass(3); 

		Thread watekA = new Thread(objektA);
		Thread watekB = new Thread(objektB);
		Thread watekC = new Thread(objektC);
		Thread watekD = new Thread(objektD);

		long begin = System.currentTimeMillis();
		watekA.start();
		try{
			watekA.join();
		}catch(InterruptedException e){}
		sumaMain+=sumaWatek;
		sumaWatek = 0;
		watekB.start();
		try{
			watekB.join();
		}catch(InterruptedException e){}
		sumaMain+=sumaWatek;
		sumaWatek = 0;
		watekC.start();
		try{
			watekC.join();
		}catch(InterruptedException e){}
		sumaMain+=sumaWatek;
		sumaWatek = 0;
		watekD.start();
		try{
			watekD.join();
		}catch(InterruptedException e){}
		sumaMain+=sumaWatek;
		sumaWatek = 0;
		srednia = sumaMain/tab.length;
		long end = System.currentTimeMillis();
		long timeElapsed = end-begin;
		System.out.println("Srednia sekwencyjnie = "+srednia+ "; czas wykonania = "+timeElapsed+ "ms");
		sumaWatek = 0;
		srednia = 0;
		

		// rownolegle bez sekcji krytycznej
		watekClass objekt1 = new watekClass(0);  
		watekClass objekt2 = new watekClass(1); 
		watekClass objekt3 = new watekClass(2); 
		watekClass objekt4 = new watekClass(3); 

		Thread watek1 = new Thread(objekt1);
		Thread watek2 = new Thread(objekt2);
		Thread watek3 = new Thread(objekt3);
		Thread watek4 = new Thread(objekt4);

		begin = System.currentTimeMillis();
		watek1.start();
		watek2.start();
		watek3.start();
		watek4.start();
		try{
			watek1.join();
			watek2.join();
			watek3.join();
			watek4.join();
		} catch (InterruptedException e){}
		srednia = sumaWatek/tab.length;
		end = System.currentTimeMillis();
		timeElapsed = end-begin;
		System.out.println("Srednia rownolegle bez sekcji krytycznej = "+srednia+ "; czas wykonania = "+timeElapsed+ "ms");
		sumaWatek = 0;
		srednia = 0;

		// rownolegle z sekcją krytyczną w każdej iteracji pętli
		watekClass2 objekt5 = new watekClass2(0);  
		watekClass2 objekt6 = new watekClass2(1); 
		watekClass2 objekt7 = new watekClass2(2); 
		watekClass2 objekt8 = new watekClass2(3); 

		Thread watek5 = new Thread(objekt5);
		Thread watek6 = new Thread(objekt6);
		Thread watek7 = new Thread(objekt7);
		Thread watek8 = new Thread(objekt8);

		begin = System.currentTimeMillis();
		watek5.start();
		watek6.start();
		watek7.start();
		watek8.start();
		try{
			watek5.join();
			watek6.join();
			watek7.join();
			watek8.join();
		} catch (InterruptedException e){}
		srednia = sumaWatek/tab.length;
		end = System.currentTimeMillis();
		timeElapsed = end-begin;
		System.out.println("Srednia rownolegle z sekcją krytyczną w każdej iteracji pętli = "+srednia+ "; czas wykonania = "+timeElapsed + "ms");
		sumaWatek = 0;
		srednia = 0;

		// rownolegle z wukorzystaniem zmiennej
		watekClass3 objekt9 = new watekClass3(0);  
		watekClass3 objekt10 = new watekClass3(1); 
		watekClass3 objekt11 = new watekClass3(2); 
		watekClass3 objekt12 = new watekClass3(3); 

		Thread watek9 = new Thread(objekt9);
		Thread watek10 = new Thread(objekt10);
		Thread watek11 = new Thread(objekt11);
		Thread watek12 = new Thread(objekt12);

		begin = System.currentTimeMillis();
		watek9.start();
		watek10.start();
		watek11.start();
		watek12.start();
		try{
			watek9.join();
			watek10.join();
			watek11.join();
			watek12.join();
		} catch (InterruptedException e){}
		srednia = sumaWatek/tab.length;
		end = System.currentTimeMillis();
		timeElapsed = end-begin;
		System.out.println("Srednia rownolegle z sekcją krytyczną w każdej iteracji pętli = "+srednia+ "; czas wykonania = "+timeElapsed+ "ms");
		sumaWatek = 0;
		srednia = 0;
	}
}
```