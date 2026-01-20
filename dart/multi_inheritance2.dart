class Person {
  String? name;
  int? age;
  Person(this.name, this.age);
}

class Docter extends Person {
  List<String>? listofdegree;
  String? hospital;
  Docter(super.name, super.age, this.listofdegree, this.hospital);
  void display() {
    print("name = $name");
    print("age = $age");
    print("list of degree = $listofdegree");
    print("hospital name = $hospital");
  }
}

class Spelist extends Docter {
  String? specification;
  Spelist(
    super.name,
    super.age,
    super.listofdegree,
    super.hospital,
    this.specification,
  );
  void display() {
    super.display();
    print("specification = $specification");
  }
}

void main(List<String> args) {
  Spelist sp = Spelist("alan", 25, ["MBBS, MD"], "abc hospital", "neurology");
  sp.display();
}
