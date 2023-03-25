// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/546/

void main(List<String> args) {
  List<int> nums = [2, 7, 11, 15];
  const int target = 9;

  final result = Solution().twoSum(nums, target);

  print(result);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }

    return List.empty();
  }
}
