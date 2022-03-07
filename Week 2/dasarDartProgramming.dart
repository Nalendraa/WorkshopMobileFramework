void main (){

  // variabel
  var a = 10;
  var buah = "Apel";
  var device = "Android";

  print(a.runtimeType);
  print(buah.runtimeType);
  print(device.runtimeType);

  // integer
  int tahunLahir = 2001;
  int tahunSekarang = 2022;
  int umur = tahunSekarang - tahunLahir;

  print('umur saya saat ini $umur tahun');

  // string
  String nama = "Ali Imron";
  String kuliah = "Politeknik Negeri Jember";
  String saya = "Perkenalkan saya $nama, saya kuliah di $kuliah";

  print(saya);

  // double
  double nilai1 = 83.14;
  double nilai2 = 80.61; 
  double rataRata = (nilai1 + nilai2) / 2;

  print('rata-rata nilai kamu $rataRata');

  // operator
  var x = 12;
  var y = 24;
  var check = x>y;
  print('x lebih besar dari y = ' + check.toString());

  check = x<y; 
   print('x kurang dari y =  ' +check.toString());

  check = x <= y; 
   print('x lebih kecil atau sama dengan y  =  ' +check.toString());

  check = x >= y; 
   print('x lebih besar atau sama dengan y =  ' +check.toString());
   
  check = x != y; 
   print('x tidak sama dengan y =  ' +check.toString());

  check = x == y; 
   print('x sama dengan y =  ' +check.toString()); 
}

