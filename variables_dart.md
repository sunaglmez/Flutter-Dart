## Variables in Dart

Variables allow us to store data in the computer's memory. For example, we can store a long string in a variable called `text`, and later access and modify this variable as needed. In the Dart language, the type of a variable determines what kind of data it can hold. Below, we will explain the different types of variables used in Dart and how to use them.

### Variable Types in Dart

1. **`var`**: 
   - When you declare a variable with `var`, Dart's type inference feature automatically determines the variable's type based on the value assigned to it. 
   - Example: 
     ```dart
     var number = 10; // number is inferred as an int.
     var text = 'Hello'; // text is inferred as a String.
     ```
   - **Note**: Once a `var` variable is assigned a value, its type is determined and cannot be changed later.

2. **`num`**:
   - `num` is a type for numeric values that encompasses both `int` (integers) and `double` (floating-point numbers).
   - Example: 
     ```dart
     num integerNumber = 5; // Integer
     num floatingNumber = 5.5; // Floating-point number
     ```

3. **`int`**:
   - Represents integer values. Fractional values cannot be stored as `int`.
   - Example: 
     ```dart
     int age = 25;
     ```

4. **`double`**:
   - Represents floating-point numbers. Used for fractional values.
   - Example: 
     ```dart
     double pi = 3.14;
     ```

5. **`String`**:
   - Represents text data. Used for storing sequences of characters.
   - Example: 
     ```dart
     String name = 'tom';
     ```

6. **`bool`**:
   - Boolean type that can hold only `true` or `false` values.
   - Example: 
     ```dart
     bool isStudent = true;
     ```

7. **`dynamic`**:
   - A dynamic type that can hold values of any type. A `dynamic` variable can be reassigned to different types of values later.
   - Example: 
     ```dart
     dynamic data = 'A string';
     data = 123; // Now data is an int.
     ```

### Commenting in Dart

You can use comments in your Dart code to add explanations. Comments make your code more readable and provide information about what the code does.

- Single-line comments start with `//`:
  ```dart
  // This is a single-line comment
  
- Multi-line comments are enclosed with /* and */
  ```dart
  /* This is a multi-line comment that spans multiple lines */

