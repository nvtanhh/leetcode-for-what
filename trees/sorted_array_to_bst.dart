// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/631/

import 'tree_node.dart';

void main(List<String> args) {
  final nums = [-10, -3, 0, 5, 9];
  final rs = _Solution().sortedArrayToBST(nums);
  print(rs);
}

class _Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    return _sortedArrayToBST(nums, 0, nums.length - 1);
  }

  TreeNode? _sortedArrayToBST(List<int> nums, int left, int right) {
    if (left > right) return null;

    final mid = (left + right) ~/ 2;

    final root = TreeNode(nums[mid]);
    root.left = _sortedArrayToBST(nums, left, mid - 1);
    root.right = _sortedArrayToBST(nums, mid + 1, right);

    return root;
  }
}
