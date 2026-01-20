import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a day number (1-7): ");
  var day = int.parse(stdin.readLineSync()!);
  switch (day) {
    case 1:
      print("monday is selected");
      break;
    case 2:
      print("tuesday is selected");
      break;
    case 3:
      print("wednesday is selected");
      break;
    case 4:
      print("thursday is selected");
      break;
    case 5:
      print("friday is selected");
      break;
    case 6:
      print("saturday is selected");
      break;
    case 7:
      print("sunday is selected");
      break;
    default:
      print("Invalid day number. Please enter a number between 1 and 7.");
  }
}
