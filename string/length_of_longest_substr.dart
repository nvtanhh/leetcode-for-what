// https://leetcode.com/problems/longest-substring-without-repeating-characters/

import 'dart:math';

void main(List<String> args) {
  final String s = "abcabcbb";

  final rs = _Solution().lengthOfLongestSubstring(s);

  print(rs);
}

class _Solution {
  int lengthOfLongestSubstring(String s) {
    final Set<String> set = {};
    int i = 0, j = 0, ans = 0;
    while (i < s.length && j < s.length) {
      if (!set.contains(s[j])) {
        set.add(s[j]);
        j++;
        ans = max(ans, j - i);
      } else {
        set.remove(s[i]);
        i++;
      }
    }
    return ans;
  }
}
