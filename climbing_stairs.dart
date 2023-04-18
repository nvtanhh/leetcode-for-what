void main(List<String> args) {
  print(_Solution().climbStairs(5));
}

class _Solution {
  int climbStairs(int n) {
    final List<int> steps = [1, 2];

    for (int i = 2; i < n; i++) {
      steps.add(steps[i - 1] + steps[i - 2]);
    }

    return steps[n - 1];
  }
}
