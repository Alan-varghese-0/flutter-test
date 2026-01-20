import 'dart:io';

void main(List<String> args) {
  int? choice;
  Map<String,dynamic> userMap = {};
  do {
    print("1. Add User");
    print("2. View Users");
    print("3. Update User");
    print("4. Delete User");
    print("5. Exit");
    stdout.write("Enter your choice: ");
    
    choice = int.tryParse(stdin.readLineSync()!);
    
    switch (choice) {
      case 1:
        stdout.write("Enter user name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter user age: ");
        var value = stdin.readLineSync()!;
        userMap[name] = value;
        print("$name added successfully.");
        break;
      case 2:
        if (userMap.isEmpty) {
          print("No users found.");
        } else {
          print("Users:");
          userMap.forEach((key, value) {
            print("$key: $value");
          });
        }
        break;
      case 3:
        stdout.write("Enter user name to update: ");
        String updateName = stdin.readLineSync()!;
        if (userMap.containsKey(updateName)) {
          stdout.write("Enter new age for $updateName: ");
          int newAge = int.parse(stdin.readLineSync()!);
          userMap[updateName] = newAge;
          print("$updateName updated successfully.");
        } else {
          print("$updateName not found.");
        }
        break;
      case 4:
        stdout.write("Enter user name to delete: ");
        String deleteName = stdin.readLineSync()!;
        if (userMap.remove(deleteName) != null) {
          print("$deleteName deleted successfully.");
        } else {
          print("$deleteName not found.");
        }
        break;
      case 5:
        print("Exiting...");
        break;
      default:
        print("Invalid choice. Please try again.");
    }
  } while (choice != 5);
}