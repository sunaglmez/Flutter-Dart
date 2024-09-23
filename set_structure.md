# Dart Set Structure

In Dart, the `Set` data structure is distinct from lists and caters to specific use cases due to its unique properties. A `Set` is based on the mathematical concept of a collection of distinct elements, and it follows certain rules:

## Key Features of a Set:

1. **No Duplicate Elements**:
   - A `Set` cannot contain duplicate elements. If you try to add the same element multiple times, only one instance will be stored. In other words, each element can only appear once in the `Set`.

2. **Unordered**:
   - Unlike a list, a `Set` does not maintain the order in which elements are added. Therefore, after adding elements to a `Set`, there is no defined sequence in which the elements will be stored or accessed.

3. **Dynamic Length**:
   - `Set`s have dynamic sizes, meaning their length can change as elements are added or removed. The size of the `Set` will adjust automatically based on the operations performed.

4. **No Indexing**:
   - Since a `Set` is unordered, elements cannot be accessed by an index (as you would with a list). You can add or remove elements, but direct access to elements via an index is not supported in a `Set`.
   - 
## Defining a Set in Dart
```dart
void main(List<String> args) {
  Set<dynamic> sampleSet = {}; // Declares an empty set
  Set<dynamic> sampleSet1 = Set(); // Another way to declare an empty set
  Set<dynamic> sampleSet2 = Set.from([]); // Set declaration from a list (empty in this case)
  var sampleSet3 = Set(); // Declares a set using var for dynamic type inference
}
```
### Explanation:

- **`Set<dynamic> sampleSet = {}`**: This syntax uses curly braces `{}` to declare an empty Set of dynamic type. `dynamic` means the set can hold any type of data.

- **`Set<dynamic> sampleSet1 = Set();`**: The `Set()` constructor is used here to create an empty set. It is another way to initialize an empty set, also of dynamic type.

- **`Set<dynamic> sampleSet2 = Set.from([]);`**: This constructor, `Set.from([])`, creates a set from an existing collection. In this case, an empty list (`[]`) is passed, so the set is empty.

- **`var sampleSet3 = Set();`**: Here, `var` is used to let Dart infer the type dynamically. The `Set()` constructor is called to initialize an empty set. The type of the set will be inferred as `Set<dynamic>` unless specified otherwise.

### Example 1:
```dart
void main(List<String> args) {
  Set<dynamic> sampleSet = {}; // Set declaration

  sampleSet.add(1);
  sampleSet.add(1); // Duplicate element, will not be added
  sampleSet.add(2);
  sampleSet.add(2); // Duplicate element, will not be added
  sampleSet.add(3);
  sampleSet.add(4);

  print(sampleSet);
}

// Output: {1, 2, 3, 4}
// Duplicate elements are only added once
// Curly braces are used for sets, square brackets for lists
```
### Example 2:
```dart
void main(List<String> args) {
  Set<dynamic> sampleSet = {1, 1, 1, 1, 2, 3, 4, 5, 6, 7, 7};
  // Created a set with repeated elements

  List<dynamic> sampleList = [1, 1, 3, 3, 5, 5, 7, 7];
  // Created a list with repeated elements

  sampleSet.addAll(sampleList);
  // Added the elements from the list to the set

  print(sampleSet);
}

// Output: {1, 2, 3, 4, 5, 6, 7}
```
### Example 3:
```dart
void main(List<String> args) {
  Set<dynamic> sampleSet =
      Set.from([1, 1, 1, 2, 2, 3, 5, 4, 4, "Tom", "Tom"]);

  print(sampleSet);
}

// Output: {1, 2, 3, 5, 4, Tom}
// Even though the same element is added multiple times, it is only displayed once.
```
### Example 4:
```dart
void main(List<String> args) {
  Set<dynamic> sampleSet =
      Set.from([1, 1, 1, 2, 2, 3, 5, 4, 4, "Tom", "Tom"]);
  // Created a set containing multiple duplicate elements.

  List<dynamic> sampleList = [1, 1, 3, 3, 5, 5, 7, 7];
  // Created a list with duplicate elements.

  sampleSet.addAll(sampleList);
  // Added the elements of sampleList to sampleSet.

  print(sampleSet);
}

// Output: {1, 2, 3, 5, 4, Tom, 7}
// The final set contains unique elements after merging.
```
### Example 5:
```dart
void main(List<String> args) {
  var setTom = {"Tom", "Jerry", "Spike"};
  var setMary = {"Alice", "Bob", "Cathy"};
  var setJohn = {"Tom", "Jerry", "Alice", "Bob"};

  var combinedSet = <dynamic>{};
  combinedSet = {...setTom, ...setMary, ...setJohn};

  print(combinedSet);
}

// Output: {Tom, Jerry, Spike, Alice, Bob, Cathy}
// The final set contains unique elements from all sets merged together.
```
