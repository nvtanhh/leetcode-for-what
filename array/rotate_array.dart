// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  int k = 3;

  Solution().rotate(nums, k);

  print(nums);
}

class Solution {
  void rotate(List<int> nums, int k) {
    final cloned = List.from(nums);

    for (var i = 0; i < nums.length; i++) {
      nums[i] = cloned[(nums.length - k + i) % (nums.length)];
    }
  }
}
