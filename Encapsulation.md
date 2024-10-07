# Encapsulation in Dart

Encapsulation is the practice of hiding the internal variables of a class from the outside world, allowing access to these variables only through specific methods. These methods are typically known as getter and setter methods.

Encapsulation ensures that the data and the methods that operate on this data are kept together, while restricting direct access from outside the class. This means that data is protected and can only be accessed through certain methods defined within the class.

Encapsulation provides data privacy.

```dart
class Pazarlamaci {
  String adi;
  String soyAdi;
  int telefonu;
  int satisAdeti;
  int? _prim; // The _prim variable is private and can be null as it's not defined in the constructor.

  Pazarlamaci(this.adi, this.soyAdi, this.telefonu, this.satisAdeti) {
    _prim = satisAdeti * 5;
  }

  // Getter to access the _prim variable
  int? getPrim() {
    return _prim;
  }

  // Setter to modify the _prim variable
  void setPrim(int satisAdeti) {
    _prim = satisAdeti * 5;
  }
}

void main() {
  Pazarlamaci pazarlama = Pazarlamaci("Ayse", "Gul", 123, 10);
  print("Prim: ${pazarlama.getPrim()}"); // Accessing _prim using the getter
  pazarlama.setPrim(15); // Modifying _prim using the setter
  print("Yeni Prim: ${pazarlama.getPrim()}"); // Accessing the updated _prim value
}
```
### Explanation:
Getter Method: The getPrim() method allows access to the private _prim variable.
Setter Method: The setPrim(int satisAdeti) method allows the modification of the _prim variable based on the new satisAdeti value.
Encapsulation provides a way to protect the internal state of an object while still allowing controlled access to it.
