# Factory Constructor

#### Question:
Why do we use a factory constructor instead of a named constructor? What is the difference between them?

#### Answer:
**Factory Constructor**:
- It can return an existing object. For example, a certain condition can be checked before creating an object, and the same object can be returned.
- If there is a relationship between the objects being created (such as a singleton or special objects for certain conditions), the factory constructor is ideal for managing this situation.

**Named Constructor**:
- It creates a new object every time. A named constructor does not have the ability to return an existing object.
- Each named constructor independently handles the object creation process.

### Example Code:

```dart
void main(List<String> args) {
  // Creating car objects using the factory constructor
  Araba bmw = Araba.create("kirmizi", true);
  Araba audi = Araba.create("mavi", false);
  Araba specialCar = Araba.create("kirmizi", true); // Special case

  print("BMW: Color - ${bmw.renk}, Is it automatic? - ${bmw.otomatikmi}");
  print("Audi: Color - ${audi.renk}, Is it automatic? - ${audi.otomatikmi}");
  print("Special Car: Color - ${specialCar.renk}, Is it automatic? - ${specialCar.otomatikmi}");
}

class Araba {
  String? renk;
  bool? otomatikmi;

  // Default constructor
  Araba(this.renk, this.otomatikmi) {
    print("Class variables: ${this.renk}, ${this.otomatikmi}");
  }

  // Factory constructor
  factory Araba.create(String renk, bool otomatikmi) {
    // Custom logic can be applied here
    if (renk == "kirmizi" && otomatikmi) {
      // If the car is red and automatic, return a special object
      return Araba("kirmizi", true);
    } else {
      // For other cases, return a normal object
      return Araba(renk, otomatikmi);
    }
  }
}
```
### Explanation:
In this example, we used the factory constructor to introduce custom logic in object creation. The factory constructor checks a specific condition (if the car is red and automatic) and returns a special object. In other cases, it simply returns a new object with the provided parameters.

Unlike a named constructor, the factory constructor can decide to return an existing object or create a new one based on conditions.
