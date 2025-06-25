import 'ClassCar.dart';

void main(){
  Car MyCar = Car();
  MyCar.setSpeed(300); //Speed must be between 0-200.
  MyCar.move();
}