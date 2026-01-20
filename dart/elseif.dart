import 'dart:io';

void main(List<String> args) {
  stdout.write("enter a month number (1-12): ");
  int onmonth = int.parse(stdin.readLineSync()!);
  if (onmonth == 1) {
    print("January");
  } else if (onmonth == 2) {
    print("February");
  } else if (onmonth == 3) {
    print("March");
  } else if (onmonth == 4) {
    print("April");
  } else if (onmonth == 5) {
    print("May");
  } else if (onmonth == 6) {
    print("June");
  } else if (onmonth == 7) {
    print("July");
  } else if (onmonth == 8) {
    print("August");
  } else if (onmonth == 9) {
    print("September");
  } else if (onmonth == 10) {
    print("October");
  } else if (onmonth == 11) {
    print("November");
  } else if (onmonth == 12) {
    print("December");
  } else {
    print("Invalid month number.");
  }
}