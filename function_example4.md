# Example 4

## Question:
Write a function with an integer return type. The function should take an integer as input and return the sum of all even numbers up to and including that number.

## Solution:
In this function, we will only sum the even numbers. By using a loop, we can check for even numbers that are less than or equal to the given input and calculate their sum.

## Dart Code:
```dart
int evenNumbersSum(int n) {
  int sum = 0;  // Variable to hold the cumulative sum
  for (int i = 2; i <= n; i += 2) {  // Start from 2 and only sum even numbers
    sum += i;  // Add the even number to the sum
  }
  return sum;  // Return the total sum
}

void main() {
  print(evenNumbersSum(10));  // This will output 30, as 2+4+6+8+10 = 30
}
```
## Explanation:
The `evenNumbersSum` function sums the even numbers up to the given value `n`.  
We start the `for` loop at 2, incrementing by 2 each time (i += 2) to only add even numbers.  
For example, if `n=10`, the sum will be 2+4+6+8+10, which equals 30.
