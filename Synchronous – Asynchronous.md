# Synchronous and Asynchronous 
In Dart, the concepts of `future`, `async`, `await`, `then`, `catchError`, and `whenComplete` are used to handle synchronous and asynchronous programming. These concepts are especially important when dealing with tasks where the completion time is uncertain, such as fetching data from the internet or reading a file. They ensure that the program continues running smoothly without halting, even while waiting for these time-consuming operations to finish.

## 1. Future
A **Future** represents a value or error that will be available at some point in the future. In Dart, an asynchronous operation returns a Future, which will either return a result or an error once the operation is completed. Futures allow you to handle time-consuming operations in a way that appears synchronous but executes asynchronously, meaning the program flow continues without waiting for the operation to finish.
### Example:
```dart
Future<String> longRunningOperation() {
  return Future.delayed(Duration(seconds: 3), () => 'Operation completed!');
}

void main() {
  print('Starting the operation');
  longRunningOperation().then((result) {
    print(result); // Printed after 3 seconds
  });
  print('Other tasks continue...');
}

/*output:
Starting the operation
Other tasks continue...
Operation completed!*/
```
## 2. async and await
`async` and `await` are used to make the `Future` structure more readable. A function marked with `async` indicates that it operates asynchronously. `await` pauses the execution until the `Future` is completed, but during this waiting period, other operations continue to execute.

### Example:
```dart
Future<String> longRunningTask() async {
  return Future.delayed(Duration(seconds: 3), () => 'Process completed!');
}

void main() async {
  print('Process starting');
  String result = await longRunningTask(); // Waits until the process completes
  print(result); 
  print('Other tasks continue...');
}
/*output:
Process starting
Process completed!
Other tasks continue...*/
```
## 3. The Then Structure

The `then` method is used to specify what to do when a Future operation is completed. When a Future successfully completes, the code specified with `then` is executed.
### Example:
```dart
Future<String> longRunningProcess() {
  return Future.delayed(Duration(seconds: 3), () => 'Process completed!');
}

void main() {
  print('Starting the process');
  longRunningProcess().then((result) {
    print(result);
  });
  print('Other tasks are continuing...');
}
```
## 4. catchError

The `catchError` is used to catch errors that occur during a Future. If a Future returns an error, it can be managed using `catchError`.
### Example:
```dart
Future<String> longRunningProcess() {
  return Future.delayed(Duration(seconds: 3), () => throw 'An error occurred!');
}

void main() {
  print('Process is starting');
  longRunningProcess()
    .then((result) {
      print(result);
    })
    .catchError((error) {
      print('Error: $error');
    });
}
```
## 5. whenComplete

`whenComplete` specifies an operation that should be performed regardless of whether a Future completes successfully or fails. This is useful in situations where code needs to run at the end of an operation in all cases (for example, to release resources).
### Example:
```dart
Future<String> longRunningProcess() {
  return Future.delayed(Duration(seconds: 3), () => throw 'An error occurred!');
}

void main() {
  print('Process is starting');
  longRunningProcess()
    .then((result) {
      print(result);
    })
    .catchError((error) {
      print('Error: $error');
    })
    .whenComplete(() {
      print('Process completed.');
    });
}
```
