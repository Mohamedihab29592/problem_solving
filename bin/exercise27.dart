//In the previous exercise we created a dictionary of famous scientists’ birthdays.
//
// In this exercise, modify your program from Part 1 to load the birthday dictionary from a JSON file on disk, rather than having the dictionary defined in the program.
//
// Bonus:
//
// Ask the user for another scientist’s name and birthday to add to the dictionary, and update the JSON file you have on disk with the scientist’s name. If you run the program multiple times and keep adding new names, your JSON file should keep getting bigger and bigger.


import 'dart:convert';
import 'dart:io';


void main()
{
  birthdays("bin/birthdays.json");

}
void birthdays(String text)
{
  var file = File(text);
  Map<String, dynamic> data = json.decode(file.readAsStringSync());

  print("\nHello there!. We know the birthdays of the following people: \n");

  data.forEach((key, value)
  {
    print(key);
  });

  stdout.write("\nWho's birthday do you want to know? ");
  String choice = stdin.readLineSync()!;

  print("\n$choice's birthday is ${data[choice]}\n");

  stdout.write("if you want to add some people and birtdays please hit YES");
  String answer = stdin.readLineSync()!.toLowerCase();

  if (answer=="yes") {
    stdout.write("\n enter the name\n");
    String name = stdin.readLineSync()!;
    stdout.write("\n enter the birthday (dd:mm:yy)\n");
    String birthday = stdin.readLineSync()!;

    data[name] = birthday;
    file.writeAsStringSync(json.encode(data));
    print("\n Thank you we have now more people\n ");

    data.forEach((key, value) {
      print("$key:$value");
    },
    );
  }
      else
        {
          print("\nbye bye\n");

        }
    }
