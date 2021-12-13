void main(List<String> args) {
  //1.soru aldığı değer kadar olan çift sayıların toplamı olan fonks.
  print("Verilen sayıya kadar olan çift sayıların toplamı: ${ans1(13)}");
  print("********************************************************");

  //2.soru dairenin alanını hesaplayan fonks. yazılacak pi sayısı opsiyonel verilmezse 3.14 alınacak(alan=pi*r^2)
  print("r si verilen dairenin alanı pi verilen durum ${ans2(4, 3)}");
  print("r si verilen dairenin alanı pi verilmeyen durum ${ans2(4)}");
  print("********************************************************");

  //3.soru Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonks. yazınız sonuc dondurmesın fakat ucgenın cesıt kenar ıkız kenar ya da eskanar oldugunu yazdırsın

  //Çeşitkenar Testi
  ans3(k1: 4, k2: 5, k3: 6);
  //İkizkenar Testi
  ans3(k1: 4, k2: 4, k3: 6);
  ans3(k1: 4, k2: 6, k3: 6);
  ans3(k1: 4, k2: 5, k3: 4);
  //Eşkenar Testi
  ans3(k1: 5, k2: 5, k3: 5);
}

//1.sorunun fonsksiyonu
double ans1(int n1) {
  double result = 0;
  for (var i = 1; i < n1; i++) {
    i % 2 == 0 ? result += i : result += 0;
  }
  return result;
}

//2.sorunun fonksiyonu
double ans2(double r, [double pi = 3.14]) => (r * r) * pi;

// 3.sorunun fonksiyonu
void ans3({double k1 = 0, double k2 = 0, double k3 = 0}) {
  if (k1 == k2 && k2 == k3) { 
    print("Bu bir eşkenar üçgen");
  } else if ((k1 == k2 && k2 != k3) ||
      (k1 == k3 && k2 != k3) ||
      (k3 == k2 && k2 != k1)) {
    print("Bu bir ikizkenar üçgen");
  } else {
    print("Bu bir çeşitkenar üçgen");
  }
}
