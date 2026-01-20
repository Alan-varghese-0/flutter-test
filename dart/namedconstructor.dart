class Student {
  String? name;
  int? mark;
  int? rollno;
 Student(this.name, this.mark ,this.rollno){
  print("the first constructor");
 }
 Student.pass(this.name , this.mark ,this.rollno){
  print("\n the secound constructor");
 }
 void display(){
  print("the name of the student is $name");
  print("mark = $mark");
  print("student roll number =$rollno");
 }

}

void main(List<String> args) {
  Student student = Student("alan", 15, 0085);
  student.display();
  Student student1 =  Student.pass("nevin", 35, 0098);
  student1.display();
}