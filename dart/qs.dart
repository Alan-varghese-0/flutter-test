class laptop {
  String? name;
  int? id;
  var ram;
 void display(){
  print("barand name is $name");
  print("laptop id : $id");
  print("specification of ram is $ram");
 }

}
void main(List<String> args) {
  laptop lap = laptop();
  lap.name = "hp";
  lap.id =986316588899;
  lap.ram ="8 GB";
  lap.display();
}