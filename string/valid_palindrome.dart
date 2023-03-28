// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/883/

void main(List<String> args) {
  final String s = "A man, a plan, a canal: Panama";

  final rs = _Solution().isPalindrome(s);

  print(rs);
}

class _Solution {
  bool isPalindrome(String s) {
    s = s.trim().toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

    for (var i = 0; i < s.length ~/ 2; i++) {
      if (s[i] != s[s.length - 1 - i]) return false;
    }

    return true;
  }
}
