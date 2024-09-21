# Function to Return Sum of Numbers
**Purpose:** Write a function with an integer return type that sums up all the numbers from 1 to the given input.

**Example:** If the input is 5, the function should compute the sum as 5+4+3+2+1.

```dart
int total(int n) {
  int sum = 0;  // Variable to hold the cumulative sum
  for (int i = n; i > 0; i--) {
    sum += i;  // Add the current value of i to sum
  }
  return sum;  // Return the total sum
}

void main() {
  print(total(5));  // This will output 15, as 5+4+3+2+1 = 15
}
```
## Explanation:
- The function `total` takes an integer `n` as input and initializes the variable `sum` to 0.  
- It uses a `for` loop to iterate from `n` down to 1, adding each value to `sum`.  
- Finally, it returns the total sum, which for an input of `5` results in `15`.
