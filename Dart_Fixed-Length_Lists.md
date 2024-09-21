# Dart Fixed-Length Lists

When using a fixed-length list, the length of the list must be specified at the beginning, and values can be written into it. If we want to provide values to this list later, we must use temporary values instead. You cannot leave a value empty.

## Creating a Fixed-Length List

In Dart, we can create a fixed-length list using the `List.filled` method. This method creates a list of the specified length, filled with a given initial value. Here’s an example of how to use it:

```dart
List<int> exampleList = List.filled(length, fill, growable: false);
```
- **length**: Specifies the length of the list.
- **fill**: Specifies the initial value to fill all the elements.
- **growable: false**: This parameter ensures that the list remains fixed in length.

## Accessing Elements
To access the elements in lists, index numbers are used. The elements of a list are indexed from left to right, starting at zero. For example, in a four-element list, the first element is at index zero, and the last element is at index three.

To access an element in a list, you use square brackets `[]` and specify the index number inside.

### Example Code:
```dart
void main(List<String> args) {
  // Created a fixed-length list with 4 elements, each initially 0
  List<int> exampleList = List.filled(4, 0, growable: false);

  // Assigned values to the list
  exampleList[0] = 1;
  exampleList[1] = 2;
  exampleList[2] = 3;
  exampleList[3] = 4;

  // Printed the list
  print(exampleList); // Output: [1, 2, 3, 4]

  // Printed the element at index 3
  print(exampleList[3]); // Output: 4
}
```
#### Outputs:

The command `print(exampleList);` prints the contents of the list, resulting in the output `[1, 2, 3, 4]`.  
The command `print(exampleList[3]);` prints the element at index three, resulting in the output `4`.
