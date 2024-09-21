# Dart Exception Handling Example

```dart
import 'dart:io';
// We imported this to receive input from the user

void main(List<String> args) {
  try {
    // We wrote the code with a high chance of error inside the try block.

    print("Please enter a number");
    int number = int.parse(stdin.readLineSync()!);
    // We asked the user to enter a value of type int.
    // If the user enters their name instead of a number, the program will give the following output:

    print(number);
  } 

  catch (e) {
    // We caught the error with the catch block and printed it using print.

    print("An error occurred: " + e.toString());
    // We caught our error.
    // OUTPUT: An error occurred FormatException: Invalid radix-10 number (at character 1)

  }
  print("Code continues...");
}
```
