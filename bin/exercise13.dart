//Write a program (function) that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates.


import 'dart:math';

void main()
{
  final random = Random();
  List<int> a = List.generate(10, (_) => random.nextInt(10));
  
  print(a);
  print(removeDuplicates(a));
  
}

List<int> removeDuplicates (List<int> num)
{return num.toSet().toList();
}
