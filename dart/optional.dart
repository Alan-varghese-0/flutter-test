void sum (String name ,{ required int age ,int? a ,int? b }){
  if(a==null){
    a  = 0;
  }
  if(b == null){
    b = 0;
  }
  print(a+b);
}

void main(List<String> args) {
  int a = 10;
  int b = 20;
  sum("alan", age: 20);
}