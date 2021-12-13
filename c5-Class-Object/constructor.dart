void main(List<String> args) {
  Car c1 = Car(2004, "Alfa", true);
  Car c2 = Car(2010, "BMW", true);
  c1.showInfo();
  c2.showInfo();
  c2.oldCalc();
  var c3 = Car.markasiz(true, 2003);
  var c4 = Car.nonAuto("Mercedes", 2018);
  c3.showInfo();
  c4.showInfo();
}

class Car {
  int? modelYear;
  String? marka;
  bool? isAuto;

  Car(int modelYear, String marka, bool isAuto) {
    this.modelYear = modelYear;
    this.marka = marka;
    this.isAuto = isAuto;
  }
  Car.markasiz(this.isAuto, this.modelYear);
  Car.nonAuto(this.marka, this.modelYear);

  void showInfo() {
    print(
        "Arabanın model yılı: $modelYear markası:$marka ve otomatik mi?:$isAuto ");
  }

  void oldCalc() {
    print("Arabanın yaşı: ${2021 - modelYear!}");
  }
}
