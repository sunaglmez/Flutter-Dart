# Dart `switch` and `case` Statements

In Dart, `switch` and `case` statements are used to run different blocks of code based on the value of a variable. The `switch` statement helps make long `if-else` blocks more readable and organized.

## `switch` and `case` Structures

- **switch**: Used to execute different code blocks based on the value of a variable or expression inside the `switch` statement.
- **case**: Defines code blocks for specific values in the `switch` statement. Each `case` checks for a certain value and runs the corresponding code if the value matches.

## Syntax:

```dart
switch (variable) {
  case value1:
    // Code to execute for value1
    break;

  case value2:
    // Code to execute for value2
    break;

  // Other cases...

  default:
    // Code to execute if no case matches
}
```
### `break` and `default` in `switch-case` Statements

- **`break`**: Placed at the end of each `case` block to exit the `switch` structure. If the `break` statement is omitted, the code will continue executing the next `case` block, leading to what's known as the "fall-through" behavior.

- **`default`**: Specifies the code to run if no `case` matches the value of the variable. The `default` block is optional but is commonly placed at the end of the `switch` statement to handle any unmatched cases.
## Example 1:
```dart
void main() {
  int number = 2;

  switch (number) {
    case 1:
      print('Number is 1');
      break;

    case 2:
      print('Number is 2');
      break;

    case 3:
      print('Number is 3');
      break;

    default:
      print('Number is not 1, 2, or 3');
  }
}
```
In this example, the value of `number` is checked, and since it is `2`, the corresponding `case` block is executed, printing `"Number is 2"`. If `number` were not `1`, `2`, or `3`, the `default` block would run.

## Example 2:
```dart
void main() {
  // HOME AUTOMATION
  // 1 - TURN ON ALARM
  // 2 - TURN OFF ALARM
  // 3 - TURN ON LIGHTS
  // 4 - TURN OFF LIGHTS
  
  int input = 1;
  
  switch (input) {
    case 1:
      print("Alarm is activated");
      break;
      
    case 2:
      print("Alarm is deactivated");
      break;
      
    case 3:
      print("Lights are turned on");
      break;
      
    case 4:
      print("Lights are turned off");
      break;
     
    default:
      print("Please enter a valid value");
  }
}
```
## Example 3:
```dart
void main() {
  // GRADE SYSTEM
  
  String grade = "Cs";
  
  switch (grade) {
    case "AA":
      print("YOUR GRADE IS BETWEEN 90 - 100");
      break;
      
    case "BA":
      print("YOUR GRADE IS BETWEEN 80 - 89");
      break;
      
    case "BB":
      print("YOUR GRADE IS BETWEEN 70 - 79");
      break;
      
    case "CB":
      print("YOUR GRADE IS BETWEEN 60 - 69");
      break;
      
    case "CC":
      print("YOUR GRADE IS BETWEEN 50 - 59");
      break;
      
    case "FF":
      print("YOUR GRADE IS BELOW 50");
      break;
  
    default:
      print("PLEASE ENTER A VALID VALUE");
  }
}
```
