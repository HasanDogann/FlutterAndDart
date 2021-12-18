void main(List<String> args) {
  Database db = Firebase();
  db.connect();
  db.userSave();
  db.userUpdate();
  db.userDelete();
  userGuncelle(db);
}

void userGuncelle(Database db) {
  db.userUpdate();
}

abstract class Database {
  void connect();
  void userSave();
  void userUpdate();
  void userDelete();
}

class Oracle extends Database {
  @override
  void connect() {
    print("Oracle database is connected");
  }

  @override
  void userDelete() {
    print("Oracle user is deleted");
  }

  @override
  void userSave() {
    print("Oracle user is saved");
  }

  @override
  void userUpdate() {
    print("Oracle user is updated");
  }
}

class Firebase extends Database {
  @override
  void connect() {
    print("Firebase database is connected");
  }

  @override
  void userDelete() {
    print("Firebase user is deleted");
  }

  @override
  void userSave() {
    print("Firebase user is saved");
  }

  @override
  void userUpdate() {
    print("Firebase user is updated");
  }
}
