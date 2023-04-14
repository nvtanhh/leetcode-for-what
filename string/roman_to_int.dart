// https://leetcode.com/problems/roman-to-integer/

void main(List<String> args) {
  final String s = "III";

  final rs = _Solution().romanToInt(s);

  print(rs);
}

class _Solution {
  int romanToInt(String s) {
    //   final roman = {
    //   'M': 1000,
    //   'CM': 900,
    //   'D': 500,
    //   'CD': 400,
    //   'C': 100,
    //   'XC': 90,
    //   'L': 50,
    //   'XL': 40,
    //   'X': 10,
    //   'IX': 9,
    //   'V': 5,
    //   'IV': 4,
    //   'I': 1,
    // };

    // int rs = 0;

    // roman.forEach((key, value) {
    //   while (s.startsWith(key)) {
    //     rs += value;
    //     s = s.replaceFirst(key, '');
    //   }
    // });

    // return rs;

    final roman = {
      'M': 1000,
      'D': 500,
      'C': 100,
      'L': 50,
      'X': 10,
      'V': 5,
      'I': 1,
    };

    int rs = 0;

    for (int i = 0; i < s.length - 1; i++) {
      if ((roman[s[i]] ?? 0) < (roman[s[i + 1]] ?? 0)) {
        rs -= roman[s[i]] ?? 0;
      } else {
        rs += roman[s[i]] ?? 0;
      }
    }
    rs += roman[s[s.length - 1]] ?? 0;

    return rs;
  }
}
