//Ask the user for a string and print out whether this string is a palindrome or not.
//
// A palindrome is a string that reads the same forwards and backwards.


import 'dart:io';

void main() {
  stdout.write("write a word");
  String?  a = stdin.readLineSync()!.toLowerCase();
  String revInput = a.split('').reversed.join('');
  a == revInput
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}