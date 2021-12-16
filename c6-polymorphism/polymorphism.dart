void main(List<String> args) {
  Soldier i1 = Infantry();
  i1.sayHi();
  //COnstructor larda extend ettiğimiz method oluşturulunca eğer üst sınıfının contructor ı varsa once üst sınıfın constructor ı çalışır
}

class Soldier {
  String _name = "Hd";
  int _age = 0;
  Soldier() {
    print("Soldier constructor is started");
  }

  void sayHi() {
    print("Hi i am a soldier and my name is $_name");
  }
}

class Infantry extends Soldier {
  Infantry() {
    print("Infantry constructor is started");
  }
}
