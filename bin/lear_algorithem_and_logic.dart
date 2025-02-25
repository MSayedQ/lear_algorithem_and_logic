import 'dart:io';

import 'collection.dart';
import 'control_flow.dart';

void main(List<String> arguments) {
  while (true) {
    stdout.write("Enter a command: ");
    String? input = stdin.readLineSync();

    if (input == "list") {
      Collection.list();
    }

    if (input == "loop") {
      ControlFlow.looping("1");
    }

    if (input == null) {
      break;
    }
  }
}
