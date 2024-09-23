""" Dart Lists Example Question 7

Write a function that takes a word and a letter as input.
The function should return the number of times the given letter appears in the given word.
"""
void main(List<String> args) {
  countLetterInWord("Tom", "e");
}

void countLetterInWord(String word, String letter) {
  int count = 0;
  for (var i = 0; i < word.length; i++) {
    if (word[i] == letter) {
      count++;
    }
  }
  print("$word contains the letter $letter $count times.");
}
