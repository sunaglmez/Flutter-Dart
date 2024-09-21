# Dart FormatException Example

```dart
void main(List<String> args) {
  try {
    int number = 10 ~/ int.parse("eser");
    // When we write 10 ~/ eser, it may seem like there's no error,
    // but it will throw an error. Let's examine the result.

    print(number);
  } catch (e) {
    print("An error occurred: " + e.toString());
  } finally {
    print("This will run no matter what, whether an error occurs or not.");
  }
  print("Code continues...");
}

/* OUTPUT
An error occurred: FormatException: Invalid radix-10 number (at character 1)
eser 
^
// Now we know the error is a FormatException.
// We can create specific cases for possible errors.

This will run no matter what, whether an error occurs or not.
Code continues...
*/
```
