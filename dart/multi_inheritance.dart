class Car {
  String? name;
  String? price;
}

class BNW extends Car {
  String? model;

  void display() {
    print("the car $name $model has a price reange upto $price");
  }
}

class Type extends BNW {
  String? colour;
  void display() {
    super.display();
    print("it also comes with the colour $colour");
  }
}

void main(List<String> args) {
  Type type = Type();
  type.name = "BMW";
  type.model = "b class";
  type.price = "205000";
  type.colour = "black and blue";
  type.display();
}
