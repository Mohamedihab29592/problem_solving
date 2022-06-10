//In this exercise, the task is to write a function that picks a random word from a list of words from the SOWPODS dictionary.
//
// Download this file and save it in the same directory as your Dart code. Each line in the file contains a single word.
//
// Use the Dart random library for picking a random word.

import 'dart:io';
import 'dart:math';

void main()
{

  String word = randomWord("bin/sowpods.txt");
  print(word);

}

String randomWord(String text)
{
  final random=Random();
  var file = File(text);
  List<String> wordList = file.readAsLinesSync();
  String word = wordList[random.nextInt(wordList.length)];
  return word;
}