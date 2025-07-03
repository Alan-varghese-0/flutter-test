import 'dart:io';
import 'dart:math';

class Circle{
  double? _radius;

  double? get measure => _radius;
  set radius (double r) => this._radius =r;
 double? get area => pi * _radius! * _radius!;
 
}

class Rectangle {
  
  double? _lenght;
  double? _width;

  double? get measure1 => _lenght;
  set lenght (double l) => _lenght=l;

  double? get measure2 => _width;
  set width (double w) => _width=w;

  double? get area => _lenght! * _width!;

}
void main(List<String> args) {
  Circle circle =Circle();
  Rectangle rect =Rectangle();

  stdout.write("enter the radius of the circle : ");
  String? input = stdin.readLineSync();
  double? r = double.tryParse(input ?? '');
  circle.radius =r!;

  stdout.write("enter the lenght of the rectangle : ");
  String? input1 = stdin.readLineSync();
  double? l =double.tryParse(input1 ?? '');
  rect.lenght =l!;

  stdout.write("enter the lenght of the rectangle : ");
  String? input2 = stdin.readLineSync();
  double? w =double.tryParse(input2 ?? '');
  rect.width =w!;

  print("radius =${circle.measure}");
  print("area = ${circle.area}");

  print("length : ${rect.measure1} \nwidth : ${rect.measure2}");
  print("area : ${rect.area}");
}