import 'dart:io';

void main(List<String> args) {
  List Data = ["Shaheer", 23, "MS", "Last Year"];
}

void menu() async {
  print("Please Wait! Loading ........\n");
  await Future.delayed(Duration(seconds: 3));
  print("Press 1. For View");
  print("Press 2. For Add");
  print("Press 3. For Delete");
  print("Press 4. For Update");
}

void add(List myList) {
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

  myList.addAll([name, age, degree, progress]);
}
