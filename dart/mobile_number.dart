import 'dart:io';

class Phone {
  int? number;

}
void main(List<String> args) {
   try {
      stdout.write("enter your number");
      String? input = stdin.readLineSync();
      int? number = int.tryParse(input?? '');
      if (input!.length ==10) {
        print("insert sussfull");
      }
      throw Exception("not wihin the limit");
    } catch (e) {
      print("$e");
    }
  
}