# Dart while Loop

The `while` loop runs a block of code repeatedly as long as a specified condition is true. The loop checks the condition before each iteration, and if the condition is `true`, it continues. If the condition is `false`, the loop terminates.

### Example: Using a while Loop to Print a Name 5 Times

```dart
void main(List<String> args) {
  String name = "Tom";
  int i = 0;

  while (i < 5) {
    i++;
    print(name);
  } 
}
```
### Explanation:

- **`String name = "Tom";`**: A string variable `name` is initialized with the value "Tom".
- **`int i = 0;`**: A counter variable `i` is initialized with 0.
- **`while (i < 5);`**: This condition ensures that the loop will continue as long as `i` is less than 5.
- **`i++;`**: After each loop iteration, the counter `i` is incremented by 1.
- **`print(name);`**: The value of the `name` variable (Tom) is printed in each iteration.
  
### Example:
```dart
import 'dart:io';

void main() {
  print('How many terms of the Fibonacci sequence would you like to calculate?');
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Please enter a positive number.');
    return;
  }

  int a = 0;
  int b = 1;
  int count = 0;

  print('Fibonacci sequence:');

  while (count < n) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
    count++;
  }
}
```
# Dart do-while Loop

The do-while loop in Dart is similar to the while loop but ensures that the code block executes at least once before checking the condition. This makes it useful when you need the code inside the loop to run at least once regardless of the condition.

Here’s an example of using the do-while loop to print a name multiple times:

### Example:

```dart
void main() {
  String name = "Tom";
  int i = 0;

  do {  
    print(name);
    i++;  
  } while (i < 5);
}
```
### Explanation:
- `String name = "Tom";`: Defines a string variable with the value "Tom".
- `int i = 0;`: Initializes a counter variable `i` to 0.
- `do { ... } while (i < 5);`: The code block inside the `do` section will execute at least once. After each execution, it checks the condition `i < 5`. If the condition is true, it will continue executing the block; otherwise, it will exit the loop.
- `print(name);`: Prints the value of the `name` variable.
- `i++;`: Increments the counter `i` by 1.

### Example:
```dart
import 'dart:io';

void main() {
  print('How many terms of the Fibonacci sequence would you like to calculate?');
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Please enter a positive number.');
    return;
  }

  int a = 0;
  int b = 1;
  int count = 0;

  print('Fibonacci sequence:');

  do {
    print(a);
    int next = a + b;
    a = b;
    b = next;
    count++;
  } while (count < n);
}
```
### Explanation:

- `print('How many terms of the Fibonacci sequence would you like to calculate?');`: Prompts the user to enter the number of terms they want to compute.
- `int n = int.parse(stdin.readLineSync()!);`: Reads the user's input and converts it to an integer.
- `if (n <= 0)`: Checks if the user entered a positive number. If not, the program prints an error message and exits.
- `int a = 0;`: Initializes the first term of the Fibonacci sequence.
- `int b = 1;`: Initializes the second term of the Fibonacci sequence.
- `int count = 0;`: A counter to track the number of terms computed.
- `do { ... } while (count < n);`: The do-while loop ensures that the code inside the block is executed at least once. It prints the current Fibonacci number and updates the sequence until the count reaches n.
- `print(a);`: Prints the current term of the Fibonacci sequence.
- `int next = a + b;`: Computes the next term in the sequence.
- `a = b;`: Updates `a` to the previous second term.
- `b = next;`: Updates `b` to the newly computed term.
- `count++;`: Increments the counter.
