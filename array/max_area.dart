// https://leetcode.com/problems/container-with-most-water/

import 'dart:math';

void main(List<String> args) {
  final heights = [1, 8, 6, 2, 5, 4, 8, 3, 7];

  final result = _Solution().maxArea(heights);

  print(result);
}

class _Solution {
  int maxArea(List<int> height) {
    var maxArea = 0;
    var l = 0, r = height.length - 1;

    while (l < r) {
      maxArea = max(maxArea, min(height[l], height[r]) * (r - l));
      if (height[l] < height[r]) {
        l++;
      } else {
        r--;
      }
    }

    return maxArea;
  }
}
