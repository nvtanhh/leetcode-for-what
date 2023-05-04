// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/546/

void main(List<String> args) {
  List<int> nums = [2, 7, 11, 15];
  const int target = 9;

  final result = Solution().twoSum(nums, target);

  print(result);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // for (int i = 0; i < nums.length; i++) {
    //   for (int j = i + 1; j < nums.length; j++) {
    //     if (nums[i] + nums[j] == target) {
    //       return [i, j];
    //     }
    //   }
    // }

    // return [];

    final map = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      final sub = target - nums[i];
      if (map.containsKey(sub)) {
        return [map[sub]!, i];
      }

      map[nums[i]] = i;
    }

    return [];
  }

  List<int> twoSum2(List<int> nums, int target) {
    // sorted array
    // 2 pointers

    var l = 0, r = nums.length - 1;
    while (l < r) {
      final sum = nums[l] + nums[r];
      if (sum == target) {
        return [l + 1, r + 1];
      } else if (sum < target) {
        l++;
      } else {
        r--;
      }
    }

    return [];
  }
}
