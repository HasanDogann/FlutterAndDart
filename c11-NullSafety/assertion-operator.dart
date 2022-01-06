

int? canbeNull = 1;
void main(List<String> args) {
  
  List<int?> canbeNullList = [2, 5, null];
          //! anlamı null olmayacak 
  int a = canbeNull!;
  int b = canbeNullList.first!;
  int c = canReturnNull()!.abs();
}

int? canReturnNull() {
  return 5;
}
