import 'dart:io';

class ControlFlow {
  

  // loop method which inside all types
  static void looping() {
    //for
    for (int i = 0; i <= 2; i++) {
      stdout.write("loop number is $i");
    }

    //while
    while (true) {
      var a = 12;
      var b = 0;
      if (b == a) {
        break;
      }
      b++;
    }

    // switch
    switch (2) {
      case 1:
        print("case 1");
        break;
      case 2:
        print("case 2");
        break;
      default:
        print("default case");
    }

    // list extension generate new and fast
    List.generate(
      12,
      (i) => print("count ${i + 1}"),
    );
  }
}
