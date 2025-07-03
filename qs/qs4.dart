import 'dart:io';

class Student{
  int? id;
  String? name;
  String? address;
  int? std;

  Student(this.id,this.name,[this.address,this.std]);
 
  void details(){
    stdout.write("enter the address : ");
     this.address = stdin.readLineSync();

    stdout.write("enter theh class : ");
    String? input1 = stdin.readLineSync()!;
    std = int.parse(input1);
  }
   void display(){
    print("the student $name has an id number $id , address is $address and in $std class");
  }
}
void main(List<String> args) {
  Student student =Student(004, "alan",);
  student.details();
  student.display();
}