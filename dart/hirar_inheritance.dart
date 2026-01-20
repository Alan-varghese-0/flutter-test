class Measure{
  double? parameter1;
  double? parameter2;
}
class Rectangle extends Measure{
  
  double? area(){
    return parameter1 !* parameter2 !;
  }
}
class Triangle extends Measure{
  double? area(){
    return 0.5 *parameter1! * parameter2!;
  }
}
void main(List<String> args) {
  Rectangle rect = Rectangle();
  rect.parameter1=10.0;
  rect.parameter2=20.0;
  print("the area of rectangle is ${rect.area()}");
  Triangle tri = Triangle();
  tri.parameter1=10.0;
  tri.parameter2=20.0;
  print("the area of rectangle is ${tri.area()}");
}