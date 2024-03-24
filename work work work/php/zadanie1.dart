class Garage
{
  bool isempty=true;
  int? idpojazdu;
  int? garageid;
  Pojazd? pojazd;
  static int _gcounter=0;
  Garage()
  {
    _gcounter++;
    garageid=_gcounter;
  }
}

abstract class Pojazd
{
  String? nazwa;
  int? id;
  static int _counter=0;
  Pojazd(String nazwain)
  {
   _counter++;
   nazwa=nazwain;
   id=_counter;
  }

}

class Wypo 
{
  List<Garage> gararze=[Garage()];
  Wypo(int lgararzy)
  {
    for(var i =0;i<lgararzy-1;i++)
    {
      gararze.add(Garage());
    }
  }
  usunpoid(int idin)
  {

    gararze.forEach((element) {if(element.idpojazdu==idin){element.pojazd==null;}});
    //gc powinno złapac bo usuwamy referencje
  }

}

abstract class Spalinowe implements Fueltype
{


}
abstract class Fueltype
{
  int? typ;

}
abstract class Parkowalne 
{
  int? idgararzu;
  bool zaparkuj(Garage gararz){}  
  void wyparkuj(Garage gararz){}
  
}
class Samochod extends Pojazd implements Spalinowe,Parkowalne
{
  Samochod(String nazwa,int typin):super(nazwa)  
  {
    int typ=typin;
  }
  @override
  int? typ;
  @override
  int? idgararzu;
  @override
  bool zaparkuj(Garage gararz){
    if(gararz.isempty==true)
    {
      gararz.pojazd=this;
      gararz.idpojazdu=this.id;
      gararz.isempty=false;
      idgararzu=gararz.garageid;
      return true;
    }
    else
    {
      return false;
    }

  }
  @override
  void wyparkuj(Garage gararz)
  {
   gararz.pojazd=null;
   gararz.idpojazdu=null;
   gararz.isempty=true;
   idgararzu=null; 
  }   

  
}