# Conditional Statements in Dart

Conditional statements in Dart allow you to execute different blocks of code based on whether certain conditions are met. These statements are commonly used with `if`, `else`, `else if`, `switch`, `while`, and `do-while` structures.

## Conditional Statements

### 1. `if` Statement
**Description:** The `if` statement checks a condition and executes the code inside the block if the condition is true.

#### Syntax:

```dart
if (condition) {
  // Code to be executed if the condition is true
}
```
#### Example:
```dart
void main() {
  int incomingNumber = 5;
  int currentNumber = 0;

  if (incomingNumber > currentNumber) {
    print("The incoming number is greater than zero");
  }
}
```
### 2. `else` and `else if` Statements

**Description:** The `else` statement allows an alternative action when the `if` condition is not met. The `else if` statement allows for checking multiple conditions.

#### Syntax:

```dart
if (condition1) {
  // Code to be executed if condition1 is true
} else if (condition2) {
  // Code to be executed if condition1 is false and condition2 is true
} else {
  // Code to be executed if none of the conditions are true
}
```
#### Example:
```dart
void main() {
  int incomingNumber = 5;
  int currentNumber = 0;

  if (incomingNumber > currentNumber) {
    print("The incoming number is greater than zero");
  } else if (incomingNumber == currentNumber) {
    print("The incoming number is equal to zero");
  } else {
    print("The incoming number is less than zero");
  }
}
```
## Getting User Input and Conditional Check

**Description:** You can use conditional statements to process data entered by the user.

#### Example:

```dart
import 'dart:io';

void main() {
  // Getting input from the user
  print('Please enter a number');
  var input = stdin.readLineSync(); // Getting input from the user
  int number = int.parse(input!); // Converting input to an integer
  
  // Checking the input with conditional statements
  if (number < 0) {
    print('$number is a negative number.');
  } else if (number == 0) {
    print('$number is equal to zero.');
  } else {
    print('$number is a positive number.');
  }
}
```
## Odd or Even Check

**Description:** You can use conditional statements to check if a number is odd or even.

#### Example:

```dart
void main() {
  int number = 5;

  if (number % 2 == 0) {
    print('Our number is: $number and it is even');
  } else {
    print('Our number is: $number and it is odd');
  }
}
```
## Short Form of `if`, `else`, `if else` (Ternary Operator)

In Dart, the ternary operator (`? :`) provides a shorter way to write `if-else` statements.

#### Example:

```dart
void main() {
  int number1 = 5;
  int number2 = 10;
  int? number3;
  // The '?' allows 'number3' to be nullable, meaning it can be assigned a null value.

  // Using a normal if-else statement
  if (number1 < number2) {
    number3 = number2;
  } else {
    number3 = number1;
  }
  print(number3);  // Output will be 10

  // Using a short ternary form
  number1 < number2 ? number3 = number2 : number3 = number1;
  print(number3);  // Output will be 10

  // Another short form of ternary operation
  number3 = number1 < number2 ? number2 : number1;
  print(number3);  // Output will be 10

  // All forms give the same result.
}
```
