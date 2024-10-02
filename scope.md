# Explanation of Scopes in Dart
In Dart, **scope** refers to the region of the code where a variable can be accessed. Dart has different types of scopes, and each one defines the accessibility of variables in various parts of the program.
## 1. Global Scope
- **Definition**: Variables declared outside of any class or function are in the global scope.
- **Example**: `globalVar` is a global variable that can be accessed anywhere in the program.
- **Use Case**: Global variables are typically used for values that need to be shared across different functions or classes.
```dart
  int globalVar = 10; // global scope

  void main() {
    print(globalVar); // accessible
  }
 ```
## 2. Local Scope
- **Definition**: Variables declared within a function or block are in the local scope.
- **Example**: `localVar` is a local variable declared inside the `main()` function. It can only be accessed within `main()`.
- **Use Case**: Local variables are useful for temporary values or function-specific logic that does not need to be shared globally.
```dart
void main() {
  int localVar = 5; // local scope
  print(localVar);  // accessible here
}
```
## 3. Class Scope
- **Definition**: Class-level variables, declared as `static`, are in the class scope. These variables are shared across all instances of the class.
- **Example**: `classVar` is a static variable in `MyClass`. It can be accessed using the class name without creating an instance.
- **Use Case**: Use class scope variables for shared data that is common to all instances of a class.
```dart
class MyClass {
  static int classVar = 20; // class scope
}

void main() {
  print(MyClass.classVar); // accessible
}
```
## 4. Instance Scope
- **Definition**: Instance-level variables are non-static variables in a class that can only be accessed through an instance of the class.
- **Example**: `instanceVar` is an instance variable. To access it, you need to create an instance of `MyClass`.
- **Use Case**: Instance scope variables hold data unique to each object created from a class.
```dart
class MyClass {
  int instanceVar = 30; // instance scope
}

void main() {
  MyClass obj = MyClass();
  print(obj.instanceVar); // accessible through instance
}
```
