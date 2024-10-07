# Public and Private Variables

## Example 1: Public Variables

```dart
// File: nesne-public-private-class.dart

class Ogrenci {
  String? ad;    // Public variable
  String? soyAd; // Public variable
  int? no;       // Public variable

  // Method to print student information
  void printInfo() {
    print("Name: $ad, Surname: $soyAd, Number: $no");
  }
}
```
### Explanation:
In this example, the Ogrenci class contains three public variables: ad, soyAd, and no. These variables are accessible from outside the class. The printInfo method prints the student's information using these public variables.

### Main File

```dart
// File: main.dart

import 'nesne-public-private-class.dart';

void main(List<String> args) {
  Ogrenci dene = Ogrenci("ayse", "gul", 11);
  dene.no = 12; // Changed the value because it's public
  print(dene.no);
}
```
### Explanation:
In this main file, we import the Ogrenci class from the nesne-public-private-class.dart file. We create an instance of Ogrenci named dene, initializing it with a name, surname, and number. Since the variable no is public, we can change its value to 12 and then print it.

### Explanation of Public Variables

The variables `ad`, `soyAd`, and `no` are public (accessible) in the `Ogrenci` class. 

Even though the `Ogrenci` class is defined in another file, we can access it in the main file by using the import statement:
```dart
import 'nesne-public-private-class.dart';
```

## Example 2: Private Variables

```dart
// Example 2
class Ogrenci {
  String? adi;
  String? soyAdi;
  int? _no; // Declared as private using an underscore
  // This prevents access to this variable from outside the class.
}

import 'nesne-public-private-class.dart';

void main(List<String> args) {
  Ogrenci dene = Ogrenci();
  dene.adi = "ayse";
  dene.soyAdi = "gulr";
  dene._no = 20; // This line will cause an error

  print(dene._no);  // Error: Cannot access private variable
}
```
### Explanation:
The variable _no is defined as private in Dart by prefixing it with an underscore (_). This means that access to this variable is restricted, preventing other classes and external code from accessing it.

In the main function, we attempt to set the value of _no, but this will result in an error because it cannot be accessed from outside the Ogrenci class.

## Example 3: Accessing Private Variables from Outside the Class

```dart
class Ogrenci {
  String? adi;
  String? soyAdi;
  int? _no;

  Ogrenci(this.adi, this.soyAdi, this._no);

  int noDegeri() { // Defined a function to read the private variable (Getter method)
    return _no!;
  }

  void noDegistir(int no) { // If we wanted to make this private, we would name it _noDegistir, which would restrict access.
    this._no = no;
  }
}

import 'nesne-public-private-class.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci("Ayse", "Gul", 0); // Initialize with default values

  ogr1.noDegistir(130);  // Setter
  print(ogr1.noDegeri()); // Getter
}
```
### Explanation:
The _no variable is defined as private, preventing access from outside the class.

The ! operator indicates that the nullable value is not null. Here, _no! ensures that _no is not null before returning its value.
The noDegeri method is a Getter method that allows reading the value of the private _no variable. Since _no is private, direct access from outside is not possible; hence a function is defined to get the value.
The noDegistir method serves as a Setter, allowing us to modify the private _no variable.
In the main function, we create an instance of Ogrenci and utilize the setter to change the _no value and the getter to retrieve it.

