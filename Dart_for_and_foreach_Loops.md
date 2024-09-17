# Dart `for` and `foreach` Loops

## `for` Loop

In Dart, the `for` loop is used to repeat a block of code a specific number of times. It is typically controlled by a counter variable, and the counter variable is updated in each iteration.

### Example:

```dart
void main() {
  for (int i = 0; i <= 10; i++) {
    print("Hello");
  }
}
```
### Explanation:

- **`int i = 0`**: The counter variable `i` is initialized with a starting value of 0.
- **`i <= 10`**: The loop condition. The loop continues to run as long as `i` is less than or equal to 10.
- **`i++`**: The counter variable `i` is incremented by 1 in each iteration (this is equivalent to `i = i + 1`).
- **`print("Hello")`**: The statement that is executed in each iteration, printing "Hello" to the console.

### Result:

This loop starts with the variable `i` at 0 and continues to run until `i` reaches 10, inclusive. It prints "Hello" to the console 11 times, once for each iteration.

## `foreach` Loop

In Dart, the `foreach` loop is used to iterate over collections (such as lists, sets, etc.). The `foreach` loop is designed to process each element in the collection and apply a specified operation to each element.

### Example:

```dart
void main() {
  List<String> names = ["Mary", "tom", "john", "Max"];

  names.forEach((name) {
    print(name);
  });
}
```
### Explanation:

- **`List<String> names = ["Mary", "tom", "john", "Max"];`**: A list is defined containing four different names.
- **`names.forEach((name) { print(name); });`**: The `foreach` loop iterates over each element in the `names` list, executing the `print(name);` statement for each element.

### Result:

The `foreach` loop prints each name in the list individually to the console.
