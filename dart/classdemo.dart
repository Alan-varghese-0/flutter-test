class Animal {
  String? name;
  int? numberoflegs;
  int? lifespan;

  void display(){
    print(" name of animal is $name");
    print(" number of legs is $numberoflegs");
    print(" lifespan of animal is $lifespan");
  }
}

void main(List<String> args) {
  Animal animal = Animal();
  animal.name = "Dog";
  animal.numberoflegs = 4;
  animal.lifespan = 13;
  animal.display();
}