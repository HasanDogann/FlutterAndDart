void main(List<String> args) async {
  Map<String, dynamic> getUser = await userById(6);
  List<String> courses = await userByUsername(getUser['username']);
  String comment = await courseComment(courses[0]);
  print(comment);
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
