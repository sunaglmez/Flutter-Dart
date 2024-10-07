# Constructor (Builder-Constructor Method) Features

- They are used when creating an object from a class.
- Even if they are not visible, they actually exist by default.
- It is the first method that runs automatically when an object is created.
- Constructor methods can be empty or take parameters.
- Constructor methods do not have return types.
- There can only be one main constructor.
- We can create as many named constructors as we want.

### Question:
Since there is a constructor running in the background, why do we write and use the constructor method ourselves? What is our purpose in doing this?

### Answer:
The main reason is that we want to initialize objects in a more customized way and set their initial values.

- **Setting Initial Object Values:** By defining your own constructor, you can assign specific values to an object's properties at the time of creation.
- **Performing Initial Operations:** By defining a constructor, you can perform certain operations when an object is created. For example, actions like opening a file, establishing a connection, or connecting to a database can be done when the object is created.
- **Enforcing Required Values:** In some classes, you may want to make certain values mandatory when an object is created. By writing your own constructor, you can ensure that these values are provided when the object is instantiated.
- **Creating Different Constructors for Different Needs:** You can create multiple constructors to handle different scenarios for the same class. This allows you to initialize objects in different ways. For example, you may want to initialize a car with just its color or with both its color and model.

# Parameterless Constructor Method

### Example Code:
```dart
//****Parameterless Constructor Method***
void main(List<String> args) {
  Araba bmw = Araba();
  // We created an object from the "Araba" class
}

// We created our "Araba" class
class Araba {
  String? renk;
  bool? otomatikmi;

  // Our constructor method.
  // Even though we didn't explicitly call it, it ran by default.
  Araba() {
    print("This is the first method that runs");
  }
}
```
# Parameterless Constructor

The `Araba` class contains two properties: `renk` and `otomatikmi`. Both of these properties are defined as nullable (they can be `null`).

`Araba()` is a constructor method that is automatically called when an object of this class is created. In other words, when we create an object, the `Araba()` method runs automatically without us having to call it explicitly.

For every object we create, a constructor (constructor method) is triggered in the background. If you do not define a constructor in a class, Dart (and similarly in other OOP languages) automatically generates a default constructor behind the scenes. This default constructor is parameterless and does not perform any actions other than creating the object.

If you define your own constructor for a class, the default constructor in Dart is overridden, and only your defined constructor is used.

# Parameterized Constructor Methods

> **Note:** Since the parameterized constructor will run first, if parameters are not provided, it will throw an error.

### Example 1:

```dart
//EXAMPLE 1: ****Parameterized Constructor Method***
void main(List<String> args) {
  Araba bmw = Araba("kirmizi", true);
}

class Araba {
  String? renk;
  bool? otomatikmi;

  Araba(String renk, bool otomatikmi){
      renk = renk;
      otomatikmi = otomatikmi;
      print("$renk,$otomatikmi");
    }
}
```
### Example 1 Explanation:
The purpose of this code is to assign the values coming from the constructor's parameters to the class variables. We want to set (assign) the values coming from outside to the properties renk and otomatikmi of the class.

The compiler may not give an error, and your code might run, but the behavior will not be as expected. Even though the code seems to work, the values from the parameters are not assigned to the class variables (i.e., the renk and otomatikmi variables in the Araba class). In fact, the parameters are assigned to themselves.

In the statement renk = renk, the renk on the left side is not the class member renk but the parameter renk. So, the parameter is being assigned to itself, and the class's renk variable remains null.

The same applies to otomatikmi = otomatikmi. The class's otomatikmi variable will not be assigned any value.

Therefore, the this keyword should be used to make the assignment. This way, the values coming as parameters are correctly assigned to the class's renk and otomatikmi variables.

### Example 2:

```dart
//EXAMPLE 2: ****Parameterized Constructor Method***
void main(List<String> args) {
  Araba bmw = Araba("kirmizi", true);
}

class Araba {
  String? renk;
  bool? otomatikmi;

    Araba(String renk, bool otomatikmi) // Requesting data from the user
    {
    this.renk = renk;             // Assigning the received color
    this.otomatikmi = otomatikmi; // Assigning the received automatic status
    print("Class variables: ${this.renk}, ${this.otomatikmi}");
    }
}

/*
By using "this", the values from the constructor's parameters are assigned to the class's renk and otomatikmi variables.
*/
```
### Example 2 Explanation:
The correctly written version of the code is as shown above. This way, the values are successfully assigned to the class variables.

### Example 3:

```dart
//EXAMPLE 3: ****Parameterized Constructor Method***
void main(List<String> args) {
  Araba bmw = Araba("kırmızı", true);
  bmw.bilgiVer();
}

// Araba class
class Araba {
  String? renk;
  bool? otomatikMi;

  // Constructor method, with different parameter names
  Araba(String yeniRenk, bool yeniOtomatik) {
    this.renk = yeniRenk;                // Assigning 'yeniRenk' parameter to 'renk' property
    this.otomatikMi = yeniOtomatik;     // Assigning 'yeniOtomatik' parameter to 'otomatikMi' property
    print("First method executed");
  }

  // Method to provide information
  bilgiVer() {
    print("Our car is $renk in color and is it automatic? $otomatikMi");
  }
}
```
### Example 3 Explanation:
You can use different names for the parameters inside the constructor method. However, in this case, you will need to use these new names when assigning them to the class properties.

### Example 4:

```dart
//EXAMPLE 4: ****Parameterized Constructor Method***
void main(List<String> args) {
  Araba bmw = Araba("kirmizi", true);
}

class Araba {
  String? renk;
  bool? otomatikmi;

  Araba(this.renk, this.otomatikmi) { // Using 'this' directly here
    print("Class variables: ${this.renk}, ${this.otomatikmi}");
  }
}
```
### Example 4 Explanation:
This method is a shorthand in Dart for assigning values from the constructor's parameters directly to the class variables.

The this keyword is used directly in the constructor's parameters, and thus values are assigned to the class variables without the need for additional assignment statements.

### Example 5:

```dart
//EXAMPLE 5: ****Parameterized Constructor Method***
void main(List<String> args) {
  // Creating an object using the default constructor
  Araba bmw1 = Araba("kirmizi", true);
  // Creating an object using the named constructor
  Araba bmw2 = Araba.otomatik("mavi"); // Only color is provided, automatic is set to true
  // Creating an object using the named constructor
  Araba bmw3 = Araba.manuel("siyah"); // Only color is provided, automatic is set to false

  print("BMW1: Color - ${bmw1.renk}, Is automatic? - ${bmw1.otomatikmi}");
  print("BMW2: Color - ${bmw2.renk}, Is automatic? - ${bmw2.otomatikmi}");
  print("BMW3: Color - ${bmw3.renk}, Is automatic? - ${bmw3.otomatikmi}");
}

class Araba {
  String? renk;
  bool? otomatikmi;

  // Default constructor
  Araba(this.renk, this.otomatikmi);

  // Named constructor: takes only the color and sets automatic to true
  Araba.otomatik(this.renk) {
    this.otomatikmi = true;
  }

  // Named constructor: takes only the color and sets automatic to false
  Araba.manuel(this.renk) {
    this.otomatikmi = false;
  }
}
```
### Example 5 Explanation:
In all previous examples, we used the default constructor. In this example, we created additional constructors.

Apart from the default constructor, these are called "named constructors." Named constructors offer different ways to create objects for specific purposes.

Default Constructor: Araba(this.renk, this.otomatikmi) - This constructor takes renk and otomatikmi as parameters and assigns them to the class variables.
Named Constructor: Araba.otomatik(this.renk) - This constructor only takes renk and sets otomatikmi to true by default, creating an automatic car.
Named Constructor: Araba.manuel(this.renk) - This constructor only takes renk and sets otomatikmi to false by default, creating a manual car.
This structure allows us to use different parameter sets to create objects from the Araba class. The bmw1 object is created with the default constructor, while the bmw2 and bmw3 objects are created using named constructors.
