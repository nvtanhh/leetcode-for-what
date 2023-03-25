// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/578/

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 1];

  final result = Solution().constantsDuplicate(nums);

  print(result);
}

class Solution {
  bool constantsDuplicate(List<int> nums) {
    final set = Set.from(nums);
    return set.length != nums.length;
  }
}
