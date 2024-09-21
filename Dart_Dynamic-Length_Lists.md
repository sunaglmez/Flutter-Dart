# Dart Dynamic-Length Lists

Earlier, we discussed fixed-length list structures. Now, let's examine how we can convert that structure into a dynamic length one. Dynamic-length lists allow us to increase or decrease the number of elements as needed.

## Defining Dynamic-Length Lists

In Dart, to create a dynamic-length list, we need to set the `growable` parameter to `true`. This means we can change the size of the list dynamically. Here are different ways to define dynamic lists:

```dart
List<int> exampleList = []; // Classic list definition, dynamic list.

List<int> exampleList = List.filled(length, fill, growable: false); // Fixed-length list definition.

List<int> exampleList = List.filled(length, fill, growable: true); // Dynamic list that can grow and shrink.

List<int> exampleList = List.empty(growable: true); // Dynamic list that can grow and shrink.

List<int> exampleList = []; // Another definition of a dynamic list.

var list = <String>[]; // Dynamic list definition with type inference.
```
### Example Code
Below is an example demonstrating how to use a dynamic-length list:
```dart
void main(List<String> args) {
  List<int> exampleList = List.filled(5, 0, growable: true);
  // We defined a dynamic-length list with an initial size of 5, filled with zeros.

  print(exampleList);
  // Prints the list: [0, 0, 0, 0, 0]

  print(exampleList.length);
  // Prints the length of the list: 5

  exampleList.add(22);
  exampleList.add(36);
  // Added elements to the list.

  print(exampleList);
  // Prints the updated list: [0, 0, 0, 0, 0, 22, 36]

  print(exampleList.length);
  // Prints the new length of the list: 7
}
```
#### Outputs:

- The command `print(exampleList);` prints the contents of the list, resulting in the output `[0, 0, 0, 0, 0]`. This shows the initial five-element list.

- The command `print(exampleList.length);` prints the length of the list, resulting in the output `5`. This reflects the initial length we specified.

- The commands `exampleList.add(22);` and `exampleList.add(36);` add new elements to the end of the list.

- The command `print(exampleList);` prints the updated list, resulting in the output `[0, 0, 0, 0, 0, 22, 36]`.

- The command `print(exampleList.length);` prints the new length of the list, resulting in the output `7`. This indicates that the list has dynamically grown.
