# Dart Escape Characters

In Dart, escape characters are used to represent special characters in string literals. Here are the common escape characters in Dart, along with examples for each:

1. **`\'`** : To use a single quote (`'`).
   - Example:
     ```dart
     var str = 'It\'s a sunny day.';
     print(str);  // It's a sunny day.
     ```

2. **`\"`** : To use a double quote (`"`).
   - Example:
     ```dart
     var str = "He said, \"Hello!\"";
     print(str);  // He said, "Hello!"
     ```

3. **`\\`** : To use a backslash (`\`).
   - Example:
     ```dart
     var str = "This is a backslash: \\";
     print(str);  // This is a backslash: \
     ```

4. **`\n`** : To insert a newline.
   - Example:
     ```dart
     var str = "Hello\nWorld";
     print(str);  // Hello
                  // World
     ```

5. **`\t`** : To insert a tab space.
   - Example:
     ```dart
     var str = "Name:\tJohn";
     print(str);  // Name:    John
     ```

6. **`\r`** : To return to the beginning of the line (carriage return).
   - Example:
     ```dart
     var str = "Hello\rWorld";
     print(str);  // World
     ```

7. **`\b`** : To insert a backspace.
   - Example:
     ```dart
     var str = "Helloo\b";
     print(str);  // Hello
     ```

8. **`\f`** : To insert a form feed.
   - Example:
     ```dart
     var str = "Line1\fLine2";
     print(str);  // Line1 (form feed effect in print output)
     ```

These escape characters help represent specific characters or formatting in strings correctly.
