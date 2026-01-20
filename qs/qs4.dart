import 'dart:io';


class Student{
  int? id;
  String? name;
  String? address;
  int? std;

  Student(this.id,this.name,[this.address,this.std]);
 
  void details(){
    stdout.write("enter the id : ");
     this.id = int.tryParse(stdin.readLineSync()!);

    stdout.write("enter the name : ");
     this.name = stdin.readLineSync();

    stdout.write("enter the address : ");
     this.address = stdin.readLineSync();

    stdout.write("enter theh class : ");
    this.std = int.tryParse(stdin.readLineSync()!);
  }
   void display(){
    print("the student $name has an id number $id , address is $address and in $std class");
  }
}
void main(List<String> args) {
  int? id;
  String? name;
  Student student =Student(id, name);
  student.details();
  student.display();
}