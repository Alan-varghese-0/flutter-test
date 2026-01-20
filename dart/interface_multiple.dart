abstract class Area {
  void area();
}
abstract class Parameter {
  void parameter();
}

class Rectangle implements Area,Parameter {
  int? lenght,breadth;
  Rectangle(this.lenght,this.breadth);
  
  @override
  void area() {
    print("the area of the rectangle is = ${lenght!* breadth!}");
  }
  
  @override
  void parameter() {
    print("the parameter of the rectangle is= ${2*(lenght! +breadth!)}");
  }
}

void main(List<String> args) {
  Rectangle rect =Rectangle(10, 60);
  rect.area();
  rect.parameter();
}