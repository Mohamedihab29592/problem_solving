//For this exercise, we will keep track of when our friend’s birthdays are, and be able to find that information based on their name.
//
// Create a dictionary (in your file) of names and birthdays. When you run your program it should ask the user to enter a name, and return the birthday of that person back to them. The interaction should look something like this:
//
// >>> Welcome to the birthday dictionary. We know the birthdays of:
// Albert Einstein
// Benjamin Franklin
// Ada Lovelace
// >>> Who's birthday do you want to look up?
// Benjamin Franklin
// >>> Benjamin Franklin's birthday is 01/17/1706.

import 'dart:io';

void main()
{
  Map<String, Object> birthdays = {
    "Albert Einstein": "14/03/1879",
    "Benjamin Franklin": "17/01/1706",
    "Ada Lovlace": "10/12/1815",
  };

  print("\nHello there!. We know the birthdays of the following people: \n");

  birthdays.forEach((key, value)
  {
    print(key);
  });

  stdout.write("\nWho's birthday do you want to know? ");
  String choice = stdin.readLineSync()!;

  print("\n$choice's birthday is ${birthdays[choice]}\n");

}