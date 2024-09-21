import 'dart:io';

void main() {
  // Kullanıcıdan bir sayı al
  print('Bir sayı girin:');
  String? input = stdin.readLineSync();

  // Girişi int'e dönüştür ve karesini hesapla
  if (input != null) {
    int number = int.parse(input);
    int square = number * number;

    // Sonucu ekrana yazdır
    print('Girdiğiniz sayının karesi: $square');
  } else {
    print('Geçersiz giriş.');
  }
}
