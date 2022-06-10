//Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. Take this opportunity to think about how you can use functions.
//
// Make sure to ask the user to enter the number of numbers in the sequence to generate.



import 'dart:io';

void main()
{
  stdout.write("How many Fibonacci numbers do you want? ");
  int chosenNumber = int.parse(stdin.readLineSync()!);

  List<int> result = fibonacciNumbers(chosenNumber);
  print(result);
}
List<int> fibonacciNumbers (int chosenNumber)
{
  List<int>fiblist=[0,1];

  for (var i=0; i<chosenNumber; i++)
    {
      fiblist.add(fiblist[i]+fiblist[i+1]);
    }
  return fiblist;
}

