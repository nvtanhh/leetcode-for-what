// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/555/

import 'dart:math';

import 'tree_node.dart';

void main(List<String> args) {
  final root = TreeNode(3, TreeNode(9, null, null), TreeNode(20, TreeNode(15, null, null), TreeNode(7, null, null)));
  final rs = _Solution().maxDepth(root);
  print(rs);
}

class _Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) {
      return 0;
    }
    return 1 + max(maxDepth(root.left), maxDepth(root.right));
  }
}
