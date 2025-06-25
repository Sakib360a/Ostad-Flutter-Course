abstract class Vehicle{
  int _speed=0;
  void move();
  void setSpeed(int speed){
    print("$speed Speed is set using non abstract method \"setSpeed(int speed)\" .");
    _speed=speed;
  }
  int getSpeed() => _speed;
}