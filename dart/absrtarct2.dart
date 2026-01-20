abstract class Shape{
  double? dim1;
  double? dim2;
  Shape(this.dim1,this.dim2);
  void area();
}

class Triangle extends Shape{
  Triangle(double? dim1 , double? dim2) :super(dim1,dim2);
  @override
  void area(){
    print("the area of the triangle is = ${0.5* dim1! * dim2!}");
  }
}

class Rectangle extends Shape{
  Rectangle(double? dim1,double? dim2):super(dim1,dim2);
  @override
  void area(){
    print("the area of the rectangle is = ${dim1! * dim2!}");
  }
}
void main(List<String> args) {
  Triangle tri =Triangle(10.5, 20.8);
  tri.area();

  Rectangle rect =Rectangle(10.5, 20.8);
  rect.area();
}