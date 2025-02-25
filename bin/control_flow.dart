import 'dart:io';

class ControlFlow {
  static void looping(String arg) {
    for (int i = 0; i <= 2; i++) {
      if (arg == "1") {
        stdout.write("this is $arg");
        print('${i + 1 * 3}');
      }
    }
  }
}
