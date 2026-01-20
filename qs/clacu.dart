import 'dart:io';

class Value{
  int? number1;
  int? number2;
  
 void numbers(){
  stdout.write("enter the first number : ");
  number1 = int.tryParse(stdin.readLineSync()!);

  stdout.write("enter the secound number : ");
  number2 = int.tryParse(stdin.readLineSync()!);
 }
}
class Option extends Value{
  String? kay;

  void choice(){
    stdout.write("please chose an operation (+,-,*,/) : ");
    kay = stdin.readLineSync();
  }
}

class Addition extends Option {
  void add(){
    print("the sum is : ${number1! + number2!}");
  }
}
class subtraction extends Addition {
  void sub(){
    print("the differents is : ${number1! - number2!}");
  }
}
class multiplication extends subtraction {
  void milti(){
    print("the product is : ${number1! * number2!}");
  }
}
class module extends multiplication {
  void mod(){
    if (number2 == 0!) {
      
    }
  }
}