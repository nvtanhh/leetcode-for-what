import java.util.Arrays;

public class Array8 {
    public static void moveZeroes(int[] nums) {
        for (int i = 0; i < nums.length; i++) {
           for(int j = i + 1; j < nums.length; j++) {
               if(nums[i] == 0 && nums[j] != 0) {
                   int temp = nums[i];
                   nums[i] = nums[j];
                   nums[j] = temp;
               }
           }
        }
    }

    public static void main(String[] args) {
        int[] nums = { 0,1,0,3,12 };
        moveZeroes(nums);
        System.out.println(Arrays.toString(nums));
    }
}
