class Databases {
  String _userName = "";
  String _password = "";

  set userName(String userName) {
    _userName = userName;
  }

  set password(String password) {
    _password = password;
  }

  bool connect() {
    if (_userName == "hasan" && _password == "123456") {
      return true;
    } else
      return false;
  }
}
