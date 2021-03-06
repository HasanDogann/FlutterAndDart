void main(List<String> args) {
  String username = "";

  userById(7).then((value) {
    print(value);
    userByUsername(value['username']).then((List courses) {
      print(courses);
      String first = courses[0];
      courseComment(first).then((String comment) {
        print(first);
        print(comment);
      });
    });
  });
}

Future<String> courseComment(String course) {
  print("$course getiriliyor.");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs fena değil";
  });
}

Future<Map<String, dynamic>> userById(int id) {
  print("$id id li user getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'hasan', 'id': id};
  });
}

Future<List<String>> userByUsername(String user) {
  print("$user kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'javascript'];
  });
}
