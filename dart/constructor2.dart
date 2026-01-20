class Student{
  String? name;
  int? rollno;
  int? mark;

  // Student(String? name2,int? rollno2,int? mark2){
  //   name = name2;
  //   rollno = rollno2;
  //   mark = mark2;
  // }
  Student(this.name,this.rollno,this.mark);

  void display(){
    print(" the students name $name");
    print(" the students rollnumber $rollno ");
    print(" the students mark $mark");
  }
}
void main(List<String> args) {
  Student student =Student("alan",00075,59);
  student.display();
}