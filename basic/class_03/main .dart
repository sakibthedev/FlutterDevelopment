void main() {
  String std1 = "Tonmoy";
  String std2 = "Nafiz";

  List<String> students = ["Rahim", "Tonmoy", "Nafiz", "Hasan", "Tonmoy"];
  print(students);
  print(students[1]);
  // index starts at 0
  /*
    Rahim -> 0,
    Tonmoy -> 1,
    Nafiz -> 2,
    Hasan -> 3
  */

  // Find The Size of List
  print(students.length);

  // Add Value on List
  print("=== Before Adding ===");
  print(students);

  print("=== After Adding ===");
  students.add("Robiul");
  print(students);

  // Remove Value from List
  print("=== Before Removing ===");
  print(students);
  print("=== After removing ===");
  students.remove("Nafiz");
  print(students);

  // Get value using for loop (Nafiz Removed)
  for (int i = 0; i < students.length; i++) {
    print(students[i]);
  }

  for (String student in students) {
    print(student);
  }

  // Set - No same value
  Set<String> names = {"Tonmoy", "Nafiz", "Robiul", "Tonmoy"};
  print(names);

  // Maps -> key, value
  Map<String, dynamic> student = {
    "name": "Tonmoy",
    "age": 23,
    "dept": "CSE",
    "isStudying": false,
  };
  print(student["name"]);
  print(student["age"]);
  student["age"] = "24";
  print(student["age"]);
  student["uni"] = "AIUB";
  print(student);
  student.remove("age");
  // After Remove
  print(student);
  // for loop

  for (var value in student.entries) {
    print("${value.key}: ${value.value}");
  }
}
