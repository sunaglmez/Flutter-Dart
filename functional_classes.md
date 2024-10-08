# Functional Classes in Dart

So far, we've created multiple examples of classes and objects, like students, employees, or a shape class. Typically, when we create a class, we build a model class and generate objects from it.

However, classes are not always used in the model-object relationship. Sometimes, classes can be used to group similar types of functions.

For example, we can create a **Math** class and group functions like addition, subtraction, multiplication, and division inside it. It wouldn’t make sense to create an object from this class to use these functions, as no matter how many objects we create (e.g., `mat1`, `mat2`, `mat3`), calling `mat1.add(4,6)` or `mat2.add(4,6)` will yield the same result.

Similarly, if we define a constant value like `pi = 3.14` inside the class, it wouldn’t make sense to create an object just to access this constant.

In such cases, we can define **static** variables and methods inside the class, allowing us to access them directly without needing to create an object.

## Dart Static Class Definition

We can define static variables and methods by using the `static` keyword before the variable or method inside a class.

## Example of a Static Class

```dart
class Math {
  static const pi = 3.14;
  // static constant

  static double add(double num1, double num2) {
    return num1 + num2;
    // static method for addition
  }

  static double subtract(double num1, double num2) {
    return num1 - num2;
    // static method for subtraction
  }

  static double divide(double num1, double num2) {
    return num1 / num2;
    // static method for division
  }

  static double multiply(double num1, double num2) {
    return num1 * num2;
    // static method for multiplication
  }
}
```

## How to Access Static Members

We can access static members (variables or methods) directly from the class without creating an object. Here's an example:

```dart
void main(List<String> args) {
  print(Math.pi);                  // Accessing the static constant
  print(Math.divide(5, 4));        // 1.25
  print(Math.multiply(5, 4));      // 20.0
  print(Math.add(5, 4));           // 9.0
  print(Math.subtract(5, 4));      // 1.0
}
```
