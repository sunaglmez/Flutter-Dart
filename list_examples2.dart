""" Dart Lists Example Question 2

Define a fixed-length list of 10 elements of type int.
Assign random numbers to it using a for loop.
Print the contents using the `print()` method.
"""
import 'dart:math';

void main(List<String> args) {
  List<int> randomNumbers = List.filled(10, 0);

  for (var i = 0; i < randomNumbers.length; i++) {
    randomNumbers[i] = Random().nextInt(10);
  }
  
  print(randomNumbers);
}

// OUTPUT
/*
[4, 8, 6, 9, 9, 5, 4, 4, 9, 9]
*/
