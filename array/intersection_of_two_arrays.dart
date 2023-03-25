// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/

void main(List<String> args) {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  List<int> nums2 = [2, 5, 6];

  final rs = Solution().intersect(nums1, nums2);

  print(rs);
}

class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    final result = <int>[];

    for (var i = 0; i < nums1.length; i++) {
      final num1 = nums1[i];
      if (nums2.contains(num1)) {
        result.add(num1);
        nums2.remove(nums2.indexOf(num1));
      }

      if (nums2.isEmpty) break;
    }

    return result;
  }
}
