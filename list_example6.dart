""" Dart Lists Example Question 6

Collect numbers from the user and store them in a list.
Write a function to calculate the average of the numbers in this list.
Display the output.
"""
import 'dart:io';

void main(List<String> args) {
  int enteredScore = 0;
  List<int> scores = [];
  
  do {
    print("Please enter a score, enter -1 to exit:");
    enteredScore = int.parse(stdin.readLineSync()!);
    
    if (enteredScore != -1) {
      scores.add(enteredScore);
    }
  } while (enteredScore != -1);
  
  print("Number of entered scores: ${scores.length}");
  double? average = calculateAverage(scores);
  print("Average: $average");
}

double? calculateAverage(List<int> list) {
  int total = 0;
  for (int i = 0; i < list.length; i++) {
    total += list[i];
  }
  return total / list.length;
}
