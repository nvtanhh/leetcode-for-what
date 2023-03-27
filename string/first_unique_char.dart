// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/881/

void main(List<String> args) {
  final String s = "leetcode";

  final rs = Solution().firstUniqueChar(s);

  print(rs);
}

class Solution {
  int firstUniqueChar(String s) {
    for (int i = 0; i < s.length; i++) {
      final char = s[i];
      if (s.indexOf(char) == i && s.lastIndexOf(char) == i) {
        return i;
      }
    }

    return -1;
  }
}
