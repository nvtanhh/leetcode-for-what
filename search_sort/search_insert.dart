void main(List<String> args) {
  final nums = [1, 3];

  final index = _Solution().searchInsert(nums, 2);

  print(index);
}

class _Solution {
  int searchInsert(List<int> nums, int target) {
    for (int number in nums) {
      if (number >= target) {
        return nums.indexOf(number);
      }
    }

    return nums.length;
  }
}
