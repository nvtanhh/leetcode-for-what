// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/

void main(List<String> args) {
  List<int> nums = [7, 1, 2, 1, 2];

  int result = Solution().singleNumber(nums);

  print(result);
}

class Solution {
  int singleNumber(List<int> nums) {
    return nums.reduce((value, element) => value ^ element);
  }
}
