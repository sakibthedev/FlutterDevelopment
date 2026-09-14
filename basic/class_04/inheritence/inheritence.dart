class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print("$name is Eating");
  }

  void makeSound() {
    print("Some Sound");
  }
}

class Dog extends Animal {
  Dog(super.name);

  void bark() {
    print("$name is barking");
  }

  @override
  void makeSound() {
    print("Woof");
  }
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void makeSound() {
    print("Mewo");
  }
}

void main() {
  final dog1 = Dog("Tom");
  final dog2 = Dog("Chop");
  final cat1 = Cat("alsda");

  dog1.eat(); // eat from Superclass/Parent Class
  dog1.bark();
  dog1.makeSound();

  dog2.name = "POP";
  dog2.eat();
  dog2.bark();

  cat1.eat();
  cat1.makeSound();
}
