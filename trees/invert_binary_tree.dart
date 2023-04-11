// https://leetcode.com/problems/invert-binary-tree/

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

  final rs = _Solution().invertTree(root);
  print(rs);
}

class _Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return root;
    
    final temp = invertTree(root.left);
    root.left = invertTree(root.right);
    root.right = temp;

    return root;
  }
}
