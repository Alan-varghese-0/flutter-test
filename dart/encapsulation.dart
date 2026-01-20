class Person {
  int? _age;
  String? _name;
  
  int? getAge(){
    return _age;
  }

  String? getName(){
    return _name;
  }

  void setAge(int? newAge)=> this._age =newAge;

  void setName(String? newName)=> this._name =newName;

  void display(){
    print("$_name is $_age years old");
  }
}