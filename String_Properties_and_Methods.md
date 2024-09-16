# Dart String Properties and Methods

## `length` Property

**Description:**  
Returns the length of a `String` object, counting the number of characters.

**Example:**

```dart
var sentence = "Learning Dart";
var newSentence = sentence.length;
print(newSentence); // Output: 14
```
## `isEmpty` Property

**Description:**  
Checks whether a `String` object is empty. Returns `true` or `false`.

**Example:**

```dart
var sentence = "Learning Dart";
var isEmptySentence = sentence.isEmpty;
print(isEmptySentence); // Output: false
```
## `isNotEmpty` Property

**Description:**  
Checks whether a `String` object is not empty. Returns `true` or `false`.

**Example:**

```dart
var sentence = "Learning Dart";
var isNotEmptySentence = sentence.isNotEmpty;
print(isNotEmptySentence); // Output: true
```
## `contains()` Method

**Description:**  
Checks if a `String` contains a specific character or word. Returns `true` or `false`.

**Examples:**

```dart
var sentence = "Learning Dart";
var hasLetter = sentence.contains('L');
print(hasLetter); // Output: true
```
## `replaceAll()` Method

**Description:**  
Replaces all occurrences of a specific character or word with another. It replaces all matches.

**Example:**

```dart
String sentence = "John Smith";
String newSentence = sentence.replaceAll('o', 'a');
print(newSentence); // Output: "Jahn Smith"
```
## `replaceFirst()` Method

**Description:**  
Replaces the first occurrence of a match with another specified value.

**Examples:**

```dart
String sentence = "John Smith";
String newSentence = sentence.replaceFirst('o', 'a');
print(newSentence); // Output: "Jahn Smith"
```
## `replaceRange()` Method

**Description:**  
Replaces a specific range of characters with a given value.

**Example:**

```dart
String sentence = "John Smith";
String newSentence = sentence.replaceRange(1, 4, 'ack');
print(newSentence); // Output: "Jack Smith"
```
## `replaceFirstMapped()` Method

**Description:**  
Replaces the first occurrence of a match based on a function.

**Example:**

```dart
var sentence = "John Smith";
var newSentence = sentence.replaceFirstMapped('o', (m) => 'a');
print(newSentence); // Output: "Jahn Smith"
```
## `indexOf()` Method

**Description:**  
Returns the index of the first occurrence of a specified character or word. Returns `-1` if not found.

**Example:**

```dart
var sentence = "John";
var index = sentence.indexOf('o');
print(index); // Output: 1
```
## `lastIndexOf()` Method

**Description:**  
Returns the index of the last occurrence of a specified character or word. Searches from the end to the beginning. Returns `-1` if not found.

**Example:**

```dart
var sentence = "John";
var index = sentence.lastIndexOf('o');
print(index); // Output: 1
```
## `split()` Method

**Description:**  
Splits a string into a list based on the specified character or pattern.

**Examples:**

```dart
String sentence = "I went to school today";
List<String> newSentence = sentence.split(" ");
print(newSentence); // Output: [I, went, to, school, today]
```
## `substring()` Method

**Description:**  
Returns a substring within the specified index range.

**Examples:**

```dart
var sentence = "John";
var newSentence = sentence.substring(1, 3);
print(newSentence); // Output: "oh"
```
## `toLowerCase()` Method

**Description:**  
Converts all characters in a string to lowercase.

**Example:**

```dart
var sentence = "JOHN";
var newSentence = sentence.toLowerCase();
print(newSentence); // Output: "john"
```
## `toUpperCase()` Method

**Description:**  
Converts all characters in a string to uppercase.

**Example:**

```dart
var sentence = "john";
var newSentence = sentence.toUpperCase();
print(newSentence); // Output: "JOHN"
```
## `trim()`, `trimLeft()`, `trimRight()` Methods

**Description:**  
- `trim()` removes whitespace from both ends of the string.
- `trimLeft()` removes whitespace from the left end.
- `trimRight()` removes whitespace from the right end.

**Examples:**

```dart
var sentence = "   John   ";
var newSentence = sentence.trim();
print(newSentence); // Output: "John"
```
## `toString()` Method

**Description:**  
Converts an `Object` to a `String`. The default `toString()` method is often called for objects.

**Example:**

```dart
int number = 123;
String stringNumber = number.toString();
print(stringNumber); // Output: "123"
```
## `startsWith()` and `endsWith()` Methods

**Description:**  
- `startsWith()` checks if a string starts with a specific value.
- `endsWith()` checks if a string ends with a specific value.

**Examples:**

```dart
var sentence = "Dart Programming";
var startsWith = sentence.startsWith('Dart');
print(startsWith); // Output: true
```
