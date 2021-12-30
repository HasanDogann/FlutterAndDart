void main(List<String> args) async {
  print("İnternetten kişi verisi getirilecek ");
  //Await kullanılınca await bitene kadar program ilerlemez
  personProcess();
  print("Prosess is over");
}

void personProcess() async {
  String p = await getPersonData();
  print(p);
}

Future<String> getPersonData() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Person Name: Hasan and Id : 304";
  });
}
