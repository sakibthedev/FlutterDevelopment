Future<String> getStudent() async {
  print("Getting student...");

  await Future.delayed(Duration(seconds: 2));

  return "Sakib";
}

Future<String> getCourses() async {
  print("Getting courses...");

  await Future.delayed(Duration(seconds: 2));

  return "CSE Courses";
}

Future<void> main() async {
  try {
    // Start both operations
    final Future<String> studentFuture = getStudent();
    final Future<String> coursesFuture = getCourses();

    // Wait for the student result
    final String student = await studentFuture;

    // Wait for the courses result
    final String courses = await coursesFuture;

    print(student);
    print(courses);
  } catch (e) {
    // Handle any error
    print("Error: $e");
  } finally {
    // This always runs
    print("Program finished");
  }
}