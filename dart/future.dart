Future <void> details()async{
  print("the first prgram in dart");
  await Future.delayed(Duration(seconds: 3));
  print("the end of the progtram");
}

void main(List<String> args) {
  details();
  Future.delayed(Duration(seconds: 2),()=> print("the second program in dart"));
}