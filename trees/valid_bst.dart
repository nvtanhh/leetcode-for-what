// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/625/

import 'tree_node.dart';

void main(List<String> args) {
  // [2,1,3]
  final root = TreeNode(2, TreeNode(1, null, null), TreeNode(3, null, null));

  final rs = _Solution().isValidBST(root);
  print(rs);
}

class _Solution {
  bool isValidBST(TreeNode? root) {
    return _isValidBST(root, null, null);
  }

  bool _isValidBST(TreeNode? root, int? min, int? max) {
    if (root == null) return true;

    if (min != null && root.val <= min) return false;
    if (max != null && root.val >= max) return false;

    return _isValidBST(root.left, min, root.val) && _isValidBST(root.right, root.val, max);
  }
}
