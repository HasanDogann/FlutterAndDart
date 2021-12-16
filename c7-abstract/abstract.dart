void main(List<String> args) {
  Shape s1 = Square(10);
  print(s1.calcArea());
  print(s1.calcCircumference());
  s1.sayHi();

  Shape s2 = Rectangle(12, 3);

  print(s2.calcArea());
  print(s2.calcCircumference());
  s2.sayHi();

  List<Shape> allShapes = [];
  allShapes.add(s1);
  allShapes.add(s2);
}

abstract class Shape {
  double calcArea();

  double calcCircumference();
  void sayHi() {
    print("Ben Shape sınıfındanım");
  }
}

class Square extends Shape {
  double edge = 0;

  Square(this.edge);

  @override
  double calcArea() {
    return edge * edge;
  }

  @override
  double calcCircumference() {
    return 4 * edge;
  }

  @override
  void sayHi() {
    print("Ben Square sınıfındanım");
  }
}

class Rectangle extends Shape {
  double edge1 = 0, edge2 = 0;

  Rectangle(this.edge1, this.edge2);
  @override
  double calcArea() {
    return edge1 * edge2;
  }

  @override
  double calcCircumference() {
    return (edge1 + edge2) * 2;
  }

  @override
  void sayHi() {
    print("Ben Rectangle sınıfındanım");
  }
}
