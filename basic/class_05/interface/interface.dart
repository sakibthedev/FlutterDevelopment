// This class is being used as an interface
class Animal {

  void sound() {
    print("Animal sound");
  }

  void eat() {
    print("Animal is eating");
  }
}

// Dog implements Animal
class Dog implements Animal {

  // Dog must implement sound()
  @override
  void sound() {
    print("Dog says: Woof");
  }

  // Dog must ALSO implement eat()
  @override
  void eat() {
    print("Dog is eating");
  }
}

void main() {

  Dog dog = Dog();

  dog.sound();
  dog.eat();
}