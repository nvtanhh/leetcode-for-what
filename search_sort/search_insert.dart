void main(List<String> args) {
  final nums = [1, 3];

  final index = _Solution().searchInsert(nums, 2);

  print(index);
}

class _Solution {
  int searchInsert(List<int> nums, int target) {
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] >= target) return i;
    }

    return nums.length;
  }
}
