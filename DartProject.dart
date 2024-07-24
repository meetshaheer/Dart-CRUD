import 'dart:io';

void main(List<String> args) {
  // Data List of Lists Where CRUD will Perform
  List Data = [
    ["SPR452", "Shaheer", 23, "MS", "Last Year"],
    ["FA20", "Ali", 25, "Undergrade", "8th"]
  ];

  // While Loop For Program Iteration
  String terminate = "N";
  while (terminate == 'N' || terminate == 'n') {
    int choice = menu();
    switch (choice) {
      //
      // Case 1 for Only View The Data
      case 1:
        view(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;

      // Case 2 for Add New Record in List
      case 2:
        add(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;

      // Case 3 for Delete the data
      // There are two Operations,
      // 1- Delete the whole list
      // 2- Delete a specific Record (Record Found by ID & then delete the whole row)
      case 3:
        delete(Data);
        print("Terminate? Y/N");
        terminate = stdin.readLineSync()!;
        break;

      // Case 4 to Update the List elements
      // There are 3 Operations
      // 1- Update the Age
      // 2- Update the Degree Status
      // 3- Update the Current Status

      // Operation performed by using ID search
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

// Menu FUnction
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

// Adding New Record Function
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

  // Add all 5 elements in List
  List<dynamic> addList = [id, name, age, degree, progress];
  myList.add(addList);
  print(addList);
  print("Record Saved");
}

// View Record Function

// There are 2 Operations
// 1- View the whole list
// 2- View a specifi record, found using ID
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

    // Record not found Message.
    if (!recordFound) {
      print("Record Not Found");
    }
  }

  print("\n\n\n");
}

// Delete Function. Also THere are two Operations.
// 1- Delete whole List
// 2- Delete a specific record, by using ID
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

    // Delete by ID
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

    // Not found Message
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
