/*
Problem of Inheritence
*/

class Animal {
  void walk() {
    print("Walking");
  }

  void fly() {
    print("Flying");
  }
}

class Dog extends Animal {}

void main() {
  // final animal = Animal(); // Animal Can't a be object it's a super class
  final dog = Dog();

  dog.fly();

  // animal.fly();
}
