void main() {
  // Integer (int) data type
  // Used for whole numbers without decimal points
  int age = 25;
  print("Age: $age");

  // Double data type
  // Used for numbers with decimal points
  double price = 9.99;
  print("Price: $price");

  // String data type
  // Used for text values
  String name = "John Doe";
  print("Name: $name");

  // List data type
  // Used to store multiple values of the same type in an ordered sequence
  List<String> fruits = ["Apple", "Banana", "Orange"];
  print("Fruits: $fruits");

  // Map data type
  // Used to store key-value pairs, where each key is unique
  Map<String, int> scores = {
    "Alice": 90,
    "Bob": 85,
    "Charlie": 95,
  };
  print("Scores: $scores");

  // Combining data types
  String message = "Hello, $name! You are $age years old.";
  print(message);

  // Updating values
  age = 26;
  price *= 1.1;
  fruits.add("Grape");
  scores["Alice"] = 92;

  // Printing updated values
  print("Updated age: $age");
  print("Updated price: $price");
  print("Updated fruits: $fruits");
  print("Updated scores: $scores");
}
