void main(List<String> args) {
  try {
    Student s1 = Student(-1);
    print(s1.age);
  } on AgeException catch (e) {
    print(e.message);
  } finally {
    print("Program bitti");
  }
}

class AgeException implements Exception {
  String message = "";

  AgeException({this.message = "Age Exception"});

  @override
  String toString() {
    // TODO: implement toString
    return "Hatanın olduğu sınıfta toString metodu çalıştı";
  }
}

class Student {
  int age = 0;

  Student(int age) {
    if (age < 0) {
      throw AgeException();
    } else
      this.age = age;
  }
}
