# The `this` Keyword in Dart

## Definition
In Dart, the `this` keyword is used to refer to the current instance of the class in which it is used. It allows you to access the instance's variables, methods, and constructors from within that class. This is especially useful when differentiating between instance variables and parameters with the same name.

## Usage of `this`

### 1. Accessing Instance Variables
The `this` keyword is often used when you have a constructor or method parameter that has the same name as an instance variable. It helps to distinguish the instance variable from the local parameter.

**Example**:
```dart
class Person {
  String name;

  // Constructor using `this` to reference instance variable
  Person(String name) {
    this.name = name; // `this.name` refers to the instance variable
  }

  void display() {
    print('Name: ${this.name}'); // Accessing instance variable using `this`
  }
}

void main() {
  Person p = Person('Alice');
  p.display(); // Output: Name: Alice
}
```
In this example, this.name refers to the instance variable name, while name refers to the parameter passed to the constructor.

### 2. Calling Another Constructor
You can use this to call another constructor from within a constructor.

**Example**:
```dart
class Rectangle {
  int width, height;

  // Constructor with two parameters
  Rectangle(this.width, this.height);

  // Named constructor calling the default constructor
  Rectangle.square(int side) : this(side, side);
}

void main() {
  Rectangle rect = Rectangle.square(10);
  print('Width: ${rect.width}, Height: ${rect.height}'); // Output: Width: 10, Height: 10
}
```
In this case, the named constructor Rectangle.square() calls the default constructor using this(side, side).

### 3. Returning the Current Instance
You can also return the current instance of a class from a method using this. This is useful in method chaining, where multiple methods are called on the same object.

**Example**:
```dart
class Counter {
  int value = 0;

  Counter increment() {
    this.value++;
    return this; // Returning the current instance
  }

  Counter decrement() {
    this.value--;
    return this;
  }

  void display() {
    print('Value: $value');
  }
}

void main() {
  Counter counter = Counter();
  counter.increment().increment().decrement().display(); // Output: Value: 1
}
```
