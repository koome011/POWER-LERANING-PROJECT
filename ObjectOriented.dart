import 'dart:io';

// Interface definition
abstract class SoundMaker {
  void makeSound();
}

// Animal base class
class Animal {
  void move() {
    print('Animal moves');
  }
}

// Dog class that inherits from Animal and implements SoundMaker interface
class Dog extends Animal implements SoundMaker {
  @override
  void move() {
    print('Dog walks');
  }

  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Class initialized with data from a file
class FileData {
  late String data;

  FileData(String filePath) {
    data = File(filePath).readAsStringSync();
  }

  void printData() {
    print('Data from file: $data');
  }
}

// Method demonstrating the use of a loop
void loopExample() {
  for (int i = 0; i < 5; i++) {
    print('Iteration $i');
  }
}

void main() {
  // Create an instance of Dog
  Dog dog = Dog();
  dog.move(); // Output: Dog walks
  dog.makeSound(); // Output: Dog barks

  // Create an instance initialized with data from a file
  FileData fileData = FileData('data.txt');
  fileData.printData();

  // Demonstrate the use of a loop
  loopExample();
}
