// function to add x and y
addTwo(x, y) {
  return (x + y);
}

// function to subtract x and y
subtractTwo(x, y) {
  return (x - y);
}

// function to multiply x and y
multiplyTwo(x, y) {
  return (x * y);
}

// function to divide x and y
divideTwo(x, y) {
  return (x / y);
}

// function to find the length of the string name
stringLength(name){
  return name.length;
}

// function to get the first element of the list
getFirstElement(List list) {
  // Return the first element of the list
  return list[0];
}
void main() {
  int x = 10;
  int y = 34;

  print(addTwo(x, y));
  print(subtractTwo(y, x));
  print(multiplyTwo(x, y));
  print(divideTwo(x, y));

  var name = ("Koome");
  print(stringLength(name));

  List myList = [1, 2, 3, 4, 5];
  var firstElement = getFirstElement(myList);
  print(firstElement); // Output: 1
}