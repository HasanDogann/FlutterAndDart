void main(List<String> args) {
  List<String> list = [];
  list.add("hasan");
  list.add("2");
  list.add("true");
  yazdir(list);

  //List<E> ==> Element
  //Map<K> ==> Key
  //Map<K,V> ==> Key,Value
  //R ==> Methodların return tipleri için

  //Student<T extends Insan> insan sınıfından türemiş bir student olmalı 


}

void yazdir(List list) {
  print(list[1].length);
}
