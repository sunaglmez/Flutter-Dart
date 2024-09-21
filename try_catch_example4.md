# Dart Input Validation Example

```dart
import 'dart:io';

void main(List<String> args) {

 try {
    print("Please enter a positive integer");
    String number = stdin.readLineSync()!.trim();

    // We are asking the user to enter a positive value.
    // The user might enter their name instead of a number.
    // The user might send a negative value.
    // The user might leave it empty.

    if (number.isEmpty) {
      throw FormatException("Input cannot be empty");
    } else if (number.contains(RegExp(r'[\d]')) == false) {
      throw FormatException("Please enter a number");
    } else if (int.parse(number).isNegative) {
      throw FormatException("Number cannot be negative");
    }
    print("The square of the entered number is ${int.parse(number) * int.parse(number)}");
    // We are calculating the square of the entered number and printing it on the screen.
  } catch (e) {
    print(e.toString());
  }
}
```
## Explanation:

- **if (number.isEmpty):** Throws an exception if the user leaves the input empty.
- **if (number.contains(RegExp(r'[\d]')) == false):** Throws an exception if the user enters something other than a number (like a string).
- **if (int.parse(number).isNegative):** Throws an exception if the user enters a negative number.
- **int.parse(number) * int.parse(number):** If the input passes all the checks, the program calculates and prints the square of the entered number.
