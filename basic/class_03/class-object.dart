// ignore_for_file: public_member_api_docs, sort_constructors_first
class Student {
  String name; // Attributes
  int age;
  Student({required this.name, required this.age});

  void eat() {
    // Methods
    print("$name is eating");
  }

  void throwFireball() {
    print("$name threw fireball");
  }
}

void main() {
  Student std1 = Student(name: 'Tonmoy', age: 23);
  Student std2 = Student(name: "Nafiz", age: 17);
  Student std3 = Student(name: "Robiul", age: 30);

  // std1.name = "Tonm";
  // std1.age = 23;
  // std2.name = "Nafiz";
  // std2.age = 18;

  print(std1.name);
  print(std2.name);
  std1.eat();

  print(std3.name);
}
