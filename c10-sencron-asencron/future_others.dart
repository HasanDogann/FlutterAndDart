void main(List<String> args) async {
  print("Program başladı");
  Future.delayed(Duration(seconds: 3), () {
    print("0 saniyelik işlem");
  });
  print("Program bitti");

  Future<int> total1 = Future(() {
    int total = 0;
    for (var i = 0; i < 10000000; i++) {
      total = total + i;
    }
    return total;
  });

  total1.then((int total) => print(total));
}
