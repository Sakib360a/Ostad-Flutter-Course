abstract class Vehicle{
  int _speed=0;
  void move();
  void setSpeed(int speed){
    print("$speed Speed is set using non abstract method \"setSpeed(int speed)\" .");
    if(speed>200)
      {
        print("Speed limit exceeded.");
        return;
      }
    if(speed<0)
      print("Speed Cannot be Negative.");
    else
      _speed=speed;

  }
  int getSpeed() => _speed;
}