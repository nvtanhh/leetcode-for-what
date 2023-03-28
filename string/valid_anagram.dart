// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/882/

void main(List<String> args) {
  final String s = "anagram";
  final String t = "nagaram";

  final rs = _Solution().isAnagram(s, t);

  print(rs);
}

class _Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    for (var i = 0; i < s.length; i++) {
      if (!t.contains(s[i])) return false;
      t = t.replaceFirst(s[i], '');
    }

    if (t.isNotEmpty) return false;

    return true;
  }
}
