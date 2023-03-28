// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/883/

import 'dart:math';

void main(List<String> args) {
  final String s = "   -4";

  final rs = _Solution().myAtoi(s);

  print(rs);
}

class _Solution {
  int myAtoi(String s) {
    s = s.trim();

    if (s.isEmpty) return 0;

    final isNegative = s[0] == '-';
    if (s[0] == '-' || s[0] == '+') s = s.substring(1);

    final MIN_INT = (-pow(2, 31)) as int;
    final MAX_INT = (pow(2, 31) - 1) as int;

    int rs = 0;

    for (var i = 0; i < s.length; i++) {
      final char = s[i];
      if (int.tryParse(char) != null) {
        rs = rs * 10 + int.parse(char);
        if (rs > pow(2, 31) - 1) return isNegative ? MIN_INT : MAX_INT;
      } else {
        break;
      }
    }

    return isNegative ? 0 - rs : rs;
  }
}
