import 'dart:io';

void main(List<String> args) {
  List Data = ["SPR452", "Shaheer", 23, "MS", "Last Year"];
}

void menu() async {
  print("Please Wait! Loading ........\n");
  await Future.delayed(Duration(seconds: 3));
  print("Press 1. For View");
  print("Press 2. For Add");
  print("Press 3. For Delete");
  print("Press 4. For Update");
  print("\n\n\n");
}

void add(List myList) {
  print("Enter Your Identity No");
  String id = stdin.readLineSync()!;
  print("````````````````````````````");

  print("Enter Your Good Name");
  String name = stdin.readLineSync()!;
  print("````````````````````````````");

  print("Enter Your Age");
  int age = int.parse(stdin.readLineSync()!);
  print("````````````````````````````");

  print("Enter Your Degree Status");
  String degree = stdin.readLineSync()!;
  print("````````````````````````````");

  print("Enter Your CurrentProgree");
  String progress = stdin.readLineSync()!;
  print("````````````````````````````");
  print("\n\n\n");

  myList.addAll([id, name, age, degree, progress]);
}

void view(List<dynamic> myList) async {
  print("Enter Your ID to Search");
  String id = stdin.readLineSync()!;

  for (var i = 0; i < myList.length; i++) {
    await Future.delayed(Duration(seconds: 0));

    if (id == [i][0]) {
      print(myList[i]);
    } else {
      print("No Record Founds");
    }
  }
  print("\n\n\n");
}
