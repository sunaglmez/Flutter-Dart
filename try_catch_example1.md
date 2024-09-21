# Dart Division and Exception Handling Example

```dart
void main(List<String> args) {
  try {
    int number = 10 ~/ 3;
    // If we had written 10 / 3, an error would have occurred.
    // The tilde (~) operator discards the fractional part and treats the result as an int.
    // That's why we didn't get an error. Let's see the result.
    print(number);
  } catch (e) {
    print("An error occurred: " + e.toString());
  } finally {
    print("This will run no matter what, whether an error occurs or not.");
  }
  print("Code continues...");
}

/* OUTPUT:
There was no error, but this code is very prone to error. Let's review the examples below:

3
This will run no matter what, whether an error occurs or not.
Code continues...
*/
```
