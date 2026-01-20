import 'dart:io';

class Rectangle {
  double? length;
  double? width;

  double calculateArea() {
    return length! * width!;
  }

  void getvalue() {
    try {
      stdout.write("enter the length of rectangle: ");
      length = double.parse(stdin.readLineSync()!);

      stdout.write("enter the widtgh of the rectangle: ");
      width = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Invalid input, please enter a valid number.");
    }
  }
}

void main(List<String> args) {
  Rectangle rect = Rectangle();
  rect.getvalue();
  if (rect.length != null && rect.width != null) {
    print("The area of the rectangle is ${rect.calculateArea()}");
  } }
