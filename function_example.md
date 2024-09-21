# Function to calculate the area of a rectangle
```dart
double calculateArea(double length, double width) {
  return length * width; // Area = length * width
}

void main() {
  double length = 5.0;
  double width = 3.0;
  
  // Calling the function and storing the result
  double area = calculateArea(length, width);
  
  print("The area of the rectangle is: $area"); // Output: The area of the rectangle is: 15.0
}
```
## Explanation of the Parameterized Function:

- **Function Name:** `calculateArea`
- **Parameters:** The function takes two parameters, `length` and `width`, both of type `double`.
- **Return Value:** It returns the area of the rectangle by multiplying the length and width.
- **Usage:** In the `main` function, we define the length and width of the rectangle, call `calculateArea`, and print the result.
