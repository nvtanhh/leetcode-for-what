import java.util.*;
import java.util.stream.Collectors;

public class Array7 {
    public static int[] plusOne(int[] digits) {
        recursivePlusOne(digits, digits.length - 1);
        return digits;
    }

    public static void recursivePlusOne(int[] digits, int index) {
        if (digits[index] == 9) {
            if (digits.length == index + 1) {
                int[] increasedSizeArray = new int[digits.length + 1];
                System.arraycopy(digits, 0, increasedSizeArray, 0, digits.length);
                digits = increasedSizeArray;
                digits[index] = 1;
                return;
            }
            digits[index] = 0;
            recursivePlusOne(digits, index - 1);
        } else {
            digits[index]++;
        }
    }

    public static void main(String[] args) {
        int[] nums1 = { 9,9,9 };
        System.out.println(Arrays.toString(plusOne(nums1)));
    }
}
