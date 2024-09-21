# Fat Arrow Notation in Dart

In Dart, the "fat arrow" notation allows you to define functions in a more concise and readable way. Instead of using curly braces to define a function, you can use `=>` for single-expression functions. Here's an example:

## Normal Function Definition:
```dart
int add(int a, int b) {
  return a + b;
}
```
## Fat Arrow Definition:
```dart
int add(int a, int b) => a + b;
```
The fat arrow notation is suitable for functions that return a single expression. This makes the code shorter and more readable. It is particularly preferred for simple and short functions.
