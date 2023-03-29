// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/885/

void main(List<String> args) {
  final String haystack = "sadbutsad";
  final String needle = "sad";

  final rs = _Solution().strStr(haystack, needle);

  print(rs);
}

class _Solution {
  int strStr(String haystack, String needle) {
    if (!haystack.contains(needle)) return -1;

    return haystack.indexOf(needle);
  }
}
