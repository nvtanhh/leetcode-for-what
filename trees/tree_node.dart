class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val, [this.left, this.right]);

  @override
  String toString() {
    if (left == null && right == null) {
      return '$val';
    } else if (left == null) {
      return '$val, null, $right';
    } else if (right == null) {
      return '$val, $left, null';
    } else {
      return '$val, $left, $right';
    }
  }
}
