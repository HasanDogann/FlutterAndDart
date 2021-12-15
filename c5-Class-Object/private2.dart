import 'dart:math';

class DatabaseConnection {
  String _user = "Hasan";
  String _password = "123456";

DatabaseConnection(){}
DatabaseConnection.loginWithNameandPasswoord(String user,String password){

}


  bool connect() {
    if (_internetConnected()) {
      if (_user == "Hasan" && _password == "123456") {
        return true;
      } else
        return false;
    } else
      return false;
  }

  bool _internetConnected() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
