// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/

void main(List<String> args) {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  int length = Solution().removeDuplicates(nums);

  print(length);
  print(nums);
}

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length == 0) return 0;

    int i = 0;
    for (var j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i]) {
        i++;
        nums[i] = nums[j];
      }
    }

    return i + 1;
  }
}
