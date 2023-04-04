// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/627/

import 'tree_node.dart';

void main(List<String> args) {
  // [1,2,2,3,4,4,3]
  final root = TreeNode(
    1,
    TreeNode(
      2,
      TreeNode(3, null, null),
      TreeNode(4, null, null),
    ),
    TreeNode(
      2,
      TreeNode(4, null, null),
      TreeNode(3, null, null),
    ),
  );

  final rs = _Solution().isSymmetric(root);
  print(rs);
}

class _Solution {
  bool isSymmetric(TreeNode? root) {
    return _isMirror(root, root);
  }

  bool _isMirror(TreeNode? left, TreeNode? right) {
    if (left?.val == null && right?.val == null) return true;

    if (left?.val == null || right?.val == null) return false;

    return left!.val == right!.val && _isMirror(left.left, right.right) && _isMirror(left.right, right.left);
  }
}
