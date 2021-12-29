import 'dart:io';

void main(List<String> args) {
  print("Anne çocugu ekmek almaya yollar");
  longProcess();
  print("Peynir zeyrtin hazır");
  print("Kahvaltı Hazır");
}

void longProcess() {
  print("Ekmek almaya çıktı");
  Future.delayed(Duration(seconds: 10),(){
  print("Ekmekle eve geldi ");
  });

}
