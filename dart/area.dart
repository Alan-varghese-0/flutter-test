class Rectangle{
  double? length;
  double? width;

  double? area(){
    return length! * width!;
  }

}

void main(List<String> args) {
  Rectangle rect = Rectangle();
  rect.length = 5.6;
  rect.width = 9.4;
  print("the area of the rectangle is ${rect.area()}");
}