class Car {
  String brand;
  String model;
  int year;

  // Constructor using `this` to differentiate instance variables from parameters
  Car(String brand, String model, int year) {
    this.brand = brand;
    this.model = model;
    this.year = year;
  }

  // Method to display car details
  void displayInfo() {
    print('Car: ${this.brand} ${this.model}, Year: ${this.year}');
  }
}

void main() {
  // Create a new Car instance
  Car myCar = Car('Toyota', 'Corolla', 2021);

  // Call the displayInfo method to print car details
  myCar.displayInfo();
}
