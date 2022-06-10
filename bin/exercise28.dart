//In the previous exercise we saved information about famous scientists’ names and birthdays to disk.
//
// In this exercise, load that JSON file from disk, extract the months of all the birthdays, and count how many scientists have a birthday in each month.
//
// Your program should output something like:
//
// {
//     "May": 3,
//     "November": 2,
//     "December": 1
// }

import 'dart:convert';
import 'dart:io';

import 'package:intl/intl.dart';

void main()
{
// Read the Json file
  File file = File("bin/birthdays.json");
  Map<String, dynamic> data = json.decode(file.readAsStringSync());
  // Extract the months to a list
  DateFormat extractor = DateFormat("MMMM");
  List<String> months = [
    for (var d in data.values) extractor.format(formatter(d))
  ];

  counter(months);
}

DateTime formatter(String birthday)
{
  return DateFormat("dd/MM/yyyy").parse(birthday);
}

void counter(List m )
{
  /*
  Takes a lits of months and counts their occurances
  Saves them to a map and prints the results
  */
   Map<String, int> occurances = {};

  for (var e in m) {
    if (!occurances.containsKey(e)) {
      occurances[e] = 1;
    } else {
      occurances[e] = (occurances[e]!+1);
    }
  }
  print("\nHere are the counts\n");
  occurances.forEach((key, value) {
    print("$key:$value");
  });
}