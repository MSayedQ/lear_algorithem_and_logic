class Collection {
  static void list() {
    //list
    List li = [1, 2, 3, 4];
    print(li);

    //set
    Set<int> ids = {1, 2, 3};
    print(ids.elementAt(0));

    //map
    Map<String, int> users = {
      "Ali": 1,
      "Sara": 2,
    };
    print(users["Ali"]);
  }
}
