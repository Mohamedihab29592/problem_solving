//Ask the user for a number and determine whether the number is prime or not.
//
// Do it using a function

import 'dart:io';

void main ()
{
  stdout.write(" enter a number to check prime or not ");
  int chosenNumber =int.parse(stdin.readLineSync()!);
  checkPrime(chosenNumber);
}

void checkPrime(int num)
{
  List<int> a = [
    for (var i =1 ; i<=num; i++)
      if(num % i==0) i
  ];

  a.length ==2
      ? print("number is prime")
      : print ("number is not prime ");
}