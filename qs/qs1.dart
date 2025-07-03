import 'dart:io';

class Value {
  int? num1;
  int? num2;

  void number() {
    stdout.write("Enter the first number: ");
    String? input1 = stdin.readLineSync();
    num1 = int.tryParse(input1 ?? '');

    stdout.write("Enter the second number: ");
    String? input2 = stdin.readLineSync();
    num2 = int.tryParse(input2 ?? '');
  }
}

class Option extends Value {
  String? key;

  void calcu() {
    stdout.write("Enter your choice (+, -, *, /): ");
    key = stdin.readLineSync();

    switch (key) {
      case '+':
        print("The sum is ${num1! + num2!}");
        break;
      case '-':
        print("The difference is ${num1! - num2!}");
        break;
      case '*':
        print("The product is ${num1! * num2!}");
        break;
      case '/':
        if (num2 != 0) {
          print("The reminder is ${num1! / num2!}");
        } else {
          print("invalid");
        }
        break;
      default:
        print("Invalid operation");
    }
  }
}

class Finel extends Option {
  void display() {
    super.calcu();
  }
}

void main(List<String> args) {
  Finel finel = Finel();
  finel.number();
  finel.calcu();
}