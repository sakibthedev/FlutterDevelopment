// Parent class
class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

// Child class
class Dog extends Animal {
  // Override the parent's sound() method
  @override
  void sound() {
    print("Dog says: Woof");
  }
}

// Another child class
class Cat extends Animal {
  // Override the parent's sound() method
  @override
  void sound() {
    print("Cat says: Meow");
  }
}

void main() {
  // We can store different animals in Animal variables
  Animal animal1 = Dog();
  Animal animal2 = Cat();

  // Same method name, different behavior
  animal1.sound(); // Dog says: Woof
  animal2.sound(); // Cat says: Meow
}