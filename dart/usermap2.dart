import 'dart:io';

void main(List<String> args) {
  Map<String,dynamic> userMap = {};
  for (;;) {
  print("enter the key and value");
  String key = stdin.readLineSync()!;
  String value = stdin.readLineSync()!;
  userMap[key] = value;
  print("do you want to continue? (y/n)");
  String? choice = stdin.readLineSync();
  if(choice== 'n' || choice == 'N') {
    break;
  }
}
print("do ypu want to view the map? (y/n)");
  String? viewChoice = stdin.readLineSync();
  if (viewChoice == 'y' || viewChoice == 'Y') {
    print("userMap: $userMap");
  }
}