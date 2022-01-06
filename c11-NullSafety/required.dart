void main(List<String> args) {
  final total1 = addNumbers(f: 1, s: 5, t: 3);
  final total2 = addNumbers(f: 1, s: 5,t: 4);

  print(total1);
  print(total2);
}

int addNumbers({required int f ,required int s ,required int t }) {
  return f + s + t;
}
