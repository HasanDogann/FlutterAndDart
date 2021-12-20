void main(List<String> args) {
  print("Program is started");

  try {
    //Wrong calculation
    int number = 102 ~/ int.parse("hd");
    print(number);
  }
  //if statement gibi on kullanarak farklı hataları tutabliriz
    on UnsupportedError {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print("Message: ${e.message} and source is: ${e.source}");
  } catch (e) {
    print("Error is:  $e");
  } finally {
    //Hata çıksa da cıkmasa da yazar
    print("Program is over...");
  }
}
