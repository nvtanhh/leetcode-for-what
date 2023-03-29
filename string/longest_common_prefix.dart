// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/887/

void main(List<String> args) {
  final List<String> strs = ["flower", "flow", "flight"];

  final rs = _Solution().longestCommonPrefix(strs);

  print(rs);
}

class _Solution {
  String longestCommonPrefix(List<String> strs) {
    strs.sort((a, b) => a.length.compareTo(b.length));

    String prefix = strs.first;

    while (prefix.isNotEmpty) {
      if (strs.any((element) => !element.startsWith(prefix))) {
        prefix = prefix.substring(0, prefix.length - 1);
      } else {
        return prefix;
      }
    }

    return '';
  }
}
