void main(List<String> args) {
  final nums1 = [1, 2, 3, 0, 0, 0];
  final nums2 = [2, 5, 6];

  _Solution().merge(nums1, 3, nums2, 3);

  print(nums1);
}

class _Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int i = m + n - 1, j1 = m - 1, j2 = n - 1;

    while (i >= 0) {
      if (j2 < 0) return;

      if (j1 >= 0 && nums1[j1] > nums2[j2]) {
        nums1[i--] = nums1[j1--];
      } else {
        nums1[i--] = nums2[j2--];
      }
    }
  }
}
