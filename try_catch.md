# Error Handling in Dart

In Dart, error management and handling can be achieved using `try`, `catch`, `finally`, and `throw` structures. These structures help your program deal with unexpected situations and handle them gracefully.

## Error Handling Structures

### `try`:
The `try` block contains code that may throw an error. The code inside the `try` block is executed, and if an error occurs, it is directed to the `catch` block.

### `catch`:
The `catch` block catches the error that occurs in the `try` block and handles it. The error can be caught as a variable inside the `catch` block, allowing access to the error details.

### `finally`:
The `finally` block is executed after both the `try` and `catch` blocks. It runs whether an error occurred or not. It is commonly used for resource cleanup or performing tasks that should always execute.

### `throw`:
The `throw` keyword is used to raise an error manually. It is typically used when a specific condition is met and you want to throw an error intentionally.

Example usage:

```dart
void main() {
  try {
    int result = 10 ~/ 0; // This will throw an error
    print(result);
  } catch (e) {
    print('An error occurred: $e');
  } finally {
    print('This will always execute.');
  }
  
  // Manually throwing an error
  int age = -1;
  if (age < 0) {
    throw Exception('Age cannot be negative');
  }
}
```
```dart
import 'dart:io';

void main(List<String> args) {
  try { 
    print("Please enter a number:");
    int number = int.parse(stdin.readLineSync()!); 
    print(number);
  } 
  catch (e) {
    print("An error occurred: " + e.toString());
  }
  print("Continuing the program");
}
```
