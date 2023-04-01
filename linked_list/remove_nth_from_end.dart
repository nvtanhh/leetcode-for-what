// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/553/
import 'linked_list_model.dart';

void main(List<String> args) {
  final head =
      ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, null)))));

  final rs = _Solution.removeNthFromEnd(head, 2);

  print(rs);
}

class _Solution {
  static ListNode? removeNthFromEnd(ListNode? head, int n) {
    if (head == null) return null;

    int length = 1;
    var end = head.next;
    while (end != null) {
      length++;
      end = end.next;
    }

    length = length - n;
    if (length == 0) {
      final temp = head.next;
      head.next = null;
      head = null;

      return temp;
    }

    ListNode? current = head;
    ListNode? prev = null;
    while (length > 0) {
      prev = current;
      current = current?.next;
      length--;
    }

    prev!.next = current?.next;
    current!.next = null;
    current = null;

    return head;
  }
}
