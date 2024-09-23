# Dart Map Structure

In Dart, the Map structure is a collection that holds data in the form of key-value pairs. Maps are one of the most common data structures and are useful in many applications. Here are the key features and examples of the Map structure:

## Key Features of Map:

- **Key-Value Relationship**: Each element consists of a key and its corresponding value. Keys must be unique; therefore, multiple values cannot share the same key.

- **Unordered**: Elements in a Map are not sorted according to their insertion order. Keys are not stored in any specific sequence.

- **Dynamic Length**: The Map structure has a dynamic length, meaning its size can change as elements are added or removed.

- **Different Types**: Maps can have different types for keys and values, allowing them to store varied types of data.

## Defining a Map Structure in Dart
```dart
void main() {
  // 1. Map Declaration - A map with String keys and int values
  Map<String, int> exampleMap = {}; 
  // Here, keys are of type String, and values are of type int.

  // 2. Map Declaration - A map with dynamic keys and values
  Map<dynamic, dynamic> exampleMap2 = Map(); 
  // Both keys and values can be of dynamic type. Elements of different types can be added.

  // 3. Map Declaration - A dynamic map using var
  var exampleMap3 = Map(); 
  // When declared with `var`, the type is inferred automatically. Key and value types can be added later.
}
```
### Explanation:

- **Example Map 1**: This map is explicitly defined to have `String` keys and `int` values, ensuring type safety.

- **Example Map 2**: This map allows any type for both keys and values, providing flexibility for varied data types.

- **Example Map 3**: Using `var`, Dart infers the types of the map dynamically, which can be useful for creating a map without specifying types upfront.

### Example 1:
```dart
void main(List<String> args) {
  Map<String, int> grades = {
    "english": 78,
    "mathematics": 85,
    "literature": 77,
  };

  print(grades);
}
// OUTPUT {english: 78, mathematics: 85, literature: 77}
```
### Example 2: Dart Map Element Addition
```dart
void main(List<String> args) {
  Map<String, int> grades = {
    "english": 78,
    "mathematics": 85,
    "literature": 77,
  };
  print(grades["english"]);
}

// OUTPUT 78
```
### Example 3: Iterating Over Map Elements with a For Loop in Dart
```dart
void main(List<String> args) {
  Map<String, int> grades = {
    "english": 78,
    "mathematics": 85,
    "literature": 77,
  };

  for (var entry in grades.entries) {
    print("Key: ${entry.key}, Value: ${entry.value}");
  }
}

// OUTPUT 
// Key: english, Value: 78
// Key: mathematics, Value: 85
// Key: literature, Value: 77
```
