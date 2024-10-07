# What is Polymorphism?

Polymorphism in object-oriented programming refers to the ability of different objects to use functions inherited from the same base class in different ways according to their needs. Objects of the same class can call the same function, but each can respond to that function in a different manner.

In this context, we can adapt the function of the superclass in the subclasses. This is called overriding. In other words, the function in the superclass is overridden and implemented differently for the subclasses.

## Example

Let's consider three different geometric shapes: Triangle, Square, and Rectangle. All of these shapes share common properties such as height and width. Additionally, they have a function to calculate their area. In this case, we can define these common properties in a base class called `Shape`. The `Triangle`, `Square`, and `Rectangle` classes inherit from this `Shape` class. However, the method for calculating the area of a triangle is different from the others. Therefore, we will override the `calculateArea()` function in the `Triangle` class to suit our needs.

## Shape Class (Superclass)
```dart
// sekil.dart
class Shape {
  double height;
  double width;

  Shape(this.height, this.width);
  
  double calculateArea() {
    return height * width;
  }
}
```
### Square Class
```dart
// kare.dart
import 'sekil.dart';

class Square extends Shape {
  Square(double height, double width) : super(height, width);
}
```
### Rectangle Class
```dart
// dikdorgen.dart
import 'sekil.dart';

class Rectangle extends Shape {
  Rectangle(double height, double width) : super(height, width);
}
```
### Triangle Class
```dart
// ucgen.dart
import 'sekil.dart';

class Triangle extends Shape {
  Triangle(double height, double width) : super(height, width);

  @override
  double calculateArea() {
    return (height * width) / 2;
    // Here, we wrote a new area calculation function for the triangle.
    // Note that it has the same name, overriding the function from the superclass.
  }
}
```
### Main Function
```dart
// main.dart
import 'dikdorgen.dart';
import 'kare.dart';
import 'ucgen.dart';

void main(List<String> args) {
  Square square = Square(4, 4);
  print(square.calculateArea()); // 16.0
  
  Rectangle rectangle = Rectangle(2, 4);
  print(rectangle.calculateArea()); // 8.0
  
  Triangle triangle = Triangle(5, 8);
  print(triangle.calculateArea()); // 20.0
}
```
