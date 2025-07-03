import 'dart:io';

mixin BMW{
  String? input1;

  void bmw(){
    stdout.write("ist :");
    input1 = stdin.readLineSync();

  }
}
mixin ferrry{
  String? input2;
  void fer(){
    stdout.write("ist :");
    input2 = stdin.readLineSync();
  }
}

class Car with BMW,ferrry {  
}

void main(List<String> args) {
  Car car=Car();
  car.bmw();
  car.fer();
}