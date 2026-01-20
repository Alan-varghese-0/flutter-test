import 'dart:io';

void main(List<String> args) {
  stdout.write("enter first number: ");
  String? input1 = stdin.readLineSync();
  int? num1 = int.tryParse(input1 ?? '');
  if (num1 == null) {
    print("invalid input for first number");
    return;
  }
  stdout.write("enter second number: ");
  String? input2 = stdin.readLineSync();
  int? num2 = int.tryParse(input2 ?? '');
  if (num2 == null) {
    print("invalid input for second number");
    return;
  }
  stdout.write("enter operation (+, -, *, /): ");
  String? result = stdin.readLineSync();
  switch (result) {
    case '+':
      print("the sum is ${num1 + num2}");
      break;
    case '-':
      print("the difference is ${num1 - num2}");
      break;
    case '*':
      print("the product is ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("the quotient is ${num1 / num2}");
      } else {
        print("division by zero is not allowed");
      }
      break;
    default:
      print("invalid operation");
  }
}
