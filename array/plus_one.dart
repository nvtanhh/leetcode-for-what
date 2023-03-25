// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/559/

void main(List<String> args) {
  final digits = [9];

  List<int> result = _Solution().plusOne(digits);

  print(result);
}

class _Solution {
  List<int> plusOne(List<int> digits) {
    if (digits.isEmpty) return [1];

    if (digits.last == 9) {
      return [...plusOne(digits.sublist(0, digits.length - 1)), 0];
    } else {
      return digits..[digits.length - 1] = digits.last + 1;
    }
  }
}
