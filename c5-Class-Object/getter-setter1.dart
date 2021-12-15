import 'getter-setter2.dart';
import 'private2.dart';

void main(List<String> args) {
  DatabaseConnection d1 = DatabaseConnection();
  Customer c1 = Customer(120);
  Customer c2 = Customer(1);
  c1.giveInfo();
  c2.giveCustomerId = 432;
  c2.giveInfo();
  print(c2.showCustomerId);

  //result == true ? print("COnnected") : print("Sth wrong...");
}
