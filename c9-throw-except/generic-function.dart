void main(List<String> args) {
  double doubleAverage = findAverage(4, 6);
  print("Average is $doubleAverage");

  double Add1 = addAll<double>(3.4, 12);
  print(Add1);
  int Add2 = addAll<int>(3, 4);
  print(Add2);
}

double findAverage(n1, n2) {
  return (n1 + n2) / 2;
}

addAll<T extends num>(T s1, T s2) {
  return (s1 + s2);
}
