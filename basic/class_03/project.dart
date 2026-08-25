/*
  Student Mangement System
  features:
    1. Add Student
    2. Show all Stuednt
    4. Remove Student
    5. Avg mark
*/

import 'dart:io';

List<Map<String, dynamic>> students = [];

void addStudent() {
  print("Enter your Name: ");
  String name = stdin.readLineSync()!; // User input in dart
  print("Enter your ID: ");
  int id = int.parse(stdin.readLineSync()!);
  print("Enter Marks: ");
  double marks = double.parse(stdin.readLineSync()!);

  students.add({"id": id, "name": name, "marks": marks});
  print("Student added");
}

void showAllStudents() {
  if (students.isEmpty) {
    print("No Student");
    return;
  }

  for (var student in students) {
    print("Id: ${student['id']} - ${student['name']} - ${student['marks']}");
  }
}

void calAvg() {
  if (students.isEmpty) {
    print("No Student");
    return;
  }

  double totalMarks = 0;

  for (var student in students) {
    totalMarks += student["marks"];
  }

  double avg = totalMarks / students.length;

  print("AVG Mark: $avg");
}

void main() {
  bool isRuning = true;
  while (isRuning) {
    print("What you want to do: ");
    print("1. Add student");
    print("2. Show all Students");
    print("3. Cal Avg");
    print("4. Exit");
    print("Enter your Choice: ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case "1":
        addStudent();
        break;
      case "2":
        showAllStudents();
        break;
      case "3":
        calAvg();
        break;
      case "4":
        isRuning = false;
        print("Thank you");
        break;
      default:
        print("Invalid choice. Try again");
    }
  }
}
