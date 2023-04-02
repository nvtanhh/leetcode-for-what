import 'linked_list_model.dart';

void main(List<String> args) {
  final head = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, null)))));

  final rs = _Solution.isPalindrome(head);

  print(rs);
}

class _Solution {
  static bool isPalindrome(ListNode? head) {
    if (head == null) return true;

    final list = <int>[];
    ListNode? current = head;
    while (current != null) {
      list.add(current.val);
      current = current.next;
    }

    for (int i = 0; i < list.length ~/ 2; i++) {
      if (list[i] != list[list.length - i - 1]) return false;
    }

    return true;
  }
}
