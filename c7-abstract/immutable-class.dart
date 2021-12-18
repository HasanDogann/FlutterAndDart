void main(List<String> args) {
  print("Welcome!");

  const Coins c1 = Coins(5, "Hasan");
  const Coins c2 = Coins(5, "Hasan");

  c1 == c2 ? print("eşit") : print("eşit değil");
  print(c1.hashCode);
  print(c2.hashCode);
}

class Coins {
  final int id;
  final String name;

  const Coins(this.id, this.name);
}
