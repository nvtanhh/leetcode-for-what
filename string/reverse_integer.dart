import 'dart:math';

void main(List<String> args) {
  final int x = 1534236469;

  final rs = Solution().reverseInt(x);

  print(rs);
}

class Solution {
  int reverseInt(int x) {
    final isNegative = x < 0;
    x = x.abs();

    int rs = 0;

    while (x != 0) {
      rs = rs * 10 + x % 10;

      if (rs < pow(-2, 31) || rs > pow(2, 31) - 1) return 0;

      x ~/= 10;
    }

    return isNegative ? 0 - rs : rs;
  }
}
