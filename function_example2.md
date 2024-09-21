# Function to calculate the factorial of a number
```dart
int factorial(int n) {
  // Base case: factorial of 0 or 1 is 1
  if (n <= 1) {
    return 1;
  } else {
    // Recursive case
    return n * factorial(n - 1);
  }
}

void main() {
  int num = 5;
  
  // Calling the function and storing the result
  int result = factorial(num);
  
  print("The factorial of $num is: $result"); // Output: The factorial of 5 is: 120
}
```
## Explanation of the Factorial Function:

- **Function Name:** `factorial`
- **Parameter:** The function takes one parameter, `n`, of type `int`.
- **Return Value:** It returns the factorial of the number `n`.
- **Recursive Logic:**
  - If `n` is 0 or 1 (the base case), the function returns 1.
  - Otherwise, it calls itself with `n - 1`, multiplying the result by `n`.
- **Usage:** In the `main` function, we define a number, call `factorial`, and print the result.


