void main(List<String> args) {
  Student student1 = Student();
  student1.studentNumber = 1;
  student1.studentName = "Hasan";
  student1.isActive = true;
  student1.study();
    Student student2 = Student();
  student2.studentNumber = 2;
  student2.studentName = "Kübra";
  student2.isActive = true;
  student2.study();
}

class Student {
  int studentNumber = 0;
  String studentName = "";
  bool isActive = true;

  void study() {
    print("${studentName} is studying.Student number is ${studentNumber} and student activity is : ${isActive}");
  }
}
