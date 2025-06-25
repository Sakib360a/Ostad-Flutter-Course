import 'ClassVehicle.dart';

class Car extends Vehicle{
  Car()
  {
    print("Car object created.\n");
  }
  @override
  void move() {
    print("The car is moving at ${getSpeed()} km/h");
  }
}