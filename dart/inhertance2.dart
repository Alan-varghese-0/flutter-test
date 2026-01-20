class car {
  String? name;
  int? model;

  car(this.name,this.model){
    // print("car model info");
  }
  void details(){
    print("$model model $name car");
  }
}
class delership extends car{
  String? seller;
  int? prince;
  delership(this.seller,this.prince,super.name,super.model){
    print("the dealer");
  }
  void display(){
    print("$seller can make a deal for $prince now");
  }
}
void main(List<String> args) {
  delership info =delership("nevin", 50000, "BMW", 2020);
  info.display();
  info.details();

}