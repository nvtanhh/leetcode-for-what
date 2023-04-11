// https://leetcode.com/problems/add-two-numbers

import 'linked_list_model.dart';

void main(List<String> args) {
  final l1 = ListNode(2, ListNode(4, ListNode(3, null)));
  final l2 = ListNode(5, ListNode(6, ListNode(4, null)));

  final rs = _Solution().addTwoNumbers(l1, l2);
  print(rs);
}

class _Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    final rs = ListNode(0, null);
    var p = l1;
    var q = l2;
    var curr = rs;
    var carry = 0;

    while (p != null || q != null) {
      final x = p?.val ?? 0;
      final y = q?.val ?? 0;
      final sum = carry + x + y;
      carry = sum ~/ 10;
      curr.next = ListNode(sum % 10, null);
      curr = curr.next!;
      if (p != null) p = p.next;
      if (q != null) q = q.next;
    }

    if (carry > 0) {
      curr.next = ListNode(carry, null);
    }

    return rs.next;
  }
}
