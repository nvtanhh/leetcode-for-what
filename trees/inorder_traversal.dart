// https://leetcode.com/problems/binary-tree-inorder-traversal/

import 'tree_node.dart';

void main(List<String> args) {
  // [4,2,7,1,3,6,9]
  final root = TreeNode(
    4,
    TreeNode(
      2,
      TreeNode(1, null, null),
      TreeNode(3, null, null),
    ),
    TreeNode(
      7,
      TreeNode(6, null, null),
      TreeNode(9, null, null),
    ),
  );

  final rs = _Solution().inOrderTraversal(root);
  print(rs);
}

class _Solution {
  List<int> inOrderTraversal(TreeNode? root) {
    final List<int> rs = [];
    _inOrderTraversal(root, rs);

    return rs;
  }

  void _inOrderTraversal(TreeNode? root, List<int> result) {
    if (root == null) return;

    _inOrderTraversal(root.left, result);
    result.add(root.val);
    _inOrderTraversal(root.right, result);
  }
}
