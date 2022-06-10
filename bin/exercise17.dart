//Time for some fake graphics! Let’s say we want to draw game boards that look like this:
//
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// This one is 3x3 (like in tic tac toe).
//
// Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.

import 'dart:io';

void main()
{
  stdout.write("enter square size: ");
  int userChosen = int.parse(stdin.readLineSync()!);
  print("Here is a $userChosen by $userChosen board\n");
  drawBoard(userChosen);
}

void drawBoard(int num)
{
  String row = "---";
  String colLines  ="|  ";

  for (int i =0; i<num;i++)
    {
      print(row * (num));
      print(colLines*(num+1));

    }
 print("${row * num}\n");

}