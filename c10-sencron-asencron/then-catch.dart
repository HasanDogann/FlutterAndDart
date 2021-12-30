import 'dart:io';

void main(List<String> args) {
  print("Anne çocugu ekmek almaya yollar");
  Future<String> result1 = longProcess();
  result1.then((String value) => print(value)).catchError((hata) {
  print(hata);
  }).whenComplete(() => print("Çocuk eve geldi"));
  print("Peynir zeyrtin hazır");
  print("Kahvaltı Hazır");
}

Future<String> longProcess() {
  Future<String> result = Future.delayed(Duration(seconds: 2), () {
  return "Ekmekle eve geldi ";
  // throw Exception("Bakkalda ekmek yok");
  });
  return result;
}
