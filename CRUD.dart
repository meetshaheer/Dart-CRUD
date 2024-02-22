import 'dart:io';

void main(List<String> args) {
  List Data = [
    ["SPR452", "Shaheer", 23, "MS", "Last Year"],
    ["FA20", "Ali", 25, "Undergrade", "8th"]
  ];
  String terminate = "N";
  while (terminate == 'N') {
    int choice = menu();
    switch (choice) {
      case 1:
        view(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;

      case 2:
        add(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;

      case 3:
        add(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;

      case 4:
        add(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;
      default:
        print("Enter Valid Menu Number");
    }
  }
}

int menu() {
  print("Please Wait! Loading ........\n");

  print("Press 1. For View");
  print("Press 2. For Add");
  print("Press 3. For Delete");
  print("Press 4. For Update");
  int type = int.parse(stdin.readLineSync()!);
  print("\n\n\n");
  return type;
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

  List<dynamic> addList = [id, name, age, degree, progress];
  myList.add(addList);
  print(addList);
  print("Record Saved");
}

void view(List myList) {
  print("     Press 1 For View Whole List");
  print("     Press 2 For View Specific Record");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print(myList);
  } else if (choice == 2) {
    print("Enter Your ID to Search");
    String identity = stdin.readLineSync()!;

    print("object");
    for (var i = 0; i < myList.length; i++) {
      if (identity == [i][0]) {
        print("Hurra! Your Record Found");
        print(myList[i]);
      } else {
        print("Sorry Record not found");
      }
    }
  }

  print("\n\n\n");
}
