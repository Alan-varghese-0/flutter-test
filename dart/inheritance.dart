class person {
  String? name;
  int? age;
 void display(){
  print("name $name");
  print("age $age");
 }
}

class Student extends person{
String? schoolname;
int? rollno;
void studentdetails(){
  print("rollnumber $rollno");
  print("school name $schoolname");

}
}
void main(List<String> args) {
  Student student =Student();
  student.name="alan";
  student.age = 23;
  student.schoolname ="abc school";
  student.rollno =0098;
  student.studentdetails();
  student.display();
}