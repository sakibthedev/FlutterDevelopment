// Abstract interface class
abstract interface class Animal {

  // These methods must be implemented
  void sound();
  void move();
}

// Dog implements Animal
class Dog implements Animal {

  // Dog provides its own sound
  @override
  void sound() {
    print("Dog says: Woof");
  }

  // Dog provides its own movement
  @override
  void move() {
    print("Dog is running");
  }
}

// Cat also implements Animal
class Cat implements Animal {

  // Cat has different behavior
  @override
  void sound() {
    print("Cat says: Meow");
  }

  // Cat has different movement
  @override
  void move() {
    print("Cat is walking");
  }
}

void main() {


  // Polymorphism
  Animal animal1 = Dog();
  Animal animal2 = Cat();

  // Same method calls
  // but different behavior
  animal1.sound();
  animal1.move();

  animal2.sound();
  animal2.move();
}