void main(List<String> args) {
  final s = 'babad';

  print(_Solution().longestPalindrome(s));
}

class _Solution {
  String longestPalindrome(String s) {
    if (s.length <= 1) return s;

    String rs = '';

    for (var i = s.length; i > 0; i--) {
      for (var j = 0; j <= s.length - i; j++) {
        final sub = s.substring(j, j + i);
        if (_isPalindrome(sub) && rs.length < sub.length) rs = sub;
      }
    }

    return rs;
  }

  bool _isPalindrome(String s) {
    for (var i = 0; i < s.length ~/ 2; i++) {
      if (s[i] != s[s.length - i - 1]) return false;
    }

    return true;
  }
}
