import 'dart:io';
class Car {
  // variables
  String? CarBrand, CarName, CarModel, CarColor;

  //constructor
  Car(String CarBrand, String CarName, String CarModel, String CarColor) {
    this.CarBrand = CarBrand;
    this.CarName = CarName;
    this.CarModel = CarModel;
    this.CarColor = CarColor;
  }

  //named constructor
  Car.CarWithoutColor(String CarBrand, String CarName, String CarModel) {
    this.CarBrand = CarBrand;
    this.CarName = CarName;
    this.CarModel = CarModel;
  }

  //methods and Functions
  void CarDetails() {
    print("Car Brand: $CarBrand");
    print("Car Name: $CarName");
    print("Car Model: $CarModel");
    print("Car Color: $CarColor");
  }

}

void main() {
  // Car car1 = Car();
  // car1.CarBrand = "Toyota";
  // car1.CarName = "Corolla";
  // car1.CarModel = "2019";
  // car1.CarColor = "Black";
  // car1.CarDetails();

  // Car mycar = new Car.CarWithoutColor("Toyota", "Corolla", "2019");
  // mycar.CarDetails();

  //with user input
  print("Enter Car Brand: ");
  String CarBrand = stdin.readLineSync() ?? "Not Provided";
  print("Enter Car Name: ");
  String CarName = stdin.readLineSync() ?? "Not Provided";
  print("Enter Car Model: ");
  String CarModel = stdin.readLineSync() ?? "Not Provided";
  print("Enter Car Color: ");
  String CarColor = stdin.readLineSync() ?? "Not Provided";
  Car mycar = new Car(CarBrand, CarName, CarModel, CarColor);
  mycar.CarDetails();

}