//Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.
//
// Keep track of how many guesses the user has taken, and when the game ends, print this out.

import 'dart:io';
import 'dart:math';

void main() {

  print("type exit to end the game!!");
  guessingGame();
}

guessingGame()
{
  final random = Random();
  int randNumber = random.nextInt(100);
  int temp =0;
 while (true)
   {
     temp+=1;
     print("Please enter number from 0 to 100");
     String choseNumber = stdin.readLineSync()!;
//check input
     if (choseNumber.toLowerCase() == 'exit')
       {
         print("Bye");
         break;
       }
     //check number
     else if (int.parse(choseNumber)>100)
         {
           print("please do not go over 100");
           continue;
         }
     //magic logic
     if (int.parse(choseNumber) == randNumber)
       {
         print("Bingo you tried $temp Times");
         continue;


       }
     else if (int.parse(choseNumber)>randNumber)
       {
         print("you are higher try again");
         continue;
       }else
         {
           print("you are lower try again");
           continue;
         }
   }

}