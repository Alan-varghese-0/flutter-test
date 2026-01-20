import 'encapsulation.dart';

void main(List<String> args) {
  Person person = Person();
  person.setAge(21);
  person.setName("nevin");
  person.getName();
  person.getAge();
  person.display();
}