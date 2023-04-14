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

    int rs = 0;

    for (int i = 0; i < s.length - 1; i++) {
      if (_getValue(s[i]) < _getValue(s[i + 1])) {
        rs -= _getValue(s[i]);
      } else {
        rs += _getValue(s[i]);
      }
    }
    rs += _getValue(s[s.length - 1]);

    return rs;
  }

  int _getValue(String s) {
    switch (s) {
      case 'V':
        return 5;
      case 'L':
        return 50;
      case 'D':
        return 500;
      case 'X':
        return 10;
      case 'C':
        return 100;
      case 'M':
        return 1000;
      case 'I':
        return 1;
      default:
        return 0;
    }
  }
}
