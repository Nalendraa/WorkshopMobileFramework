// If Else Statement
void main () {
  var tahun = 2021;

  print('tahun = $tahun');

  if(tahun == 2022) {
    print('saat ini tahun $tahun');
  } else{
    print('tahun ini bukan tahun 2022');
  }
  print('selesai');

  // If Else If Statement
  var a = 2;
  var b = 3;
  var c = 4;

  if(a>b) {
    if(a>c){
      print('a is greater');
    }
    else{
      print('c is greater');
      }
    }
  else if (b>c){
    print('b is greater');
  }
  else{
    print('c is greater');
  }

  // Switch Statement
  int case1 = 1;
    String case2 = "Dart";
    switch (case1) {
    case 1: {
        switch (case2) {
        case 'Dart': {
            print("Welcome to DartProgramming");
        }
        }
    } break;
    case 2: {
        print("DartProgramming number 2");
    } break;
    default: {
        print("This is default case");
    } break;
    }
  }