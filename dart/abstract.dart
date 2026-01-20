abstract class Vehicles{
  void start();
  void stop();
}
class Car extends Vehicles{
  @override
 void start(){
  print("the car is now running");
 }

 @override
 void stop(){
  print("the car has now stoped");
 }
 }

 class Bike extends Vehicles{
  @override
  void start(){
    print("the bike is now running");
  }
  @override
  void stop(){
    print("the bike is now running");
  }
 }

 void main(List<String> args) {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike =Bike();
  bike.start();
  bike.stop();
}