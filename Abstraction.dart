"""
Abstract Classes and Methods in Dart
Abstract Class
Note: You cannot define abstract methods without using the abstract keyword.
"""

// Abstract Class Definition
abstract class Vehicle { // abstract class
 void start();  // abstract method. Since the method's functionality is not defined in the abstract class, it's an abstract method. However, in a concrete subclass like Car, this method will be defined, making it a concrete method there.
 void stop();   // abstract method
 void provideInfo() { // non-abstract method
   print('This is a vehicle.');
  }
}

// Concrete Class Derived from Abstract Class
class Car extends Vehicle {
  @override
  void start() {
    print('Car started.');
  }
  
  @override
  void stop() {
    print('Car stopped.');
  }
}

void main() {
  Car car = Car(); // We created an object from the Car class since it's a concrete class
  car.start();     // Car started.
  car.provideInfo(); // This is a vehicle.
  car.stop();      // Car stopped.
}

