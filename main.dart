//QUESTION 1
void main() {
  String str1 = "Hello";
  String str2 = "World";

  // String Concatenation
  String concatenated = str1 + " " + str2;
  print("Concatenated: $concatenated");

  // String Interpolation
  String interpolated = "$str1, welcome to the $str2 of Dart!";
  print("Interpolated: $interpolated");

  // Substring Extraction
  String substring = concatenated.substring(0, 5);
  print("Substring: $substring");

  // Case Conversion
  print("Uppercase: ${concatenated.toUpperCase()}");
  print("Lowercase: ${concatenated.toLowerCase()}");

  // Reverse String
  String reversed = concatenated.split('').reversed.join('');
  print("Reversed: $reversed");

  // String Length
  print("Length: ${concatenated.length}");
}


//QUESTION 2


void main() {
  // List Operations
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  fruits.add("Date");
  fruits.remove("Banana");
  print("List of Fruits: $fruits");

  // Set Operations
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5);
  numbers.add(3); // Duplicate won't be added
  numbers.remove(2);
  print("Set of Numbers: $numbers");

  // Map Operations
  Map<String, int> scores = {"Alice": 90, "Bob": 85};
  scores["Charlie"] = 95;
  scores.remove("Alice");
  print("Scores Map: $scores");

  // Iterating over collections
  print("Iterating over List:");
  fruits.forEach((fruit) => print(fruit));

  print("Iterating over Set:");
  numbers.forEach((number) => print(number));

  print("Iterating over Map:");
  scores.forEach((key, value) => print("$key: $value"));
}

//QUESTION 3
import 'dart:io';

void main() async {
  try {
    // Writing to a file
    File writeFile = File('output.txt');
    await writeFile.writeAsString("Hello, Dart file handling!");

    // Reading from a file
    File readFile = File('output.txt');
    String content = await readFile.readAsString();
    print("File Content: $content");
  } catch (e) {
    print("An error occurred: $e");
  }
}
//QUESTION 4
void main() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Adding/Subtracting Days
  DateTime future = now.add(Duration(days: 5));
  DateTime past = now.subtract(Duration(days: 5));
  print("Future Date: $future");
  print("Past Date: $past");

  // Formatting Dates
  print("Formatted Date: ${now.toIso8601String()}");

  // Difference Between Two Dates
  Duration diff = future.difference(now);
  print("Difference in Days: ${diff.inDays}");
}


//COMBINED
import 'dart:io';

void main() async {
  List<String> results = [];
  while (true) {
    print("\nEnter a string (or 'exit' to quit):");
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') break;

    // String Manipulation
    String reversed = input.split('').reversed.join('');
    int length = input.length;
    String result = "Input: $input, Reversed: $reversed, Length: $length";

    // Log with timestamp
    String timestamp = DateTime.now().toIso8601String();
    results.add("$result | Logged at: $timestamp");
    print(result);
  }

  // Save to File
  try {
    File file = File('results.txt');
    await file.writeAsString(results.join('\n'));
    print("\nResults saved to 'results.txt'.");
  } catch (e) {
    print("Error saving results: $e");
  }

  // Display Saved Data
  try {
    File file = File('results.txt');
    String savedData = await file.readAsString();
    print("\nSaved Data:\n$savedData");
  } catch (e) {
    print("Error reading results: $e");
  }
}





