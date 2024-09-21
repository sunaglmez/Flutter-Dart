# Dart Exception Handling with Specific Error Types

```dart
void main(List<String> args) {
  try {
    int number = 10 ~/ int.parse("eser");
    // When we write 10 ~/ eser, it may seem like there's no error,
    // but it will throw an error. Let's examine the result.

    print(number);
  } on FormatException catch (e) {
    print("A FormatException occurred");
  } on IntegerDivisionByZeroException catch (e) {
    print("A Division by Zero Error occurred");
  } catch (e) {
    print("An unexpected error occurred: " + e.toString());
  } finally {
    print("This will run no matter what, whether an error occurs or not.");
  }
}
```
