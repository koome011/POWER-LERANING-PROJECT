// Define the Student class
class Student {
  // Fields for name, age, and grade level
  String name;
  int age;
  String gradeLevel;

  // Constructor to initialize the fields
  Student(this.name, this.age, this.gradeLevel);

  // Method to print the student's information
  void printInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Define the Teacher class
class Teacher {
  // Fields for name, age, and subject
  String name;
  int age;
  String subject;

  // Constructor to initialize the fields
  Teacher(this.name, this.age, this.subject);

  // Method to print the teacher's information
  void printInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Define the Manager class
class SchoolManager {
  // Method to create instances of Student and Teacher and print their information
  void displayInfo() {
    // Create a student object
    Student student = Student('Alice', 16, '10th Grade');
    // Create a teacher object
    Teacher teacher = Teacher('Mr. Smith', 45, 'Mathematics');

    // Print the information of the student and the teacher
    student.printInfo();
    teacher.printInfo();
  }
}

// Main function to run the program
void main() {
  // Create an instance of SchoolManager
  SchoolManager manager = SchoolManager();
  // Call the method to display information
  manager.displayInfo();
}
