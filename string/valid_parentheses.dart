// https://leetcode.com/problems/valid-parentheses/

void main(List<String> args) {
  final String s = "}";

  final rs = _Solution().isValid(s);

  print(rs);
}

class _Solution {
  bool isValid(String s) {
    final List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(' || s[i] == '{' || s[i] == '[') {
        stack.add(s[i]);

        continue;
      }

      if (stack.isEmpty) return false;

      final last = stack.last;
      if (s[i] == ')' && last == '(' || s[i] == '}' && last == '{' || s[i] == ']' && last == '[') {
        stack.removeLast();
      } else
        return false;
    }

    return stack.isEmpty;
  }
}
