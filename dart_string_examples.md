# String Escape Characters and Quotation Usage in Dart

In Dart, you can use both single and double quotes for string literals. Additionally, escape characters allow you to use special characters like single quotes inside strings. Below are various examples that demonstrate the flexibility and usage of different string formats in Dart.

```dart
// Example 1: Using double quotes to write a sentence.
String sentence1 = "John went to school today.";  // We can write text in double quotes.
print(sentence1);  // Output: John went to school today.

// Example 2: Using double quotes to include single quotes inside a string.
String sentence2 = "John's pencil is on the table.";  // We can use single quotes inside double quotes.
print(sentence2);  // Output: John's pencil is on the table.

// Example 3: Using single quotes for a string with double quotes inside.
String sentence3 = 'John said, "Hello!" to everyone.';  // We can use double quotes inside single quotes.
print(sentence3);  // Output: John said, "Hello!" to everyone.

// Example 4: Escaping single quotes inside single-quoted strings.
String sentence4 = 'John\'s pencil is on the table.';  // We can escape single quotes with a backslash.
print(sentence4);  // Output: John's pencil is on the table.

// Example 5: Using triple quotes for multi-line strings.
String sentence5 = '''This is a multi-line string.
It can span across multiple lines,
making it useful for long text.''';
print(sentence5);  // Output: This is a multi-line string. It can span across multiple lines, making it useful for long text.

// Example 6: Escaping backslashes and using special characters.
String sentence6 = "This is a backslash: \\ and a tab: \t with a new line: \nHere!";
print(sentence6);  
// Output:
// This is a backslash: \ and a tab:     with a new line:
// Here!
