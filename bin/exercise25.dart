//In this exercise, we will finish building Hangman. In the game of Hangman, the player only has 6 incorrect guesses (head, body, 2 legs, and 2 arms) before they lose the game.
//
// In Part 1, we loaded a random word list and picked a word from it.
// In Part 2, we wrote a logic for guessing the letter and displaying that information to user.
// In this exercise, we have to put it all together and add logic for handling guesses.
//
// Copy your code from Parts 1 and 2 into a new file as a starting point. Now add the following features:
//
// Only let the user guess 6 times, and tell the user how many guesses they have left.
// Keep track of the letters user guessed. If the user guesses a letter they had already guessed, don’t penalize them - let them guess again.
// Optional additions:
//
// When the player wins or loses, let them start a new game.
// Rather than telling the user “You have 4 incorrect guesses left”, display some picture art for the Hangman. This is challenging - do the other parts of the exercise first!


import 'dart:io';

import 'dart:math';

void main()
{
  String word = randomWord("bin/sowpods.txt");
  print(word);
  intro();
  hangman(word);


}

String randomWord(String text)
{
  final random=Random();
  var file = File(text);
  List<String> wordList = file.readAsLinesSync();
  String word = wordList[random.nextInt(wordList.length)];
  return word;
}
void hangman(String word)

{
  List clue=("___ " * word.length).split(" ");
  print(clue.join(" "));
  int count =7;
  int attempts =0;
  List history=[];

  while(true)
  {
    count -= 1;
    attempts+=1;
    stdout.write("\nPlease guess a letter: \nyou have $count tries left\n");
    String choice = stdin.readLineSync()!.toUpperCase();
    if (history.contains(choice)) {
      print("\nYou already tried this letter!");
      count += 1;
    } else {
      history.add(choice);
    }


    if(choice==word)
    {
      print("\n Bingo!! Attempts:$attempts");
      break;
    }
    else if (choice=="EXIT")
    {
      print("\nBye BYe\n");
      break;
    }
    else if (choice.length>1)
    {
      print("\nNope");
      continue;
    }

else if (count==1)
  {
    print("\nYou exceed 6 times tries");print("\nAttempts left:0. \nGame over!");
    print("\nThe word was: $word\n if you want to play again press 1 if not press 0");

    int playAgain=int.parse(stdin.readLineSync()!) ;

    if(playAgain==1)
    {
      String word1 = randomWord("bin/sowpods.txt");
      print(word1);
      hangman(word1);
    }
    else if(playAgain==0)
    {
      print("\nBye BYe\n");
      break;
    }


  }

    for(var i =0 ; i<word.length; i++)
    {
      if(clue[i]==choice)
      {
        continue;
      }
      else if(word[i]==choice)
      {
        clue[i]=choice;
      }
    }
    print(clue.join(" "));
    if(clue.join("")==word)
    {
      print("\nBingo! Attemps: $attempts\nif you want to play again press 1 if not press 0");
      int playAgain1=int.parse(stdin.readLineSync()!) ;
      if(playAgain1==1)
      {
        String word1 = randomWord("bin/sowpods.txt");
        print(word1);
        hangman(word1);
      }
      else if(playAgain1==0)
      {
        print("\nBye BYe\n");
        break;
      }
    }

  }



}

void intro() {
  print("""\n
  Welcome to Hangman!
  We prepared a word for you.
  You have 6 attempts to guess it correctly
  You can type the whole word anytime before attempts are over
  To quit the game type "exit"
  """);
}