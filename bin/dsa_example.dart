// ایمپورت‌های لازم:
// - dart:collection برای استفاده از Queue و LinkedList
// - dart:developer برای استفاده از تابع log() جهت چاپ خروجی
import 'dart:collection';
import 'dart:developer';

// کلاس نمونه برای نمایش مثال‌های ساختار داده (Data Structures)
// متدها استاتیک هستند تا بتوان آن‌ها را بدون نمونه‌سازی فراخوانی کرد.
class DSAExample {
  static void iList() {
    // مثال لیست — مجموعه مرتب که تکرار مجاز است
    log("\n--- List Example ---"); // چاپ عنوان بخش
    // تعریف یک لیست از اعداد صحیح؛ توجه کنید مقدار 2 تکرار شده است
    List<int> numbers = [1, 2, 3, 2, 4];
    log("List: $numbers"); // چاپ محتویات لیست
  }

  static void iSet() {
    // مثال مجموعه (Set) — بدون ترتیب مشخص و فاقد تکرار
    log("\n--- Set Example ---");
    // تعریف یک Set؛ مقدار تکراری (دومین 2) حذف خواهد شد
    Set<int> uniqueNumbers = {1, 2, 3, 2, 4};
    log("Set: $uniqueNumbers"); // چاپ مقادیر یکتا
  }

  static void iMap() {
    // مثال Map — نگهداری زوج‌های کلید-مقدار
    log("\n--- Map Example ---");
    // Map از نوع String -> int برای نگهداری سن افراد
    Map<String, int> ages = {"Ali": 25, "Sara": 30, "Hassan": 28};
    log("Map: $ages"); // چاپ کل نقشه
    log("Ali's age: ${ages["Ali"]}"); // دسترسی به مقدار با کلید
  }

  static void iQueue() {
    // مثال صف (Queue) — رفتار FIFO: اول وارد، اول خارج
    log("\n--- Queue Example ---");
    Queue<String> queue = Queue(); // ایجاد صف رشته‌ای
    queue.addAll(["first", "second", "third"]); // افزودن چند عنصر
    log("Queue: $queue"); // چاپ محتویات صف
  }

  static void iStack() {
    // مثال پشته با استفاده از List — رفتار LIFO: آخر وارد، اول خارج
    log("\n--- Stack Example ---");
    List<String> stack = ["bottom", "middle", "top"]; // حالت اولیه
    stack.add("new top"); // push: افزودن به بالای پشته
    log("Stack: $stack"); // چاپ پشته
  }

  static void iLinkedList() {
    // مثال LinkedList — استفاده از LinkedListEntry برای گره‌ها
    log("\n--- LinkedList Example ---");
    LinkedList<_IntEntry> linkedList = LinkedList(); // ایجاد لیست پیوندی
    linkedList.add(_IntEntry(1)); // افزودن گره با مقدار 1
    linkedList.add(_IntEntry(2)); // افزودن گره با مقدار 2
    linkedList.add(_IntEntry(3)); // افزودن گره با مقدار 3
    // برای نمایش مقادیر، هر ورودی را به مقدار عددی‌اش نگاشت می‌کنیم
    log("LinkedList: ${linkedList.map((e) => e.value).toList()}");
  }

  /// ### مثال گراف [iGraph]
  ///
  /// نمایش گرافی بدون جهت با استفاده از نمایش لیست مجاورت.
  ///
  /// **ساختار:**
  /// - از `Map<String, List<String>>` استفاده می‌کند که کلیدها شناسه‌های گره هستند
  /// - مقادیر لیست‌های گره‌های متصل (همسایه‌ها) هستند
  ///
  /// **مثال گراف:**
  /// ```
  ///     A --- B
  ///     |     |
  ///     C     D
  /// ```
  ///
  /// **کاربرد:**
  /// - بهترین برای نمایش اتصالات شبکه، شبکه‌های اجتماعی یا نقشه‌های مسیریابی
  /// - پیچیدگی فضا: O(V + E) که V رئوس و E یال‌ها هستند
  /// - پیچیدگی زمان برای پیمایش: O(V + E)

  /// ### مثال درخت [iTree]
  ///
  /// نمایش ساختار درخت دودویی با استفاده از اشیاء گره.
  ///
  /// **ساختار:**
  /// - از کلاس سفارشی `_TreeNode` با اشاره‌گرهای فرزند چپ و راست استفاده می‌کند
  /// - یک درخت دودویی ساده با 4 گره می‌سازد (ریشه با دو فرزند)
  ///
  /// **مثال درخت:**
  /// ```
  ///        1
  ///       / \
  ///      2   3
  ///     /
  ///    4
  /// ```
  ///
  /// **کاربرد:**
  /// - پیمایش درون‌مرتب را انجام می‌دهد (چپ → ریشه → راست)
  /// - ایده‌آل برای داده‌های سلسله‌مراتبی، عملیات جستجو (درخت جستجوی دودویی) و درخت‌های عبارتی
  /// - پیچیدگی زمان برای پیمایش: O(n)
  /// - پیچیدگی فضا: O(h) که h ارتفاع درخت است

  static void iGraph() {
    // مثال گراف با نمایش به صورت لیست مجاورت (adjacency list)
    log("\n--- Graph Example ---");
    Map<String, List<String>> graph = {
      "Ahmad": ["Salim", "Shahab"],
      "Shahab": ["Ahmad", "Amin"],
      "Salim": ["Ahmad"],
      "Amin": ["Shahab"]
    };
    // چاپ نگاشت گراف: هر گره و لیست همسایه‌های آن
    log("Graph: $graph");
  }

  static void iTree() {
    // مثال درخت دودویی و پیمایش درون‌مرتب (in-order)
    log("\n--- Tree Example ---");
    _TreeNode root = _TreeNode(1); // ساخت گره ریشه
    root.left = _TreeNode(2); // فرزند چپ
    root.right = _TreeNode(3); // فرزند راست
    root.left?.left = _TreeNode(4); // فرزند چپِ فرزند چپ (اگر left موجود باشد)
    // چاپ نتیجهٔ پیمایش in-order روی درخت
    log("Tree traversal (in-order): ${_inOrderTraversal(root)}");
  }
}

// Simple binary tree node
// گره ساده برای درخت دودویی
class _TreeNode {
  final int value; // مقدار گره
  _TreeNode? left; // اشاره‌گر به فرزند چپ (ممکن است null باشد)
  _TreeNode? right; // اشاره‌گر به فرزند راست (ممکن است null باشد)
  
  _TreeNode(this.value); // سازندهٔ ساده
}

// In-order traversal that returns a list of node values
// پیمایش درون‌مرتب (in-order) که لیستی از مقادیر گره‌ها برمی‌گرداند
List<int> _inOrderTraversal(_TreeNode? node) {
  // حالت پایه: اگر گره null باشد، یک لیست خالی برگردان
  if (node == null) return [];

  // یک لیست برای نگهداری نتیجهٔ پیمایش ایجاد می‌کنیم
  final List<int> result = [];

  // 1) پیمایش بازگشتی زیردرخت چپ
  result.addAll(_inOrderTraversal(node.left));

  // 2) افزودن مقدار گره فعلی
  result.add(node.value);

  // 3) پیمایش بازگشتی زیردرخت راست
  result.addAll(_inOrderTraversal(node.right));

  // برگرداندن ترتیب کامل مقادیر
  return result;
}

// LinkedList entry for integers
// کلاس کمکی برای نگهداری مقادیر عددی در LinkedList
final class _IntEntry extends LinkedListEntry<_IntEntry> {
  final int value; // مقدار عددی گره
  _IntEntry(this.value); // سازنده مقداردهی اولیه
}