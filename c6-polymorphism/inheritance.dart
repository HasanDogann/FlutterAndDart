void main(List<String> args) {
  User u1 = User("hd", "123");
  u1.connect();
  User u2 = NormalUser("as", "564");
  u2.connect();
  User u3 = AdminUser("tk", "5462");
  u3.connect();

  List<User> allUsers = [];
  allUsers.add(u1);
  allUsers.add(u2);
  allUsers.add(u3);
  for (var item in allUsers) {
    print(
        "User's email is ${item._email} and user's password is : ${item._password} and user type");
  }
  test1(u1);
  test1(u2);
  test1(u3);
}

void test1(User u) {
  u.connect();
}

class User {
  String _email = "";
  String _password = "";

  User(this._email, this._password) {}

  void connect() {
    print("User connected");
  }
}

class NormalUser extends User {
  NormalUser(String mail, String pass) : super(mail, pass);
  @override
  void connect() {
    // TODO: implement connect
    print("Normal User connected");
  }
}

class AdminUser extends User {
  AdminUser(String mail, String pass) : super(mail, pass);
  @override
  void connect() {
    // TODO: implement connect
    print("Admin user connected");
  }
}
