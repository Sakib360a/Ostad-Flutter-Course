abstract class Vehicle{
  int _speed=0;
  void move();
  void setSpeed(int speed){
    print("$speed Speed is set using non abstract method \"setSpeed(int speed)\" .");
    _speed=speed;
  }
  int getSpeed() => _speed;
}

class Car extends Vehicle{
  Car()
  {
    print("Car object created.\n");
  }
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}