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
        delete(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;

      case 4:
        updatedList(Data);
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
  print("\n");
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

  print("Enter Your CurrentProgress");
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
    bool recordFound = false;
    for (var i = 0; i < myList.length; i++) {
      if (identity == myList[i][0]) {
        recordFound = true;
        print("Hurra! Your Record Found");
        print(myList[i]);
      }
    }

    if (!recordFound) {
      print("Record Not Found");
    }
  }

  print("\n\n\n");
}

void delete(List myList) {
  print("     Press 1 For Delete Whole List");
  print("     Press 2 For Delete a Specific Record");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    myList.clear();

    print(myList);
  } else if (choice == 2) {
    print("Enter Your ID to Delete");
    String identity = stdin.readLineSync()!;

    bool recordFound = false;
    for (var i = 0; i < myList.length; i++) {
      if (identity == myList[i][0]) {
        recordFound = true;
        print("Hurra! Your Record Found");
        myList.removeWhere((element) => element[0] == identity);
        print("Updated List is Here");
        print(myList);
      }
    }

    if (!recordFound) {
      print("Sorry! Record Not Found");
    }
  }
}

void updatedList(List myList) {
  print("  Enter Your ID");
  String id = stdin.readLineSync()!;

  print("     Press 1 For Update Age");
  print("     Press 2 For Update Degree Status");
  print("     Press 3 For Update Current Progress");

  int choice = int.parse(stdin.readLineSync()!);
  bool recordFound = false;
  switch (choice) {
    case 1:
      for (var i = 0; i < myList.length; i++) {
        if (id == myList[i][0]) {
          recordFound = true;
          print("Enter Updated Age");
          int age = int.parse(stdin.readLineSync()!);
          myList[i][2] = age;
          print("```````````````````Updated List```````````````````");
          print(myList[i]);
        }
      }

      if (!recordFound) {
        print("Record Not FOund");
      }
      break;

    case 2:
      for (var i = 0; i < myList.length; i++) {
        if (id == myList[i][0]) {
          recordFound = true;
          print("Enter Updated Degree Status");
          String degreeStatus = stdin.readLineSync()!;
          myList[i][3] = degreeStatus;
          print("```````````````````Updated List```````````````````");
          print(myList[i]);
        }
      }

      if (!recordFound) {
        print("Record Not FOund");
      }
      break;

    case 3:
      for (var i = 0; i < myList.length; i++) {
        if (id == myList[i][0]) {
          recordFound = true;
          print("Enter Updated Corrent Progress");
          String degreeStatus = stdin.readLineSync()!;
          myList[i][3] = degreeStatus;
          print("```````````````````Updated List```````````````````");
          print(myList[i]);
        }
      }

      if (!recordFound) {
        print("Record Not FOund");
      }
      break;
    default:
      print("Invalid Input");
  }
}
