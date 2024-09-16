# Dart int Properties and Methods

The `int` data type in Dart offers several features and methods to facilitate working with integers. These features allow you to perform various checks and operations on numbers. Let's explain some of the important `int` properties and methods in Dart:

## `isEven` and `isOdd` Properties

- **`isEven:`** Checks if a number is even. Returns `true` if the number is even.
- **`isOdd:`** Checks if a number is odd. Returns `true` if the number is odd.

**Example:**

```dart
void main() {
  int number = 26;
  
  if (number.isEven == true) {
    print("The number is $number and it is even");
  }

  if (number.isOdd == true) {
    print("The number is $number and it is odd");
  }
}
```
## `runtimeType` Property

**Description:**  
The `runtimeType` property returns the type of the variable at runtime. It is particularly useful for type determination or debugging.

**Examples:**

**For an `int` type variable:**

```dart
void main() {
  var number = 5;
  print(number.runtimeType);  // Output: int
}
```
**For a String type variable:**

```dart
void main() {
  var number = "5";
  print(number.runtimeType);  // Output: String
}
```
## `sign` Property

**Description:**  
The `sign` property indicates the sign of the number. It returns `0` if the number is zero, `+1` if the number is positive, and `-1` if the number is negative.

**Example:**

```dart
void main() {
  var number = 5;
  print(number.sign);  // Output: 1
}
```
## `isNaN` Property

**Description:**  
`isNaN` stands for "Not a Number". It is used to check for mathematically undefined results (e.g., division by zero). Undefined operations are defined as NaN (Not a Number).

**Example:**

```dart
void main() {
  double number1 = 5 / 0;
  double number2 = 4 / 0;
  
  print(number1);  // Output: Infinity
  
  double result = number1 / number2;
  
  print(result.isNaN);  // Output: true
  print(result);  // Output: NaN
  
  if (result.isNaN) {
    result = 5;  // Assign 5 to result if it is NaN
    print(result);  // Output: 5
    print(result.isNaN);  // Output: false
  }

  int number3 = 0;
  int number4 = 0;
  double result2 = number3 / number4;
  
  print(result2);  // Output: NaN
}
```
## `isNegative` Property

**Description:**  
The `isNegative` property is used to check whether a number is negative. It returns `true` if the number is negative, and `false` if the number is positive or zero. This is particularly useful when you need to perform actions based on the sign of a number.

**Usage:**  
Typically used in conditional statements to check if a number is negative.

**Example:**

```dart
void main() {
  int number = -5;  // A negative value is assigned.
  print(number.isNegative); 
  // Output: true, because the number is negative.

  int number2 = 5;  // A positive value is assigned.
  print(number2.isNegative); 
  // Output: false, because the number is positive.
}
```
## `abs()` Method

**Description:**  
The `abs()` method is used to return the absolute value of a number. The absolute value represents the non-negative version of the number, regardless of its sign. In other words, if the number is negative, it will be converted to positive. If the number is positive, it will remain the same.

**Usage:**  
Used to convert negative numbers to positive and calculate the absolute value of a number.

**Example:**

```dart
void main() {
  int value = -50;  // A negative value is assigned.
  print(value.abs()); 
  // Output: 50, the negative number -50 is converted to positive.

  print(value < 0 ? -value : value); 
  // Output: 50, this is a manual way of writing the abs() method.

  print(value.abs()); 
  // Output: 50, the abs() method again returns 50.
}
```
## `ceil()` and `ceilToDouble()` Methods

### `ceil()` Method:
**Description:**  
The `ceil()` method rounds a fractional number up to the nearest integer. If the number is already an integer, it returns the number without any changes.

**Usage:**  
Used to obtain the integer value of a fractional number rounded up.

**Example:**

```dart
void main() {
  double value = 50.28;
  print(value.ceil()); 
  // Output: 51, the number is rounded up to the nearest integer.
}
```
## `clamp()` Method

### Description:
The `clamp()` method ensures that a number stays within a specified range. If the number exceeds the range, it is adjusted to stay within the defined minimum and maximum bounds.

This method is particularly useful when you want to restrict incoming values within a certain range. For example, if you're processing some data and you only want values between 1 and 10, the `clamp()` method will ensure that any value outside this range is adjusted to stay within it.

### How the `clamp()` Method Works:
- **Minimum Value:** If the value is less than the minimum, it is set to the minimum.
- **Maximum Value:** If the value is greater than the maximum, it is set to the maximum.
- **Within Range:** If the value is already within the range, it is returned unchanged.

### Example:
```dart
void main() {
  int minValue = 1;   // Minimum value
  int maxValue = 10;  // Maximum value

  int incomingValue = 12;  // Incoming value is outside the range

  print(incomingValue.clamp(minValue, maxValue));  
  // Output: 10 (since 12 is above the maximum, it is clamped to 10)
}
```
## `compareTo()` Method

### Description:
The `compareTo()` method in Dart is used to compare two numbers and returns one of three possible outcomes:

- `-1`: If the number is smaller,
- `0`: If the two numbers are equal,
- `1`: If the number is larger.

### General Usage:
```dart
x.compareTo(y);
```
In this statement, `x` is compared to `y`. The result will be:
- `x.compareTo(y)` returns `-1` if `x` is smaller than `y`.
- `x.compareTo(y)` returns `0` if `x` is equal to `y`.
- `x.compareTo(y)` returns `1` if `x` is larger than `y`.

## Dart `floor()` Method

## Description:
The `floor()` method in Dart is used to round down a decimal number to the nearest integer that is less than or equal to the given number. It disregards the fractional part and rounds the number towards negative infinity.

## Syntax:
```dart
num.floor();
```
## Example:
```dart
void main() {
  print(3.9.floor());  // 3
  print(-2.1.floor()); // -3
  print(7.0.floor());  // 7
}
```
## Dart `gcd()` Method:
In Dart, the `gcd()` method is used to find the greatest common divisor (GCD) of two integers. The greatest common divisor is the largest integer that divides both numbers without leaving a remainder. This method is useful for mathematical calculations and understanding relationships between numbers.

### Example:
```dart
void main() {
  int number1 = 122;
  int number2 = 244;
    
  int result = number1.gcd(number2);
  print(result); // Output: 122
  
  int result2 = number2.gcd(number1);
  print(result2); // Output: 122
}
```
## Dart `modPow()` Method:
In Dart, the `modPow()` method is used to raise a number to a certain power and then perform a modulus operation. In other words, it computes the power of a number and then returns the remainder when divided by a given modulus. This method is particularly useful for working with large numbers or in modular arithmetic operations. If the exponent is set to 1, it simply performs the modulus operation.

### Example:
```dart
void main() {
  int exponent = 1; // Setting the exponent to 1 means we are only performing a modulus operation
  int modulus = 2;  // The modulus we are using, which can help determine if the number is odd or even
  int number = 15;  // The number to perform the modulus operation on
  
  int result = number.modPow(exponent, modulus);
  print(result); // Output: 1
}
```
## Dart `remainder()` Method:
In Dart, the `remainder()` method is used to return the remainder of dividing one number by another. This method is similar to the modulus operator (`%`), but it can produce different results when working with negative numbers.

### Example:
```dart
void main() {
  int number = 100; // The number to be divided
  int divisor = 94; // The number by which to divide
  
  int result = number.remainder(divisor); // Remainder of dividing 100 by 94
  print(result); // Output: 6
}
```
## Dart `round()` Method:
In Dart, the `round()` method is used to round a `double` (decimal) number to the nearest integer. This method rounds the number to the closest integer; if the fractional part is 0.5 or higher, it rounds up to the next integer; otherwise, it rounds down to the nearest lower integer.

### Example:
```dart
void main() {
  double number = 1.68; // output: 2
  int result = number.round();
  print(result);
}
```
## Dart `toInt()` Method:
In Dart, the `toInt()` method is used to convert a `double` (decimal) number to an `int` (integer). This method truncates the decimal part of the number and returns only the integer part. The fractional part is ignored.

### Example:
```dart
void main() {
  double number = 1.68;  //output: 1
  int result = number.toInt();
  print(result);
}
```
## Dart `toDouble()` Method:
In Dart, the `toDouble()` method is used to convert an `int` (integer) value to a `double` (decimal) type. This method transforms integers into their floating-point representation.

### Example:
```dart
void main() {
  int number1 = 19; 
  double number2 = 3.5;
 
  print((number1 * number2).toDouble());
}
```
## Dart `toString()` Method:
In Dart, the `toString()` method is used to convert a number or other data types into a `String` (text) type. This method allows for the representation of a number in text format.

### Example:
```dart
void main() {
  int number1 = 19; 
  int number2 = 3;
  String result = (number1 * number2).toString();
  
  print("The result is " + result);
}
```
