class laptop{
  String? name;
  String? colour;
  laptop(this.name ,this.colour){
    print("the laptop info");
    print("the $name laptop that comes with the colour $colour");

  }
}

class Hp extends  laptop{
  Hp( String name , String colour) :super(name , colour){
    print("hp specification");
  }
}
void main(List<String> args) {
  Hp hp =Hp("HP chromebook ", "black");
}