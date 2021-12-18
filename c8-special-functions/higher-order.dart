void main(List<String> args) {
  List<int> list = [1, 2, 3];
  //içinde başka fonksiyon alan fonksiyonlara higher order denir
  list.forEach((element) {
    print(element + 1);
  });
  //For each Kullanımı
  list.forEach(callBack);

  //Kendi for each metodumuzu kullanma
  myForEach(list, (int value,int index) {
    print("Değer is $value and index: $index");
  });
}

void callBack(int e) {
  print("Element is $e");
}

//Kendi for each metodumuzu yazma
void myForEach(List<int> l, Function f) {
  for (var i = 0; i < l.length; i++) {
    f(l[i],i);
  }
}
