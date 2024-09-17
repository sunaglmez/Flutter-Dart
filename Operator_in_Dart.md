# What is an Operator in Dart?
- In Dart, **operators** are symbols that allow us to perform mathematical calculations, comparisons, logical operations, and control flows in our programs. Operators are used to execute operations on different data types, such as adding two numbers, comparing two values, or making logical queries.

- Operands are the variables or values upon which the operators perform their operations. In other words, operators need **operands** to execute an operation. For example, in the expression `5 * 3`, the `*` is the multiplication operator, and the two operands are `5` and `3`.

### Example:
```dart
void main() {
  int a = 5;
  int b = 3;
  
  // Addition operator
  int sum = a + b; // a and b are operands, and + is the operator
  
  print("Sum: $sum"); // Output: Sum: 8
}
```
## Types of Operators in Dart:

### 1. Sign Operators:
- `+` , `–`: These operators denote the sign of numbers, indicating whether a number is positive or negative.
  
  **Examples:**
  - `+5` (positive)
  - `-3` (negative)

```dart
void main() {
  int positiveNumber = +5;  // Positive number
  int negativeNumber = -3;  // Negative number
  
  print("Positive: $positiveNumber");  // Output: Positive: 5
  print("Negative: $negativeNumber");  // Output: Negative: -3
}
```
### 2. Arithmetic Operators:

- `+`, `–`, `*`, `/`, `%`, `~/`: These operators perform mathematical calculations.

  - `+`: Addition
  - `–`: Subtraction
  - `*`: Multiplication
  - `/`: Division (returns a double)
  - `%`: Modulo (remainder of division)
  - `~/`: Integer division (returns the integer part of the division)

**Examples:**
- `5 + 3` → `8` (addition)
- `7 % 3` → `1` (modulo)

```dart
void main() {
  int num1 = 5;
  int num2 = 3;

  print("Addition: ${num1 + num2}");      // Output: 8
  print("Subtraction: ${num1 - num2}");   // Output: 2
  print("Multiplication: ${num1 * num2}"); // Output: 15
  print("Division: ${num1 / num2}");       // Output: 1.6666666666666667 (double)
  print("Modulo: ${num1 % num2}");         // Output: 2
  print("Integer Division: ${num1 ~/ num2}"); // Output: 1
}
```
### 3. Logical Operators:

- `&&`, `||`, `!`: These operators are used to perform logical operations between boolean expressions.

  - `&&`: Logical AND (Both conditions must be true)
  - `||`: Logical OR (At least one condition must be true)
  - `!`: Logical NOT (Inverts the boolean value)

**Examples:**
- `true && false` → `false` (Both conditions are not true)
- `!true` → `false` (Negates the boolean value)

```dart
void main() {
  bool condition1 = true;
  bool condition2 = false;

  print("AND (&&): ${condition1 && condition2}"); // Output: false (because both are not true)
  print("OR (||): ${condition1 || condition2}");  // Output: true (one condition is true)
  print("NOT (!): ${!condition1}");               // Output: false (inverts true to false)
}
```
### 4. String Concatenation Operator:

- `+`: This operator is used to concatenate (combine) two strings into one.

**Example:**
- `"Hello" + " World"` → `"Hello World"`

```dart
void main() {
  String str1 = "Merhaba";
  String str2 = " Dünya";

  String result = str1 + str2;
  print(result); // Output: Merhaba Dünya
}
```
### 5. String Literals Operators:

- `"` , `'` , `"""`: These are used to define string literals in Dart.
  - `"`: Double quotes for single-line strings.
  - `'`: Single quotes for single-line strings.
  - `"""`: Triple quotes for multi-line strings.

**Example:**
- `"Merhaba"` → Single-line string with double quotes.
- `'Dünya'` → Single-line string with single quotes.
- `"""Çok satırlı string"""` → Multi-line string.

```dart
void main() {
  String str1 = "Merhaba";          // Single-line string with double quotes
  String str2 = 'Dünya';            // Single-line string with single quotes
  String str3 = """Çok satırlı 
string""";                          // Multi-line string with triple quotes
  
  print(str1); // Output: Merhaba
  print(str2); // Output: Dünya
  print(str3); // Output: Çok satırlı string
}
```
### 6. Increment/Decrement Operators:

- `++` , `--`: These operators are used to increase or decrease a value by one.

  - `++`: Increments the value by one.
  - `--`: Decrements the value by one.

**Example:**
```dart
void main() {
  int x = 5;
  
  x++;  // Increment x by 1
  print(x); // Output: 6
  
  x--;  // Decrement x by 1
  print(x); // Output: 5
}
```
### 7. Comparison Operators

Comparison operators are used to compare values. They include:

- `==` : Equal to
- `!=` : Not equal to
- `<`  : Less than
- `>`  : Greater than
- `<=` : Less than or equal to
- `>=` : Greater than or equal to

### Examples

- `5 == 5` (true)
- `3 > 4` (false)

### 8. Assignment Operators

Assignment operators are used to assign values to variables. They include:

- `=`  : Assignment
- `+=` : Add and assign
- `-=` : Subtract and assign
- `*=` : Multiply and assign
- `/=` : Divide and assign
- `%=` : Modulus and assign

### Examples

- `int x = 10; x += 5;` (x becomes 15)

### Dart Example

```dart
void main() {
  int x = 10;
  x += 5;
  print(x); // Output: 15
}
```
### 9. Bitwise Operators

Bitwise operators are used for binary-level operations on numbers. They include:

- `&`  : Bitwise AND
- `|`  : Bitwise OR
- `^`  : Bitwise XOR (exclusive OR)
- `~`  : Bitwise NOT (inversion)
- `>>` : Right shift
- `<<` : Left shift

### Examples

- `5 & 3` (1)
- `5 | 3` (7)

### Dart Example

```dart
void main() {
  int a = 5; // 0101 in binary
  int b = 3; // 0011 in binary
  
  int andResult = a & b; // 0001 in binary, which is 1
  int orResult = a | b;  // 0111 in binary, which is 7
  int xorResult = a ^ b; // 0110 in binary, which is 6
  int notResult = ~a;    // 1010 in binary (inverting bits), which is -6 in decimal (two's complement)
  int rightShift = a >> 1; // 0010 in binary, which is 2
  int leftShift = a << 1;  // 1010 in binary, which is 10

  print('AND result: $andResult');
  print('OR result: $orResult');
  print('XOR result: $xorResult');
  print('NOT result: $notResult');
  print('Right shift result: $rightShift');
  print('Left shift result: $leftShift');
}
```
### 10. Index and List Access Operator

The index operator (`[ ]`) allows access to elements in a list or array.

### Example

- `list[0]` accesses the first element of the list.

### Dart Example

```dart
void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  
  int firstElement = numbers[0]; // Accessing the first element
  int thirdElement = numbers[2]; // Accessing the third element

  print('First element: $firstElement');  // Output: 10
  print('Third element: $thirdElement');  // Output: 30
}
```
### 11. Scope, Set, Map Structure Operator

The curly braces (`{ }`) are used in Dart for defining sets and maps, as well as for denoting code blocks.

### Examples

- **Set**: `{1, 2, 3}` defines a set with elements 1, 2, and 3.
- **Map**: `Map<String, int> map = {"key": 5};` defines a map with a key-value pair.

### Dart Example

```dart
void main() {
  // Defining a Set
  Set<int> numbers = {1, 2, 3, 4, 5};
  
  // Defining a Map
  Map<String, int> ageMap = {"Alice": 30, "Bob": 25};
  
  // Accessing Set and Map values
  int aliceAge = ageMap["Alice"] ?? 0; // Using null-aware operator to handle absence of key
  
  print('Numbers set: $numbers');      // Output: {1, 2, 3, 4, 5}
  print('Age of Alice: $aliceAge');    // Output: 30
}
```
### 12. Type Information Operators

Type information operators are used for type checking and type casting in Dart. They include:

- `is`  : Checks if an object is of a certain type.
- `as`  : Performs type casting.
- `is!` : Checks if an object is not of a certain type.

### Examples

- `if (x is int) {}` checks if `x` is of type `int`.
- `var y = x as String;` casts `x` to a `String`.
- `if (x is! double) {}` checks if `x` is not of type `double`.

### Dart Example

```dart
void main() {
  var number = 42;
  var text = 'Hello, Dart!';
  
  // Check if 'number' is of type int
  if (number is int) {
    print('Number is an integer.');
  }

  // Cast 'text' to a String
  var message = text as String;
  print('Message: $message');

  // Check if 'number' is not of type double
  if (number is! double) {
    print('Number is not a double.');
  }
}
```
### 13. Type Information Operators

Type information operators are used for type checking and type casting in Dart. They include:

- `is`  : Checks if an object is of a certain type.
- `as`  : Performs type casting.
- `is!` : Checks if an object is not of a certain type.

### Examples

- `if (x is int) {}` checks if `x` is of type `int`.
- `var y = x as String;` casts `x` to a `String`.
- `if (x is! double) {}` checks if `x` is not of type `double`.

### Dart Example

```dart
void main() {
  var number = 42;
  var text = 'Hello, Dart!';
  
  // Check if 'number' is of type int
  if (number is int) {
    print('Number is an integer.');
  }

  // Cast 'text' to a String
  var message = text as String;
  print('Message: $message');

  // Check if 'number' is not of type double
  if (number is! double) {
    print('Number is not a double.');
  }
}
```
### 14. Lambda Operator

The lambda operator (`=>`) is used for defining single-line functions in Dart.

### Example

- `(a, b) => a + b;` defines a lambda function that returns the sum of `a` and `b`.

### Dart Example

```dart
void main() {
  // Single-line lambda function
  var add = (int a, int b) => a + b;
  
  // Using the lambda function
  var result = add(10, 5);
  print('Sum: $result'); // Output: Sum: 15
}
```
### 15. Ternary Operator

The ternary operator is used for conditional expressions in Dart.

- `? :` is used as a shorthand for if-else statements.
- `??` returns the right-hand value if the left-hand value is `null`.

### Example

- `int x = (5 > 3) ? 10 : 20;` sets `x` to `10` because the condition is true.
- `int y = null ?? 5;` sets `y` to `5` because the left-hand side is `null`.

### Dart Example

```dart
void main() {
  // Ternary operator example
  int x = (5 > 3) ? 10 : 20;
  print('x: $x'); // Output: x: 10

  // Null-aware operator example
  int? nullableValue;
  int y = nullableValue ?? 5; // If nullableValue is null, y becomes 5
  print('y: $y'); // Output: y: 5
}
```
### 16. Comment Operators

Comment operators are used to add explanations or notes in code.

- `//` : Single-line comment
- `/* ... */` : Multi-line comment

### Example

- `// This is a single-line comment`
- `/* This is a multi-line comment */`

### Dart Example

```dart
void main() {
  // Single-line comment
  int x = 10; // This variable holds the value 10

  /*
   * Multi-line comment
   * This section of code calculates the sum of two numbers.
   */
  int a = 5;
  int b = 7;
  int sum = a + b;
  
  print('Sum: $sum'); // Output: Sum: 12
}
```
