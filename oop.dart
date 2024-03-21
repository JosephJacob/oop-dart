import 'dart:io';

// Define a class representing different animals
class Animal {
  void makeSound() {} // This method will be overridden by subclasses
}

// Define a class representing a Dog, inheriting from Animal
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Define a class representing shapes
class Shape {
  void draw() {
    print('Drawing shape');
  }
}

// Define a class representing a Circle, inheriting from Shape
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing circle');
  }
}

// Define a class representing a Person
class Person {
  late String name;

  // Constructor to initialize a Person with a name
  Person(this.name);

  // Factory constructor to create a Person from a file
  factory Person.fromFile(String filename) {
    final file = File(filename);
    final name = file.readAsStringSync().trim();
    return Person(name);
  }
}

void main() {
  // Create a Dog instance and make it bark
  var dog = Dog();
  dog.makeSound(); // Output: Woof!

  // Create a Circle instance and draw it
  var circle = Circle();
  circle.draw(); // Output: Drawing circle

  // Create a Person instance from a file and greet them
  var person = Person.fromFile('data.txt');
  print('Hello, ${person.name}!');

  // Use a loop to print numbers from 0 to 4
  for (var i = 0; i < 5; i++) {
    print('Iteration $i');
  }
}
