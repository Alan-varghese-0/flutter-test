void main(List<String> args) {
  details();
  sum(10 , 30);
  String strname = name();
  print(strname);
  int a = mult(10 ,30);
  print(a);

}

void details(){
  print("this is details");
}
void sum( int a , int b){
  print(a+b);
}
String name(){
  return "alan";
}
int mult(int a, int b){
  return a * b;
}