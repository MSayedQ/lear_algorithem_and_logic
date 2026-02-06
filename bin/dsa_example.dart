import 'dart:collection';
import 'dart:developer';

class DSAExample {
  
  static void iList() {
    // List - ordered collection with duplicates allowed
    log("\n--- List Example ---");
    List<int> numbers = [1, 2, 3, 2, 4];
    log("List: $numbers");
  }

  static void iSet() {
    // Set - unordered collection with no duplicates
    log("\n--- Set Example ---");
    Set<int> uniqueNumbers = {1, 2, 3, 2, 4};
    log("Set: $uniqueNumbers");
  }

  static void iMap() {
    // Map - key-value pairs
    log("\n--- Map Example ---");
    Map<String, int> ages = {"Ali": 25, "Sara": 30, "Hassan": 28};
    log("Map: $ages");
    log("Ali's age: ${ages["Ali"]}");
  }

  static void iQueue() {
    // Queue - FIFO collection
    log("\n--- Queue Example ---");
    Queue<String> queue = Queue();
    queue.addAll(["first", "second", "third"]);
    log("Queue: $queue");
  }

  static void iStack() {
    // Stack using List
    log("\n--- Stack Example ---");
    List<String> stack = ["bottom", "middle", "top"];
    stack.add("new top");
    log("Stack: $stack");
  }

  static void iLinkedList() {
    // LinkedList Example
    log("\n--- LinkedList Example ---");
    LinkedList<_IntEntry> linkedList = LinkedList();
    linkedList.add(_IntEntry(1));
    linkedList.add(_IntEntry(2));
    linkedList.add(_IntEntry(3));
    log("LinkedList: ${linkedList.map((e) => e.value).toList()}");
  }

  static void iGraph() {
    // Graph Example (Adjacency List)
    log("\n--- Graph Example ---");
    Map<String, List<String>> graph = {
      "A": ["B", "C"],
      "B": ["A", "D"],
      "C": ["A"],
      "D": ["B"]
    };
    log("Graph: $graph");
  }

  static void iTree() {
    // Tree Example (Binary Tree)
    log("\n--- Tree Example ---");
    _TreeNode root = _TreeNode(1);
    root.left = _TreeNode(2);
    root.right = _TreeNode(3);
    root.left?.left = _TreeNode(4);
    log("Tree traversal (in-order): ${_inOrderTraversal(root)}");
  }

  static void iHashMap() {
    // HashMap Example
    log("\n--- HashMap Example ---");
    Map<int, String> hashMap = {1: "one", 2: "two", 3: "three"};
    log("HashMap: $hashMap");
  }
}

// LinkedList entry for integers
final class _IntEntry extends LinkedListEntry<_IntEntry> {
  final int value;
  _IntEntry(this.value);
}

// Simple binary tree node
class _TreeNode {
  final int value;
  _TreeNode? left;
  _TreeNode? right;
  _TreeNode(this.value);
}

// In-order traversal that returns a list of node values
List<int> _inOrderTraversal(_TreeNode? node) {
  if (node == null) return [];
  final List<int> result = [];
  result.addAll(_inOrderTraversal(node.left));
  result.add(node.value);
  result.addAll(_inOrderTraversal(node.right));
  return result;
}
