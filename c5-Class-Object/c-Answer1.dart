class Circle {
  double _r = 0;
  double _pi = 3.14;
  double _circumference = 0;
  double _area = 0;

  Circle(double r) {
    if (r > 0) {
      _r = r;
    } else
      return;
  }

  _calcCircumference() {
    _circumference = (_r * 2) * _pi;
    return _circumference;
  }

  _calcArea() {
    _area = (_r * _r) * _pi;
    return _area;
  }

  String get info =>
      "Circle circ. is: ${_calcCircumference()} and area is: ${_calcArea()}";
}
