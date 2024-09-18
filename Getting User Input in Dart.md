# Getting User Input in Dart

In Dart, getting user input can be done in two main scenarios: console applications and Flutter applications. Here’s how you can do it in a console application:

## 1. Console Applications

For console applications, you can use Dart's `dart:io` library, which provides the `stdin` (standard input) stream to get user input.

### Example:

```dart
import 'dart:io';

void main() {
  // Get user input
  stdout.write('Please enter your name: ');
  String? name = stdin.readLineSync(); // Read user input

  stdout.write('Please enter your age: ');
  String? ageString = stdin.readLineSync(); // Read user input
  int? age = int.tryParse(ageString ?? ''); // Convert age to integer

  // Print the data
  print('Hello, $name! Your age is: $age');
}
```
### Explanation:

- `stdout.write` is used to prompt the user for input.
- `stdin.readLineSync()` reads the user's input as a string.
- `int.tryParse` converts the age input to an integer (it returns null if conversion fails).

## 2. Collecting User Input in Flutter Applications

In Flutter applications, you can use the `TextField` widget to receive input from the user. To manage the input data, a `TextEditingController` is commonly used.

### Example:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kullanıcıdan Veri Alma'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adınızı girin',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = _controller.text; // Kullanıcıdan alınan veriyi oku
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Merhaba'),
                    content: Text('Merhaba, $name!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Tamam'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}
```
### Explanation:

- `TextEditingController` is used to retrieve the data entered by the user.
- `TextField` widget allows users to input data.
- The user data is collected when the button is pressed and displayed on the screen using an `AlertDialog`.
