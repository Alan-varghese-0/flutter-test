import 'dart:io';

void main(List<String> args) {
  print("Enter three numbers");
  stdout.write("Enter first number: ");
  int? num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  int? num2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter third number: ");
  int? num3 = int.parse(stdin.readLineSync()!);
  if (num1 > num2 && num1 > num3) {
    print("a isgreater : $num1");
  }
  if (num2 > num1 && num2 > num3) {
    print("b is greater : $num2");
  }
  if (num3 > num1 && num3 > num2) {
    print("c is greater : $num3");
  }
}
