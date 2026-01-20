mixin Petrolveriant{
  void petrolveriant(){
    print("this is a petrol cra");
  }
}
mixin Electricverient{
  void electricverient(){
    print("this is a electric car");
  }
}

class Car with Petrolveriant,Electricverient{

}

void main(List<String> args) {
  Car car =Car();
  car.petrolveriant();
  car.electricverient();
}