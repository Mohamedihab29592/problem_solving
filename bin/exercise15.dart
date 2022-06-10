//Write a password generator in Dart. Be creative with how you generate passwords - strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. The passwords should be random, generating a new password every time the user asks for a new password. Include your run-time code in a main method.
//
// Ask the user how strong they want their password to be. For weak passwords, pick a word or two from a list.



import 'dart:convert';
import 'dart:io';

import 'dart:math';

void main ()
{
  stdout.write("How strong a password do you want ? Weak, medium , strong,very strong\n");
  String choice = stdin.readLineSync()!.toLowerCase();

  passwordGenerator(choice);


}

void shuffleGenerator(int strength)
{
  final random = Random();
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  List charList = base64UrlEncode(intList).split('').toList();
// charList.shuffle();
  print(" \nyour password is:${charList.join()}\n");

}

void passwordGenerator (String choice)
{
  if (choice=="weak") {
    shuffleGenerator(5);
  }
  else if (choice == "medium")
    {
      shuffleGenerator(15);
    }
  else if (choice == "strong")
    {
      shuffleGenerator(25);
    }
  else if (choice == "very strong")
    {
      shuffleGenerator(255);
    }
  else {
    print("Incorrect choice please try again");


  }

}