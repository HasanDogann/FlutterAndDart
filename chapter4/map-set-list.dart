import 'dart:ffi';
import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  //Soru-1 Şehirleri tutan 4 elemanlı bir liste oluşturp 4 adet şehir tutunuz ve sırayla ekrana yazdırınız.
  List<String> cities = ["Kayseri", "Aksaray", "İstanbul", "New York"];
  for (var item in cities) {
    print(item);
  }
  //2.yöntem
  print(cities);
  print("********************************************");
  //Soru 2 -   Keyleri string değerleri dynamic olan bir map oluşturup buraya pc işlemci , çekirdek sayısı,ram miktarı ve ssd olup olmadıgını tutun ve ekrana yazdırın

  Map<String, dynamic> map1 = {
    "cekirdek": 4,
    "ram": "12 gb",
    "Ssd var mı?": true
  };
  print(map1);
  print("********************************************");

  //Soru-3 Keyleri string valueları dynamic olan map , her bir elemanının ili il kodu ve ilçe sayısı olacak şekilde oluşturulup okunaklı bir şekilde yazılacaktır.

  //Elemanları map olarak alacak olan List oluşturma
  List<Map<String, dynamic>> cities2 = [];

  //Listeye ekelnecek mapleri oluşturma
  Map<String, dynamic> Kayseri = {
    "İl": "Kayseri",
    "Kodu": 38,
    "İlce sayisi": 10
  };
  Map<String, dynamic> Aksaray = {
    "İl": "Aksaray",
    "Kodu": 68,
    "İlce sayisi": 5
  };
  Map<String, dynamic> NewYork = {
    "İl": "New York",
    "Kodu": 011,
    "İlce sayisi": 20
  };

  //Mapleri listeye ekleme

  cities2.add(Kayseri);
  cities2.add(Aksaray);
  cities2.add(NewYork);
  print(cities2);

//Listenin içini for ile dönme

  for (var i = 0; i < cities2.length; i++) {
    var currentCity = cities2[i];
    print(
        "Listenin ${i + 1}. elemanınında bulunan şehir ${currentCity["İl"]} Şehir kodu ${currentCity["Kodu"]} ve İlçe sayısı ${currentCity["İlce sayisi"]}");
  }
  print("********************************************");
  //Soru-4 Elaman sayısı 5 olan 2 liste oluştur.Elemanlar sıfırdan 50 ye kadar rastgele oluşsun Bu elemanları tek bir listeye ekleyelim oluşan listenin elamanlarının karesini tutan bir set oluşturalım

  List n1 = List.filled(5, 0);
  List n2 = List.filled(5, 0);

  var rng = new Random();

  for (var i = 0; i < 5; i++) {
    n1[i] = rng.nextInt(50);
    n2[i] = rng.nextInt(50);
  }
  List son = [...n1, ...n2];
  print("Sayılar ${son}");

  Set<int> set1 = {};
  for (var i = 0; i < 10; i++) {
    set1.add(son[i] * son[i]);
  }
  print("Set: $set1");

  print("***************************************");

  //Soru 5   kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini girdiğinde girilen girilen sayıların ortalamasını yazdırın

  List<int> nums = <int>[];
  int numInput = 0;
  do {
    print("Enter number or -1 to exit");
    numInput = int.parse(stdin.readLineSync()!);
    if (numInput != -1 && numInput > 0) {
      nums.add(numInput);
    } else {
      if (numInput == -1) {
        break;
      }
      print("Lütfen sıfırdan büyük bir sayı giriniz");
      continue;
    }
  } while (numInput != -1);

  double ortalama(List<int> list) {
    double total = 0;
    for (var i = 0; i < list.length; i++) {
      total = total + list[i];
    }
    return (total / (list.length));
  }

  print("Liste: ${nums} ve Listenin ortalaması: ${ortalama(nums)}");
}
