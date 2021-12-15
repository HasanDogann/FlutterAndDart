import 'dart:math';

import 'c-Answer1.dart';
import 'c-Answer2.dart';

void main(List<String> args) {
//1- Give a r and calculate circle area and circumference
  Circle c1 = Circle(4);
  print(c1.info);

//2-
  Student s1 = Student(id: 1, grade: 50);
  List<Student> allStudents = List.filled(10, Student());

  fillStudentList(allStudents);
  
  for (var item in allStudents) {
    print(item.toString());
  }
  print("List has ${allStudents.length} student and Average grade is : ${average(allStudents)}");
}

void fillStudentList(List<Student> liste) {
  for (var i = 0; i < liste.length; i++) {
    liste[i] =
        Student(id: Random().nextInt(1000), grade: Random().nextInt(100));
  }
}

average(List<Student> list) {
  int total = 0;
  for (var i = 0; i < list.length; i++) {
    total += list[i].grade;
  }
  return (total / list.length);
}
