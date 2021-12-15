import 'private2.dart';

void main(List<String> args) {
  DatabaseConnection d1 = DatabaseConnection();
  d1.connect();
  DatabaseConnection d2 =
  DatabaseConnection.loginWithNameandPasswoord("hado", "1234");
  bool result = d1.connect();
  bool result2 = d2.connect();

  result == true ? print("Connected 1.") : print("Something went wrong! 1");
  result2 == true ? print("Connected 2.") : print("Something went wrong! 2");
}
