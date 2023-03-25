// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/567/

void main(List<String> args) {
  List<int> nums = [0, 0, 1];

  Solution().moveZeroes(nums);

  print(nums);
}

class Solution {
  void moveZeroes(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == 0 && nums[j] != 0) {
          int temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
          break;
        }
      }
    }
  }
}
