//Implement a function that takes as input three variables, and returns the largest of the three. Do this without using the Dart max() function!
//
// The goal of this exercise is to think about some internals that Dart normally takes care of for us. All you need is some variables and if statements!

import 'dart:io';

void main()
{
  int x ;
  int y ;
  int z;
  int max = 0;
print("please enter three number\n");
x= int.parse(stdin.readLineSync()!);
y= int.parse(stdin.readLineSync()!);
z= int.parse(stdin.readLineSync()!);
  if (x>y)
    {
      max=x;
    }
  else
    {
      max=y;
    }
  if(z>max)
    {
      max = z;
    }
  print("the max number is :$max");
  // Another method, which will work with any length
  int a = 32;
  int b = 100;
  int c = 64;
  List l = [a, b, c, ];
  l.sort();
  print(l.last);


}