import 'dart:io';

void main(List<String> args) {
  stdout.write("please enter a name");
  String? name = stdin.readLineSync();
  print("ypur name is $name");
}
