abstract class Total {
  double? total();
}
abstract class Average {
  double? average();
}

class Student implements Total,Average {
  double? mark1,mark2,mark3;
  Student(this.mark1,this.mark2,this.mark3);


  @override
  double? average() {
    // TODO: implement average
    return total()! / 3;
  }

  @override
  double? total() {
    // TODO: implement total
    return mark1! + mark2! +mark3!;
  }
}
void main(List<String> args) {
  Student stu =Student(10.5, 50.6, 45.9);
  print("the students total score is ${stu.total()}");
  print("the students average score is ${stu.average()}");
}