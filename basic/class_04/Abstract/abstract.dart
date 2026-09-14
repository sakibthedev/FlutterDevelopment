abstract class Animal {
  void eat() {}
  void makeSound() {}
}

class Dog extends Animal {
  @override
  void eat() {
    print("Dog Is eating");
  }

  @override
  void makeSound() {
    print("Woof");
  }
}

void main() {
  // final animal = Animal();

  final dog1 = new Dog();
  dog1.makeSound();
  dog1.eat();
}
