// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/628/

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

  final rs = _Solution().levelOrder(root);
  print(rs);
}

class _Solution {
  List<List<int>> levelOrder(TreeNode? root) {
    List<List<int>> rs = [];
    _levelOrder(root, rs, 0);
    return rs;
  }

  void _levelOrder(TreeNode? root, List<List<int>> rs, int level) {
    if (root == null) return;
    if (rs.length == level) {
      rs.add([]);
    }
    rs[level].add(root.val);
    _levelOrder(root.left, rs, level + 1);
    _levelOrder(root.right, rs, level + 1);
  }
}
