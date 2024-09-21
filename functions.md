# Dart Functions

## What is a Function in Dart?

A function in Dart is a block of code that performs a specific task and can be called upon whenever needed. Functions help break down complex programs into smaller, more manageable parts. Dart functions are versatile and can take parameters (inputs) and return values.

## Key Features of Functions in Dart:
- **Reusability:** Functions allow you to write code once and use it multiple times.
- **Modularity:** They help break complex tasks into smaller, more manageable chunks.
- **Maintainability:** Code becomes easier to read, debug, and maintain.
- **Return Values:** Functions can return values that can be used in other parts of the program.
- **Parameters:** You can pass values (arguments) into functions to make them dynamic.

## Function Syntax

```dart
// Basic Syntax of a Function
ReturnType functionName(Parameters) {
  // Function body (code to execute)
  return value;
}
```
# Types of Functions:
## 1. Functions with No Parameters and No Return Value
```dart
void sayHello() {
  print("Hello, World!");
}

void main() {
  sayHello(); // Output: Hello, World!
}
```
## 2. Functions with Parameters
```dart
void addNumbers(int a, int b) {
  int sum = a + b;
  print("Sum: $sum");
}

void main() {
  addNumbers(5, 3); // Output: Sum: 8
}
```
## 3. Functions with Return Values
```dart
int multiply(int a, int b) {
  return a * b;
}

void main() {
  int result = multiply(4, 5);
  print("Result: $result"); // Output: Result: 20
}
```
## 4. Optional Named Parameters
```dart
void describePerson({String name = "Anonymous", int age = 0}) {
  print("Name: $name, Age: $age");
}

void main() {
  describePerson(name: "tom", age: 23); // Output: Name: tom, Age: 23
  describePerson(); // Output: Name: Anonymous, Age: 0
}
```
## 5. Arrow Functions

For short expressions, Dart provides a concise syntax using arrow functions.

```dart
int square(int num) => num * num;

void main() {
  print(square(4)); // Output: 16
}
```
### Example: Calculate Area of a Circle
```dart
double calculateArea(double radius) {
  return 3.14 * radius * radius;
}

void main() {
  double area = calculateArea(5.0);
  print("The area of the circle is: $area"); // Output: The area of the circle is: 78.5
}
```
