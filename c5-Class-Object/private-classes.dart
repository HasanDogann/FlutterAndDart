import 'private2.dart';

void main(List<String> args) {
  Databases d1 = Databases();
  d1.userName = "hasan";
  d1.password = "123456";


  bool result = d1.connect();
  if (result == true) {
    print("Connected to database ");
  } else {
    print("Someting went wrong!");


  }
}



