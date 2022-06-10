//Write a program that takes a list of numbers for example
//
// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.
import 'dart:math';

void main()
{
  final random = Random();
  List<int>  a = List.generate(10, (_) => random.nextInt(100));
print(a);
 print(newList(a));
}

List<int>newList(List<int> b)
{


return [b.first, b.last];

}