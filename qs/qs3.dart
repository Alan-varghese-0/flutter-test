import 'dart:io';
class Constr{
  String? name;
  int? age;

Constr.named(this.name,this.age){
}
}
void main(List<String> args) {
 stdout.write("enter the name : ");
 String? name= stdin.readLineSync();

 stdout.write("enter the age : ");
 String? input = stdin.readLineSync();
 int? age = int.tryParse(input ?? '');

  Constr con =Constr.named(name, age);
  print("${con.name} is ${con.age} years old");

}