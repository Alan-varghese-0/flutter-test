Future getdata() async{
  var strname = await middlefunction();
  print(strname);
}
Future<String> middlefunction(){
  return Future.delayed(Duration(seconds: 2),()=>"running");
}
void main(List<String> args)async {
  print("strat");
  await getdata();
  print("end");
}