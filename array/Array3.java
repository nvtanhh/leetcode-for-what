import java.util.Arrays;

public class Array3 {
    public static void rotate(int[] nums, int k) {
        k = k % nums.length;
        int[] temp = nums.clone();
        for (int i = 0; i < k; i++) {
            nums[i] = temp[(nums.length - k + i)];
        }
        for (int i = k; i < nums.length; i++) {
            nums[i] = temp[i - k];
        }
    }

    public static void main(String[] args) {
        int[] nums = { 1, 2, 3, 4, 5, 6, 7 };
        int k = 1;
        rotate(nums, k);
        System.out.println(Arrays.toString(nums));
    }
}
