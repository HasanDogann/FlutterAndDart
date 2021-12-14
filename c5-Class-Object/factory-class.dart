void main(List<String> args) {
  Student s1 = Student(1, "Haso");
  Student s2 = Student.noId("Huso");
  Student s3 = Student.factory(-3, "Kübra");

  print(s3.id);
  print(s3.name);

}

class Student {
  int id = 0;
  String name = "";

  Student(this.id, this.name) {
    print("Varsayılan kurucu");
  }

  Student.noId(this.name) {
    print("Id siz method");
  }
//Factory Constructor
  factory Student.factory(int id, String name) {
    if (id < 0) {
      return Student(0, name);
    }
    return Student(id, name);
  }
}
