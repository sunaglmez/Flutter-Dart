""" Dart Example with Key Concepts

In this example, we will use several concepts we've learned in Dart:
- **Abstract class** to create a base class.
- A **concrete class** derived from the abstract class.
- A **static class** containing methods and constants for mathematical operations.
- We will then use these in the main function.

This example models a "Car" class derived from an abstract "Vehicle" class and includes a static class for mathematical operations.
"""

// Creating an abstract class
abstract class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void start(); // abstract method
  void stop();  // abstract method

  void displayInfo() {
    print('Brand: $brand, Year: $year');
  }
}

// Concrete class derived from the abstract class
class Car extends Vehicle {
  Car(String brand, int year) : super(brand, year);

  @override
  void start() {
    print('$brand car started.');
  }

  @override
  void stop() {
    print('$brand car stopped.');
  }
}

// Functional class with static methods and constants
class MathOperations {
  static const pi = 3.14;

  static double calculateAreaOfCircle(double radius) {
    return pi * radius * radius;
  }

  static double add(double a, double b) {
    return a + b;
  }

  static double multiply(double a, double b) {
    return a * b;
  }
}

void main() {
  // Creating an instance of the Car class
  Car myCar = Car('Toyota', 2020);
  myCar.start();
  myCar.displayInfo();
  myCar.stop();

  // Using static methods from the MathOperations class
  print('Area of a circle with radius 5: ${MathOperations.calculateAreaOfCircle(5)}');
  print('Addition of 10 and 20: ${MathOperations.add(10, 20)}');
  print('Multiplication of 4 and 5: ${MathOperations.multiply(4, 5)}');
}
