# Inheritance in Dart

Inheritance allows a class to inherit properties and methods from another class, helping to avoid code duplication.

We have the following files: `ogrenci.dart`, `ilkokul.dart`, `ortaokul.dart`, `lise.dart`, and `inheritance.dart`. The `ogrenci.dart` file contains the `Student` class.

In a school context, we have a "Student" class, and subclasses like `ElementaryStudent`, `MiddleSchoolStudent`, and `HighSchoolStudent`. The "Student" class holds general information while the subclasses can define their specific characteristics.

### Student Class
The `Student` class contains general information like name, surname, address, and phone number. This class includes the common properties for all types of students.

### ElementaryStudent Class
The `ElementaryStudent` class inherits from the `Student` class and adds specific information about activities.

### MiddleSchoolStudent Class
The `MiddleSchoolStudent` class also inherits from the `Student` class and adds specific information about clubs.

### HighSchoolStudent Class
The `HighSchoolStudent` class inherits from the `Student` class and adds information about elective courses. This way, each class can inherit common properties and behaviors from the parent class while also holding unique properties.

## Student Class
```dart
// ogrenci.dart
class Student {
  late String name;
  late String surname;
  late String address;
  late int phone;

  // Constructor to initialize the student information
  Student(this.name, this.surname, this.address, this.phone);
}
```
### ElementaryStudent Class
```dart
// ilkokul.dart
import 'ogrenci.dart';

class ElementaryStudent extends Student {
  late String activity;

  // Constructor to initialize the elementary student information
  ElementaryStudent(String name, String surname, String address, int phone, this.activity) 
      : super(name, surname, address, phone);
}
```
### MiddleSchoolStudent Class
```dart
// ortaokul.dart
import 'ogrenci.dart';

class MiddleSchoolStudent extends Student {
  late String club;

  // Constructor to initialize the middle school student information
  MiddleSchoolStudent(String name, String surname, String address, int phone, this.club) 
      : super(name, surname, address, phone);
}
```
### HighSchoolStudent Class
```dart
// lise.dart
import 'ogrenci.dart';

class HighSchoolStudent extends Student {
  late String electiveCourse;

  // Constructor to initialize the high school student information
  HighSchoolStudent(String name, String surname, String address, int phone, this.electiveCourse) 
      : super(name, surname, address, phone);
}
```
### Explanation
We created one class (Student) and derived the ElementaryStudent, MiddleSchoolStudent, and HighSchoolStudent classes from it using inheritance.

Each of these newly created classes has one unique variable: activity, club, and electiveCourse, respectively.

Important Note: As you can see, we didn't create a constructor in any of the subclasses. This means that when creating instances of these classes, there may be forgotten or uninitialized values. We don’t want that. Instead, we should create a constructor so that we can initialize the values when defining the instance.

# The Super Keyword and Constructors in Dart

The `super` keyword is used in object-oriented programming to allow a subclass (child class) to access the properties and methods of its superclass (parent class). In Dart, the usage of `super` typically appears in two main contexts: constructor calls and method calls.

The `super` keyword is used to call the constructor of a superclass. This means that the constructor of the subclass has access to the constructor of the superclass. As a result, the variables defined in the superclass can be utilized by the subclass.

If a class does not have a constructor and the required information is not provided when creating an instance, some properties (variables) may remain empty (null). This can lead to errors.

By using constructors, you must provide all necessary information (e.g., name, surname, phone number) when creating an object. This ensures that the object always starts with complete and accurate information.

## Student Class
```dart
// ogrenci.dart
class Student {
  late String name;
  late String surname;
  late String address;
  late int phone;

  // Constructor to initialize the student information
  Student(this.name, this.surname, this.address, this.phone);
}
```
### Main File
```dart
// inheritance.dart
import 'ilkokul.dart';
import 'lise.dart';
import 'ortaokul.dart';

void main(List<String> args) {
  ElementaryStudent studentElem1 = ElementaryStudent("Mehmet", "Eser", "Ertuğrul Gazi", 4444, "Painting Activity");
  MiddleSchoolStudent studentMid1 = MiddleSchoolStudent("Ayşe", "Ak", "Istanbul", 5555555, "Software Club");
  HighSchoolStudent studentHigh1 = HighSchoolStudent("Zeynep", "Yıldız", "Edirne", 6666666, "Elective Course: Mathematics");
}
```
In this implementation, we have created a Student class and derived the ElementaryStudent, MiddleSchoolStudent, and HighSchoolStudent classes from it using inheritance.

Each of these newly created classes has one unique variable: activity, club, and electiveCourse, respectively, and they properly call the superclass constructor using the super keyword to ensure that all necessary properties are initialized.


