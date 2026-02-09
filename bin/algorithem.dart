import 'dart:developer';

class Algorithem {
  static void simpleAlgo() {
    //
    List<int> numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10, 11];
    // index  -------- condation.  ------------ increment
    for (int index = 0; index < numbers.length; index++) {
      //condation algorithm
      if (numbers[index] == 3) {
        log("this is ${numbers[index]}");
      }
    }
  }
}
