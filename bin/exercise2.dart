//Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.


import 'dart:io';

void main() {
  stdout.write("Input the number please");
  int number =int.parse(stdin.readLineSync()!);
  if (number%2==0) {
    print (" the number is even");
  }
  else {
    print("the number is odd");
  }
}