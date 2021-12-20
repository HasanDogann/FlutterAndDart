void main(List<String> args) {
  Map<String, dynamic> map1 = Map();
  var map2 = <String, dynamic>{};

  map1['id'] = 5;
  map1['name'] = "Hasan";
  map1['color'] = "red";

  //MapFrom
  var newMap = Map.from({'value': 'new'});

  //MapFromEntries
  var mapFromEntries = Map.fromEntries(map1.entries);
  print(mapFromEntries);

  //Map From Iterable
  var list = [1, 2, 3, 4];

  var mapItareble = Map<String, String>.fromIterable(list,
      key: (element) => "$element", value: (item) => "${item * 2}");
  print(mapItareble);

  //Map Update
  map1.update(
    'id2',
    (value) => value * 3,
    ifAbsent: () => "There is no key as you wish",
  );


  //Map put if absent
  map1.putIfAbsent("surname", () => "dogan");

  print(map1);
}
