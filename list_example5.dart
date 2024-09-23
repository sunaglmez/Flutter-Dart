""" Dart Lists Example Question 5

Create two fixed-length lists with 5 elements each.
Assign random numbers to both lists.
Merge these two lists into a single list.
Create a set that holds the squares of the elements in the final list.
Print the set.
"""
import 'dart:math';

void main(List<String> args) {
  // Create the first list with 5 elements
  List<int> list1 = List.filled(5, 0);
  // Assign random numbers to the list
  for (var i = 0; i < list1.length; i++) {
    list1[i] = Random().nextInt(10);
  }
  
  // Create the second list with 5 elements
  List<int> list2 = List.filled(5, 0);
  // Assign random numbers to the list
  for (int i = 0; i < list2.length; i++) {
    list2[i] = Random().nextInt(10);
  }

  // Merge the two lists into a single list
  List<int> combinedList = [...list1, ...list2];

  // Create a set to hold the squares of the numbers in the combined list
  Set<int> squares = {};

  // Populate the set with squares using a for loop
  for (int i = 0; i < combinedList.length; i++) {
    squares.add(combinedList[i] * combinedList[i]);
  }

  // Alternatively, populate the set with squares using a for-in loop
  for (var number in combinedList) {
    squares.add(number * number);
  }
  
  print(combinedList);
  print(squares);
  // NOTE: Since squares is a set, the elements will not repeat.
}

/* SAMPLE OUTPUT
[9, 8, 8, 9, 3, 7, 7, 4, 0, 8]
{81, 64, 9, 49, 16, 0}
*/
