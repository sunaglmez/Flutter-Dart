# Dart `Break` Statement

The `break` command in Dart is used to terminate the flow within a loop (e.g., `for`, `while`, `do-while` loops) and exit the loop immediately. The `break` statement exits the loop even if the loop condition is still valid.

### Example:
The following code demonstrates how the `break` command works within a `for` loop:

```dart
main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break; // Exit the loop when i is greater than 5.
    }
    print(i);
  } 
}
```
### Explanation:

- **Loop Start**:  
   The `for` loop iterates with the variable `i`, starting from 0 and continues as long as `i` is less than 10.
-  **Condition Check**:  
   In each iteration, the condition `if (i > 5)` is checked. If `i` is greater than 5, the `break` statement is executed, which immediately exits the loop.
- **Inside Loop Action**:  
   If the condition `if (i > 5)` is not met (i.e., when `i` is less than or equal to 5), the statement `print(i);` is executed, which prints the value of `i` to the console.
- **Break Statement**:  
   Once `i` reaches 6, the condition `if (i > 5)` becomes true, and the `break` statement is triggered. This causes the loop to terminate, preventing further iterations for values of `i` greater than 6.

# Dart `continue` Statement

In Dart, the `continue` statement is used within loops to skip the remaining code in the current iteration and move to the next iteration. It allows you to skip certain steps in the loop without exiting the loop entirely.

### Usage of `continue`
The `continue` command skips the rest of the loop's body for the current iteration and moves directly to the next iteration, making it useful for conditional checks where certain iterations should be bypassed.

### Syntax
```dart
for (var item in collection) {
  if (condition) {
    continue; // Skip the rest of the loop's body and continue with the next iteration
  }
  // Other statements
}
```
### Example:
```dart
void main() {
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("The value of i is $i");
    } else {
      // Skips the rest of the loop when i is less than or equal to 5
      continue;
    }
  }
}
```
### Explanation:

- **Loop Iteration**: The loop runs from `i = 0` to `i = 9`.
- **Condition**: When the value of `i` is greater than 5, the message `The value of i is $i` is printed.
- **Skip with Continue**: For values of `i` less than or equal to 5, the `continue` statement skips the rest of the loop and moves directly to the next iteration.
- **Output**: The loop prints the value of `i` only for `i > 5`.

# `Nested Loops` Example: Multiplication Table

### Explanation

This example demonstrates the use of nested loops to generate a multiplication table.

- **Outer Loop**: The outer loop (`for (int x = 1; x <= 3; x++)`) iterates through numbers from 1 to 3.
- **Inner Loop**: The inner loop (`for (int y = 1; y <= 3; y++)`) also iterates through numbers from 1 to 3 for each iteration of the outer loop.
- **Calculation and Output**: Inside the inner loop, the multiplication of `x` and `y` is calculated and printed in the format `x x y = x*y`.

### Example:

```dart
void main() {
  for (int x = 1; x <= 3; x++) {
    for (int y = 1; y <= 3; y++) {
      print("$x x $y = ${x * y}");
    }
  }
}
```
### Output:
```dart
1 x 1 = 1
1 x 2 = 2
1 x 3 = 3
2 x 1 = 2
2 x 2 = 4
2 x 3 = 6
3 x 1 = 3
3 x 2 = 6
3 x 3 = 9
```
