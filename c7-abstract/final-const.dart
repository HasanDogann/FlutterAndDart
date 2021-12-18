void main(List<String> args) {
  var str = "Hasan";

  //final kullanıldığı zaman burada değer tekrar kullanılamaz ve runtime da görünür yani çalışırken kullanılır.
  final String str2 = "hd";

  //const kullanıldığında ise yine değer tekrar atanamaz ve compile time da belirlenir yani çalışmadan önce değeri belli olur
  const pi = 3.14;

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
  liste.add(6);
  print(liste);

  liste == liste2 ? print("eşit") : print("eşit değil");

  const liste4 = [1, 2, 3, 4];
  const liste5 = [1, 2, 3, 4];
  const liste6 = [1, 2, 3, 4];

  liste4 == liste5 ? print("eşit") : print("eşit değil");
}
