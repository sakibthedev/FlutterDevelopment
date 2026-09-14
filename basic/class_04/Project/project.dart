abstract class Shape {
  double calculateArea();

  void describe() {
    print("I'm a shape");
  }
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.1416 * radius * radius;
  }

  @override
  void describe() {
    print("I'm Circle");
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.height, this.width);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  void describe() {
    print("I'm a Rectangle");
  }
}

void main() {
  final circle = Circle(5);
  final rectangle = Rectangle(10, 20);

  double area = circle.calculateArea();
  print(rectangle.calculateArea());
  print(area);
}
