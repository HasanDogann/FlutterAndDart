void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("hasan");
  myStack.push(true);
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(6);
  intMyStack.push(1);
  intMyStack.push(23);

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("Hasan");
  print(genericStack.pop());
}

class MyStack {
  List _myList = [];

  void push(newElement) {
    _myList.add(newElement);
  }

  pop() {
    return _myList.removeLast();
  }
}

class IntMyStack {
  List<int> _myList = [];

  push(int newElement) {
    _myList.add(newElement);
  }

  pop() {
    return _myList.removeLast();
  }
}

class GenericStack<T> {
  List<T> _mylist2 = <T>[];

  void push(T newElement) {
    _mylist2.add(newElement);
  }

  T pop() {
    return _mylist2.removeLast();
  }
}
