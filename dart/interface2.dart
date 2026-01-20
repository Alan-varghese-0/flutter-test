abstract class Vehicle{
  void start();
  void running(){
    print("the car is now running");
  }
  void stop();
}
class Car implements Vehicle{
  @override
  void start(){
    print("the car is now ready to run");
  }
  @override
  void running(){
    print("car running");
  }
  @override
  void stop(){
    print("the car is now stoped running");
  }
}
void main(List<String> args) {
  Car car =Car();
  car.start();
  car.running();
  car.stop();
}