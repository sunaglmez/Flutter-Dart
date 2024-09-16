# Dart Variable Naming Rules

When defining variables in Dart, certain rules and conventions need to be followed to ensure proper syntax and readability. Below are the rules and examples:

## Dart Variable Naming Rules

1. **No Special Characters Specific to Turkish**:
   Variable names cannot include special characters specific to the Turkish language (such as `ş`, `ç`, `ü`, `ö`). Only the English alphabet and numbers are allowed.

   **Incorrect**: `öğrenci_yaşı`  
   **Correct**: `ogrenci_yasi`

2. **Cannot Start with a Number**:
   Variable names cannot begin with a number, though numbers can be included in the middle or at the end of the name. A variable name must always start with a letter.

   **Incorrect**: `1name = "John"`  
   **Correct**: `name1 = "John"`

3. **No Duplicate Variable Names in the Same Scope**:
   You cannot use the same variable name more than once in the same block of code. Variable names must be unique.

   **Incorrect**:
```dart
   void main() {
     var age = 25;
     var age = 30; // Error: 'age' is already defined
   }
```
4. **No Spaces in Variable Names**:
Variable names cannot contain spaces. If the name consists of multiple words, they must be written together or follow the camel case convention.

   **Incorrect**: `student age`  
   **Correct**: `studentAge`

5. **Cannot Use Language Keywords**:
You cannot use Dart’s reserved keywords like `new`, `if`, `for`, etc., as variable names.

   **Incorrect**: `if = "value"`  
   **Correct**: `ifValue = "value"`

6. **Cannot Start with Special Characters**:
Variable names cannot begin with special characters like `!`, `%`, or `&`.

   **Incorrect**: `!myVariable = "value"`  
   **Correct**: `myVariable = "value"`

## Camel Case Naming Convention

Camel case is the preferred naming convention in Dart. It involves starting the variable name with a lowercase letter, and every subsequent word begins with an uppercase letter. This convention improves readability and is widely adopted in the Dart community.

**Example of Camel Case**:
```dart
void main() {
  var studentAge = 25;
  var schoolName = "ABC School";
  print(studentAge);
  print(schoolName);
}
```

## Snake Case Naming Convention

Snake case is a naming convention in which each word in a variable name is written in lowercase and separated by underscores (`_`). This style is commonly used in languages like Python but is less common in Dart, where camel case is preferred.

**Example of Snake Case**:
```dart
void main() {
  var student_age = 25;
  var school_name = "ABC School";
  print(student_age);
  print(school_name);
}
```
