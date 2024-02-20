import 'dart:math';

void main(List<String> args) {
  Triangle myTriangle = Triangle(0, 0, 3, 4, 6, 0);
  myTriangle.display();
}

class Triangle {
  double x1, y1;
  double x2, y2;
  double x3, y3;

  Triangle(this.x1, this.y1, this.x2, this.y2, this.x3, this.y3);
  
  double calculateDistance(double x1, double y1, double x2, double y2) {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
  }

  double operator [](int index) {
    switch (index) {
      case 0:
        return calculateDistance(x1, y1, x2, y2);
      case 1:
        return calculateDistance(x2, y2, x3, y3);
      case 2:
        return calculateDistance(x3, y3, x1, y1);
      default:
        throw RangeError("Invalid index: $index");
    }
  }

  double calculatePerimeter() {
    return (this[0] + this[1] + this[2]) / 2;
  }

  double calculateArea() {
    double p = calculatePerimeter();
    return sqrt(p * (p - this[0]) * (p - this[1]) * (p - this[2]));
  }

  void display() {
    print("Vertex 1: ($x1, $y1)");
    print("Vertex 2: ($x2, $y2)");
    print("Vertex 3: ($x3, $y3)");
    print("First side: ${this[0]}");
    print("Second side: ${this[1]}");
    print("Third side: ${this[2]}");
    print("Perimeter: ${calculatePerimeter()}");
    print("Area: ${calculateArea()}");
  }
}