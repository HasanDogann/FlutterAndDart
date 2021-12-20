import 'dart:math';

void main(List<String> args) {
  try {
    double value = takeSqrt(-20);
    print("Value is : ${value.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double takeSqrt(double num) {
  if (num < 0) {
    //Hata fırlatıldı ve çağrıldığı yere yollandı 
    throw FormatException("Number is can not be negative");
  }
  return sqrt(num);
}
