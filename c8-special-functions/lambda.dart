void main(List<String> args) {
  //fonksiyonu direk değişkene atama
  Function function1 = (int n1, int n2) {
    int total = n1 + n2;
    print(total);
  };

  function1(3, 5);

  var f2 = (int s) => s * 2;
  print( f2(3));
}

void add(int n1, int n2) {
  int total = n1 + n2;
  print(total);
}
