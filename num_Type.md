# `num` Type in Dart

In Dart, the `num` type is a superclass for numeric data types, encompassing both `int` (integers) and `double` (floating-point numbers). This allows variables of type `num` to hold both integer and double values. However, for better clarity and type safety, it is often recommended to use `int` or `double` directly when declaring variables. Here’s an explanation of how `num` and `var` work:

## `num` Type

- **Definition**: The `num` type can represent both integers and floating-point numbers. This flexibility allows you to assign both `int` and `double` values to a variable of type `num`.

  ```dart
  num myNumber = 42;    // int value
  myNumber = 3.14;      // double value
  ```
  In the example above, the myNumber variable is of type num and can hold both an integer (42) and a floating-point number (3.14).

### Using var for Type Inference: 
`var` Usage: When you declare a variable with var, its type is determined by the first assigned value. Once a type is inferred, the variable can only hold values of that type.
```dart
var a = 10;          // a is inferred as int
a = 20;              // still int
// a = 3.14;         // Compile-time error: a is an int

var b = 3.14;        // b is inferred as double
b = 1.5;            // still double
// b = 10;          // Compile-time error: b is a double
```
### Why Prefer int or double
Clarity: For better readability and maintainability of your code, it's generally preferable to explicitly specify the variable types as int or double. This makes it clear what kind of data the variable holds.
```dart
int count = 10;
double price = 19.99;
