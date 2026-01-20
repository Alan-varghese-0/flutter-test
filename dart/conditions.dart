import 'dart:io';

void main(List<String> args) {
  // int a = 23;
  // if (a%2 ==0 ){
  //   print("the number is even");
  // } else {
  //   print("the number is odd");
  // }
  stdout.write("enter a number: ");
  int? a = int.parse(stdin.readLineSync()!);
  if(a%2 ==0){
    print("the number i s even");
  }
  else{
    print("object is odd");
  }
}