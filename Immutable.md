# Constants in Dart (Immutable)

In Dart, **constants (immutable)** are variables whose values cannot be changed during the program’s execution. These constants are set once and never altered, which helps in writing memory-efficient and performant code. Since we know these values won't change, we avoid recalculating or storing them multiple times. In Dart, we use the `const` and `final` keywords to define constants. Although both are used to declare immutability, there are key differences between them.

## Differences Between `const` and `final` in Dart:
- Both `const` and `final` can be used to declare constants.
- **`const`** is used for compile-time constants, meaning its value is determined when the program is compiled, before execution. **`final`** is used for run-time constants, where the value is assigned during the program's execution. For example, fetching the current time or retrieving data from the internet is done at run-time, so `final` is more suitable in such cases.
- Both are memory-efficient and performant.
- **`const`** values must be created using other `const` values. In contrast, **`final`** can be assigned values from other variable types.
- A list defined with **`const`** cannot be modified later, while a list defined with **`final`** can have elements added to it.

## `const` Constants Cannot Be Reassigned

In Dart, constants declared with `const` cannot be reassigned or modified after their initial declaration. Below is an example of an invalid operation:

```dart
void main(List<String> args) {
  // INVALID OPERATION
  // const constants cannot be modified.
  const int x = 2;
  x = 3; // This will cause a compile-time error
}
```

### `final` Constants Cannot Be Reassigned:

In Dart, `final` constants also cannot be reassigned once they have been given a value. Below is an example of an invalid operation:

```dart
void main(List<String> args) {
  // INVALID OPERATION
  // final constants cannot be modified.
  final int x = 2;
  x = 3; // This will cause a compile-time error
}
```
### `const` Variables Can Only Be Assigned `const` Values:

In Dart, `const` variables can only be assigned other `const` values. Below is an example of an invalid operation:

```dart
void main(List<String> args) {
  // INVALID OPERATION
  // const variables can only be assigned other const values.
  int x = 2;
  int y = 3;
  const int sonuc = x + y; // This will cause a compile-time error
}
```

### Correct Usage: `const` Variables Can Only Be Assigned `const` Values:

In Dart, `const` variables can only be assigned other `const` values. Below is an example of the correct operation:

```dart
void main(List<String> args) {
  // CORRECT OPERATION
  // const variables can only be assigned other const values.
  const int x = 2;
  const int y = 3;
  const int sonuc = x + y; // This will work fine
}
```
### Correct Usage: `final` Variables Can Be Assigned Other Variable Types:

In Dart, `final` variables can be assigned values from different types of variables. Below is an example demonstrating this:

```dart
void main(List<String> args) {
  // CORRECT OPERATION
  // final variables can be assigned other variable types.
  int x = 2;
  int y = 3;
  final int sonuc = x + y; // This will work fine
}
```
### Incorrect Usage: Assigning Non-const Variables to `const` Lists:

In Dart, `const` lists cannot have non-const variables assigned to them. Below is an example illustrating this incorrect operation:

```dart
void main(List<String> args) {
  // INCORRECT OPERATION
  // Non-const variables cannot be assigned.
  int x = 2;
  int y = 3;
  const List<int> liste = [x, y]; // This will cause an error
}
```
### Correct Usage: Assigning Const Variables to `const` Lists:

In Dart, `const` lists can have `const` variables assigned to them. Below is an example illustrating this correct operation:

```dart
void main(List<String> args) {
  // CORRECT OPERATION
  
  const int x = 2;
  const int y = 3;
  const List<int> liste = [x, y]; // This is valid
}
```
### Correct Usage: Assigning Different Variable Types to `final` Lists:

In Dart, `final` lists can have variables of different types assigned to them. Below is an example illustrating this correct operation:

```dart
void main(List<String> args) {
  // CORRECT OPERATION
  
  int x = 2;
  int y = 3;
  final List<int> liste = [x, y]; // This is valid
}
```
### Correct Usage: Adding and Removing Elements in `final` Lists:

In Dart, elements can be added or removed from `final` lists. Below is an example demonstrating this correct usage:

```dart
void main(List<String> args) {
  // CORRECT OPERATION
  // Elements can be added or removed in final lists

  int x = 2;
  int y = 3;
  final List<int> liste = [x, y];
  liste.add(4); // Adding an element
  print(liste); // Output: [2, 3, 4]
}
```
### Compile Time vs. Run Time in Dart:

In Dart, `const` constants are defined for compile time, meaning they are established before the code is executed. In contrast, `final` constants are defined at run time, when the program is actually running. Below is an example that illustrates this distinction.

```dart
void main(List<String> args) {
  // const works at compile time
  // final works at run time

  // INCORRECT OPERATION
  const DateTime tarih = DateTime.now();
  // The current time information is obtained at run time,
  // therefore, it cannot be declared as const.

  // CORRECT OPERATION
  final DateTime tarih2 = DateTime.now();
  // Since final works at run time,
  // time information can be created.
}
```
