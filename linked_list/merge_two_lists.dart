// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/771/

import 'linked_list_model.dart';

void main(List<String> args) {
  final list1 = ListNode(2, null);

  final list2 = ListNode(1, null);

  final rs = _Solution.mergeTwoLists(list1, list2);

  print(rs);
}

class _Solution {
  static ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null && list2 == null) return null;
    if (list1 == null) return list2;
    if (list2 == null) return list1;

    ListNode? rs;
    ListNode? tail;

    ListNode? item1 = list1;
    ListNode? item2 = list2;

    while (true) {
      ListNode? nextValue;
      if (item1!.val < item2!.val) {
        nextValue = item1;
        item1 = item1.next;
      } else {
        nextValue = item2;
        item2 = item2.next;
      }

      if (item1 == null || item2 == null) {
        nextValue.next = item1 == null ? item2 : item1;
        if (rs == null) {
          return nextValue;
        } else {
          tail?.next = nextValue;
          tail = tail?.next;
          return rs;
        }
      }

      nextValue.next = null;
      if (rs == null) {
        rs = nextValue;
        tail = rs;
      } else {
        tail?.next = nextValue;
        tail = tail?.next;
        if (tail == null) return rs;
      }
    }
  }
}
