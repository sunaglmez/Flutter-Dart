# Abstract Class
Abstract classes are classes that **cannot be instantiated**. They are used to define the behavior that can be inherited by other classes. An abstract class is declared using the keyword `abstract`.

## Syntax
```dart
abstract class ClassName {
  // Body of abstract class

  method1();
  method2();
}
```
# Abstract Method
An abstract method is a method that is declared without an implementation. It is defined with a semicolon (`;`) instead of a method body. Abstract methods must be overridden in subclasses that inherit from the abstract class.

## Syntax
```dart
abstract class ClassName {
  // Body of abstract class

  method1(); // Abstract method
  method2(); // Abstract method
}
```
