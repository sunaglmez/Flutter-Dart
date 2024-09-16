## Null Safety in Dart

The Null Safety feature in Dart is designed to check for the possibility of variables being `null`, thereby reducing the risk of errors. Null Safety is introduced to prevent null reference errors in software, which occur when accessing variables without assigning values and can lead to application crashes or unexpected behaviors.

### What is Null?

`Null` represents the absence of a value for a variable. It is not a mathematical value and has no numerical equivalent. If a variable is not assigned a value, it is considered `null`.

### Null Safety Feature

In Dart, the Null Safety feature allows you to explicitly specify whether a variable can be `null` or not. This feature helps in catching errors at compile time when performing operations with `null` values.

#### Nullable Variables

To allow a variable to be `null`, you need to append a `?` to the type of the variable. This indicates that the variable can hold a value of a specific type or be `null`.

**Example:**

```dart
int? number;
number = null;
print(number + 5); // This will cause an error
```
In this example, the number variable is defined as `int?` and initially assigned null. When trying to perform a mathematical operation with null, Dart's compiler will throw an error because adding null to a number is not meaningful.

#### Non-Nullable Variables
If you want a variable to never be null, you should define it as a non-nullable type.

**Example**:
```dart
int number = 0;
print(number + 5); // Outputs 5
```
Here, the number variable is defined as int and is initialized with 0. Therefore, number cannot be null, and mathematical operations can be performed without issues.

## Null Safety Rules
**Nullable Variables**: Defined with types like int?, String?, etc. These variables can hold a value or be null.

**Non-Nullable Variables**: Defined with types like int, String, etc. These variables cannot be null and must be initialized with a value.

**Null Checking**: When working with nullable variables, you need to check if they are null. For example: if (number != null) { ... }.
