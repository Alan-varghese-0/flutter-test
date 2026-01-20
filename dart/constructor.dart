class Student{
  String? name;
  int? age ;
  var grade;
  String? schoolname;

  Student(){
    print("the constructor is being called");
    schoolname ="abc school";
  }
  void display(){
    print("student name = $name");
    print("student age = $age");
     print("student  grade = $grade");

  }
}

void main(List<String> args) {
  Student student =Student();
  student.schoolname;
  student.name = "alan";
  student.age = 15;
  student.grade ="A+";
  student.display();
}