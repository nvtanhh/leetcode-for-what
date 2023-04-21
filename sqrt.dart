void main(List<String> args) {
  print(_Solution().mySqrt(8));
}

class _Solution {
  int mySqrt(int x) {
    int low = 0, high = x;

    while (low <= high) {
      int mid = low + (high - low) ~/ 2;
      if (mid * mid > x) {
        high = mid - 1;
      } else if (mid * mid == x) {
        return mid;
      } else
        low = mid + 1;
    }
    return high;
  }
}
