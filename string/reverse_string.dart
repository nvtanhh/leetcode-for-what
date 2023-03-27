void main(List<String> args) {
  final List<String> s = ["h", "e", "l", "l", "o"];

  Solution().reverseString(s);

  print(s);
}

class Solution {
  void reverseString(List<String> s) {
    for (var i = 0; i < s.length ~/ 2; i++) {
      final temp = s[i];
      s[i] = s[s.length - 1 - i];
      s[s.length - 1 - i] = temp;
    }
  }
}
