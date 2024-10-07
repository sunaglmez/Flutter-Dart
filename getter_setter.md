# Getter and Setter Methods in Dart

**Getter Methods:** Typically return a value and are defined using the `get` keyword (in Dart, automatic getter usage can also be done without the `get` keyword).

- Getter methods are always used to return a value (`return`).
- A getter returns a value, does not take parameters, and is often named like `noDegeri()` or `getNo()`.

**Setter Methods:** Typically take a parameter and are usually defined using the `set` keyword (in Dart, automatic setter usage can also be done without the `set` keyword).

- A setter sets a value, takes a parameter, and is often named like `noDegistir(int no)` or `setNo(int no)`.

```dart
class Ogrenci {
  String? adi;
  String? soyAdi;
  int? _no; // Private variable

  Ogrenci(this.adi, this.soyAdi, this._no);

  // Getter method
  int noDegeri() {
    return _no!;
  }

  // Setter method
  void noDegistir(int no) {
    this._no = no;
  }
}

import 'nesne-public-private-class.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci("Ayse", "Gul", 140);   // Creating an Ogrenci object

  ogr1.noDegistir(140);       // Change _no value to 140 using the setter
  print(ogr1.noDegeri());    // Print _no value using the getter
}
```
### Explanation:
Setter Usage: The line ogr1.noDegistir(140); calls the noDegistir method to change the value of _no to 140. This demonstrates the functionality of the setter method.
Getter Usage: The code print(ogr1.noDegeri()); calls the noDegeri method to print the current value of _no. This demonstrates the functionality of the getter method.
