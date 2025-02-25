import 'dart:io';

import 'package:args/args.dart';

void main(List<String> arguments) {
  var parser = ArgParser();
  parser.addOption('output',
      allowed: ['console', 'file'],
      defaultsTo: 'console',
      help: 'Choose output method');

  var results = parser.parse(arguments);
  String outputMode = results['output']; // Get argument value

  while (true) {
    stdout.write("Enter text (or type 'exit' to quit): ");
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == "exit") {
      print("Exiting CLI...");
      break;
    }

    if (outputMode == 'console') {
      print("Console Output: $input");
    } else {
      File('output.txt').writeAsStringSync(input + '\n', mode: FileMode.append);
      print("Written to output.txt");
    }
  }
}
