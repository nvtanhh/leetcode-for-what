void main(List<String> args) {
  final s = 'babad';

  print(_Solution().longestPalindrome(s));
}

class _Solution {
  String longestPalindrome(String s) {
    var longest = '';

    for (int i = 0; i < s.length; i++) {
      // odd length
      var l = i, r = i;
      while (l >= 0 && r < s.length && s[l] == s[r]) {
        l--;
        r++;
      }
      var current = s.substring(l + 1, r);
      if (current.length > longest.length) longest = current;

      // even length
      l = i;
      r = i + 1;
      while (l >= 0 && r < s.length && s[l] == s[r]) {
        l--;
        r++;
      }
      current = s.substring(l + 1, r);
      if (current.length > longest.length) longest = current;
    }

    return longest;
  }
}
