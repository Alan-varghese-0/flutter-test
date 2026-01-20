class Laptop {
  String? brand;
  int? price;
  Laptop({String? brand , int? price}){
    this.brand = brand;
    this.price = price;
    print("there is a constructor ");
  }
  void display(){
    print("laptop brand = $brand");
    print("laptop price is = $price");
  }
}
void main(List<String> args) {
  Laptop laptop =Laptop( brand: "hp" , price: 5000 );
  laptop.display();
}