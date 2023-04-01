// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/560/
import 'linked_list_model.dart';

void main(List<String> args) {
  final head =
      ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, null)))));

  final rs = _Solution.reverseList(head);

  print(rs);
}

class _Solution {
  static ListNode? reverseList(ListNode? head) {
    if (head == null) return null;

    var current = head.next;
    ListNode? prev = head;
    prev.next = null;
    while (current != null) {
      final next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    return prev;
  }
}
