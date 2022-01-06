import 'dart:math';

class RandomText {
  String? value() {
    if (Random().nextBool()) {
      return 'String ifade';
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  final creater = RandomText();
  if (creater.value() == null) {
    print("Null değer geldi");
  } else {
    print(creater.value());
  }
}
