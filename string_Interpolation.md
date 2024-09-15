# Dart String Interpolation

In Dart, string interpolation allows you to dynamically insert variables and expressions within strings. This enhances code readability and helps you create strings more effectively.

## Basic Usage

To perform string interpolation, use the `$` symbol. Here is a simple example:
 ```dart
 void main() {
 var name = 'Ali';
 var age = 30;

 // String interpolation
 var message = 'Hello, my name is $name and I am $age years old.';
 print(message);
}
```
## Complex Expressions
If you want to use more complex expressions within the interpolation, you can use curly braces {}:
   ```dart
  void main() {
  var name = 'Ali';
  var age = 30;

  // More complex expression
  var message = 'Hello, my name is $name and I am ${age + 5} years old.';
  print(message);  // Hello, my name is Ali and I am 35 years old.
}
```

